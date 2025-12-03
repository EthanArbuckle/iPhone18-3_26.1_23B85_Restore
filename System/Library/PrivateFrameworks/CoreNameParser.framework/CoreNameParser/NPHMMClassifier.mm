@interface NPHMMClassifier
- (BOOL)formCompoundFamilyName:(id)name;
- (BOOL)formCompoundGivenName:(id)name;
- (BOOL)isCoupleName:(id)name;
- (BOOL)isInitial:(id)initial;
- (BOOL)validSequence:(id)sequence compoundsConstraints:(id)constraints labelsConstraints:(id)labelsConstraints;
- (NPHMMClassifier)initWithHMMProbabilities:(id *)probabilities nameComponentsDate:(id)date;
- (double)emissionProbability:(id)probability hiddenState:(unint64_t)state isOOV:(BOOL *)v;
- (double)startProbability:(id)probability;
- (double)stateTransitionProbabilityFrom:(id)from to:(id)to;
- (id)candidatesBasedOnCommaDelimiterIndex:(unint64_t)index sequenceSize:(unint64_t)size;
- (id)candidatesBasedOnFormatSequence:(id)sequence;
- (id)candidatesOfSize:(unint64_t)size constraints:(unint64_t)constraints compoundsConstraints:(id)compoundsConstraints labelsContraints:(id)contraints;
- (id)compoundsFromName:(id)name includeSpaceAsDelimiter:(BOOL)delimiter;
- (id)hiddenStatesFromObservationSequence:(id)sequence;
- (id)probabilityForHiddenSequence:(id)sequence knowingObservationSequence:(id)observationSequence boost:(unint64_t)boost;
- (unint64_t)extractMetricForType:(unint64_t)type;
- (unint64_t)frequencyForName:(id)name type:(unint64_t)type;
- (unint64_t)genderMajorityForGivenName:(id)name;
- (unint64_t)payloadForName:(id)name type:(unint64_t)type;
- (void)dealloc;
@end

@implementation NPHMMClassifier

- (NPHMMClassifier)initWithHMMProbabilities:(id *)probabilities nameComponentsDate:(id)date
{
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = NPHMMClassifier;
  v9 = [(NPHMMClassifier *)&v18 init];
  v10 = v9;
  if (v9)
  {
    v11 = *&probabilities->var0.var2;
    v16[0] = *&probabilities->var0.var0;
    v16[1] = v11;
    v16[2] = *&probabilities->var1.var1;
    var2 = probabilities->var2;
    [(NPHMMClassifier *)v9 setStateProbabilities:v16];
    objc_storeStrong(&v10->_nameComponentsData, date);
    pthread_mutex_lock(&_NPHMMClassifierLock);
    v12 = _NPHMMClassifierInstanceCount;
    if (!_nameFrequencyTrie && !_NPHMMClassifierInstanceCount)
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 pathForResource:@"name_frequencies" ofType:@"trie"];

      _nameFrequencyTrie = CFBurstTrieCreateFromFile();
      if (!_nameFrequencyTrie)
      {
        [NPHMMClassifier initWithHMMProbabilities:a2 nameComponentsDate:v10];
      }

      v12 = _NPHMMClassifierInstanceCount;
    }

    _NPHMMClassifierInstanceCount = v12 + 1;
    pthread_mutex_unlock(&_NPHMMClassifierLock);
    v10->_totalGivenNamesCount = [(NPHMMClassifier *)v10 extractMetricForType:2];
    v10->_totalFamilyNamesCount = [(NPHMMClassifier *)v10 extractMetricForType:3];
    v10->_uniqueGivenNamesCount = [(NPHMMClassifier *)v10 extractMetricForType:1];
    v10->_uniqueFamilyNamesCount = [(NPHMMClassifier *)v10 extractMetricForType:1];
  }

  return v10;
}

- (unint64_t)payloadForName:(id)name type:(unint64_t)type
{
  nameCopy = name;
  v6 = nameCopy;
  if (type)
  {
    v7 = nameCopy;
  }

  else
  {
    v7 = [nameCopy stringByAppendingString:@"!"];
  }

  v8 = v7;
  [v7 length];
  if (CFBurstTrieContains())
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (unint64_t)frequencyForName:(id)name type:(unint64_t)type
{
  v5 = [(NPHMMClassifier *)self payloadForName:name type:?];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5 / 0xA + 1;
    if (type)
    {
      return v5 + 1;
    }
  }

  return v6;
}

- (void)dealloc
{
  pthread_mutex_lock(&_NPHMMClassifierLock);
  v3 = --_NPHMMClassifierInstanceCount;
  if (_nameFrequencyTrie)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    CFBurstTrieRelease();
    _nameFrequencyTrie = 0;
  }

  pthread_mutex_unlock(&_NPHMMClassifierLock);
  v5.receiver = self;
  v5.super_class = NPHMMClassifier;
  [(NPHMMClassifier *)&v5 dealloc];
}

- (unint64_t)extractMetricForType:(unint64_t)type
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  stringValue = [v3 stringValue];
  v5 = [stringValue stringByAppendingString:@"#"];

  [v5 length];
  CFBurstTrieContains();

  return 0;
}

- (id)hiddenStatesFromObservationSequence:(id)sequence
{
  v95 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v5 = [sequenceCopy count];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = sequenceCopy;
  selfCopy = self;
  if (v5)
  {
    for (i = 0; v5 != i; ++i)
    {
      v9 = [sequenceCopy objectAtIndexedSubscript:i];
      v10 = [v9 isEqualToString:{@", "}];

      if (v10)
      {
        self = selfCopy;
        if (!i || v5 - 1 == i)
        {
          goto LABEL_11;
        }

        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [v71 addObject:v11];
      }

      else
      {
        v12 = [sequenceCopy objectAtIndexedSubscript:i];
        v11 = _NPTrimNonLetters(v12);

        if ([v11 length])
        {
          v13 = [sequenceCopy objectAtIndexedSubscript:i];
          [v6 addObject:v13];

          lowercaseString = [v11 lowercaseString];
          [v7 addObject:lowercaseString];
        }

        self = selfCopy;
      }

LABEL_11:
      sequenceCopy = v73;
    }
  }

  v15 = [v6 count];
  v16 = [v71 count];
  v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v72 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v80 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v6;
  v17 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v17)
  {
    v18 = v17;
    context = v15;
    v19 = v16;
    v20 = 0;
    v21 = *v90;
    v22 = 4;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        v24 = v22;
        if (*v90 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v89 + 1) + 8 * j);
        if ([(NPHMMClassifier *)self isInitial:v25])
        {
          v26 = 0;
          LOBYTE(v27) = 0;
          v22 = 2;
        }

        else if ([(NPHMMClassifier *)self isGivenNameAbbreviation:v25])
        {
          v26 = 0;
          LOBYTE(v27) = 0;
          v22 = 3;
        }

        else
        {
          uppercaseString = [v25 uppercaseString];
          v27 = [uppercaseString isEqualToString:v25];

          self = selfCopy;
          v26 = v27 ^ 1;
          v22 = v27;
        }

        if (v24 != 1)
        {
          v26 = 0;
        }

        v29 = v20 + (v26 | ((v24 == 0) & v27));
        if (v24 != 4)
        {
          v20 = v29;
        }

        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
        [v80 addObject:v30];
      }

      v18 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
    }

    while (v18);
    v31 = v20 == 1;
    v16 = v19;
    v15 = context;
  }

  else
  {
    v31 = 0;
  }

  v78 = objc_opt_new();
  v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v31)
  {
    v33 = [(NPHMMClassifier *)self candidatesBasedOnFormatSequence:v80];
LABEL_34:
    v77 = v33;
    [v32 addObject:v33];
    goto LABEL_36;
  }

  if (v16 == 1)
  {
    v34 = [v71 objectAtIndexedSubscript:0];
    v33 = -[NPHMMClassifier candidatesBasedOnCommaDelimiterIndex:sequenceSize:](self, "candidatesBasedOnCommaDelimiterIndex:sequenceSize:", [v34 integerValue], objc_msgSend(v7, "count"));

    goto LABEL_34;
  }

  v77 = 0;
LABEL_36:
  v35 = v15 - 1;
  if (v15 != 1)
  {
    for (k = 0; v35 != k; ++k)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = [v7 subarrayWithRange:{k, 2}];
      v39 = [(NPHMMClassifier *)selfCopy formCompoundGivenName:v38];
      if (v39)
      {
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
        [v74 setObject:&unk_2858DB810 forKeyedSubscript:v40];
      }

      if ([(NPHMMClassifier *)selfCopy formCompoundFamilyName:v38])
      {
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
        [v74 setObject:&unk_2858DB828 forKeyedSubscript:v41];

        if (!v39)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (k)
        {
          v42 = v39;
        }

        else
        {
          v42 = 1;
        }

        if (v42)
        {
          goto LABEL_49;
        }

        v43 = [v73 objectAtIndexedSubscript:k];
        v44 = [(NPHMMClassifier *)selfCopy isParticle:v43];

        if (!v44)
        {
          goto LABEL_49;
        }
      }

      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
      [v74 setObject:&unk_2858DB810 forKeyedSubscript:v45];

LABEL_49:
      v46 = [v80 objectAtIndexedSubscript:k];
      integerValue = [v46 integerValue];

      if (integerValue == 3)
      {
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
        [v72 setObject:&unk_2858DB810 forKeyedSubscript:v48];
      }

      objc_autoreleasePoolPop(v37);
    }
  }

  v49 = [v7 count];
  v50 = selfCopy;
  v70 = -[NPHMMClassifier candidatesOfSize:constraints:compoundsConstraints:labelsContraints:](selfCopy, "candidatesOfSize:constraints:compoundsConstraints:labelsContraints:", v49, (v49 - [v74 count]) > 1, v74, v72);
  [v32 unionSet:?];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v75 = v32;
  v51 = v77;
  v79 = [v75 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v79)
  {
    v76 = *v86;
    do
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v86 != v76)
        {
          objc_enumerationMutation(v75);
        }

        v53 = *(*(&v85 + 1) + 8 * m);
        contexta = objc_autoreleasePoolPush();
        if (v51 && [v53 isEqualToArray:v51])
        {
          v54 = [(NPHMMClassifier *)v50 probabilityForHiddenSequence:v53 knowingObservationSequence:v7 boost:1000];
          [v54 setFavorite:1];
        }

        else
        {
          v54 = [(NPHMMClassifier *)v50 probabilityForHiddenSequence:v53 knowingObservationSequence:v7 boost:1];
        }

        v55 = [obj copy];
        [v54 setObservation:v55];

        v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([v53 count])
        {
          v58 = 0;
          do
          {
            v59 = [v53 objectAtIndexedSubscript:v58];
            v60 = [v59 isEqual:&unk_2858DB810];

            if (v60)
            {
              v61 = [MEMORY[0x277CCABB0] numberWithInt:v58];
              [v56 addObject:v61];

              v62 = [v7 objectAtIndexedSubscript:v58];
              [v57 addObject:v62];
            }

            ++v58;
          }

          while ([v53 count] > v58);
        }

        if ([v56 count] > 1)
        {
          lastObject = [v56 lastObject];
          integerValue2 = [lastObject integerValue];

          if (![(NPHMMClassifier *)selfCopy isCoupleName:v57])
          {
            v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue2 - 1];
            v66 = [v74 objectForKey:v65];

            if (!v66)
            {
              [v54 setValue:&unk_2858DB840 atSequenceIndex:integerValue2];
            }
          }
        }

        [v78 addObject:v54];

        objc_autoreleasePoolPop(contexta);
        v50 = selfCopy;
        v51 = v77;
      }

      v79 = [v75 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v79);
  }

  v67 = [v78 copy];
  v68 = *MEMORY[0x277D85DE8];

  return v67;
}

- (BOOL)isCoupleName:(id)name
{
  nameCopy = name;
  v5 = [nameCopy count];
  v6 = v5 - 3;
  if (v5 >= 3)
  {
    v8 = 1;
    do
    {
      v9 = v6;
      v10 = [nameCopy objectAtIndexedSubscript:v8];
      v7 = [(NPHMMClassifier *)self isLinkingToken:v10];

      if (v7)
      {
        break;
      }

      ++v8;
      v6 = v9 - 1;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)candidatesBasedOnFormatSequence:(id)sequence
{
  v25 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = sequenceCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = 4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * i) doubleValue];
        v12 = v11;
        if (v11 == 1 || (v12 == 2 ? (v13 = v9 == 1) : (v13 = 0), v13))
        {
          v17 = &unk_2858DB828;
LABEL_24:
          [v4 addObject:v17];
          v9 = v12;
          continue;
        }

        v15 = v12 == 2 && v9 == 0;
        if (v12)
        {
          v16 = !v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = &unk_2858DB810;
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)candidatesBasedOnCommaDelimiterIndex:(unint64_t)index sequenceSize:(unint64_t)size
{
  v6 = objc_opt_new();
  if (size)
  {
    v7 = 0;
    do
    {
      if (v7 >= index)
      {
        v8 = &unk_2858DB810;
      }

      else
      {
        v8 = &unk_2858DB828;
      }

      [v6 addObject:v8];
      ++v7;
    }

    while (size != v7);
  }

  return v6;
}

- (BOOL)validSequence:(id)sequence compoundsConstraints:(id)constraints labelsConstraints:(id)labelsConstraints
{
  v47 = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  constraintsCopy = constraints;
  labelsConstraintsCopy = labelsConstraints;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  allKeys = [constraintsCopy allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        integerValue = [v14 integerValue];
        v16 = [constraintsCopy objectForKeyedSubscript:v14];
        integerValue2 = [v16 integerValue];

        v18 = [sequenceCopy objectAtIndexedSubscript:integerValue];
        v19 = [sequenceCopy objectAtIndexedSubscript:integerValue + 1];

        if (v18 != v19)
        {
LABEL_23:
          v33 = 0;
          v24 = labelsConstraintsCopy;
          goto LABEL_26;
        }

        if (integerValue2 == 2)
        {
          v22 = [sequenceCopy objectAtIndexedSubscript:integerValue];
          integerValue3 = [v22 integerValue];

          if (integerValue3 != 2)
          {
            goto LABEL_23;
          }
        }

        else if (integerValue2 == 1)
        {
          v20 = [sequenceCopy objectAtIndexedSubscript:integerValue];
          integerValue4 = [v20 integerValue];

          if (integerValue4)
          {
            goto LABEL_23;
          }
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = labelsConstraintsCopy;
  allKeys = [labelsConstraintsCopy allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v37 + 1) + 8 * j);
        v30 = [sequenceCopy objectAtIndexedSubscript:{objc_msgSend(v29, "integerValue")}];
        v31 = [labelsConstraintsCopy objectForKeyedSubscript:v29];
        v32 = [v30 isEqual:v31];

        if (!v32)
        {
          v33 = 0;
          goto LABEL_26;
        }
      }

      v26 = [allKeys countByEnumeratingWithState:&v37 objects:v45 count:16];
      v33 = 1;
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 1;
  }

LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)candidatesOfSize:(unint64_t)size constraints:(unint64_t)constraints compoundsConstraints:(id)compoundsConstraints labelsContraints:(id)contraints
{
  compoundsConstraintsCopy = compoundsConstraints;
  contraintsCopy = contraints;
  v26 = objc_opt_new();
  v11 = constraints == 1;
  v12 = size - v11;
  if (size != v11)
  {
    v13 = 1;
    do
    {
      v14 = objc_opt_new();
      if (v13)
      {
        for (i = 1; i <= v13; ++i)
        {
          [v14 addObject:{&unk_2858DB810, v26}];
        }
      }

      if (size != v13)
      {
        v16 = 1;
        do
        {
          [v14 addObject:{&unk_2858DB828, v26}];
          ++v16;
        }

        while (v16 <= size - v13);
      }

      if ([(NPHMMClassifier *)self validSequence:v14 compoundsConstraints:compoundsConstraintsCopy labelsConstraints:contraintsCopy, v26])
      {
        v17 = [v14 copy];
        [v26 addObject:v17];
      }

      ++v13;
    }

    while (v13 <= v12);
    if (v12)
    {
      for (j = 1; j <= v12; ++j)
      {
        v19 = objc_opt_new();
        if (j)
        {
          for (k = 1; k <= j; ++k)
          {
            [v19 addObject:&unk_2858DB828];
          }
        }

        if (size != j)
        {
          v21 = 1;
          do
          {
            [v19 addObject:&unk_2858DB810];
            ++v21;
          }

          while (v21 <= size - j);
        }

        if ([(NPHMMClassifier *)self validSequence:v19 compoundsConstraints:compoundsConstraintsCopy labelsConstraints:contraintsCopy])
        {
          v22 = [v19 copy];
          [v26 addObject:v22];
        }
      }
    }
  }

  v23 = v26;
  v24 = [v26 copy];

  return v24;
}

- (id)probabilityForHiddenSequence:(id)sequence knowingObservationSequence:(id)observationSequence boost:(unint64_t)boost
{
  v51[2] = *MEMORY[0x277D85DE8];
  sequenceCopy = sequence;
  observationSequenceCopy = observationSequence;
  v9 = [observationSequenceCopy count];
  if (v9 != [sequenceCopy count])
  {
    [NPHMMClassifier probabilityForHiddenSequence:a2 knowingObservationSequence:self boost:?];
  }

  v45 = objc_opt_new();
  v10 = [observationSequenceCopy count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0.0;
    v14 = 0x280C3F000uLL;
    v15 = 0x280C3F000uLL;
    v16 = 0.0;
    do
    {
      context = objc_autoreleasePoolPush();
      v17 = [sequenceCopy objectAtIndexedSubscript:v12];
      v18 = [observationSequenceCopy objectAtIndexedSubscript:v12];
      if (v12)
      {
        v19 = [sequenceCopy objectAtIndexedSubscript:v12 - 1];
        [(NPHMMClassifier *)self stateTransitionProbabilityFrom:v19 to:v17];
        v21 = v20;
      }

      else
      {
        [(NPHMMClassifier *)self startProbability:v17];
        v21 = v22;
      }

      if (*(v14 + 2960) != -1)
      {
        [NPHMMClassifier probabilityForHiddenSequence:knowingObservationSequence:boost:];
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v18, v17];
      v24 = [*(v15 + 2952) objectForKey:v23];
      v25 = v18;
      v26 = v24;
      bOOLValue = 0;
      v48 = v25;
      if (v24)
      {
        v27 = [v24 objectAtIndexedSubscript:0];
        [v27 doubleValue];
        v29 = v28;

        v30 = [v26 objectAtIndexedSubscript:1];
        bOOLValue = [v30 BOOLValue];
      }

      else
      {
        [v17 doubleValue];
        [(NPHMMClassifier *)self emissionProbability:v25 hiddenState:v31 isOOV:&bOOLValue];
        v29 = v32;
        v46 = *(v15 + 2952);
        v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        v51[0] = v30;
        [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
        v33 = v11;
        selfCopy = self;
        v36 = v35 = sequenceCopy;
        v51[1] = v36;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
        [v46 setObject:v37 forKey:v23];

        v15 = 0x280C3F000;
        sequenceCopy = v35;
        self = selfCopy;
        v11 = v33;
        v14 = 0x280C3F000;
      }

      if (bOOLValue == 1)
      {
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        [v45 addObject:v38];

        v15 = 0x280C3F000;
      }

      v13 = v13 + v21;
      v16 = v16 + v29;

      objc_autoreleasePoolPop(context);
      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v16 = 0.0;
    v13 = 0.0;
  }

  v39 = [NPComponentSequence alloc];
  v40 = [v45 copy];
  v41 = [(NPComponentSequence *)v39 initWithObservationSequence:observationSequenceCopy hiddenSequence:sequenceCopy oovIndices:v40 emissionModelScore:v16 stateModelScore:v13 boost:log(boost)];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __81__NPHMMClassifier_probabilityForHiddenSequence_knowingObservationSequence_boost___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = probabilityForHiddenSequence_knowingObservationSequence_boost__emissionCache;
  probabilityForHiddenSequence_knowingObservationSequence_boost__emissionCache = v0;

  v2 = probabilityForHiddenSequence_knowingObservationSequence_boost__emissionCache;

  return [v2 setCountLimit:100];
}

- (double)startProbability:(id)probability
{
  if ([probability unsignedIntegerValue])
  {
    [(NPHMMClassifier *)self stateProbabilities];
    v4 = &v7;
  }

  else
  {
    [(NPHMMClassifier *)self stateProbabilities];
    v4 = &v8;
  }

  v5 = *v4;

  return log(v5);
}

- (double)stateTransitionProbabilityFrom:(id)from to:(id)to
{
  toCopy = to;
  if ([from unsignedIntegerValue])
  {
    [(NPHMMClassifier *)self stateProbabilities];
    v7 = v13;
    v8 = v14;
  }

  else
  {
    [(NPHMMClassifier *)self stateProbabilities];
    v7 = *&v14[3];
    v8 = &v15;
  }

  v9 = *v8;
  unsignedIntegerValue = [toCopy unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  return log(v11);
}

- (double)emissionProbability:(id)probability hiddenState:(unint64_t)state isOOV:(BOOL *)v
{
  probabilityCopy = probability;
  if (v)
  {
    *v = 0;
  }

  v9 = 0.0;
  if (![(NPHMMClassifier *)self isInitial:probabilityCopy]&& ![(NPNameComponentsData *)self->_nameComponentsData collectionForEntry:6 contains:probabilityCopy])
  {
    v11 = _NPStripDiatritics(probabilityCopy, v10);
    v12 = [(NPHMMClassifier *)self compoundsFromName:v11];
    v13 = [v12 componentsJoinedByString:@"*"];

    v14 = [(NPHMMClassifier *)self frequencyForName:v13 type:state];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v)
      {
        *v = 1;
      }

      v9 = 0.0 - log((self->_totalFamilyNamesCount + self->_totalGivenNamesCount));
      goto LABEL_14;
    }

    v9 = v14;
    if (state == 2)
    {
      v15 = log(v14);
      totalFamilyNamesCount = self->_totalFamilyNamesCount;
    }

    else
    {
      if (state)
      {
LABEL_14:

        goto LABEL_15;
      }

      v15 = log(v14);
      totalFamilyNamesCount = self->_totalGivenNamesCount;
    }

    v9 = v15 - log(totalFamilyNamesCount);
    goto LABEL_14;
  }

LABEL_15:

  return v9;
}

- (BOOL)isInitial:(id)initial
{
  v3 = isInitial__onceToken;
  initialCopy = initial;
  if (v3 != -1)
  {
    [NPHMMClassifier isInitial:];
  }

  v5 = [initialCopy stringByTrimmingCharactersInSet:isInitial__initialDelimiterSet];

  v6 = [v5 length] == 1;
  return v6;
}

uint64_t __29__NPHMMClassifier_isInitial___block_invoke()
{
  isInitial__initialDelimiterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)formCompoundGivenName:(id)name
{
  v4 = [name componentsJoinedByString:@"*"];
  v5 = [(NPHMMClassifier *)self frequencyForName:v4 type:0];
  v7 = v5 != 0x7FFFFFFFFFFFFFFFLL && v5 > 0xA;

  return v7;
}

- (BOOL)formCompoundFamilyName:(id)name
{
  v4 = [name componentsJoinedByString:@"*"];
  LOBYTE(self) = [(NPHMMClassifier *)self frequencyForName:v4 type:2]!= 0x7FFFFFFFFFFFFFFFLL;

  return self;
}

- (id)compoundsFromName:(id)name includeSpaceAsDelimiter:(BOOL)delimiter
{
  delimiterCopy = delimiter;
  nameCopy = name;
  if (delimiterCopy)
  {
    if (compoundsFromName_includeSpaceAsDelimiter__onceToken != -1)
    {
      [NPHMMClassifier compoundsFromName:includeSpaceAsDelimiter:];
    }

    v6 = &compoundsFromName_includeSpaceAsDelimiter__compoundsCharacterDelimiterSetIncludingSpace;
  }

  else
  {
    if (compoundsFromName_includeSpaceAsDelimiter__onceToken_56 != -1)
    {
      [NPHMMClassifier compoundsFromName:includeSpaceAsDelimiter:];
    }

    v6 = &compoundsFromName_includeSpaceAsDelimiter__compoundsCharacterDelimiterSet;
  }

  v7 = [nameCopy componentsSeparatedByCharactersInSet:*v6];

  return v7;
}

uint64_t __61__NPHMMClassifier_compoundsFromName_includeSpaceAsDelimiter___block_invoke()
{
  compoundsFromName_includeSpaceAsDelimiter__compoundsCharacterDelimiterSetIncludingSpace = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-| "];

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__NPHMMClassifier_compoundsFromName_includeSpaceAsDelimiter___block_invoke_2()
{
  compoundsFromName_includeSpaceAsDelimiter__compoundsCharacterDelimiterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-|"];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)genderMajorityForGivenName:(id)name
{
  v4 = _NPStripDiatritics(name, a2);
  v5 = [(NPHMMClassifier *)self compoundsFromName:v4 includeSpaceAsDelimiter:1];
  v6 = [v5 componentsJoinedByString:@"*"];

  v7 = [(NPHMMClassifier *)self payloadForName:v6 type:0];
  if (v7 % 0xA == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 % 0xA == 2;
  }

  return v8;
}

- (void)initWithHMMProbabilities:(uint64_t)a1 nameComponentsDate:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NPHMMClassifier.m" lineNumber:90 description:@"Could not load name frequency trie data"];
}

- (void)probabilityForHiddenSequence:(uint64_t)a1 knowingObservationSequence:(uint64_t)a2 boost:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NPHMMClassifier.m" lineNumber:427 description:@"Hidden sequence and observation sequence should have the same counts"];
}

@end
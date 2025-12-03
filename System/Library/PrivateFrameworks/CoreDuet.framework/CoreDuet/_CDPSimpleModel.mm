@interface _CDPSimpleModel
- (_cdp_prediction_result)_newPredictionResultWithSeed:(unsigned int *)seed seedLength:(unint64_t)length realSeedLength:(unint64_t)seedLength maxTrainingEmailID:(unsigned int)d;
- (id)_testingIndices;
- (unsigned)_newIdsForPeople:(id)people length:(unint64_t *)length;
- (void)_printEmailWithID:(unint64_t)d;
- (void)_printPrediction:(_cdp_prediction_result *)prediction;
- (void)_printUserWithID:(unint64_t)d;
- (void)_printUsers:(unsigned int *)users length:(unint64_t)length;
- (void)_reallocModel;
- (void)dealloc;
- (void)loadModel:(id)model;
- (void)makePredictionForGroup:(id)group clientType:(int64_t)type limit:(int64_t)limit completionHandler:(id)handler;
- (void)setLambda:(float)lambda w0:(float)w0;
@end

@implementation _CDPSimpleModel

- (void)_reallocModel
{
  size = self->_size;
  self->_size = 2 * size;
  self->_timestamp = malloc_type_realloc(self->_timestamp, 16 * size, 0x100004000313F17uLL);
  self->_userIsSender = malloc_type_realloc(self->_userIsSender, self->_size, 0x100004077774924uLL);
  self->_userIsThreadInitiator = malloc_type_realloc(self->_userIsThreadInitiator, self->_size, 0x100004077774924uLL);
}

- (void)dealloc
{
  free(self->_timestamp);
  free(self->_userIsSender);
  free(self->_userIsThreadInitiator);
  if (self->_NEmail)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      free(self->_email[v3]);
      v3 = v4;
      v5 = self->_NEmail > v4++;
    }

    while (v5);
  }

  free(self->_email);
  free(self->_emailLength);
  free(self->_email2LogScore);
  if (self->_NPeople)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      free(self->_people2Email[v6]);
      v6 = v7;
      v5 = self->_NPeople > v7++;
    }

    while (v5);
  }

  free(self->_people2Email);
  free(self->_people2EmailLength);
  v8.receiver = self;
  v8.super_class = _CDPSimpleModel;
  [(_CDPSimpleModel *)&v8 dealloc];
}

- (void)loadModel:(id)model
{
  modelCopy = model;
  self->_loaded = 1;
  *&self->_NEmail = xmmword_19190EC10;
  self->_timestamp = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
  self->_userIsSender = malloc_type_calloc(self->_size, 1uLL, 0x100004077774924uLL);
  self->_userIsThreadInitiator = malloc_type_calloc(self->_size, 1uLL, 0x100004077774924uLL);
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:256];
  harvester = [(_CDPSimpleModel *)self harvester];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29___CDPSimpleModel_loadModel___block_invoke;
  v12[3] = &unk_1E73684F0;
  v12[4] = self;
  v13 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29___CDPSimpleModel_loadModel___block_invoke_2;
  v9[3] = &unk_1E7368518;
  v10 = v13;
  v11 = modelCopy;
  v9[4] = self;
  v7 = v13;
  v8 = modelCopy;
  [harvester loadWithLimit:2500 dataPointReader:v12 completion:v9];
}

- (unsigned)_newIdsForPeople:(id)people length:(unint64_t *)length
{
  v24 = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  v7 = malloc_type_calloc([peopleCopy count], 4uLL, 0x100004052888210uLL);
  v8 = self->_people;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = peopleCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(NSArray *)v8 indexOfObject:*(*(&v19 + 1) + 8 * i) inSortedRange:0 options:[(NSArray *)v8 count] usingComparator:256, &__block_literal_global_25];
        if ([(NSArray *)v8 count]&& v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7[v12++] = v15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  if (length)
  {
    *length = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setLambda:(float)lambda w0:(float)w0
{
  self->_lambda = lambda;
  self->_w0 = w0;
  self->_scoresAreDirty = 1;
}

- (_cdp_prediction_result)_newPredictionResultWithSeed:(unsigned int *)seed seedLength:(unint64_t)length realSeedLength:(unint64_t)seedLength maxTrainingEmailID:(unsigned int)d
{
  v87 = *MEMORY[0x1E69E9840];
  if (self->_NEmail - 2501 >= 0xFFFFFFFFFFFFF63CLL)
  {
    seedLengthCopy = seedLength;
    if (self->_scoresAreDirty)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = 0.0;
        if (self->_userIsSender[v11])
        {
          [(_CDPSimpleModel *)self w0];
          v13 = log2f(v14);
        }

        v15 = self->_timestamp[v11];
        [(_CDPSimpleModel *)self lambda];
        v17 = v15 / (v16 * 86400.0);
        self->_email2LogScore[v11] = v13 + v17;
        v11 = v12;
      }

      while (self->_NEmail > v12++);
      self->_scoresAreDirty = 0;
    }

    bzero(v86, 0x2710uLL);
    bzero(v85, 0x2710uLL);
    v82 = &v78;
    v19 = &v78 - ((self->_NPeople * length + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, self->_NPeople * length);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v21 = [standardUserDefaults valueForKey:@"com.apple.coreduetd.people.social.min_seed_proportion"];
    v80 = v21;
    if (v21)
    {
      [v21 floatValue];
      v23 = v22;
    }

    else
    {
      v23 = 0.5;
    }

    v24 = [standardUserDefaults objectForKey:@"com.apple.coreduetd.people.social.improved_scoring"];

    v81 = standardUserDefaults;
    if (v24)
    {
      v83 = [standardUserDefaults BOOLForKey:@"com.apple.coreduetd.people.social.improved_scoring"];
    }

    else
    {
      v83 = 1;
    }

    NEmail = self->_NEmail;
    timestamp = self->_timestamp;
    if (NEmail <= d)
    {
      v27 = (timestamp + (((NEmail << 32) - 0x100000000) >> 29));
    }

    else
    {
      v27 = &timestamp[d];
    }

    v28 = *v27;
    bzero(v84, 0x2710uLL);
    v29 = 1;
    if (length)
    {
      v30 = 0;
      v31 = 0;
      people2Email = self->_people2Email;
      people2EmailLength = self->_people2EmailLength;
      do
      {
        v34 = seed[v30];
        v35 = people2EmailLength[v34];
        if (v35 >= 1)
        {
          v36 = people2Email[v34];
          v37 = &v36[v35];
          do
          {
            v38 = *v36;
            if (*v36 <= d && timestamp[v38] >= v28 + ((self->_lambda * -13.288) * 86400.0))
            {
              v39 = v84[v38];
              v84[v38] = v39 + 1;
              if (!v39)
              {
                v85[v31++] = v38;
              }

              if (self->_userIsSender[v38])
              {
                v40 = self->_emailLength[v38];
                if (v40)
                {
                  v41 = self->_email[v38];
                  do
                  {
                    v42 = *v41++;
                    v19[v30 + v42 * length] = 1;
                    --v40;
                  }

                  while (v40);
                }
              }
            }

            ++v36;
          }

          while (v36 < v37);
        }

        ++v30;
      }

      while (v30 != length);
      if (v31)
      {
        v43 = v28 / (self->_lambda * 86400.0);
        v44 = v31;
        email2LogScore = self->_email2LogScore;
        v46 = v85;
        v47 = v31;
        do
        {
          v49 = *v46++;
          v48 = v49;
          v50 = exp2f(email2LogScore[v49] - v43);
          v51 = v84[v49];
          if (v83)
          {
            v52 = (v50 * (v51 * v51)) / self->_emailLength[v48];
          }

          else
          {
            v52 = v50 * v51;
          }

          *&v86[v48] = v52;
          --v47;
        }

        while (v47);
        v29 = 0;
      }

      else
      {
        v44 = 0;
        v29 = 1;
      }
    }

    else
    {
      v44 = 0;
    }

    v53 = malloc_type_calloc(self->_NPeople, 0x10uLL, 0x1000040451B5BE8uLL);
    v6 = v53;
    NPeople = self->_NPeople;
    if (NPeople)
    {
      LODWORD(v55) = 0;
      v56 = v53;
      do
      {
        v56->var0 = v55;
        ++v56;
        v55 = (v55 + 1);
      }

      while (NPeople > v55);
    }

    if ((v29 & 1) == 0)
    {
      v57 = 0;
      emailLength = self->_emailLength;
      do
      {
        v59 = v85[v57];
        v60 = emailLength[v59];
        if (v60)
        {
          v61 = self->_email[v59];
          v62 = *&v86[v59];
          do
          {
            v63 = *v61++;
            v53[v63].var1 = v62 + v53[v63].var1;
            --v60;
          }

          while (v60);
        }

        ++v57;
      }

      while (v57 != v44);
    }

    requireOutgoingInteraction = [(_CDPSimpleModel *)self requireOutgoingInteraction];
    v65 = v81;
    if (requireOutgoingInteraction)
    {
      v66 = self->_NPeople;
      if (v66)
      {
        v67 = 0;
        v68 = v23 * seedLengthCopy;
        do
        {
          if (length)
          {
            v69 = 0;
            lengthCopy = length;
            v71 = v19;
            do
            {
              v72 = *v71++;
              v69 += v72;
              --lengthCopy;
            }

            while (lengthCopy);
            v73 = v69;
          }

          else
          {
            v73 = 0.0;
          }

          if (v68 >= v73)
          {
            v6[v67].var1 = -1.0;
          }

          ++v67;
          v19 += length;
        }

        while (v67 != v66);
      }
    }

    if (length >= 1)
    {
      v74 = &seed[length];
      do
      {
        v75 = *seed++;
        v6[v75].var1 = -1.0;
      }

      while (seed < v74);
    }
  }

  else
  {
    v6 = 0;
  }

  v76 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)makePredictionForGroup:(id)group clientType:(int64_t)type limit:(int64_t)limit completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v24 = 0;
  v22 = [(_CDPSimpleModel *)self _newIdsForPeople:groupCopy length:&v24];
  v23 = -[_CDPSimpleModel _newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:](self, "_newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:", v22, v24, [groupCopy count], LODWORD(self->_NEmail));
  if (self->_NPeople >= limit)
  {
    NPeople = limit;
  }

  else
  {
    NPeople = self->_NPeople;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:NPeople];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:NPeople];
  limitCopy = self->_NPeople;
  if (limitCopy >= limit)
  {
    limitCopy = limit;
  }

  if (limitCopy)
  {
    v16 = 0;
    p_var1 = &v23->var1;
    do
    {
      LODWORD(v14) = p_var1->var0;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
      [v12 addObject:v18];

      v19 = [(NSArray *)self->_people objectAtIndexedSubscript:p_var1[-1].var3];
      [v13 addObject:v19];

      ++v16;
      limitCopy2 = self->_NPeople;
      if (limitCopy2 >= limit)
      {
        limitCopy2 = limit;
      }

      ++p_var1;
    }

    while (limitCopy2 > v16);
  }

  v21 = [[_CDPPredictionResult alloc] initWithMembers:v13 andScores:v12];
  handlerCopy[2](handlerCopy, v21);

  free(v22);
  free(v23);
}

- (id)_testingIndices
{
  p_testingIndices = &self->_testingIndices;
  testingIndices = self->_testingIndices;
  if (testingIndices)
  {
    indexSet = testingIndices;
  }

  else
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    NEmail = self->_NEmail;
    if (NEmail > NEmail / 3)
    {
      v7 = NEmail / 3;
      do
      {
        if (self->_userIsSender[v7] && self->_userIsThreadInitiator[v7] && self->_emailLength[v7] - 3 <= 7)
        {
          [(NSIndexSet *)indexSet addIndex:v7];
          NEmail = self->_NEmail;
        }

        ++v7;
      }

      while (NEmail > v7);
    }

    objc_storeStrong(p_testingIndices, indexSet);
  }

  return indexSet;
}

- (void)_printEmailWithID:(unint64_t)d
{
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"yyyy-MM-dd"];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_timestamp[d]];
  v6 = [v7 stringFromDate:v5];
  printf("%s ", [v6 UTF8String]);

  [(_CDPSimpleModel *)self _printUsers:self->_email[d] length:self->_emailLength[d]];
}

- (void)_printUsers:(unsigned int *)users length:(unint64_t)length
{
  if (length >= 1)
  {
    usersCopy = users;
    v7 = &users[length];
    do
    {
      v8 = *usersCopy++;
      v9 = [(NSArray *)self->_people objectAtIndexedSubscript:v8];
      printf("%s ", [v9 UTF8String]);
    }

    while (usersCopy < v7);
  }

  putchar(10);
}

- (void)_printUserWithID:(unint64_t)d
{
  v4 = [(NSArray *)self->_people objectAtIndexedSubscript:d];
  v3 = v4;
  puts([v4 UTF8String]);
}

- (void)_printPrediction:(_cdp_prediction_result *)prediction
{
  v5 = malloc_type_calloc(self->_NPeople, 0x10uLL, 0x1000040451B5BE8uLL);
  memcpy(v5, prediction, 16 * self->_NPeople);
  qsort_b(v5, self->_NPeople, 0x10uLL, &__block_literal_global_38);
  for (i = 0; i != 80; i += 16)
  {
    v7 = [(NSArray *)self->_people objectAtIndexedSubscript:*&v5[i]];
    printf("%s %g\n", [v7 UTF8String], *&v5[i + 4]);
  }

  free(v5);
}

@end
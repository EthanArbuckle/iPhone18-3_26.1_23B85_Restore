@interface IRCandidateInspectionGenerator
- (IRCandidateInspectionGenerator)initWithClassification:(int64_t)classification ClassificationDescription:(id)description sameSpaceBasedOnMiLo:(BOOL)lo sameSpaceBasedOnBrokeredLOI:(BOOL)i sameSpaceBasedOnPDRFence:(BOOL)fence sameSpaceBasedOnUWB:(BOOL)b sameSpaceBasedOnBLE:(BOOL)e sameSpaceBasedOnHistory:(BOOL)self0 candidateSelectorReasons:(id)self1 forCandidate:(id)self2;
- (id)exportCandidateInspectionAsDictionary;
- (id)initClassification:(int64_t)classification andClassificationDescription:(id)description forCandidate:(id)candidate;
@end

@implementation IRCandidateInspectionGenerator

- (id)initClassification:(int64_t)classification andClassificationDescription:(id)description forCandidate:(id)candidate
{
  descriptionCopy = description;
  candidateCopy = candidate;
  v14.receiver = self;
  v14.super_class = IRCandidateInspectionGenerator;
  v11 = [(IRCandidateInspectionGenerator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_candidate, candidate);
    v12->_classification = classification;
    objc_storeStrong(&v12->_classificationDescription, description);
  }

  return v12;
}

- (IRCandidateInspectionGenerator)initWithClassification:(int64_t)classification ClassificationDescription:(id)description sameSpaceBasedOnMiLo:(BOOL)lo sameSpaceBasedOnBrokeredLOI:(BOOL)i sameSpaceBasedOnPDRFence:(BOOL)fence sameSpaceBasedOnUWB:(BOOL)b sameSpaceBasedOnBLE:(BOOL)e sameSpaceBasedOnHistory:(BOOL)self0 candidateSelectorReasons:(id)self1 forCandidate:(id)self2
{
  descriptionCopy = description;
  reasonsCopy = reasons;
  candidateCopy = candidate;
  v25.receiver = self;
  v25.super_class = IRCandidateInspectionGenerator;
  v20 = [(IRCandidateInspectionGenerator *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_candidate, candidate);
    v21->_classification = classification;
    objc_storeStrong(&v21->_classificationDescription, description);
    v21->_sameSpaceBasedOnMiLo = lo;
    v21->_sameSpaceBasedOnBrokeredLOI = i;
    v21->_sameSpaceBasedOnPDRFence = fence;
    v21->_sameSpaceBasedOnUWB = b;
    v21->_sameSpaceBasedOnBLE = e;
    v21->_sameSpaceBasedOnHistory = history;
    objc_storeStrong(&v21->_candidateSelectorReasons, reasons);
  }

  return v21;
}

- (id)exportCandidateInspectionAsDictionary
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnMiLo])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 setObject:v4 forKeyedSubscript:@"sameSpaceBasedOnMiLo"];
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnBrokeredLOI])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 setObject:v5 forKeyedSubscript:@"sameSpaceBasedOnBrokeredLOI"];
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnPDRFence])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 setObject:v6 forKeyedSubscript:@"sameSpaceBasedOnPDRFence"];
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnUWB])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 setObject:v7 forKeyedSubscript:@"sameSpaceBasedOnUWB"];
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnBLE])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 setObject:v8 forKeyedSubscript:@"sameSpaceBasedOnBLE"];
  if ([(IRCandidateInspectionGenerator *)self sameSpaceBasedOnHistory])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setObject:v9 forKeyedSubscript:@"sameSpaceBasedOnHistory"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  candidateSelectorReasons = [(IRCandidateInspectionGenerator *)self candidateSelectorReasons];
  v11 = [candidateSelectorReasons countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(candidateSelectorReasons);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        candidateSelectorReasons2 = [(IRCandidateInspectionGenerator *)self candidateSelectorReasons];
        v17 = [candidateSelectorReasons2 objectForKeyedSubscript:v15];
        if (v17)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        [v3 setObject:v18 forKeyedSubscript:v15];
      }

      v12 = [candidateSelectorReasons countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
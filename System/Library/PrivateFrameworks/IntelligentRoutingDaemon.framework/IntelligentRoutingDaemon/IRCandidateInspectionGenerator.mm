@interface IRCandidateInspectionGenerator
- (IRCandidateInspectionGenerator)initWithClassification:(int64_t)a3 ClassificationDescription:(id)a4 sameSpaceBasedOnMiLo:(BOOL)a5 sameSpaceBasedOnBrokeredLOI:(BOOL)a6 sameSpaceBasedOnPDRFence:(BOOL)a7 sameSpaceBasedOnUWB:(BOOL)a8 sameSpaceBasedOnBLE:(BOOL)a9 sameSpaceBasedOnHistory:(BOOL)a10 candidateSelectorReasons:(id)a11 forCandidate:(id)a12;
- (id)exportCandidateInspectionAsDictionary;
- (id)initClassification:(int64_t)a3 andClassificationDescription:(id)a4 forCandidate:(id)a5;
@end

@implementation IRCandidateInspectionGenerator

- (id)initClassification:(int64_t)a3 andClassificationDescription:(id)a4 forCandidate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IRCandidateInspectionGenerator;
  v11 = [(IRCandidateInspectionGenerator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_candidate, a5);
    v12->_classification = a3;
    objc_storeStrong(&v12->_classificationDescription, a4);
  }

  return v12;
}

- (IRCandidateInspectionGenerator)initWithClassification:(int64_t)a3 ClassificationDescription:(id)a4 sameSpaceBasedOnMiLo:(BOOL)a5 sameSpaceBasedOnBrokeredLOI:(BOOL)a6 sameSpaceBasedOnPDRFence:(BOOL)a7 sameSpaceBasedOnUWB:(BOOL)a8 sameSpaceBasedOnBLE:(BOOL)a9 sameSpaceBasedOnHistory:(BOOL)a10 candidateSelectorReasons:(id)a11 forCandidate:(id)a12
{
  v18 = a4;
  v19 = a11;
  v24 = a12;
  v25.receiver = self;
  v25.super_class = IRCandidateInspectionGenerator;
  v20 = [(IRCandidateInspectionGenerator *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_candidate, a12);
    v21->_classification = a3;
    objc_storeStrong(&v21->_classificationDescription, a4);
    v21->_sameSpaceBasedOnMiLo = a5;
    v21->_sameSpaceBasedOnBrokeredLOI = a6;
    v21->_sameSpaceBasedOnPDRFence = a7;
    v21->_sameSpaceBasedOnUWB = a8;
    v21->_sameSpaceBasedOnBLE = a9;
    v21->_sameSpaceBasedOnHistory = a10;
    objc_storeStrong(&v21->_candidateSelectorReasons, a11);
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
  v10 = [(IRCandidateInspectionGenerator *)self candidateSelectorReasons];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [(IRCandidateInspectionGenerator *)self candidateSelectorReasons];
        v17 = [v16 objectForKeyedSubscript:v15];
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

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
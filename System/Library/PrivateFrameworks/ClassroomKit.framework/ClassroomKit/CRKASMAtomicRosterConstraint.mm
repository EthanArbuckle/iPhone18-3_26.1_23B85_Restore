@interface CRKASMAtomicRosterConstraint
+ (id)constraintWithRosterEvaluator:(id)evaluator;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFulfilledByRoster:(id)roster;
- (CRKASMAtomicRosterConstraint)initWithIdentifier:(id)identifier rosterEvaluator:(id)evaluator;
- (unint64_t)hash;
@end

@implementation CRKASMAtomicRosterConstraint

- (CRKASMAtomicRosterConstraint)initWithIdentifier:(id)identifier rosterEvaluator:(id)evaluator
{
  identifierCopy = identifier;
  evaluatorCopy = evaluator;
  v14.receiver = self;
  v14.super_class = CRKASMAtomicRosterConstraint;
  v9 = [(CRKASMAtomicRosterConstraint *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = MEMORY[0x245D3AAD0](evaluatorCopy);
    rosterEvaluator = v10->_rosterEvaluator;
    v10->_rosterEvaluator = v11;
  }

  return v10;
}

+ (id)constraintWithRosterEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = [self alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v7 = [v5 initWithIdentifier:uUID rosterEvaluator:evaluatorCopy];

  return v7;
}

- (BOOL)isFulfilledByRoster:(id)roster
{
  rosterCopy = roster;
  rosterEvaluator = [(CRKASMAtomicRosterConstraint *)self rosterEvaluator];
  v6 = (rosterEvaluator)[2](rosterEvaluator, rosterCopy);

  return v6;
}

- (unint64_t)hash
{
  identifier = [(CRKASMAtomicRosterConstraint *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v30 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v5 = [@"identifier" componentsSeparatedByString:{@", "}];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_13;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  selfCopy = self;
  v9 = equalCopy;
  v10 = v7;
  if (selfCopy == v9)
  {
    v21 = 1;
  }

  else if ([(CRKASMAtomicRosterConstraint *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKASMAtomicRosterConstraint *)selfCopy valueForKey:v16];
          v19 = [(CRKASMAtomicRosterConstraint *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end
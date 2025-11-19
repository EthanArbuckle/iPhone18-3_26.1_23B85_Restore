@interface IRCandidatesContainerDO
+ (id)candidatesContainerDOWithCandidates:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCandidatesContainerDO:(id)a3;
- (IRCandidatesContainerDO)initWithCandidates:(id)a3;
- (IRCandidatesContainerDO)initWithCoder:(id)a3;
- (id)airplayOrUnknownCandidates;
- (id)candidateForCandidateIdentifier:(id)a3;
- (id)candidateNameForCandidateIdentifier:(id)a3;
- (id)copyWithReplacementCandidates:(id)a3;
- (id)description;
- (id)exportAsDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRCandidatesContainerDO

- (id)airplayOrUnknownCandidates
{
  v2 = [(IRCandidatesContainerDO *)self candidates];
  v3 = [v2 allWhere:&__block_literal_global_1];

  return v3;
}

- (id)exportAsDictionary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IRCandidatesContainerDO *)self candidates];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 exportAsDictionary];
        v11 = [v9 candidateIdentifier];
        [v3 setObject:v10 forKeyedSubscript:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)candidateNameForCandidateIdentifier:(id)a3
{
  v3 = [(IRCandidatesContainerDO *)self candidateForCandidateIdentifier:a3];
  v4 = [v3 name];

  return v4;
}

- (id)candidateForCandidateIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IRCandidatesContainerDO *)self candidates];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__IRCandidatesContainerDO_Extension__candidateForCandidateIdentifier___block_invoke;
  v9[3] = &unk_2797E0CD0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 firstWhere:v9];

  return v7;
}

uint64_t __70__IRCandidatesContainerDO_Extension__candidateForCandidateIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (IRCandidatesContainerDO)initWithCandidates:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IRCandidatesContainerDO;
  v6 = [(IRCandidatesContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidates, a3);
  }

  return v7;
}

+ (id)candidatesContainerDOWithCandidates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCandidates:v4];

  return v5;
}

- (id)copyWithReplacementCandidates:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithCandidates:v3];

  return v4;
}

- (BOOL)isEqualToCandidatesContainerDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = self->_candidates == 0, [v4 candidates], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    candidates = self->_candidates;
    if (candidates)
    {
      v10 = [v5 candidates];
      v11 = [(NSSet *)candidates isEqual:v10];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRCandidatesContainerDO *)self isEqualToCandidatesContainerDO:v5];
  }

  return v6;
}

- (IRCandidatesContainerDO)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"candidates"];

  if (v8 || ([v4 error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    self = [(IRCandidatesContainerDO *)self initWithCandidates:v8];
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  candidates = self->_candidates;
  if (candidates)
  {
    [a3 encodeObject:candidates forKey:@"candidates"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRCandidatesContainerDO | candidates:%@>", self->_candidates];

  return v2;
}

@end
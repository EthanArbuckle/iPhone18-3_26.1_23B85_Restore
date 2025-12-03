@interface IRCandidatesContainerDO
+ (id)candidatesContainerDOWithCandidates:(id)candidates;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCandidatesContainerDO:(id)o;
- (IRCandidatesContainerDO)initWithCandidates:(id)candidates;
- (IRCandidatesContainerDO)initWithCoder:(id)coder;
- (id)airplayOrUnknownCandidates;
- (id)candidateForCandidateIdentifier:(id)identifier;
- (id)candidateNameForCandidateIdentifier:(id)identifier;
- (id)copyWithReplacementCandidates:(id)candidates;
- (id)description;
- (id)exportAsDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRCandidatesContainerDO

- (id)airplayOrUnknownCandidates
{
  candidates = [(IRCandidatesContainerDO *)self candidates];
  v3 = [candidates allWhere:&__block_literal_global_1];

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
  candidates = [(IRCandidatesContainerDO *)self candidates];
  v5 = [candidates countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(candidates);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        exportAsDictionary = [v9 exportAsDictionary];
        candidateIdentifier = [v9 candidateIdentifier];
        [v3 setObject:exportAsDictionary forKeyedSubscript:candidateIdentifier];
      }

      v6 = [candidates countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)candidateNameForCandidateIdentifier:(id)identifier
{
  v3 = [(IRCandidatesContainerDO *)self candidateForCandidateIdentifier:identifier];
  name = [v3 name];

  return name;
}

- (id)candidateForCandidateIdentifier:(id)identifier
{
  identifierCopy = identifier;
  candidates = [(IRCandidatesContainerDO *)self candidates];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__IRCandidatesContainerDO_Extension__candidateForCandidateIdentifier___block_invoke;
  v9[3] = &unk_2797E0CD0;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [candidates firstWhere:v9];

  return v7;
}

uint64_t __70__IRCandidatesContainerDO_Extension__candidateForCandidateIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidateIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (IRCandidatesContainerDO)initWithCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v9.receiver = self;
  v9.super_class = IRCandidatesContainerDO;
  v6 = [(IRCandidatesContainerDO *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidates, candidates);
  }

  return v7;
}

+ (id)candidatesContainerDOWithCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v5 = [[self alloc] initWithCandidates:candidatesCopy];

  return v5;
}

- (id)copyWithReplacementCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v4 = [objc_alloc(objc_opt_class()) initWithCandidates:candidatesCopy];

  return v4;
}

- (BOOL)isEqualToCandidatesContainerDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy || (v6 = self->_candidates == 0, [oCopy candidates], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8))
  {
    v11 = 0;
  }

  else
  {
    candidates = self->_candidates;
    if (candidates)
    {
      candidates = [v5 candidates];
      v11 = [(NSSet *)candidates isEqual:candidates];
    }

    else
    {
      v11 = 1;
    }
  }

  return v11 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRCandidatesContainerDO *)self isEqualToCandidatesContainerDO:v5];
  }

  return v6;
}

- (IRCandidatesContainerDO)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"candidates"];

  if (v8 || ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    self = [(IRCandidatesContainerDO *)self initWithCandidates:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  candidates = self->_candidates;
  if (candidates)
  {
    [coder encodeObject:candidates forKey:@"candidates"];
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<IRCandidatesContainerDO | candidates:%@>", self->_candidates];

  return v2;
}

@end
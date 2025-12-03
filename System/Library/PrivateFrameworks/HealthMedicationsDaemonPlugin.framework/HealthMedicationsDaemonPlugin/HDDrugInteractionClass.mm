@interface HDDrugInteractionClass
- (BOOL)isEqual:(id)equal;
- (HDDrugInteractionClass)init;
- (HDDrugInteractionClass)initWithCoder:(id)coder;
- (HDDrugInteractionClass)initWithName:(id)name relationships:(id)relationships ancestorIdentifier:(id)identifier ontologyIdentifier:(id)ontologyIdentifier validRegionCodes:(id)codes;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDDrugInteractionClass

- (HDDrugInteractionClass)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDDrugInteractionClass)initWithName:(id)name relationships:(id)relationships ancestorIdentifier:(id)identifier ontologyIdentifier:(id)ontologyIdentifier validRegionCodes:(id)codes
{
  nameCopy = name;
  relationshipsCopy = relationships;
  identifierCopy = identifier;
  ontologyIdentifierCopy = ontologyIdentifier;
  codesCopy = codes;
  if (!relationshipsCopy)
  {
    [HDDrugInteractionClass initWithName:a2 relationships:self ancestorIdentifier:? ontologyIdentifier:? validRegionCodes:?];
  }

  v22.receiver = self;
  v22.super_class = HDDrugInteractionClass;
  v18 = -[HKDrugInteractionClass initWithName:relationshipCount:ancestorIdentifier:ontologyIdentifier:validRegionCodes:](&v22, sel_initWithName_relationshipCount_ancestorIdentifier_ontologyIdentifier_validRegionCodes_, nameCopy, [relationshipsCopy count], identifierCopy, ontologyIdentifierCopy, codesCopy);
  if (v18)
  {
    v19 = [relationshipsCopy copy];
    relationships = v18->_relationships;
    v18->_relationships = v19;
  }

  return v18;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = HDDrugInteractionClass;
  v3 = [(HKDrugInteractionClass *)&v5 hash];
  return [(NSArray *)self->_relationships hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v10.receiver = self;
      v10.super_class = HDDrugInteractionClass;
      if (![(HKDrugInteractionClass *)&v10 isEqual:v5])
      {
        goto LABEL_9;
      }

      relationships = self->_relationships;
      v7 = v5->_relationships;
      if (relationships == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSArray *)relationships isEqualToArray:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = [(HKDrugInteractionClass *)self name];
  relationshipCount = [(HKDrugInteractionClass *)self relationshipCount];
  ancestorIdentifier = [(HKDrugInteractionClass *)self ancestorIdentifier];
  identifier = [(HKDrugInteractionClass *)self identifier];
  validRegionCodes = [(HKDrugInteractionClass *)self validRegionCodes];
  allObjects = [validRegionCodes allObjects];
  v11 = [allObjects componentsJoinedByString:{@", "}];
  v12 = [v3 stringWithFormat:@"<%@:%p name:%@, relationship count:%ld, ancestorIdentifier: %@, ontologyIdentifier:%@, validRegionCodes:[%@]>", v4, self, name, relationshipCount, ancestorIdentifier, identifier, v11];

  return v12;
}

- (HDDrugInteractionClass)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HDDrugInteractionClass;
  return [(HKDrugInteractionClass *)&v4 initWithCoder:coder];
}

- (void)initWithName:(uint64_t)a1 relationships:(uint64_t)a2 ancestorIdentifier:ontologyIdentifier:validRegionCodes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDDrugInteractionClass.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"relationships != nil"}];
}

@end
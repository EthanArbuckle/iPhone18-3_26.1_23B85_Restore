@interface HKDrugInteractionClass
- (BOOL)isEqual:(id)a3;
- (HKDrugInteractionClass)init;
- (HKDrugInteractionClass)initWithCoder:(id)a3;
- (HKDrugInteractionClass)initWithName:(id)a3 relationshipCount:(unint64_t)a4 ancestorIdentifier:(id)a5 ontologyIdentifier:(id)a6 validRegionCodes:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDrugInteractionClass

- (HKDrugInteractionClass)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDrugInteractionClass)initWithName:(id)a3 relationshipCount:(unint64_t)a4 ancestorIdentifier:(id)a5 ontologyIdentifier:(id)a6 validRegionCodes:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDrugInteractionClass initWithName:a2 relationshipCount:self ancestorIdentifier:? ontologyIdentifier:? validRegionCodes:?];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  [HKDrugInteractionClass initWithName:a2 relationshipCount:self ancestorIdentifier:? ontologyIdentifier:? validRegionCodes:?];
LABEL_3:
  v27.receiver = self;
  v27.super_class = HKDrugInteractionClass;
  v17 = [(HKDrugInteractionClass *)&v27 init];
  if (v17)
  {
    v18 = [v13 copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_relationshipCount = a4;
    v20 = [v14 copy];
    ancestorIdentifier = v17->_ancestorIdentifier;
    v17->_ancestorIdentifier = v20;

    v22 = [v15 copy];
    identifier = v17->_identifier;
    v17->_identifier = v22;

    v24 = [v16 copy];
    validRegionCodes = v17->_validRegionCodes;
    v17->_validRegionCodes = v24;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v11 = *&self->_name;
  ancestorIdentifier = self->_ancestorIdentifier;
  identifier = self->_identifier;
  v7 = [(NSSet *)self->_validRegionCodes allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"<%@:%p name:%@, relationship count:%ld, ancestorIdentifier: %@, ontologyIdentifier:%@, validRegionCodes:[%@]>", v4, self, v11, ancestorIdentifier, identifier, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(HKConceptIdentifier *)self->_ancestorIdentifier hash]^ v3;
  v5 = v4 ^ [(HKConceptIdentifier *)self->_identifier hash]^ self->_relationshipCount;
  return v5 ^ [(NSSet *)self->_validRegionCodes hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      name = self->_name;
      v7 = v5->_name;
      if (name != v7 && (!v7 || ![(NSString *)name isEqualToString:?]))
      {
        goto LABEL_18;
      }

      ancestorIdentifier = self->_ancestorIdentifier;
      v9 = v5->_ancestorIdentifier;
      if (ancestorIdentifier != v9 && (!v9 || ![(HKConceptIdentifier *)ancestorIdentifier isEqual:?]))
      {
        goto LABEL_18;
      }

      identifier = self->_identifier;
      v11 = v5->_identifier;
      if (identifier != v11 && (!v11 || ![(HKConceptIdentifier *)identifier isEqual:?]))
      {
        goto LABEL_18;
      }

      if (self->_relationshipCount != v5->_relationshipCount)
      {
        goto LABEL_18;
      }

      validRegionCodes = self->_validRegionCodes;
      v13 = v5->_validRegionCodes;
      if (validRegionCodes == v13)
      {
        v14 = 1;
        goto LABEL_19;
      }

      if (v13)
      {
        v14 = [(NSSet *)validRegionCodes isEqualToSet:?];
      }

      else
      {
LABEL_18:
        v14 = 0;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_20:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"Name"];
  [v5 encodeObject:self->_ancestorIdentifier forKey:@"AncestorOntologyIdentifier"];
  [v5 encodeObject:self->_identifier forKey:@"OntologyIdentifier"];
  [v5 encodeInteger:self->_relationshipCount forKey:@"RelationshipCount"];
  [v5 encodeObject:self->_validRegionCodes forKey:@"ValidRegionCodes"];
}

- (HKDrugInteractionClass)initWithCoder:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = HKDrugInteractionClass;
  v6 = [(HKDrugInteractionClass *)&v17 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v6->_name;
    v6->_name = v7;

    v6->_relationshipCount = [v5 decodeIntegerForKey:@"RelationshipCount"];
    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"AncestorOntologyIdentifier"];
    ancestorIdentifier = v6->_ancestorIdentifier;
    v6->_ancestorIdentifier = v9;

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"OntologyIdentifier"];
    identifier = v6->_identifier;
    v6->_identifier = v11;

    v13 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v14 = [v5 decodeObjectOfClasses:v13 forKey:@"ValidRegionCodes"];
    validRegionCodes = v6->_validRegionCodes;
    v6->_validRegionCodes = v14;

    if (!v6->_identifier)
    {
      [(HKDrugInteractionClass *)a2 initWithCoder:v6];
    }
  }

  return v6;
}

- (void)initWithName:(uint64_t)a1 relationshipCount:(uint64_t)a2 ancestorIdentifier:ontologyIdentifier:validRegionCodes:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDrugInteractionClass.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"ancestorIdentifer"}];
}

- (void)initWithName:(uint64_t)a1 relationshipCount:(uint64_t)a2 ancestorIdentifier:ontologyIdentifier:validRegionCodes:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDrugInteractionClass.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKDrugInteractionClass.m" lineNumber:116 description:@"Identifier should not be nil"];
}

@end
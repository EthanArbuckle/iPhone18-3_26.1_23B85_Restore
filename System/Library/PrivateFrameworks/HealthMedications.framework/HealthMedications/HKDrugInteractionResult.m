@interface HKDrugInteractionResult
- (BOOL)hasSameAncestorIdentifiersAsInteractionResult:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKDrugInteractionResult)init;
- (HKDrugInteractionResult)initWithCoder:(id)a3;
- (HKDrugInteractionResult)initWithFirstInteractionClass:(id)a3 secondInteractionClass:(id)a4 severity:(id)a5 educationContent:(id)a6 ontologyIdentifier:(id)a7 validRegionCodes:(id)a8;
- (NSString)uniqueIdentifier;
- (id)description;
- (id)interactionClasses;
- (uint64_t)hasEquivalentFirstAncestorIdentifier:(void *)a3 secondAncestorIdentifier:;
- (uint64_t)hasEquivalentFirstInteractionClass:(void *)a3 secondInteractionClass:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDrugInteractionResult

- (HKDrugInteractionResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDrugInteractionResult)initWithFirstInteractionClass:(id)a3 secondInteractionClass:(id)a4 severity:(id)a5 educationContent:(id)a6 ontologyIdentifier:(id)a7 validRegionCodes:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
LABEL_3:
  if (![v14 isEqual:v15])
  {
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_12:
    [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v18)
  {
    goto LABEL_6;
  }

LABEL_13:
  [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
LABEL_6:
  v34.receiver = self;
  v34.super_class = HKDrugInteractionResult;
  v20 = [(HKDrugInteractionResult *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    firstInteractionClass = v20->_firstInteractionClass;
    v20->_firstInteractionClass = v21;

    v23 = [v15 copy];
    secondInteractionClass = v20->_secondInteractionClass;
    v20->_secondInteractionClass = v23;

    v25 = [v16 copy];
    severity = v20->_severity;
    v20->_severity = v25;

    v27 = [v17 copy];
    educationContent = v20->_educationContent;
    v20->_educationContent = v27;

    v29 = [v18 copy];
    identifier = v20->_identifier;
    v20->_identifier = v29;

    v31 = [v19 copy];
    validRegionCodes = v20->_validRegionCodes;
    v20->_validRegionCodes = v31;
  }

  return v20;
}

- (NSString)uniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HKConceptIdentifier *)self->_identifier rawIdentifier];
  v5 = [(HKDrugInteractionClass *)self->_firstInteractionClass uniqueIdentifier];
  v6 = [(HKDrugInteractionClass *)self->_secondInteractionClass uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"%ld_%@_%@", v4, v5, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v13 = *&self->_firstInteractionClass;
  severity = self->_severity;
  educationContent = self->_educationContent;
  v7 = HKStringFromBool();
  identifier = self->_identifier;
  v9 = [(NSSet *)self->_validRegionCodes allObjects];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [v3 stringWithFormat:@"<%@:%p\nfirst interaction class: %@, \nsecond interaction class: %@, \nseverity: %@, \neducationPresent: %@, \nontologyIdentifier: %@, \nvalidRegionCodes:[%@]>", v4, self, v13, severity, v7, identifier, v10];

  return v11;
}

- (id)interactionClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  secondInteractionClass = self->_secondInteractionClass;
  v6[0] = self->_firstInteractionClass;
  v6[1] = secondInteractionClass;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasSameAncestorIdentifiersAsInteractionResult:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = self;
  v5 = a3;
  v6 = [v5 firstInteractionClass];
  v7 = [v6 ancestorIdentifier];
  v8 = [v5 secondInteractionClass];

  v9 = [v8 ancestorIdentifier];
  LOBYTE(v4) = [(HKDrugInteractionResult *)v4 hasEquivalentFirstAncestorIdentifier:v7 secondAncestorIdentifier:v9];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HKDrugInteractionClass *)self->_firstInteractionClass hash];
  v4 = [(HKDrugInteractionClass *)self->_secondInteractionClass hash]^ v3;
  return v4 ^ [(HKConceptIdentifier *)self->_identifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    if (![(HKDrugInteractionResult *)self hasEquivalentFirstInteractionClass:v7->_secondInteractionClass secondInteractionClass:?])
    {
      goto LABEL_10;
    }

    identifier = self->_identifier;
    v9 = v7->_identifier;
    if (identifier == v9)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (v9)
    {
      v5 = [(HKConceptIdentifier *)identifier isEqual:?];
    }

    else
    {
LABEL_10:
      v5 = 0;
    }

LABEL_12:

    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  firstInteractionClass = self->_firstInteractionClass;
  v5 = a3;
  [v5 encodeObject:firstInteractionClass forKey:@"FirstInteractionClass"];
  [v5 encodeObject:self->_secondInteractionClass forKey:@"SecondInteractionClass"];
  [v5 encodeObject:self->_severity forKey:@"Severity"];
  [v5 encodeObject:self->_educationContent forKey:@"EducationContent"];
  [v5 encodeObject:self->_identifier forKey:@"OntologyIdentifier"];
  [v5 encodeObject:self->_validRegionCodes forKey:@"ValidRegionCodes"];
}

- (HKDrugInteractionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HKDrugInteractionResult;
  v5 = [(HKDrugInteractionResult *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstInteractionClass"];
    firstInteractionClass = v5->_firstInteractionClass;
    v5->_firstInteractionClass = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecondInteractionClass"];
    secondInteractionClass = v5->_secondInteractionClass;
    v5->_secondInteractionClass = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EducationContent"];
    educationContent = v5->_educationContent;
    v5->_educationContent = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OntologyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;

    v16 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ValidRegionCodes"];
    validRegionCodes = v5->_validRegionCodes;
    v5->_validRegionCodes = v17;

    if (!v5->_firstInteractionClass)
    {
      [HKDrugInteractionResult initWithCoder:];
    }

    if (!v5->_secondInteractionClass)
    {
      [HKDrugInteractionResult initWithCoder:];
    }

    if (!v5->_identifier)
    {
      [HKDrugInteractionResult initWithCoder:];
    }
  }

  return v5;
}

- (uint64_t)hasEquivalentFirstAncestorIdentifier:(void *)a3 secondAncestorIdentifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [*(a1 + 8) ancestorIdentifier];
    if (v7 == v5)
    {
      v9 = 1;
    }

    else if (v5)
    {
      v8 = [*(a1 + 8) ancestorIdentifier];
      v9 = [v8 isEqual:v5];
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 16) ancestorIdentifier];
    if (v10 == v6)
    {
      v12 = 1;
    }

    else if (v6)
    {
      v11 = [*(a1 + 16) ancestorIdentifier];
      v12 = [v11 isEqual:v6];
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(a1 + 8) ancestorIdentifier];
    if (v13 == v6)
    {
      v15 = 1;
    }

    else if (v6)
    {
      v14 = [*(a1 + 8) ancestorIdentifier];
      v15 = [v14 isEqual:v6];
    }

    else
    {
      v15 = 0;
    }

    v16 = [*(a1 + 16) ancestorIdentifier];
    if (v16 == v5)
    {
      v18 = 1;
    }

    else if (v5)
    {
      v17 = [*(a1 + 16) ancestorIdentifier];
      v18 = [v17 isEqual:v5];
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(a1) = v9 & v12 | v15 & v18;
  }

  return a1 & 1;
}

- (uint64_t)hasEquivalentFirstInteractionClass:(void *)a3 secondInteractionClass:
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 8);
  if (v7 == v5)
  {
    v8 = 1;
  }

  else if (v5)
  {
    v8 = [v7 isEqual:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 16);
  if (v9 == v6)
  {
    v10 = 1;
  }

  else
  {
    if (!v6)
    {
      v10 = 0;
      v12 = *(a1 + 8) == 0;
      goto LABEL_17;
    }

    v10 = [v9 isEqual:v6];
  }

  v11 = *(a1 + 8);
  if (v11 == v6)
  {
    v12 = 1;
  }

  else if (v6)
  {
    v12 = [v11 isEqual:v6];
  }

  else
  {
    v12 = 0;
  }

LABEL_17:
  v13 = *(a1 + 16);
  if (v13 == v5)
  {
    v14 = 1;
  }

  else if (v5)
  {
    v14 = [v13 isEqual:v5];
  }

  else
  {
    v14 = 0;
  }

  LOBYTE(a1) = v8 & v10 | v12 & v14;
LABEL_23:

  return a1 & 1;
}

- (void)initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"firstInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"secondInteractionClass != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"! [firstInteractionClass isEqual:secondInteractionClass]" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"severity != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
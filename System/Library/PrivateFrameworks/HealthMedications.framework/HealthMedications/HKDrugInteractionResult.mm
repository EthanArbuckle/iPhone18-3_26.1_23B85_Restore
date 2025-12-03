@interface HKDrugInteractionResult
- (BOOL)hasSameAncestorIdentifiersAsInteractionResult:(id)result;
- (BOOL)isEqual:(id)equal;
- (HKDrugInteractionResult)init;
- (HKDrugInteractionResult)initWithCoder:(id)coder;
- (HKDrugInteractionResult)initWithFirstInteractionClass:(id)class secondInteractionClass:(id)interactionClass severity:(id)severity educationContent:(id)content ontologyIdentifier:(id)identifier validRegionCodes:(id)codes;
- (NSString)uniqueIdentifier;
- (id)description;
- (id)interactionClasses;
- (uint64_t)hasEquivalentFirstAncestorIdentifier:(void *)identifier secondAncestorIdentifier:;
- (uint64_t)hasEquivalentFirstInteractionClass:(void *)class secondInteractionClass:;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKDrugInteractionResult)initWithFirstInteractionClass:(id)class secondInteractionClass:(id)interactionClass severity:(id)severity educationContent:(id)content ontologyIdentifier:(id)identifier validRegionCodes:(id)codes
{
  classCopy = class;
  interactionClassCopy = interactionClass;
  severityCopy = severity;
  contentCopy = content;
  identifierCopy = identifier;
  codesCopy = codes;
  if (classCopy)
  {
    if (interactionClassCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
    if (interactionClassCopy)
    {
      goto LABEL_3;
    }
  }

  [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
LABEL_3:
  if (![classCopy isEqual:interactionClassCopy])
  {
    if (severityCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
    if (identifierCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  [HKDrugInteractionResult initWithFirstInteractionClass:secondInteractionClass:severity:educationContent:ontologyIdentifier:validRegionCodes:];
  if (!severityCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (identifierCopy)
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
    v21 = [classCopy copy];
    firstInteractionClass = v20->_firstInteractionClass;
    v20->_firstInteractionClass = v21;

    v23 = [interactionClassCopy copy];
    secondInteractionClass = v20->_secondInteractionClass;
    v20->_secondInteractionClass = v23;

    v25 = [severityCopy copy];
    severity = v20->_severity;
    v20->_severity = v25;

    v27 = [contentCopy copy];
    educationContent = v20->_educationContent;
    v20->_educationContent = v27;

    v29 = [identifierCopy copy];
    identifier = v20->_identifier;
    v20->_identifier = v29;

    v31 = [codesCopy copy];
    validRegionCodes = v20->_validRegionCodes;
    v20->_validRegionCodes = v31;
  }

  return v20;
}

- (NSString)uniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  rawIdentifier = [(HKConceptIdentifier *)self->_identifier rawIdentifier];
  uniqueIdentifier = [(HKDrugInteractionClass *)self->_firstInteractionClass uniqueIdentifier];
  uniqueIdentifier2 = [(HKDrugInteractionClass *)self->_secondInteractionClass uniqueIdentifier];
  v7 = [v3 stringWithFormat:@"%ld_%@_%@", rawIdentifier, uniqueIdentifier, uniqueIdentifier2];

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
  allObjects = [(NSSet *)self->_validRegionCodes allObjects];
  v10 = [allObjects componentsJoinedByString:{@", "}];
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

- (BOOL)hasSameAncestorIdentifiersAsInteractionResult:(id)result
{
  if (result == self)
  {
    return 1;
  }

  selfCopy = self;
  resultCopy = result;
  firstInteractionClass = [resultCopy firstInteractionClass];
  ancestorIdentifier = [firstInteractionClass ancestorIdentifier];
  secondInteractionClass = [resultCopy secondInteractionClass];

  ancestorIdentifier2 = [secondInteractionClass ancestorIdentifier];
  LOBYTE(selfCopy) = [(HKDrugInteractionResult *)selfCopy hasEquivalentFirstAncestorIdentifier:ancestorIdentifier secondAncestorIdentifier:ancestorIdentifier2];

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(HKDrugInteractionClass *)self->_firstInteractionClass hash];
  v4 = [(HKDrugInteractionClass *)self->_secondInteractionClass hash]^ v3;
  return v4 ^ [(HKConceptIdentifier *)self->_identifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  firstInteractionClass = self->_firstInteractionClass;
  coderCopy = coder;
  [coderCopy encodeObject:firstInteractionClass forKey:@"FirstInteractionClass"];
  [coderCopy encodeObject:self->_secondInteractionClass forKey:@"SecondInteractionClass"];
  [coderCopy encodeObject:self->_severity forKey:@"Severity"];
  [coderCopy encodeObject:self->_educationContent forKey:@"EducationContent"];
  [coderCopy encodeObject:self->_identifier forKey:@"OntologyIdentifier"];
  [coderCopy encodeObject:self->_validRegionCodes forKey:@"ValidRegionCodes"];
}

- (HKDrugInteractionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = HKDrugInteractionResult;
  v5 = [(HKDrugInteractionResult *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstInteractionClass"];
    firstInteractionClass = v5->_firstInteractionClass;
    v5->_firstInteractionClass = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecondInteractionClass"];
    secondInteractionClass = v5->_secondInteractionClass;
    v5->_secondInteractionClass = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Severity"];
    severity = v5->_severity;
    v5->_severity = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EducationContent"];
    educationContent = v5->_educationContent;
    v5->_educationContent = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OntologyIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;

    v16 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ValidRegionCodes"];
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

- (uint64_t)hasEquivalentFirstAncestorIdentifier:(void *)identifier secondAncestorIdentifier:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    ancestorIdentifier = [*(self + 8) ancestorIdentifier];
    if (ancestorIdentifier == v5)
    {
      v9 = 1;
    }

    else if (v5)
    {
      ancestorIdentifier2 = [*(self + 8) ancestorIdentifier];
      v9 = [ancestorIdentifier2 isEqual:v5];
    }

    else
    {
      v9 = 0;
    }

    ancestorIdentifier3 = [*(self + 16) ancestorIdentifier];
    if (ancestorIdentifier3 == identifierCopy)
    {
      v12 = 1;
    }

    else if (identifierCopy)
    {
      ancestorIdentifier4 = [*(self + 16) ancestorIdentifier];
      v12 = [ancestorIdentifier4 isEqual:identifierCopy];
    }

    else
    {
      v12 = 0;
    }

    ancestorIdentifier5 = [*(self + 8) ancestorIdentifier];
    if (ancestorIdentifier5 == identifierCopy)
    {
      v15 = 1;
    }

    else if (identifierCopy)
    {
      ancestorIdentifier6 = [*(self + 8) ancestorIdentifier];
      v15 = [ancestorIdentifier6 isEqual:identifierCopy];
    }

    else
    {
      v15 = 0;
    }

    ancestorIdentifier7 = [*(self + 16) ancestorIdentifier];
    if (ancestorIdentifier7 == v5)
    {
      v18 = 1;
    }

    else if (v5)
    {
      ancestorIdentifier8 = [*(self + 16) ancestorIdentifier];
      v18 = [ancestorIdentifier8 isEqual:v5];
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(self) = v9 & v12 | v15 & v18;
  }

  return self & 1;
}

- (uint64_t)hasEquivalentFirstInteractionClass:(void *)class secondInteractionClass:
{
  v5 = a2;
  classCopy = class;
  if (!self)
  {
    goto LABEL_23;
  }

  v7 = *(self + 8);
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

  v9 = *(self + 16);
  if (v9 == classCopy)
  {
    v10 = 1;
  }

  else
  {
    if (!classCopy)
    {
      v10 = 0;
      v12 = *(self + 8) == 0;
      goto LABEL_17;
    }

    v10 = [v9 isEqual:classCopy];
  }

  v11 = *(self + 8);
  if (v11 == classCopy)
  {
    v12 = 1;
  }

  else if (classCopy)
  {
    v12 = [v11 isEqual:classCopy];
  }

  else
  {
    v12 = 0;
  }

LABEL_17:
  v13 = *(self + 16);
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

  LOBYTE(self) = v8 & v10 | v12 & v14;
LABEL_23:

  return self & 1;
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
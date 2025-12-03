@interface HKMedicationInteractionResult
- (BOOL)isEqual:(id)equal;
- (HKMedicationInteractionResult)init;
- (HKMedicationInteractionResult)initWithCoder:(id)coder;
- (HKMedicationInteractionResult)initWithFirstConceptIdentifier:(id)identifier secondConceptIdentifier:(id)conceptIdentifier interactionType:(unint64_t)type interactions:(id)interactions;
- (id)conceptIdentifiers;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationInteractionResult

- (HKMedicationInteractionResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationInteractionResult)initWithFirstConceptIdentifier:(id)identifier secondConceptIdentifier:(id)conceptIdentifier interactionType:(unint64_t)type interactions:(id)interactions
{
  identifierCopy = identifier;
  conceptIdentifierCopy = conceptIdentifier;
  interactionsCopy = interactions;
  if (identifierCopy)
  {
    if (conceptIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [HKMedicationInteractionResult initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:];
    if (interactionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [HKMedicationInteractionResult initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:];
  if (!conceptIdentifierCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (interactionsCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [HKMedicationInteractionResult initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:];
LABEL_4:
  v21.receiver = self;
  v21.super_class = HKMedicationInteractionResult;
  v13 = [(HKMedicationInteractionResult *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    firstIdentifier = v13->_firstIdentifier;
    v13->_firstIdentifier = v14;

    v16 = [conceptIdentifierCopy copy];
    secondIdentifier = v13->_secondIdentifier;
    v13->_secondIdentifier = v16;

    v13->_interactionType = type;
    v18 = [interactionsCopy copy];
    interactions = v13->_interactions;
    v13->_interactions = v18;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(HKConceptIdentifier *)self->_firstIdentifier hash];
  v4 = [(HKConceptIdentifier *)self->_secondIdentifier hash]^ v3;
  interactionType = self->_interactionType;
  return v4 ^ interactionType ^ [(NSSet *)self->_interactions hash];
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
    if (![(HKDrugInteractionResult *)self hasEquivalentFirstInteractionClass:v7->_secondIdentifier secondInteractionClass:?]|| self->_interactionType != v7->_interactionType)
    {
      goto LABEL_11;
    }

    interactions = self->_interactions;
    v9 = v7->_interactions;
    if (interactions == v9)
    {
      v5 = 1;
      goto LABEL_12;
    }

    if (v9)
    {
      v5 = [(NSSet *)interactions isEqualToSet:?];
    }

    else
    {
LABEL_11:
      v5 = 0;
    }

LABEL_12:

    goto LABEL_5;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)conceptIdentifiers
{
  v6[2] = *MEMORY[0x277D85DE8];
  secondIdentifier = self->_secondIdentifier;
  v6[0] = self->_firstIdentifier;
  v6[1] = secondIdentifier;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstIdentifier = self->_firstIdentifier;
  secondIdentifier = self->_secondIdentifier;
  v7 = HKStringFromDrugInteractionType(self->_interactionType);
  allObjects = [(NSSet *)self->_interactions allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@:%p\nfirst concept identifier: %@, \nsecondc concept identifier: %@, \ninteractionType:%@, \ninteractions:[%@]>", v4, self, firstIdentifier, secondIdentifier, v7, v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  firstIdentifier = self->_firstIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:firstIdentifier forKey:@"FirstIdentifier"];
  [coderCopy encodeObject:self->_secondIdentifier forKey:@"SecondIdentifier"];
  [coderCopy encodeInteger:self->_interactionType forKey:@"InteractionType"];
  [coderCopy encodeObject:self->_interactions forKey:@"Interactions"];
}

- (HKMedicationInteractionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKMedicationInteractionResult;
  v5 = [(HKMedicationInteractionResult *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstIdentifier"];
    firstIdentifier = v5->_firstIdentifier;
    v5->_firstIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecondIdentifier"];
    secondIdentifier = v5->_secondIdentifier;
    v5->_secondIdentifier = v8;

    v5->_interactionType = [coderCopy decodeIntegerForKey:@"InteractionType"];
    v10 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Interactions"];
    interactions = v5->_interactions;
    v5->_interactions = v11;

    if (!v5->_firstIdentifier)
    {
      [HKMedicationInteractionResult initWithCoder:];
    }

    if (!v5->_secondIdentifier)
    {
      [HKMedicationInteractionResult initWithCoder:];
    }

    if (!v5->_interactions)
    {
      [HKMedicationInteractionResult initWithCoder:];
    }
  }

  return v5;
}

- (void)initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"firstIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"secondIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFirstConceptIdentifier:secondConceptIdentifier:interactionType:interactions:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"interactions != nil" object:? file:? lineNumber:? description:?];
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
@interface HKDismissedPregnancyLactationInteraction
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToPregnancyLactationInteraction:(id)interaction;
- (HKDismissedPregnancyLactationInteraction)init;
- (HKDismissedPregnancyLactationInteraction)initWithCoder:(id)coder;
- (id)_initWithMedicationIdentifier:(id)identifier interactionType:(int64_t)type creationDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDismissedPregnancyLactationInteraction

- (HKDismissedPregnancyLactationInteraction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithMedicationIdentifier:(id)identifier interactionType:(int64_t)type creationDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v10 = dateCopy;
  if (identifierCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKDismissedPregnancyLactationInteraction _initWithMedicationIdentifier:interactionType:creationDate:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HKDismissedPregnancyLactationInteraction _initWithMedicationIdentifier:interactionType:creationDate:];
LABEL_3:
  v15.receiver = self;
  v15.super_class = HKDismissedPregnancyLactationInteraction;
  v11 = [(HKDismissedPregnancyLactationInteraction *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    medicationIdentifier = v11->_medicationIdentifier;
    v11->_medicationIdentifier = v12;

    v11->_interactionType = type;
    objc_storeStrong(&v11->_creationDate, date);
  }

  return v11;
}

- (BOOL)isEquivalentToPregnancyLactationInteraction:(id)interaction
{
  interactionCopy = interaction;
  medicationIdentifier = self->_medicationIdentifier;
  medication = [interactionCopy medication];
  firstConceptIdentifier = [medication firstConceptIdentifier];
  if (medicationIdentifier == firstConceptIdentifier)
  {
    interactionType = self->_interactionType;
    v14 = interactionType == [interactionCopy interactionType];
  }

  else
  {
    medication2 = [interactionCopy medication];
    firstConceptIdentifier2 = [medication2 firstConceptIdentifier];
    if (firstConceptIdentifier2)
    {
      v10 = self->_medicationIdentifier;
      medication3 = [interactionCopy medication];
      firstConceptIdentifier3 = [medication3 firstConceptIdentifier];
      if ([(HKConceptIdentifier *)v10 isEqual:firstConceptIdentifier3])
      {
        v13 = self->_interactionType;
        v14 = v13 == [interactionCopy interactionType];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
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
      medicationIdentifier = self->_medicationIdentifier;
      v7 = v5->_medicationIdentifier;
      v8 = (medicationIdentifier == v7 || v7 && [(HKConceptIdentifier *)medicationIdentifier isEqual:?]) && self->_interactionType == v5->_interactionType;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  medicationIdentifier = self->_medicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:medicationIdentifier forKey:@"MedicationIdentifier"];
  [coderCopy encodeInteger:self->_interactionType forKey:@"InteractionType"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (HKDismissedPregnancyLactationInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKDismissedPregnancyLactationInteraction;
  v5 = [(HKDismissedPregnancyLactationInteraction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v6;

    v5->_interactionType = [coderCopy decodeIntegerForKey:@"InteractionType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;

    if (!v5->_medicationIdentifier)
    {
      [HKDismissedPregnancyLactationInteraction initWithCoder:];
    }

    if (!v5->_creationDate)
    {
      [HKDismissedPregnancyLactationInteraction initWithCoder:];
    }
  }

  return v5;
}

- (void)_initWithMedicationIdentifier:interactionType:creationDate:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"interactionIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:interactionType:creationDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"creationDate != nil" object:? file:? lineNumber:? description:?];
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

@end
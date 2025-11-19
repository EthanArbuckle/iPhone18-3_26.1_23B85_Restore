@interface HKDismissedPregnancyLactationInteraction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToPregnancyLactationInteraction:(id)a3;
- (HKDismissedPregnancyLactationInteraction)init;
- (HKDismissedPregnancyLactationInteraction)initWithCoder:(id)a3;
- (id)_initWithMedicationIdentifier:(id)a3 interactionType:(int64_t)a4 creationDate:(id)a5;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithMedicationIdentifier:(id)a3 interactionType:(int64_t)a4 creationDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    v12 = [v8 copy];
    medicationIdentifier = v11->_medicationIdentifier;
    v11->_medicationIdentifier = v12;

    v11->_interactionType = a4;
    objc_storeStrong(&v11->_creationDate, a5);
  }

  return v11;
}

- (BOOL)isEquivalentToPregnancyLactationInteraction:(id)a3
{
  v4 = a3;
  medicationIdentifier = self->_medicationIdentifier;
  v6 = [v4 medication];
  v7 = [v6 firstConceptIdentifier];
  if (medicationIdentifier == v7)
  {
    interactionType = self->_interactionType;
    v14 = interactionType == [v4 interactionType];
  }

  else
  {
    v8 = [v4 medication];
    v9 = [v8 firstConceptIdentifier];
    if (v9)
    {
      v10 = self->_medicationIdentifier;
      v11 = [v4 medication];
      v12 = [v11 firstConceptIdentifier];
      if ([(HKConceptIdentifier *)v10 isEqual:v12])
      {
        v13 = self->_interactionType;
        v14 = v13 == [v4 interactionType];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  medicationIdentifier = self->_medicationIdentifier;
  v5 = a3;
  [v5 encodeObject:medicationIdentifier forKey:@"MedicationIdentifier"];
  [v5 encodeInteger:self->_interactionType forKey:@"InteractionType"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (HKDismissedPregnancyLactationInteraction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKDismissedPregnancyLactationInteraction;
  v5 = [(HKDismissedPregnancyLactationInteraction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v6;

    v5->_interactionType = [v4 decodeIntegerForKey:@"InteractionType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
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
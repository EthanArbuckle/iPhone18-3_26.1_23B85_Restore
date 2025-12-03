@interface HKMedicationPregnancyLactationInteraction
- (BOOL)isEqual:(id)equal;
- (HKMedicationPregnancyLactationInteraction)init;
- (HKMedicationPregnancyLactationInteraction)initWithCoder:(id)coder;
- (HKMedicationPregnancyLactationInteraction)initWithMedication:(id)medication interactionType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationPregnancyLactationInteraction

- (HKMedicationPregnancyLactationInteraction)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationPregnancyLactationInteraction)initWithMedication:(id)medication interactionType:(int64_t)type
{
  medicationCopy = medication;
  if (!medicationCopy)
  {
    [HKMedicationPregnancyLactationInteraction initWithMedication:a2 interactionType:self];
  }

  v12.receiver = self;
  v12.super_class = HKMedicationPregnancyLactationInteraction;
  v9 = [(HKMedicationPregnancyLactationInteraction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_medication, medication);
    v10->_interactionType = type;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstConceptIdentifier = [(HKMedicationUserDomainConcept *)self->_medication firstConceptIdentifier];
  v6 = [v3 stringWithFormat:@"<%@:%p (%ld, %ld)>", v4, self, objc_msgSend(firstConceptIdentifier, "rawIdentifier"), self->_interactionType];

  return v6;
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
      medication = self->_medication;
      v7 = v5->_medication;
      v8 = (medication == v7 || v7 && [(HKMedicationUserDomainConcept *)medication isEqual:?]) && self->_interactionType == v5->_interactionType;
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
  medication = self->_medication;
  coderCopy = coder;
  [coderCopy encodeObject:medication forKey:@"Medication"];
  [coderCopy encodeInteger:self->_interactionType forKey:@"InteractionType"];
}

- (HKMedicationPregnancyLactationInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKMedicationPregnancyLactationInteraction;
  v6 = [(HKMedicationPregnancyLactationInteraction *)&v10 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v6->_medication;
    v6->_medication = v7;

    v6->_interactionType = [coderCopy decodeIntegerForKey:@"InteractionType"];
    if (!v6->_medication)
    {
      [(HKMedicationPregnancyLactationInteraction *)a2 initWithCoder:v6];
    }
  }

  return v6;
}

- (void)initWithMedication:(uint64_t)a1 interactionType:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationPregnancyLactationInteraction.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"medication != nil"}];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationPregnancyLactationInteraction.m" lineNumber:94 description:@"Medication should not be nil"];
}

@end
@interface HKMedicationUserDomainConceptSemanticIdentifier
+ (id)semanticIdentifierWithComponents:(id)a3;
- (HKMedicationUserDomainConceptSemanticIdentifier)init;
- (HKMedicationUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3;
- (HKMedicationUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3 medicalCoding:(id)a4;
- (id)healthConceptIdentifier;
- (id)stringValue;
@end

@implementation HKMedicationUserDomainConceptSemanticIdentifier

- (HKMedicationUserDomainConceptSemanticIdentifier)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationUserDomainConceptSemanticIdentifier)initWithTypeIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HKMedicationUserDomainConceptSemanticIdentifier)initWithUUID:(id)a3 medicalCoding:(id)a4
{
  v8 = a3;
  v9 = a4;
  if ((v8 != 0) != (v9 == 0))
  {
    [HKMedicationUserDomainConceptSemanticIdentifier initWithUUID:a2 medicalCoding:self];
  }

  v10 = [MEMORY[0x277CCDB50] medicationUserDomainConceptTypeIdentifier];
  v13.receiver = self;
  v13.super_class = HKMedicationUserDomainConceptSemanticIdentifier;
  v11 = [(HKUserDomainConceptSemanticIdentifier *)&v13 initWithTypeIdentifier:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_UUID, a3);
    objc_storeStrong(&v11->_medicalCoding, a4);
  }

  return v11;
}

+ (id)semanticIdentifierWithComponents:(id)a3
{
  v3 = a3;
  if ([v3 count] != 2)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = *MEMORY[0x277CCCE48];
  if ([v4 isEqualToString:*MEMORY[0x277CCCE48]])
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8 = [v3 objectAtIndexedSubscript:1];
  if ([v8 isEqualToString:v5])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  if (![v7 isEqualToString:*MEMORY[0x277CCCE58]])
  {
    if (v7)
    {
      v16 = objc_alloc(MEMORY[0x277CCD5C0]);
      v17 = [MEMORY[0x277CCD5D0] codeSystemWithIdentifier:v7];
      v11 = [v16 initWithCodingSystem:v17 codingVersion:0 code:v10 displayString:0];

      v12 = objc_alloc(objc_opt_class());
      v13 = 0;
      v14 = v11;
      goto LABEL_15;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
  if (!v11)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v12 = objc_alloc(objc_opt_class());
  v13 = v11;
  v14 = 0;
LABEL_15:
  v15 = [v12 initWithUUID:v13 medicalCoding:v14];
LABEL_16:

LABEL_18:
LABEL_19:

  return v15;
}

- (id)stringValue
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObject:@"medication"];
  v4 = [&unk_2863B6C10 stringValue];
  [v3 addObject:v4];

  medicalCoding = self->_medicalCoding;
  if (medicalCoding)
  {
    v6 = [(HKMedicalCoding *)medicalCoding codingSystem];
    v7 = [v6 identifier];
    v8 = v7;
    v9 = *MEMORY[0x277CCCE48];
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = *MEMORY[0x277CCCE48];
    }

    [v3 addObject:v10];

    v11 = [(HKMedicalCoding *)self->_medicalCoding code];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v9;
    }

    [v3 addObject:v13];
  }

  else
  {
    [v3 addObject:*MEMORY[0x277CCCE58]];
    v12 = [(HKMedicationUserDomainConceptSemanticIdentifier *)self UUID];
    v14 = [v12 UUIDString];
    [v3 addObject:v14];
  }

  v15 = [v3 componentsJoinedByString:*MEMORY[0x277CCCE50]];

  return v15;
}

- (id)healthConceptIdentifier
{
  v2 = MEMORY[0x277CCD4B0];
  v3 = [(HKMedicationUserDomainConceptSemanticIdentifier *)self stringValue];
  v4 = [v2 medicationConceptIdentifierWithSemanticIdentifierString:v3];

  return v4;
}

- (void)initWithUUID:(uint64_t)a1 medicalCoding:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationUserDomainConceptSemanticIdentifier.m" lineNumber:27 description:{@"Trying to initialize a medication user domain concept semantic identifier, but UUID and Medical coding are both populated, or both unpopulated"}];
}

@end
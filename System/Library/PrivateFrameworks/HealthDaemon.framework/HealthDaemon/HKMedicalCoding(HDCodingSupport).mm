@interface HKMedicalCoding(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableMedicalCoding)codableRepresentationForSync;
@end

@implementation HKMedicalCoding(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 hasCodingSystem])
    {
      v5 = MEMORY[0x277CCD5D0];
      codingSystem = [v4 codingSystem];
      v7 = [v5 codeSystemWithIdentifier:codingSystem];
    }

    else
    {
      v7 = 0;
    }

    v9 = MEMORY[0x277CCD5C0];
    codingVersion = [v4 codingVersion];
    code = [v4 code];
    displayString = [v4 displayString];
    v13 = [v9 medicalCodingWithSystem:v7 codingVersion:codingVersion code:code displayString:displayString];

    _validateConfiguration = [v13 _validateConfiguration];
    if (_validateConfiguration)
    {
      v8 = 0;
    }

    else
    {
      v8 = v13;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HDCodableMedicalCoding)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableMedicalCoding);
  codingSystem = [self codingSystem];
  identifier = [codingSystem identifier];
  [(HDCodableMedicalCoding *)v2 setCodingSystem:identifier];

  codingVersion = [self codingVersion];
  [(HDCodableMedicalCoding *)v2 setCodingVersion:codingVersion];

  code = [self code];
  [(HDCodableMedicalCoding *)v2 setCode:code];

  displayString = [self displayString];
  [(HDCodableMedicalCoding *)v2 setDisplayString:displayString];

  return v2;
}

@end
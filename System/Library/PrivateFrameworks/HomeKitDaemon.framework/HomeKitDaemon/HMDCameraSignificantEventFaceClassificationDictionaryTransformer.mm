@interface HMDCameraSignificantEventFaceClassificationDictionaryTransformer
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDCameraSignificantEventFaceClassificationDictionaryTransformer

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = [valueCopy hmf_UUIDForKey:@"HMDCSEFC.ck.UUID"];
    if (v6)
    {
      v7 = [v5 hmf_UUIDForKey:@"HMDCSEFC.ck.personManagerUUID"];
      if (v7)
      {
        v8 = [v5 hmf_UUIDForKey:@"HMDCSEFC.ck.personUUID"];
        v9 = [v5 valueForKey:@"HMDCSEFC.ck.personName"];
        v10 = [v5 hmf_UUIDForKey:@"HMDCSEFC.ck.unassociatedFaceCropUUID"];
        v11 = [(HMDCameraSignificantEventFaceClassification *)[HMDMutableCameraSignificantEventFaceClassification alloc] initWithUUID:v6 personManagerUUID:v7];
        [(HMDCameraSignificantEventFaceClassification *)v11 setPersonUUID:v8];
        [(HMDCameraSignificantEventFaceClassification *)v11 setPersonName:v9];
        [(HMDCameraSignificantEventFaceClassification *)v11 setUnassociatedFaceCropUUID:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  if (value)
  {
    v4 = MEMORY[0x277CBEB38];
    valueCopy = value;
    dictionary = [v4 dictionary];
    uUID = [valueCopy UUID];
    uUIDString = [uUID UUIDString];
    [dictionary setValue:uUIDString forKey:@"HMDCSEFC.ck.UUID"];

    personManagerUUID = [valueCopy personManagerUUID];
    uUIDString2 = [personManagerUUID UUIDString];
    [dictionary setValue:uUIDString2 forKey:@"HMDCSEFC.ck.personManagerUUID"];

    personUUID = [valueCopy personUUID];
    uUIDString3 = [personUUID UUIDString];
    [dictionary setValue:uUIDString3 forKey:@"HMDCSEFC.ck.personUUID"];

    personName = [valueCopy personName];
    [dictionary setValue:personName forKey:@"HMDCSEFC.ck.personName"];

    unassociatedFaceCropUUID = [valueCopy unassociatedFaceCropUUID];

    uUIDString4 = [unassociatedFaceCropUUID UUIDString];
    [dictionary setValue:uUIDString4 forKey:@"HMDCSEFC.ck.unassociatedFaceCropUUID"];

    v16 = [dictionary copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
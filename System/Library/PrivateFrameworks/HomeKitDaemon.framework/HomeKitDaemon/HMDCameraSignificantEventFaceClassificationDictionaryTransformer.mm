@interface HMDCameraSignificantEventFaceClassificationDictionaryTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCameraSignificantEventFaceClassificationDictionaryTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hmf_UUIDForKey:@"HMDCSEFC.ck.UUID"];
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

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a3;
    v6 = [v4 dictionary];
    v7 = [v5 UUID];
    v8 = [v7 UUIDString];
    [v6 setValue:v8 forKey:@"HMDCSEFC.ck.UUID"];

    v9 = [v5 personManagerUUID];
    v10 = [v9 UUIDString];
    [v6 setValue:v10 forKey:@"HMDCSEFC.ck.personManagerUUID"];

    v11 = [v5 personUUID];
    v12 = [v11 UUIDString];
    [v6 setValue:v12 forKey:@"HMDCSEFC.ck.personUUID"];

    v13 = [v5 personName];
    [v6 setValue:v13 forKey:@"HMDCSEFC.ck.personName"];

    v14 = [v5 unassociatedFaceCropUUID];

    v15 = [v14 UUIDString];
    [v6 setValue:v15 forKey:@"HMDCSEFC.ck.unassociatedFaceCropUUID"];

    v16 = [v6 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
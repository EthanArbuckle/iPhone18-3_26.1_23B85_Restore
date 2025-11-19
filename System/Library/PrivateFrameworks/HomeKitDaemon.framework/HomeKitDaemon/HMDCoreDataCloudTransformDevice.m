@interface HMDCoreDataCloudTransformDevice
+ (BOOL)exportInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5;
+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6;
@end

@implementation HMDCoreDataCloudTransformDevice

+ (BOOL)exportUpdateWithObjectID:(id)a3 updatedProperties:(id)a4 additionalUpdates:(id)a5 context:(id)a6
{
  v6 = [a6 objectWithID:{a3, a4, a5}];
  v7 = [v6 resident];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 name];
    v10 = [v6 name];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v6 name];
      [v8 setName:v12];
    }
  }

  return 1;
}

+ (BOOL)exportInsertWithObjectID:(id)a3 additionalUpdates:(id)a4 context:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 set];
  LOBYTE(a1) = [a1 exportUpdateWithObjectID:v11 updatedProperties:v12 additionalUpdates:v10 context:v9];

  return a1;
}

@end
@interface HMDCoreDataCloudTransformDevice
+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context;
+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context;
@end

@implementation HMDCoreDataCloudTransformDevice

+ (BOOL)exportUpdateWithObjectID:(id)d updatedProperties:(id)properties additionalUpdates:(id)updates context:(id)context
{
  v6 = [context objectWithID:{d, properties, updates}];
  resident = [v6 resident];
  v8 = resident;
  if (resident)
  {
    name = [resident name];
    name2 = [v6 name];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      name3 = [v6 name];
      [v8 setName:name3];
    }
  }

  return 1;
}

+ (BOOL)exportInsertWithObjectID:(id)d additionalUpdates:(id)updates context:(id)context
{
  v8 = MEMORY[0x277CBEB98];
  contextCopy = context;
  updatesCopy = updates;
  dCopy = d;
  v12 = [v8 set];
  LOBYTE(self) = [self exportUpdateWithObjectID:dCopy updatedProperties:v12 additionalUpdates:updatesCopy context:contextCopy];

  return self;
}

@end
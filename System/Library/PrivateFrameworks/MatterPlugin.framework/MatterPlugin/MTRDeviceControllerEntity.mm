@interface MTRDeviceControllerEntity
- (BOOL)isEqual:(id)equal;
- (MTRDeviceControllerEntity)initWithController:(id)controller entityIdentifier:(id)identifier runningMode:(int64_t)mode;
- (id)description;
- (unint64_t)hash;
@end

@implementation MTRDeviceControllerEntity

- (MTRDeviceControllerEntity)initWithController:(id)controller entityIdentifier:(id)identifier runningMode:(int64_t)mode
{
  controllerCopy = controller;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = MTRDeviceControllerEntity;
  v10 = [(MTRDeviceControllerEntity *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MTRDeviceControllerEntity *)v10 setController:controllerCopy];
    v12 = [identifierCopy copy];
    [(MTRDeviceControllerEntity *)v11 setEntityIdentifier:v12];

    [(MTRDeviceControllerEntity *)v11 setRunningMode:mode];
  }

  return v11;
}

- (unint64_t)hash
{
  controller = [(MTRDeviceControllerEntity *)self controller];
  v4 = [controller hash];
  entityIdentifier = [(MTRDeviceControllerEntity *)self entityIdentifier];
  v6 = [entityIdentifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      controller = [(MTRDeviceControllerEntity *)self controller];
      uniqueIdentifier = [controller uniqueIdentifier];
      controller2 = [(MTRDeviceControllerEntity *)v5 controller];
      uniqueIdentifier2 = [controller2 uniqueIdentifier];
      if ([uniqueIdentifier isEqual:uniqueIdentifier2])
      {
        entityIdentifier = [(MTRDeviceControllerEntity *)self entityIdentifier];
        entityIdentifier2 = [(MTRDeviceControllerEntity *)v5 entityIdentifier];
        v12 = [entityIdentifier isEqual:entityIdentifier2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  controller = [(MTRDeviceControllerEntity *)self controller];
  entityIdentifier = [(MTRDeviceControllerEntity *)self entityIdentifier];
  v9 = [v4 stringWithFormat:@"<%@: %@, entityIdentifier: %@>", v6, controller, entityIdentifier];

  objc_autoreleasePoolPop(v3);

  return v9;
}

@end
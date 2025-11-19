@interface MTRDeviceControllerEntity
- (BOOL)isEqual:(id)a3;
- (MTRDeviceControllerEntity)initWithController:(id)a3 entityIdentifier:(id)a4 runningMode:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation MTRDeviceControllerEntity

- (MTRDeviceControllerEntity)initWithController:(id)a3 entityIdentifier:(id)a4 runningMode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MTRDeviceControllerEntity;
  v10 = [(MTRDeviceControllerEntity *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MTRDeviceControllerEntity *)v10 setController:v8];
    v12 = [v9 copy];
    [(MTRDeviceControllerEntity *)v11 setEntityIdentifier:v12];

    [(MTRDeviceControllerEntity *)v11 setRunningMode:a5];
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MTRDeviceControllerEntity *)self controller];
  v4 = [v3 hash];
  v5 = [(MTRDeviceControllerEntity *)self entityIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MTRDeviceControllerEntity *)self controller];
      v7 = [v6 uniqueIdentifier];
      v8 = [(MTRDeviceControllerEntity *)v5 controller];
      v9 = [v8 uniqueIdentifier];
      if ([v7 isEqual:v9])
      {
        v10 = [(MTRDeviceControllerEntity *)self entityIdentifier];
        v11 = [(MTRDeviceControllerEntity *)v5 entityIdentifier];
        v12 = [v10 isEqual:v11];
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
  v7 = [(MTRDeviceControllerEntity *)self controller];
  v8 = [(MTRDeviceControllerEntity *)self entityIdentifier];
  v9 = [v4 stringWithFormat:@"<%@: %@, entityIdentifier: %@>", v6, v7, v8];

  objc_autoreleasePoolPop(v3);

  return v9;
}

@end
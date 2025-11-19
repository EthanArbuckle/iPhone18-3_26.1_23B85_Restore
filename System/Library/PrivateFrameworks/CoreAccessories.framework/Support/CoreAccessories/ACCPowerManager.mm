@interface ACCPowerManager
- (ACCPowerManager)init;
- (BOOL)getCurrentConnectionIsHighPowerMode;
- (void)dealloc;
@end

@implementation ACCPowerManager

- (ACCPowerManager)init
{
  v10.receiver = self;
  v10.super_class = ACCPowerManager;
  v2 = [(ACCPowerManager *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    featurePowerMode = v2->_featurePowerMode;
    v2->_featurePowerMode = v3;

    v5 = v2->_featurePowerMode;
    v6 = [NSNumber numberWithBool:0];
    [(NSMutableArray *)v5 addObject:v6];

    v7 = v2->_featurePowerMode;
    v8 = [NSNumber numberWithBool:0];
    [(NSMutableArray *)v7 addObject:v8];
  }

  return v2;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_featurePowerMode removeAllObjects];
  v3.receiver = self;
  v3.super_class = ACCPowerManager;
  [(ACCPowerManager *)&v3 dealloc];
}

- (BOOL)getCurrentConnectionIsHighPowerMode
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(ACCPowerManager *)self featurePowerMode];
    v6 = [v5 objectAtIndex:v4];
    v7 = [v6 BOOLValue];

    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (!v7);
  return v7;
}

@end
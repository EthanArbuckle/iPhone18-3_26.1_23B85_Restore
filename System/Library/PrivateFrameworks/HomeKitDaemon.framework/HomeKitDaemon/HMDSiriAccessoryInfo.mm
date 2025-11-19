@interface HMDSiriAccessoryInfo
+ (id)infoWithTargetableAccessory:(id)a3;
- (BOOL)isActiveAndSupportsDragonSiri;
- (id)targetsAccessory;
@end

@implementation HMDSiriAccessoryInfo

- (id)targetsAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_targetsAccessory);

  return WeakRetained;
}

- (BOOL)isActiveAndSupportsDragonSiri
{
  v3 = [(HMDSiriAccessoryInfo *)self targetsAccessory];
  if (v3)
  {
    v4 = [(HMDSiriAccessoryInfo *)self supportsDragonSiri];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)infoWithTargetableAccessory:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HMDSiriAccessoryInfo);
  v5 = v4;
  if (v4)
  {
    [(HMDSiriAccessoryInfo *)v4 setTargetsAccessory:v3];
  }

  return v5;
}

@end
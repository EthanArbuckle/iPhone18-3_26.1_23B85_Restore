@interface HMDSiriAccessoryInfo
+ (id)infoWithTargetableAccessory:(id)accessory;
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
  targetsAccessory = [(HMDSiriAccessoryInfo *)self targetsAccessory];
  if (targetsAccessory)
  {
    supportsDragonSiri = [(HMDSiriAccessoryInfo *)self supportsDragonSiri];
  }

  else
  {
    supportsDragonSiri = 0;
  }

  return supportsDragonSiri;
}

+ (id)infoWithTargetableAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = objc_alloc_init(HMDSiriAccessoryInfo);
  v5 = v4;
  if (v4)
  {
    [(HMDSiriAccessoryInfo *)v4 setTargetsAccessory:accessoryCopy];
  }

  return v5;
}

@end
@interface HMBLocalZoneConfiguration
- (HMBLocalZoneDelegate)delegate;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMBLocalZoneConfiguration

- (HMBLocalZoneDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [[HMBMutableLocalZoneConfiguration allocWithZone:?]];
  [(HMBLocalZoneConfiguration *)v4 setReadOnly:[(HMBLocalZoneConfiguration *)self readOnly]];
  [(HMBLocalZoneConfiguration *)v4 setCreateIfNeeded:[(HMBLocalZoneConfiguration *)self createIfNeeded]];
  modelContainer = [(HMBLocalZoneConfiguration *)self modelContainer];
  [(HMBLocalZoneConfiguration *)v4 setModelContainer:modelContainer];

  delegate = [(HMBLocalZoneConfiguration *)self delegate];
  [(HMBLocalZoneConfiguration *)v4 setDelegate:delegate];

  return v4;
}

@end
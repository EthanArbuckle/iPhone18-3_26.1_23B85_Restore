@interface HMDBulletinCharacteristicTuple
- (HMDBulletinCharacteristicTuple)initWithServiceContextID:(id)d currentType:(id)type targetValue:(id)value targetStateNumber:(id)number changedByThisDevice:(BOOL)device;
- (void)updatePostingTime;
@end

@implementation HMDBulletinCharacteristicTuple

- (void)updatePostingTime
{
  date = [MEMORY[0x277CBEAA8] date];
  [(HMDBulletinCharacteristicTuple *)self setLastPostingTime:date];
}

- (HMDBulletinCharacteristicTuple)initWithServiceContextID:(id)d currentType:(id)type targetValue:(id)value targetStateNumber:(id)number changedByThisDevice:(BOOL)device
{
  dCopy = d;
  typeCopy = type;
  valueCopy = value;
  numberCopy = number;
  v22.receiver = self;
  v22.super_class = HMDBulletinCharacteristicTuple;
  v17 = [(HMDBulletinCharacteristicTuple *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceContextID, d);
    objc_storeStrong(&v18->_currentType, type);
    objc_storeStrong(&v18->_targetValue, value);
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastPostingTime = v18->_lastPostingTime;
    v18->_lastPostingTime = distantPast;

    objc_storeStrong(&v18->_targetStateNumber, number);
    v18->_changedByThisDevice = device;
  }

  return v18;
}

@end
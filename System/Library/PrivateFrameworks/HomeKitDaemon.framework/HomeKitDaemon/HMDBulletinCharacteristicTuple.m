@interface HMDBulletinCharacteristicTuple
- (HMDBulletinCharacteristicTuple)initWithServiceContextID:(id)a3 currentType:(id)a4 targetValue:(id)a5 targetStateNumber:(id)a6 changedByThisDevice:(BOOL)a7;
- (void)updatePostingTime;
@end

@implementation HMDBulletinCharacteristicTuple

- (void)updatePostingTime
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(HMDBulletinCharacteristicTuple *)self setLastPostingTime:v3];
}

- (HMDBulletinCharacteristicTuple)initWithServiceContextID:(id)a3 currentType:(id)a4 targetValue:(id)a5 targetStateNumber:(id)a6 changedByThisDevice:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = HMDBulletinCharacteristicTuple;
  v17 = [(HMDBulletinCharacteristicTuple *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_serviceContextID, a3);
    objc_storeStrong(&v18->_currentType, a4);
    objc_storeStrong(&v18->_targetValue, a5);
    v19 = [MEMORY[0x277CBEAA8] distantPast];
    lastPostingTime = v18->_lastPostingTime;
    v18->_lastPostingTime = v19;

    objc_storeStrong(&v18->_targetStateNumber, a6);
    v18->_changedByThisDevice = a7;
  }

  return v18;
}

@end
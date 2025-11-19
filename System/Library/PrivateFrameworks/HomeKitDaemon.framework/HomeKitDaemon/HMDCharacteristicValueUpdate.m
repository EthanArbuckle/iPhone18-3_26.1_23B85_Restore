@interface HMDCharacteristicValueUpdate
- (HMDCharacteristicValueUpdate)initWithError:(id)a3;
- (HMDCharacteristicValueUpdate)initWithValue:(id)a3 updateIdentifier:(id)a4 remoteDevice:(id)a5;
- (void)setValueUpdatedTime:(id)a3 stateNumber:(id)a4 attributedUserUUID:(id)a5;
@end

@implementation HMDCharacteristicValueUpdate

- (void)setValueUpdatedTime:(id)a3 stateNumber:(id)a4 attributedUserUUID:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v12)
  {
    v10 = v12;
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
  }

  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = v10;

  if (v8)
  {
    objc_storeStrong(&self->_valueUpdatedStateNumber, a4);
  }

  if (v9)
  {
    objc_storeStrong(&self->_attributedUserUUID, a5);
  }
}

- (HMDCharacteristicValueUpdate)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCharacteristicValueUpdate;
  v6 = [(HMDCharacteristicValueUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (HMDCharacteristicValueUpdate)initWithValue:(id)a3 updateIdentifier:(id)a4 remoteDevice:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDCharacteristicValueUpdate;
  v12 = [(HMDCharacteristicValueUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, a3);
    objc_storeStrong(&v13->_updateIdentifier, a4);
    objc_storeStrong(&v13->_remoteDevice, a5);
  }

  return v13;
}

@end
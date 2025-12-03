@interface HMDCharacteristicValueUpdate
- (HMDCharacteristicValueUpdate)initWithError:(id)error;
- (HMDCharacteristicValueUpdate)initWithValue:(id)value updateIdentifier:(id)identifier remoteDevice:(id)device;
- (void)setValueUpdatedTime:(id)time stateNumber:(id)number;
@end

@implementation HMDCharacteristicValueUpdate

- (void)setValueUpdatedTime:(id)time stateNumber:(id)number
{
  timeCopy = time;
  numberCopy = number;
  if (timeCopy)
  {
    date = timeCopy;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  valueUpdatedTime = self->_valueUpdatedTime;
  self->_valueUpdatedTime = date;

  if (numberCopy)
  {
    objc_storeStrong(&self->_valueUpdatedStateNumber, number);
  }
}

- (HMDCharacteristicValueUpdate)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = HMDCharacteristicValueUpdate;
  v6 = [(HMDCharacteristicValueUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (HMDCharacteristicValueUpdate)initWithValue:(id)value updateIdentifier:(id)identifier remoteDevice:(id)device
{
  valueCopy = value;
  identifierCopy = identifier;
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HMDCharacteristicValueUpdate;
  v12 = [(HMDCharacteristicValueUpdate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_value, value);
    objc_storeStrong(&v13->_updateIdentifier, identifier);
    objc_storeStrong(&v13->_remoteDevice, device);
  }

  return v13;
}

@end
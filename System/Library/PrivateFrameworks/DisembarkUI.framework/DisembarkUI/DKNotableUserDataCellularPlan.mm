@interface DKNotableUserDataCellularPlan
- (DKNotableUserDataCellularPlan)initWithCarrierName:(id)name phoneNumber:(id)number isTransferred:(BOOL)transferred;
@end

@implementation DKNotableUserDataCellularPlan

- (DKNotableUserDataCellularPlan)initWithCarrierName:(id)name phoneNumber:(id)number isTransferred:(BOOL)transferred
{
  nameCopy = name;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = DKNotableUserDataCellularPlan;
  v11 = [(DKNotableUserDataCellularPlan *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_carrierName, name);
    objc_storeStrong(&v12->_phoneNumber, number);
    v12->_isTransferred = transferred;
  }

  return v12;
}

@end
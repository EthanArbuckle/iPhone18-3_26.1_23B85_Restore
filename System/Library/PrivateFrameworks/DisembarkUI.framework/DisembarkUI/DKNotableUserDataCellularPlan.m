@interface DKNotableUserDataCellularPlan
- (DKNotableUserDataCellularPlan)initWithCarrierName:(id)a3 phoneNumber:(id)a4 isTransferred:(BOOL)a5;
@end

@implementation DKNotableUserDataCellularPlan

- (DKNotableUserDataCellularPlan)initWithCarrierName:(id)a3 phoneNumber:(id)a4 isTransferred:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = DKNotableUserDataCellularPlan;
  v11 = [(DKNotableUserDataCellularPlan *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_carrierName, a3);
    objc_storeStrong(&v12->_phoneNumber, a4);
    v12->_isTransferred = a5;
  }

  return v12;
}

@end
@interface HAPSuspendedAccessory
- (HAPSuspendedAccessory)initWithName:(id)a3 identifier:(id)a4 type:(unint64_t)a5 queue:(id)a6;
- (id)description;
- (void)wakeWithCompletion:(id)a3;
@end

@implementation HAPSuspendedAccessory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPSuspendedAccessory *)self identifier];
  v5 = HAPIsInternalBuild();
  if (v5)
  {
    v6 = [(HAPSuspendedAccessory *)self name];
  }

  else
  {
    v6 = @"<private>";
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPSuspendedAccessory type](self, "type")}];
  v8 = [v3 stringWithFormat:@"%@/%@/%@", v4, v6, v7];

  if (v5)
  {
  }

  return v8;
}

- (void)wakeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HAPSuspendedAccessory)initWithName:(id)a3 identifier:(id)a4 type:(unint64_t)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HAPSuspendedAccessory;
  v14 = [(HAPSuspendedAccessory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_identifier, a4);
    v15->_type = a5;
    objc_storeStrong(&v15->_queue, a6);
  }

  return v15;
}

@end
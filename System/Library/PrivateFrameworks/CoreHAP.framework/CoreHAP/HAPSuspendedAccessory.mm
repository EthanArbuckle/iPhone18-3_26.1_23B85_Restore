@interface HAPSuspendedAccessory
- (HAPSuspendedAccessory)initWithName:(id)name identifier:(id)identifier type:(unint64_t)type queue:(id)queue;
- (id)description;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation HAPSuspendedAccessory

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HAPSuspendedAccessory *)self identifier];
  v5 = HAPIsInternalBuild();
  if (v5)
  {
    name = [(HAPSuspendedAccessory *)self name];
  }

  else
  {
    name = @"<private>";
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPSuspendedAccessory type](self, "type")}];
  v8 = [v3 stringWithFormat:@"%@/%@/%@", identifier, name, v7];

  if (v5)
  {
  }

  return v8;
}

- (void)wakeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HAPSuspendedAccessory)initWithName:(id)name identifier:(id)identifier type:(unint64_t)type queue:(id)queue
{
  nameCopy = name;
  identifierCopy = identifier;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HAPSuspendedAccessory;
  v14 = [(HAPSuspendedAccessory *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    objc_storeStrong(&v15->_identifier, identifier);
    v15->_type = type;
    objc_storeStrong(&v15->_queue, queue);
  }

  return v15;
}

@end
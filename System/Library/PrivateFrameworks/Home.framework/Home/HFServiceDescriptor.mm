@interface HFServiceDescriptor
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFServiceDescriptor)init;
- (HFServiceDescriptor)initWithServiceType:(id)a3 serviceSubtype:(id)a4 parentServiceDescriptor:(id)a5;
- (HFServiceDescriptor)initWithServiceType:(id)a3 serviceSubtype:(id)a4 parentServiceDescriptorGenerator:(id)a5;
- (HFServiceDescriptor)parentServiceDescriptor;
- (unint64_t)hash;
@end

@implementation HFServiceDescriptor

- (HFServiceDescriptor)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithServiceType_serviceSubtype_parentServiceDescriptor_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceDescriptor.m" lineNumber:20 description:{@"%s is unavailable; use %@ instead", "-[HFServiceDescriptor init]", v5}];

  return 0;
}

- (HFServiceDescriptor)initWithServiceType:(id)a3 serviceSubtype:(id)a4 parentServiceDescriptorGenerator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFServiceDescriptor;
  v12 = [(HFServiceDescriptor *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceType, a3);
    objc_storeStrong(&v13->_serviceSubtype, a4);
    v14 = [v11 copy];
    parentServiceDescriptorGenerator = v13->_parentServiceDescriptorGenerator;
    v13->_parentServiceDescriptorGenerator = v14;
  }

  return v13;
}

- (HFServiceDescriptor)initWithServiceType:(id)a3 serviceSubtype:(id)a4 parentServiceDescriptor:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HFServiceDescriptor_initWithServiceType_serviceSubtype_parentServiceDescriptor___block_invoke;
  v12[3] = &unk_277DFA738;
  v13 = v8;
  v9 = v8;
  v10 = [(HFServiceDescriptor *)self initWithServiceType:a3 serviceSubtype:a4 parentServiceDescriptorGenerator:v12];

  return v10;
}

- (HFServiceDescriptor)parentServiceDescriptor
{
  parentServiceDescriptor = self->_parentServiceDescriptor;
  if (!parentServiceDescriptor)
  {
    v4 = [(HFServiceDescriptor *)self parentServiceDescriptorGenerator];
    v5 = v4[2]();
    v6 = self->_parentServiceDescriptor;
    self->_parentServiceDescriptor = v5;

    parentServiceDescriptor = self->_parentServiceDescriptor;
  }

  return parentServiceDescriptor;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_252 != -1)
  {
    dispatch_once(&_MergedGlobals_252, &__block_literal_global_10_5);
  }

  v3 = qword_280E02FA8;

  return v3;
}

void __34__HFServiceDescriptor_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_17_5];
  v2 = [v0 appendCharacteristic:&__block_literal_global_19_2];
  v3 = [v0 appendCharacteristic:&__block_literal_global_22_5];
  v4 = [v0 build];

  v5 = qword_280E02FA8;
  qword_280E02FA8 = v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end
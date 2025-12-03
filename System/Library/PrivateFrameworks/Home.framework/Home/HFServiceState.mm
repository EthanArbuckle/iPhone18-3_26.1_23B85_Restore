@interface HFServiceState
+ (Class)stateClassForServiceDescriptor:(id)descriptor;
+ (NAIdentity)na_identity;
+ (NSString)stateClassIdentifier;
+ (id)stateForServiceDescriptor:(id)descriptor withBatchReadResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (HFServiceState)initWithBatchReadResponse:(id)response;
- (unint64_t)hash;
@end

@implementation HFServiceState

+ (NSString)stateClassIdentifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceState.m" lineNumber:21 description:{@"%s is an abstract method that must be overriden by subclass %@", "+[HFServiceState stateClassIdentifier]", objc_opt_class()}];

  return 0;
}

- (HFServiceState)initWithBatchReadResponse:(id)response
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceState.m" lineNumber:37 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFServiceState initWithBatchReadResponse:]", objc_opt_class()}];

  return 0;
}

+ (Class)stateClassForServiceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  serviceSubtype = [descriptorCopy serviceSubtype];
  v5 = serviceSubtype;
  if (!serviceSubtype || [serviceSubtype isEqualToString:*MEMORY[0x277CD0DB8]])
  {
    v6 = MEMORY[0x277CD1D90];
    serviceType = [descriptorCopy serviceType];
    v8 = [v6 hf_defaultServiceSubtypeForServiceType:serviceType];

    v5 = v8;
  }

  serviceType2 = [descriptorCopy serviceType];
  v10 = [serviceType2 isEqualToString:*MEMORY[0x277CD0F38]];

  if (v10)
  {
    if (_MergedGlobals_15 != -1)
    {
      dispatch_once(&_MergedGlobals_15, &__block_literal_global_9_8);
    }

    v11 = qword_280E02648;
    v12 = [v11 objectForKeyedSubscript:v5];
  }

  else
  {
    if (qword_280E02650 != -1)
    {
      dispatch_once(&qword_280E02650, &__block_literal_global_19_7);
    }

    v11 = qword_280E02658;
    serviceType3 = [descriptorCopy serviceType];
    v12 = [v11 objectForKeyedSubscript:serviceType3];
  }

  return v12;
}

void __49__HFServiceState_stateClassForServiceDescriptor___block_invoke_2()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CD0DA8];
  v4[0] = objc_opt_class();
  v3[1] = *MEMORY[0x277CD0DB0];
  v4[1] = objc_opt_class();
  v3[2] = *MEMORY[0x277CD0DA0];
  v4[2] = objc_opt_class();
  v3[3] = *MEMORY[0x277CD0DC0];
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_280E02648;
  qword_280E02648 = v0;
  v2 = *MEMORY[0x277D85DE8];
}

void __49__HFServiceState_stateClassForServiceDescriptor___block_invoke_5()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CD0E48];
  v4[0] = objc_opt_class();
  v3[1] = *MEMORY[0x277CD0E80];
  v4[1] = objc_opt_class();
  v3[2] = *MEMORY[0x277CD0F48];
  v4[2] = objc_opt_class();
  v3[3] = *MEMORY[0x277CD0F50];
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = qword_280E02658;
  qword_280E02658 = v0;
  v2 = *MEMORY[0x277D85DE8];
}

+ (id)stateForServiceDescriptor:(id)descriptor withBatchReadResponse:(id)response
{
  responseCopy = response;
  v7 = [objc_alloc(objc_msgSend(self stateClassForServiceDescriptor:{descriptor)), "initWithBatchReadResponse:", responseCopy}];

  return v7;
}

+ (NAIdentity)na_identity
{
  if (qword_280E02660 != -1)
  {
    dispatch_once(&qword_280E02660, &__block_literal_global_27_9);
  }

  v3 = qword_280E02668;

  return v3;
}

void __29__HFServiceState_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_34_6];
  v2 = [v0 appendCharacteristic:&__block_literal_global_36_1];
  v3 = [v0 build];

  v4 = qword_280E02668;
  qword_280E02668 = v3;
}

uint64_t __29__HFServiceState_na_identity__block_invoke_4()
{
  v0 = objc_opt_class();

  return [v0 stateClassIdentifier];
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

@end
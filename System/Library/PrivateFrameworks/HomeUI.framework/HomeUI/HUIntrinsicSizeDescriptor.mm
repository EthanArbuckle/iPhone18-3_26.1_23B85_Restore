@interface HUIntrinsicSizeDescriptor
+ (HUIntrinsicSizeDescriptor)descriptorWithAspectRatio:(double)ratio;
+ (HUIntrinsicSizeDescriptor)descriptorWithIntrinsicSize:(CGSize)size flexType:(unint64_t)type;
+ (NAIdentity)na_identity;
+ (id)noIntrinsicSizeDescriptor;
- (BOOL)isEqual:(id)equal;
- (CGSize)intrinsicSize;
- (HUIntrinsicSizeDescriptor)initWithIntrinsicSize:(CGSize)size flexType:(unint64_t)type aspectRatio:(id)ratio;
- (unint64_t)hash;
@end

@implementation HUIntrinsicSizeDescriptor

+ (id)noIntrinsicSizeDescriptor
{
  v2 = [self alloc];
  v3 = [v2 initWithIntrinsicSize:0 flexType:0 aspectRatio:{*MEMORY[0x277D77260], *MEMORY[0x277D77260]}];

  return v3;
}

+ (HUIntrinsicSizeDescriptor)descriptorWithAspectRatio:(double)ratio
{
  v4 = [self alloc];
  v5 = *MEMORY[0x277D77260];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:ratio];
  v7 = [v4 initWithIntrinsicSize:4 flexType:v6 aspectRatio:{v5, v5}];

  return v7;
}

+ (HUIntrinsicSizeDescriptor)descriptorWithIntrinsicSize:(CGSize)size flexType:(unint64_t)type
{
  height = size.height;
  width = size.width;
  v7 = [self alloc];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HUIntrinsicSizeDescriptor_descriptorWithIntrinsicSize_flexType___block_invoke;
  v11[3] = &__block_descriptor_48_e15___NSNumber_8__0l;
  *&v11[4] = width;
  *&v11[5] = height;
  v8 = __66__HUIntrinsicSizeDescriptor_descriptorWithIntrinsicSize_flexType___block_invoke(v11);
  v9 = [v7 initWithIntrinsicSize:type flexType:v8 aspectRatio:{width, height}];

  return v9;
}

id __66__HUIntrinsicSizeDescriptor_descriptorWithIntrinsicSize_flexType___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 == *MEMORY[0x277D77260])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 40);
    if (v6 != *MEMORY[0x277D77260] && v6 > 0.0)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:{v3 / v6, v1}];
    }
  }

  return v5;
}

- (HUIntrinsicSizeDescriptor)initWithIntrinsicSize:(CGSize)size flexType:(unint64_t)type aspectRatio:(id)ratio
{
  height = size.height;
  width = size.width;
  ratioCopy = ratio;
  v14.receiver = self;
  v14.super_class = HUIntrinsicSizeDescriptor;
  v11 = [(HUIntrinsicSizeDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_intrinsicSize.width = width;
    v11->_intrinsicSize.height = height;
    v11->_flexType = type;
    objc_storeStrong(&v11->_aspectRatio, ratio);
  }

  return v12;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_622 != -1)
  {
    dispatch_once(&_MergedGlobals_622, &__block_literal_global_4);
  }

  v3 = qword_281121F40;

  return v3;
}

void __40__HUIntrinsicSizeDescriptor_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCGRectCharacteristic:&__block_literal_global_11];
  v2 = [v0 appendCharacteristic:&__block_literal_global_14];
  v3 = [v0 appendCharacteristic:&__block_literal_global_16_0];
  v4 = [v0 build];

  v5 = qword_281121F40;
  qword_281121F40 = v4;
}

double __40__HUIntrinsicSizeDescriptor_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CBF348];
  [a2 intrinsicSize];
  return v2;
}

uint64_t __40__HUIntrinsicSizeDescriptor_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 flexType];

  return [v2 numberWithUnsignedInteger:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (CGSize)intrinsicSize
{
  width = self->_intrinsicSize.width;
  height = self->_intrinsicSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
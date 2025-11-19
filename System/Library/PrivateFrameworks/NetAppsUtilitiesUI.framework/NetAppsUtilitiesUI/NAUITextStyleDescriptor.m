@interface NAUITextStyleDescriptor
+ (id)defaultFontForTextStyleDescriptor:(id)a3;
+ (id)descriptorWithTextStyle:(id)a3;
+ (id)fontWithTextStyleDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NAUITextStyleDescriptor)initWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 allowsAccessibilitySizes:(BOOL)a5 allowsSmallSizes:(BOOL)a6;
- (id)description;
- (id)descriptorByAddingSymbolicTraits:(unsigned int)a3 removingSymbolicTraits:(unsigned int)a4;
- (id)descriptorByDisallowingAccessibilitySizes;
- (id)descriptorByDisallowingSmallSizes;
- (unint64_t)hash;
@end

@implementation NAUITextStyleDescriptor

+ (id)descriptorWithTextStyle:(id)a3
{
  v3 = a3;
  v4 = [[NAUITextStyleDescriptor alloc] initWithTextStyle:v3 symbolicTraits:0 allowsAccessibilitySizes:1 allowsSmallSizes:1];

  return v4;
}

- (id)descriptorByAddingSymbolicTraits:(unsigned int)a3 removingSymbolicTraits:(unsigned int)a4
{
  v6 = [(NAUITextStyleDescriptor *)self symbolicTraits]& ~a4;
  v7 = [NAUITextStyleDescriptor alloc];
  v8 = [(NAUITextStyleDescriptor *)self textStyle];
  v9 = [(NAUITextStyleDescriptor *)v7 initWithTextStyle:v8 symbolicTraits:v6 | a3 allowsAccessibilitySizes:[(NAUITextStyleDescriptor *)self allowsAccessibilitySizes] allowsSmallSizes:[(NAUITextStyleDescriptor *)self allowsSmallSizes]];

  return v9;
}

- (id)descriptorByDisallowingAccessibilitySizes
{
  v3 = [NAUITextStyleDescriptor alloc];
  v4 = [(NAUITextStyleDescriptor *)self textStyle];
  v5 = [(NAUITextStyleDescriptor *)v3 initWithTextStyle:v4 symbolicTraits:[(NAUITextStyleDescriptor *)self symbolicTraits] allowsAccessibilitySizes:0 allowsSmallSizes:[(NAUITextStyleDescriptor *)self allowsSmallSizes]];

  return v5;
}

- (id)descriptorByDisallowingSmallSizes
{
  v3 = [NAUITextStyleDescriptor alloc];
  v4 = [(NAUITextStyleDescriptor *)self textStyle];
  v5 = [(NAUITextStyleDescriptor *)v3 initWithTextStyle:v4 symbolicTraits:[(NAUITextStyleDescriptor *)self symbolicTraits] allowsAccessibilitySizes:[(NAUITextStyleDescriptor *)self allowsAccessibilitySizes] allowsSmallSizes:0];

  return v5;
}

+ (id)fontWithTextStyleDescriptor:(id)a3
{
  v3 = a3;
  v4 = [v3 allowsAccessibilitySizes] ^ 1;
  if (![v3 allowsSmallSizes])
  {
    v4 |= 2uLL;
  }

  v5 = MEMORY[0x277D74310];
  v6 = [v3 textStyle];
  v7 = [v3 symbolicTraits];

  v8 = [v5 preferredFontDescriptorWithTextStyle:v6 addingSymbolicTraits:v7 options:v4];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)defaultFontForTextStyleDescriptor:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D74300];
    v4 = [a3 textStyle];
    v5 = [v3 defaultFontForTextStyle:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NAUITextStyleDescriptor)initWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 allowsAccessibilitySizes:(BOOL)a5 allowsSmallSizes:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = NAUITextStyleDescriptor;
  v12 = [(NAUITextStyleDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textStyle, a3);
    v13->_symbolicTraits = a4;
    v13->_allowsAccessibilitySizes = a5;
    v13->_allowsSmallSizes = a6;
  }

  return v13;
}

id __38__NAUITextStyleDescriptor_na_identity__block_invoke()
{
  if (_block_invoke_na_once_token_7 != -1)
  {
    __38__NAUITextStyleDescriptor_na_identity__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_7;

  return v1;
}

void __38__NAUITextStyleDescriptor_na_identity__block_invoke_2()
{
  v6 = [MEMORY[0x277D2C908] builder];
  v0 = [v6 appendCharacteristic:&__block_literal_global_9];
  v1 = [v0 appendCharacteristic:&__block_literal_global_11];
  v2 = [v1 appendCharacteristic:&__block_literal_global_14];
  v3 = [v2 appendCharacteristic:&__block_literal_global_16];
  v4 = [v3 build];
  v5 = _block_invoke_na_once_object_7;
  _block_invoke_na_once_object_7 = v4;
}

uint64_t __38__NAUITextStyleDescriptor_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 symbolicTraits];

  return [v2 numberWithUnsignedInt:v3];
}

uint64_t __38__NAUITextStyleDescriptor_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 allowsAccessibilitySizes];

  return [v2 numberWithBool:v3];
}

uint64_t __38__NAUITextStyleDescriptor_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 allowsSmallSizes];

  return [v2 numberWithBool:v3];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(NAUITextStyleDescriptor *)self textStyle];
  [v3 appendString:v4 withName:@"textStyle" skipIfEmpty:0];

  v5 = [v3 appendSuper];
  v6 = [v3 appendBool:self->_allowsSmallSizes withName:@"allowsSmallSizes"];
  v7 = [v3 appendBool:self->_allowsAccessibilitySizes withName:&stru_286D0F0D8];
  v8 = [v3 appendUnsignedInteger:self->_symbolicTraits withName:@"custom-traits"];
  v9 = [v3 build];

  return v9;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

@end
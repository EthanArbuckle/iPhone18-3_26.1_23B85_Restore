@interface NAUITextStyleDescriptor
+ (id)defaultFontForTextStyleDescriptor:(id)descriptor;
+ (id)descriptorWithTextStyle:(id)style;
+ (id)fontWithTextStyleDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (NAUITextStyleDescriptor)initWithTextStyle:(id)style symbolicTraits:(unsigned int)traits allowsAccessibilitySizes:(BOOL)sizes allowsSmallSizes:(BOOL)smallSizes;
- (id)description;
- (id)descriptorByAddingSymbolicTraits:(unsigned int)traits removingSymbolicTraits:(unsigned int)symbolicTraits;
- (id)descriptorByDisallowingAccessibilitySizes;
- (id)descriptorByDisallowingSmallSizes;
- (unint64_t)hash;
@end

@implementation NAUITextStyleDescriptor

+ (id)descriptorWithTextStyle:(id)style
{
  styleCopy = style;
  v4 = [[NAUITextStyleDescriptor alloc] initWithTextStyle:styleCopy symbolicTraits:0 allowsAccessibilitySizes:1 allowsSmallSizes:1];

  return v4;
}

- (id)descriptorByAddingSymbolicTraits:(unsigned int)traits removingSymbolicTraits:(unsigned int)symbolicTraits
{
  v6 = [(NAUITextStyleDescriptor *)self symbolicTraits]& ~symbolicTraits;
  v7 = [NAUITextStyleDescriptor alloc];
  textStyle = [(NAUITextStyleDescriptor *)self textStyle];
  v9 = [(NAUITextStyleDescriptor *)v7 initWithTextStyle:textStyle symbolicTraits:v6 | traits allowsAccessibilitySizes:[(NAUITextStyleDescriptor *)self allowsAccessibilitySizes] allowsSmallSizes:[(NAUITextStyleDescriptor *)self allowsSmallSizes]];

  return v9;
}

- (id)descriptorByDisallowingAccessibilitySizes
{
  v3 = [NAUITextStyleDescriptor alloc];
  textStyle = [(NAUITextStyleDescriptor *)self textStyle];
  v5 = [(NAUITextStyleDescriptor *)v3 initWithTextStyle:textStyle symbolicTraits:[(NAUITextStyleDescriptor *)self symbolicTraits] allowsAccessibilitySizes:0 allowsSmallSizes:[(NAUITextStyleDescriptor *)self allowsSmallSizes]];

  return v5;
}

- (id)descriptorByDisallowingSmallSizes
{
  v3 = [NAUITextStyleDescriptor alloc];
  textStyle = [(NAUITextStyleDescriptor *)self textStyle];
  v5 = [(NAUITextStyleDescriptor *)v3 initWithTextStyle:textStyle symbolicTraits:[(NAUITextStyleDescriptor *)self symbolicTraits] allowsAccessibilitySizes:[(NAUITextStyleDescriptor *)self allowsAccessibilitySizes] allowsSmallSizes:0];

  return v5;
}

+ (id)fontWithTextStyleDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [descriptorCopy allowsAccessibilitySizes] ^ 1;
  if (![descriptorCopy allowsSmallSizes])
  {
    v4 |= 2uLL;
  }

  v5 = MEMORY[0x277D74310];
  textStyle = [descriptorCopy textStyle];
  symbolicTraits = [descriptorCopy symbolicTraits];

  v8 = [v5 preferredFontDescriptorWithTextStyle:textStyle addingSymbolicTraits:symbolicTraits options:v4];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

+ (id)defaultFontForTextStyleDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v3 = MEMORY[0x277D74300];
    textStyle = [descriptor textStyle];
    v5 = [v3 defaultFontForTextStyle:textStyle];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NAUITextStyleDescriptor)initWithTextStyle:(id)style symbolicTraits:(unsigned int)traits allowsAccessibilitySizes:(BOOL)sizes allowsSmallSizes:(BOOL)smallSizes
{
  styleCopy = style;
  v15.receiver = self;
  v15.super_class = NAUITextStyleDescriptor;
  v12 = [(NAUITextStyleDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textStyle, style);
    v13->_symbolicTraits = traits;
    v13->_allowsAccessibilitySizes = sizes;
    v13->_allowsSmallSizes = smallSizes;
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
  textStyle = [(NAUITextStyleDescriptor *)self textStyle];
  [v3 appendString:textStyle withName:@"textStyle" skipIfEmpty:0];

  appendSuper = [v3 appendSuper];
  v6 = [v3 appendBool:self->_allowsSmallSizes withName:@"allowsSmallSizes"];
  v7 = [v3 appendBool:self->_allowsAccessibilitySizes withName:&stru_286D0F0D8];
  v8 = [v3 appendUnsignedInteger:self->_symbolicTraits withName:@"custom-traits"];
  build = [v3 build];

  return build;
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
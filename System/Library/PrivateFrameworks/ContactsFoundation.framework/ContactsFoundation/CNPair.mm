@interface CNPair
+ (CNPair)pairWithFirst:(id)first second:(id)second;
- (BOOL)isEqual:(id)equal;
- (CNPair)initWithCoder:(id)coder;
- (CNPair)initWithFirst:(id)first second:(id)second;
- (id)description;
- (id)initNonMemoizedWithFirst:(id)first second:(id)second;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNPair

+ (CNPair)pairWithFirst:(id)first second:(id)second
{
  secondCopy = second;
  firstCopy = first;
  v8 = [[self alloc] initWithFirst:firstCopy second:secondCopy];

  return v8;
}

- (CNPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v8 = secondCopy;
  if (firstCopy == MEMORY[0x1E695E118] && secondCopy == 0)
  {
    if (initWithFirst_second__cn_once_token_1 != -1)
    {
      [CNPair initWithFirst:second:];
    }

    v11 = initWithFirst_second__cn_once_object_1;
  }

  else if (firstCopy == MEMORY[0x1E695E110] && secondCopy == 0)
  {
    if (initWithFirst_second__cn_once_token_2 != -1)
    {
      [CNPair initWithFirst:second:];
    }

    v11 = initWithFirst_second__cn_once_object_2;
  }

  else
  {
    v11 = [(CNPair *)self initNonMemoizedWithFirst:firstCopy second:secondCopy];
    self = v11;
  }

  v12 = v11;

  return v12;
}

uint64_t __31__CNPair_initWithFirst_second___block_invoke()
{
  v0 = [CNPair alloc];
  initWithFirst_second__cn_once_object_1 = [(CNPair *)v0 initNonMemoizedWithFirst:MEMORY[0x1E695E118] second:0];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __31__CNPair_initWithFirst_second___block_invoke_2()
{
  v0 = [CNPair alloc];
  initWithFirst_second__cn_once_object_2 = [(CNPair *)v0 initNonMemoizedWithFirst:MEMORY[0x1E695E110] second:0];

  return MEMORY[0x1EEE66BB8]();
}

- (id)initNonMemoizedWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v13.receiver = self;
  v13.super_class = CNPair;
  v9 = [(CNPair *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(p_isa + 2, second);
    v11 = p_isa;
  }

  return p_isa;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  first = [(CNPair *)self first];
  v5 = [v3 appendName:@"first" object:first];

  second = [(CNPair *)self second];
  v7 = [v3 appendName:@"second" object:second];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (first = self->_first, first | equalCopy->_first) && ![first isEqual:?] || (second = self->_second, second | equalCopy->_second) && !objc_msgSend(second, "isEqual:"))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  aBlock[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __14__CNPair_hash__block_invoke;
  v6[3] = &unk_1E6ED5F00;
  v6[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __14__CNPair_hash__block_invoke_2;
  aBlock[3] = &unk_1E6ED5F00;
  v2 = _Block_copy(aBlock);
  v3 = [CNHashBuilder hashWithBlocks:v6, v2, 0];

  return v3;
}

unint64_t __14__CNPair_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) first];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

unint64_t __14__CNPair_hash__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) second];
  v2 = [CNHashBuilder objectHash:v1];

  return v2;
}

- (CNPair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"first"];
  v6 = [coderCopy decodeObjectForKey:@"second"];

  v7 = [(CNPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  first = [(CNPair *)self first];
  [coderCopy encodeObject:first forKey:@"first"];

  second = [(CNPair *)self second];
  [coderCopy encodeObject:second forKey:@"second"];
}

@end
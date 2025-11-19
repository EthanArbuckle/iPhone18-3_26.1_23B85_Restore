@interface NSDictionary(CBPropertyKeyExtension)
- (uint64_t)getKeyCategory;
- (uint64_t)getKeyDisplayID;
- (uint64_t)getKeyKeyboardID;
- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension;
- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension andCategory:;
- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension andDisplay:;
- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension display:andParameter:;
- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension keyboardID:;
@end

@implementation NSDictionary(CBPropertyKeyExtension)

- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension andDisplay:
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a4];
  if (v5)
  {
    v8 = [a1 initWithObjectsAndKeys:{v5, @"Display", a3, @"String", 0}];
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  return v8;
}

- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension display:andParameter:
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a4];
  if (v6)
  {
    v10 = [a1 initWithObjectsAndKeys:{v6, @"Display", a3, @"String", a5, @"Parameter", 0}];
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E69E5920](v6);
  return v10;
}

- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  if (a3)
  {
    return [v6 initWithObjectsAndKeys:{v4, @"String", 0}];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension andCategory:
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a4];
  if (v5)
  {
    v8 = [a1 initWithObjectsAndKeys:{v5, @"Category", a3, @"String", 0}];
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  return v8;
}

- (uint64_t)getKeyDisplayID
{
  v3 = 0;
  v2 = [a1 objectForKey:@"Display"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v2 unsignedIntegerValue];
  }

  return v3;
}

- (uint64_t)getKeyCategory
{
  v3 = 0;
  v2 = [a1 objectForKey:@"Category"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v2 unsignedIntegerValue];
  }

  return v3;
}

- (uint64_t)initWithPropertyKey:()CBPropertyKeyExtension keyboardID:
{
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:a4];
  if (v5)
  {
    v8 = [a1 initWithObjectsAndKeys:{v5, @"Keyboard", a3, @"String", 0}];
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E69E5920](v5);
  return v8;
}

- (uint64_t)getKeyKeyboardID
{
  v3 = 0;
  v2 = [a1 objectForKey:@"Keyboard"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [v2 unsignedIntegerValue];
  }

  return v3;
}

@end
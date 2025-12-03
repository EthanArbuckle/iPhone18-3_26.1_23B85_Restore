@interface IMMockItemInfo
+ (id)decodedMockItemInfoArray:(id)array;
+ (id)defaultMockInfoArray;
+ (id)encodedMockItemInfoArray:(id)array;
- (IMMockItemInfo)initWithCoder:(id)coder;
- (IMMockItemInfo)initWithMockItemType:(int64_t)type outgoing:(BOOL)outgoing;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMMockItemInfo

+ (id)defaultMockInfoArray
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:50];
  for (i = 0; i != 50; ++i)
  {
    v4 = [[IMMockItemInfo alloc] initWithMockItemType:0 outgoing:(i & 1) == 0];
    [v2 addObject:v4];
  }

  return v2;
}

+ (id)encodedMockItemInfoArray:(id)array
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:array requiringSecureCoding:1 error:0];
  v4 = [v3 base64EncodedStringWithOptions:32];

  return v4;
}

+ (id)decodedMockItemInfoArray:(id)array
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (array)
  {
    v3 = MEMORY[0x1E695DEF0];
    arrayCopy = array;
    v5 = [[v3 alloc] initWithBase64EncodedString:arrayCopy options:1];

    if (v5)
    {
      v6 = MEMORY[0x1E696ACD0];
      v7 = MEMORY[0x1E695DFD8];
      v13[0] = objc_opt_class();
      v13[1] = objc_opt_class();
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v9 = [v7 setWithArray:v8];
      v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:0];

      objc_opt_class();
      v11 = 0;
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (IMMockItemInfo)initWithMockItemType:(int64_t)type outgoing:(BOOL)outgoing
{
  v7.receiver = self;
  v7.super_class = IMMockItemInfo;
  result = [(IMMockItemInfo *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_outgoing = outgoing;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IMMockItemInfo type](self forKey:{"type"), @"type"}];
  [coderCopy encodeBool:-[IMMockItemInfo outgoing](self forKey:{"outgoing"), @"outgoing"}];
}

- (IMMockItemInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeBoolForKey:@"outgoing"];

  return [(IMMockItemInfo *)self initWithMockItemType:v5 outgoing:v6];
}

@end
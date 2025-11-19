@interface IMMockItemInfo
+ (id)decodedMockItemInfoArray:(id)a3;
+ (id)defaultMockInfoArray;
+ (id)encodedMockItemInfoArray:(id)a3;
- (IMMockItemInfo)initWithCoder:(id)a3;
- (IMMockItemInfo)initWithMockItemType:(int64_t)a3 outgoing:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
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

+ (id)encodedMockItemInfoArray:(id)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  v4 = [v3 base64EncodedStringWithOptions:32];

  return v4;
}

+ (id)decodedMockItemInfoArray:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E695DEF0];
    v4 = a3;
    v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:1];

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

- (IMMockItemInfo)initWithMockItemType:(int64_t)a3 outgoing:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = IMMockItemInfo;
  result = [(IMMockItemInfo *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_outgoing = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IMMockItemInfo type](self forKey:{"type"), @"type"}];
  [v4 encodeBool:-[IMMockItemInfo outgoing](self forKey:{"outgoing"), @"outgoing"}];
}

- (IMMockItemInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeBoolForKey:@"outgoing"];

  return [(IMMockItemInfo *)self initWithMockItemType:v5 outgoing:v6];
}

@end
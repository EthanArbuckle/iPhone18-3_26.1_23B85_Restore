@interface CAMSubjectGroupResult
- (AVMetadataObject)underlyingMetadataObject;
- (CAMSubjectGroupResult)initWithMetadataObjects:(id)a3 groupID:(int64_t)a4;
- (NSString)description;
- (unint64_t)syntheticFocusMode;
@end

@implementation CAMSubjectGroupResult

- (CAMSubjectGroupResult)initWithMetadataObjects:(id)a3 groupID:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CAMSubjectGroupResult;
  v7 = [(CAMSubjectGroupResult *)&v14 init];
  if (v7)
  {
    v8 = [v6 copy];
    metadataObjects = v7->_metadataObjects;
    v7->_metadataObjects = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %ld", @"CAMMetadataObjectTypeSubjectGroup", a4];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v10;

    v7->__groupID = a4;
    v12 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p type: %@ groupID: %ld>", v5, self, @"CAMMetadataObjectTypeSubjectGroup", -[CAMSubjectGroupResult _groupID](self, "_groupID")];

  return v6;
}

- (AVMetadataObject)underlyingMetadataObject
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CAMSubjectGroupResult *)self metadataObjects];
  v4 = [v3 firstObject];
  v5 = [v4 underlyingMetadataObject];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CAMSubjectGroupResult *)self metadataObjects];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 underlyingMetadataObject];

          v5 = v12;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (unint64_t)syntheticFocusMode
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CAMSubjectGroupResult *)self metadataObjects];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [v7 syntheticFocusMode];
          if (v8)
          {
            v9 = v8;
            goto LABEL_12;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end
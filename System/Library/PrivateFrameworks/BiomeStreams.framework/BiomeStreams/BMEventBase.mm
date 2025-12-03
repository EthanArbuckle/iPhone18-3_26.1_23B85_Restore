@interface BMEventBase
+ (id)convertValue:(id)value toType:(int64_t)type;
- (BMEventBase)init;
- (BOOL)isCompleteWithContext:(id)context error:(id *)error;
- (BOOL)isValidWithContext:(id)context error:(id *)error;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)json;
- (id)valueForKeyPath:(id)path;
@end

@implementation BMEventBase

- (BMEventBase)init
{
  v5.receiver = self;
  v5.super_class = BMEventBase;
  v2 = [(BMEventBase *)&v5 init];
  if (v2 && [(BMEventBase *)v2 isMemberOfClass:objc_opt_class()])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [BMEventBase init];
    }

    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (BOOL)isValidWithContext:(id)context error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->__validators;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [*(*(&v16 + 1) + 8 * i) isValidWithContext:contextCopy error:{error, v16}] ^ 1;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    v13 = v10 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)isCompleteWithContext:(id)context error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->__validators;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v10 |= [*(*(&v16 + 1) + 8 * i) isCompleteWithContext:contextCopy error:{error, v16}] ^ 1;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
    v13 = v10 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->__validators;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)valueForKeyPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->__validators;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        NSSelectorFromString(pathCopy);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 valueForKey:pathCopy];
          if (v11)
          {
            v12 = v11;

            goto LABEL_12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15.receiver = self;
  v15.super_class = BMEventBase;
  v12 = [(BMEventBase *)&v15 valueForKeyPath:pathCopy];
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)convertValue:(id)value toType:(int64_t)type
{
  valueCopy = value;
  v8 = valueCopy;
  if (!valueCopy)
  {
    self = 0;
    goto LABEL_16;
  }

  if (type <= 1)
  {
    if (!type)
    {
      v9 = valueCopy;
      goto LABEL_15;
    }

    if (type == 1)
    {
      v10 = MEMORY[0x1E695DF00];
      [valueCopy doubleValue];
      v9 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v11 = MEMORY[0x1E695DF00];
        [valueCopy doubleValue];
        v9 = [v11 dateWithTimeIntervalSince1970:?];
        goto LABEL_15;
      case 3:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
          goto LABEL_15;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"BMEventBase.m" lineNumber:190 description:{@"Unexpected UUID value: %@", v8}];

        goto LABEL_6;
      case 4:
LABEL_6:
        v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
LABEL_15:
        self = v9;
        goto LABEL_16;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BMEventBase.m" lineNumber:195 description:{@"Unknown converted type: %ld", type}];

LABEL_16:

  return self;
}

- (id)json
{
  jsonDictionary = [(BMEventBase *)self jsonDictionary];
  v11 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonDictionary options:0 error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v4;
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BMEventBase *)self json];
    }

    v9 = 0;
  }

  return v9;
}

@end
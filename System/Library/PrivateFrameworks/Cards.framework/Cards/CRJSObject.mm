@interface CRJSObject
+ (id)objectWithClassName:(id)name objectType:(id)type;
- (CRJSObject)initWithClassName:(id)name objectType:(int64_t)type;
- (id)_backingObjectForJSValue:(id)value;
- (id)backingObjectValueForKey:(id)key;
- (void)_logErrorLog:(id)log;
- (void)setBackingObjectValue:(id)value forKey:(id)key;
@end

@implementation CRJSObject

- (CRJSObject)initWithClassName:(id)name objectType:(int64_t)type
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = CRJSObject;
  v7 = [(CRJSObject *)&v15 init];
  if (v7)
  {
    if (type)
    {
      if (type != 1)
      {
        v13 = 0;
        goto LABEL_10;
      }

      v8 = @"_INPB";
    }

    else
    {
      v8 = @"_SFPB";
    }

    v9 = [(__CFString *)v8 stringByAppendingString:nameCopy];
    v10 = NSClassFromString(v9);

    if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
    {
      v11 = objc_alloc_init(v10);
      backingObject = v7->_backingObject;
      v7->_backingObject = v11;
    }
  }

  v13 = v7;
LABEL_10:

  return v13;
}

+ (id)objectWithClassName:(id)name objectType:(id)type
{
  typeCopy = type;
  nameCopy = name;
  v7 = objc_alloc(objc_opt_class());
  toString = [nameCopy toString];

  toNumber = [typeCopy toNumber];

  v10 = [v7 initWithClassName:toString objectType:{objc_msgSend(toNumber, "integerValue")}];

  return v10;
}

- (void)setBackingObjectValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  toString = [keyCopy toString];
  if ([valueCopy isNull] & 1) != 0 || (objc_msgSend(valueCopy, "isUndefined"))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CRJSObject *)self _backingObjectForJSValue:valueCopy];
  }

  [self->_backingObject setValue:v8 forKey:toString];
}

- (id)backingObjectValueForKey:(id)key
{
  toString = [key toString];
  v5 = MEMORY[0x277CD4658];
  v6 = [self->_backingObject valueForKey:toString];
  currentContext = [MEMORY[0x277CD4640] currentContext];
  v8 = [v5 valueWithObject:v6 inContext:currentContext];

  return v8;
}

- (void)_logErrorLog:(id)log
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD4640];
  logCopy = log;
  currentContext = [v3 currentContext];
  v6 = [currentContext objectForKeyedSubscript:@"console"];
  v7 = [v6 objectForKeyedSubscript:@"error"];
  v11[0] = logCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = [v7 callWithArguments:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_backingObjectForJSValue:(id)value
{
  v29 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v5 = [valueCopy valueForProperty:@"_backingObject"];
  if ([v5 isUndefined])
  {
    v6 = valueCopy;
  }

  else
  {
    v6 = v5;
  }

  toObject = [v6 toObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = toObject[1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v5;
      v21 = valueCopy;
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(toObject, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = toObject;
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v25;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v24 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            v14 = [v12 objectForKeyedSubscript:@"_backingObject"];
            v15 = v14[1];
            backingObject = [(CRJSObject *)self backingObject];
            v17 = [v15 isEqual:backingObject];

            if (v17)
            {
              [(CRJSObject *)self _logErrorLog:@"Invalid object. Has reference cycles."];
            }

            else
            {
              [v22 addObject:v14[1]];
            }

            objc_autoreleasePoolPop(v13);
          }

          v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v9);
      }

      v5 = v20;
      valueCopy = v21;
    }

    else
    {
      v22 = toObject;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

@end
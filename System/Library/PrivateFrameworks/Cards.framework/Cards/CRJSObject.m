@interface CRJSObject
+ (id)objectWithClassName:(id)a3 objectType:(id)a4;
- (CRJSObject)initWithClassName:(id)a3 objectType:(int64_t)a4;
- (id)_backingObjectForJSValue:(id)a3;
- (id)backingObjectValueForKey:(id)a3;
- (void)_logErrorLog:(id)a3;
- (void)setBackingObjectValue:(id)a3 forKey:(id)a4;
@end

@implementation CRJSObject

- (CRJSObject)initWithClassName:(id)a3 objectType:(int64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CRJSObject;
  v7 = [(CRJSObject *)&v15 init];
  if (v7)
  {
    if (a4)
    {
      if (a4 != 1)
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

    v9 = [(__CFString *)v8 stringByAppendingString:v6];
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

+ (id)objectWithClassName:(id)a3 objectType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [v6 toString];

  v9 = [v5 toNumber];

  v10 = [v7 initWithClassName:v8 objectType:{objc_msgSend(v9, "integerValue")}];

  return v10;
}

- (void)setBackingObjectValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 toString];
  if ([v9 isNull] & 1) != 0 || (objc_msgSend(v9, "isUndefined"))
  {
    v8 = 0;
  }

  else
  {
    v8 = [(CRJSObject *)self _backingObjectForJSValue:v9];
  }

  [self->_backingObject setValue:v8 forKey:v7];
}

- (id)backingObjectValueForKey:(id)a3
{
  v4 = [a3 toString];
  v5 = MEMORY[0x277CD4658];
  v6 = [self->_backingObject valueForKey:v4];
  v7 = [MEMORY[0x277CD4640] currentContext];
  v8 = [v5 valueWithObject:v6 inContext:v7];

  return v8;
}

- (void)_logErrorLog:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD4640];
  v4 = a3;
  v5 = [v3 currentContext];
  v6 = [v5 objectForKeyedSubscript:@"console"];
  v7 = [v6 objectForKeyedSubscript:@"error"];
  v11[0] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = [v7 callWithArguments:v8];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_backingObjectForJSValue:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 valueForProperty:@"_backingObject"];
  if ([v5 isUndefined])
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v6 toObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v7[1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v5;
      v21 = v4;
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v7;
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
            v16 = [(CRJSObject *)self backingObject];
            v17 = [v15 isEqual:v16];

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
      v4 = v21;
    }

    else
    {
      v22 = v7;
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

@end
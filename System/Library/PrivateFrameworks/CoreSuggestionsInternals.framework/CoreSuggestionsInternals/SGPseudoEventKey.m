@interface SGPseudoEventKey
+ (BOOL)isSupportedEntityType:(int64_t)a3;
- (BOOL)isDropoff;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPseudoEventKey:(id)a3;
- (NSString)description;
- (SGPseudoEventKey)initWithGloballyUniqueId:(id)a3;
- (SGPseudoEventKey)initWithSerialized:(id)a3;
- (id)alternativeKeysForEventKitQuery;
@end

@implementation SGPseudoEventKey

- (id)alternativeKeysForEventKitQuery
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSString *)self->_groupId componentsSeparatedByString:@"|"];
  objc_autoreleasePoolPop(v4);
  if ([v5 count])
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [v5 objectAtIndexedSubscript:v6];
      if ([v9 length] && objc_msgSend(v9, "characterAtIndex:", 0) == 123 && objc_msgSend(v9, "characterAtIndex:", objc_msgSend(v9, "length") - 1) == 125)
      {
        v10 = [v5 subarrayWithRange:{0, v6}];
        v11 = [v5 subarrayWithRange:{v6 + 1, objc_msgSend(v5, "count") + v7}];
        v12 = [v10 arrayByAddingObjectsFromArray:v11];
        v13 = [v12 _pas_componentsJoinedByString:@"|"];

        v14 = SGDelimitedStringsSerialize();
        [v3 addObject:{v14, 0}];
      }

      objc_autoreleasePoolPop(v8);
      ++v6;
      --v7;
    }

    while ([v5 count] > v6);
  }

  return v3;
}

- (BOOL)isDropoff
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  [(NSString *)self->_groupId componentsSeparatedByString:@"|"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * i) isEqualToString:{@"{dropoff}", v12}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[SGPseudoEventKey groupId:%@", self->_groupId];

  return v2;
}

- (BOOL)isEqualToPseudoEventKey:(id)a3
{
  v4 = self->_groupId;
  v5 = v4;
  if (v4 == *(a3 + 3))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)v4 isEqual:?];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGPseudoEventKey *)self isEqualToPseudoEventKey:v5];
  }

  return v6;
}

- (SGPseudoEventKey)initWithGloballyUniqueId:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGPseudoEventKey.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"globalId"}];
  }

  v11.receiver = self;
  v11.super_class = SGPseudoEventKey;
  v7 = [(SGPseudoEventKey *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_groupId, a3);
  }

  return v8;
}

- (SGPseudoEventKey)initWithSerialized:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGPseudoEventKey.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"serialized"}];
  }

  v6 = SGDelimitedStringsDeserialize();
  if ([v6 count] != 1)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGPseudoEventKey.m" lineNumber:35 description:@"Invalid serialization"];
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [(SGPseudoEventKey *)self initWithGloballyUniqueId:v7];

  return v8;
}

+ (BOOL)isSupportedEntityType:(int64_t)a3
{
  if (a3 >= 0x1C)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"SGPseudoEventKey.m" lineNumber:107 description:{@"Unknown entity type: %lu", a3}];

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 4u >> a3;
  }

  return v4 & 1;
}

@end
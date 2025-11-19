@interface BBThreadsMuteAssertion
+ (id)threadsMuteAssertion;
+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3;
- (BBThreadsMuteAssertion)initWithCoder:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)expirationDateByThreadID;
- (NSSet)threadIDs;
- (id)_initWithExpirationDateByThreadID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5;
@end

@implementation BBThreadsMuteAssertion

+ (id)threadsMuteAssertion
{
  v2 = [BBThreadsMuteAssertion alloc];
  v3 = [(BBThreadsMuteAssertion *)v2 _initWithExpirationDateByThreadID:MEMORY[0x277CBEC10]];

  return v3;
}

+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3
{
  v3 = a3;
  v4 = [[BBThreadsMuteAssertion alloc] _initWithExpirationDateByThreadID:v3];

  return v4;
}

- (id)_initWithExpirationDateByThreadID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBThreadsMuteAssertion;
  v5 = [(BBMuteAssertion *)&v9 _init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (NSDictionary)expirationDateByThreadID
{
  v2 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID copy];

  return v2;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3 currentDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID objectForKey:v6];
    if (!v7)
    {
LABEL_4:
      v9 = [MEMORY[0x277CBEAA8] now];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v9 = v7;
LABEL_7:
  v10 = v9;
  if (v8)
  {
    v11 = [v8 compare:v9] == 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4 currentDate:(id)a5
{
  v19 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v20 = a4;
  *a4 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID valueForKey:v14, v19];
        if ([(BBThreadsMuteAssertion *)self isActiveForThreadIdentifier:v14 currentDate:v7])
        {
          if (!v11 || [v15 compare:v11] == -1)
          {
            v16 = v15;

            v11 = v16;
          }
        }

        else
        {
          [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID removeObjectForKey:v14];
          *v20 = 1;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = v11;
  *v19 = v11;

  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)threadIDs
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v4 = [v3 copy];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 31;
  mutableExpirationDateByThreadID = self->_mutableExpirationDateByThreadID;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__BBThreadsMuteAssertion_hash__block_invoke;
  v5[3] = &unk_278D2BB30;
  v5[4] = &v7;
  v5[5] = v6;
  [(NSMutableDictionary *)mutableExpirationDateByThreadID enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __30__BBThreadsMuteAssertion_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 hash] + v6 * v5;
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = [v7 hash];

  *(*(*(a1 + 32) + 8) + 24) = v10 + v9 * v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
  {
    v6 = v5;
    mutableExpirationDateByThreadID = self->_mutableExpirationDateByThreadID;
    v8 = v6[1];
    v9 = BSEqualDictionaries();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BBThreadsMuteAssertion;
  v4 = a3;
  [(BBMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mutableExpirationDateByThreadID forKey:{@"expirationDateByThreadID", v5.receiver, v5.super_class}];
}

- (BBThreadsMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BBThreadsMuteAssertion;
  v5 = [(BBMuteAssertion *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = BBAllowedClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"expirationDateByThreadID"];
    mutableExpirationDateByThreadID = v5->_mutableExpirationDateByThreadID;
    v5->_mutableExpirationDateByThreadID = v7;
  }

  return v5;
}

@end
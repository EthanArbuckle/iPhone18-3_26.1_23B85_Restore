@interface BBThreadsMuteAssertion
+ (id)threadsMuteAssertion;
+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)d;
- (BBThreadsMuteAssertion)initWithCoder:(id)coder;
- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)expirationDateByThreadID;
- (NSSet)threadIDs;
- (id)_initWithExpirationDateByThreadID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate;
@end

@implementation BBThreadsMuteAssertion

+ (id)threadsMuteAssertion
{
  v2 = [BBThreadsMuteAssertion alloc];
  v3 = [(BBThreadsMuteAssertion *)v2 _initWithExpirationDateByThreadID:MEMORY[0x277CBEC10]];

  return v3;
}

+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)d
{
  dCopy = d;
  v4 = [[BBThreadsMuteAssertion alloc] _initWithExpirationDateByThreadID:dCopy];

  return v4;
}

- (id)_initWithExpirationDateByThreadID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BBThreadsMuteAssertion;
  _init = [(BBMuteAssertion *)&v9 _init];
  if (_init)
  {
    v6 = [dCopy mutableCopy];
    v7 = _init[1];
    _init[1] = v6;
  }

  return _init;
}

- (NSDictionary)expirationDateByThreadID
{
  v2 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID copy];

  return v2;
}

- (BOOL)isActiveForThreadIdentifier:(id)identifier currentDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if (identifierCopy && [identifierCopy length])
  {
    v8 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID objectForKey:identifierCopy];
    if (!dateCopy)
    {
LABEL_4:
      v9 = [MEMORY[0x277CBEAA8] now];
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!dateCopy)
    {
      goto LABEL_4;
    }
  }

  v9 = dateCopy;
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

- (void)getNextExpirationDate:(id *)date wasPurged:(BOOL *)purged currentDate:(id)currentDate
{
  dateCopy = date;
  v26 = *MEMORY[0x277D85DE8];
  currentDateCopy = currentDate;
  purgedCopy = purged;
  *purged = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        dateCopy = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID valueForKey:v14, dateCopy];
        if ([(BBThreadsMuteAssertion *)self isActiveForThreadIdentifier:v14 currentDate:currentDateCopy])
        {
          if (!v11 || [dateCopy compare:v11] == -1)
          {
            v16 = dateCopy;

            v11 = v16;
          }
        }

        else
        {
          [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID removeObjectForKey:v14];
          *purgedCopy = 1;
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = v11;
  *dateCopy = v11;

  v18 = *MEMORY[0x277D85DE8];
}

- (NSSet)threadIDs
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v4 = [allKeys copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = equalCopy) != 0)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BBThreadsMuteAssertion;
  coderCopy = coder;
  [(BBMuteAssertion *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_mutableExpirationDateByThreadID forKey:{@"expirationDateByThreadID", v5.receiver, v5.super_class}];
}

- (BBThreadsMuteAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BBThreadsMuteAssertion;
  v5 = [(BBMuteAssertion *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = BBAllowedClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"expirationDateByThreadID"];
    mutableExpirationDateByThreadID = v5->_mutableExpirationDateByThreadID;
    v5->_mutableExpirationDateByThreadID = v7;
  }

  return v5;
}

@end
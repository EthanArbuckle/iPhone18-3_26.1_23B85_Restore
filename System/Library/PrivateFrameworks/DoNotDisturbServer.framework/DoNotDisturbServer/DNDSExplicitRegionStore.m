@interface DNDSExplicitRegionStore
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithEnteredRegionIdentifiersPendingExit:(id)a3;
- (id)_initWithStore:(id)a3;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSExplicitRegionStore

- (id)_initWithStore:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DNDSExplicitRegionStore;
  v5 = [(DNDSExplicitRegionStore *)&v12 init];
  if (v5)
  {
    v6 = [v4 enteredRegionIdentifiersPendingExit];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    enteredRegionIdentifiersPendingExit = v5->_enteredRegionIdentifiersPendingExit;
    v5->_enteredRegionIdentifiersPendingExit = v9;
  }

  return v5;
}

- (id)_initWithEnteredRegionIdentifiersPendingExit:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DNDSExplicitRegionStore;
  v6 = [(DNDSExplicitRegionStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enteredRegionIdentifiersPendingExit, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
      v7 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
        if (v8)
        {
          v9 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
          if (v9)
          {
            v10 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
            v11 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
            v12 = [v10 isEqual:v11];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
  v6 = [v3 stringWithFormat:@"<%@: %p enteredRegionIdentifiersPendingExit: %@>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableExplicitRegionStore alloc];

  return [(DNDSExplicitRegionStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"enteredRegionIdentifiersPendingExit" ofType:objc_opt_class()];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] array];
  }

  v8 = v7;

  v9 = [a1 alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v11 = [v9 _initWithEnteredRegionIdentifiersPendingExit:v10];

  return v11;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSSet *)self->_enteredRegionIdentifiersPendingExit allObjects];
  [v4 setObject:v5 forKey:@"enteredRegionIdentifiersPendingExit"];

  return v4;
}

@end
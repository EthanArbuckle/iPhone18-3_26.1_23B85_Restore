@interface DNDSExplicitRegionStore
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEnteredRegionIdentifiersPendingExit:(id)exit;
- (id)_initWithStore:(id)store;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSExplicitRegionStore

- (id)_initWithStore:(id)store
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = DNDSExplicitRegionStore;
  v5 = [(DNDSExplicitRegionStore *)&v12 init];
  if (v5)
  {
    enteredRegionIdentifiersPendingExit = [storeCopy enteredRegionIdentifiersPendingExit];
    v7 = [enteredRegionIdentifiersPendingExit copy];
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

- (id)_initWithEnteredRegionIdentifiersPendingExit:(id)exit
{
  exitCopy = exit;
  v9.receiver = self;
  v9.super_class = DNDSExplicitRegionStore;
  v6 = [(DNDSExplicitRegionStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enteredRegionIdentifiersPendingExit, exit);
  }

  return v7;
}

- (unint64_t)hash
{
  enteredRegionIdentifiersPendingExit = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
  v3 = [enteredRegionIdentifiersPendingExit hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      enteredRegionIdentifiersPendingExit = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
      enteredRegionIdentifiersPendingExit2 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
      if (enteredRegionIdentifiersPendingExit == enteredRegionIdentifiersPendingExit2)
      {
        v12 = 1;
      }

      else
      {
        enteredRegionIdentifiersPendingExit3 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
        if (enteredRegionIdentifiersPendingExit3)
        {
          enteredRegionIdentifiersPendingExit4 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
          if (enteredRegionIdentifiersPendingExit4)
          {
            enteredRegionIdentifiersPendingExit5 = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
            enteredRegionIdentifiersPendingExit6 = [(DNDSExplicitRegionStore *)v5 enteredRegionIdentifiersPendingExit];
            v12 = [enteredRegionIdentifiersPendingExit5 isEqual:enteredRegionIdentifiersPendingExit6];
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
  enteredRegionIdentifiersPendingExit = [(DNDSExplicitRegionStore *)self enteredRegionIdentifiersPendingExit];
  v6 = [v3 stringWithFormat:@"<%@: %p enteredRegionIdentifiersPendingExit: %@>", v4, self, enteredRegionIdentifiersPendingExit];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableExplicitRegionStore alloc];

  return [(DNDSExplicitRegionStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"enteredRegionIdentifiersPendingExit" ofType:objc_opt_class()];

  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v8 = array;

  v9 = [self alloc];
  v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v11 = [v9 _initWithEnteredRegionIdentifiersPendingExit:v10];

  return v11;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  allObjects = [(NSSet *)self->_enteredRegionIdentifiersPendingExit allObjects];
  [dictionary setObject:allObjects forKey:@"enteredRegionIdentifiersPendingExit"];

  return dictionary;
}

@end
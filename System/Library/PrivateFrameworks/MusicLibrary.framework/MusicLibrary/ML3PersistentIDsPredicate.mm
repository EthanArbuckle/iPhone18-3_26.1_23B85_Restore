@interface ML3PersistentIDsPredicate
+ (id)predicateWithPersistentIDs:(const int64_t *)ds count:(unint64_t)count shouldContain:(BOOL)contain;
+ (id)predicateWithPersistentIDs:(id)ds shouldContain:(BOOL)contain;
- (BOOL)isEqual:(id)equal;
- (ML3PersistentIDsPredicate)initWithCoder:(id)coder;
- (ML3PersistentIDsPredicate)initWithPersistentIDs:(id)ds shouldContain:(BOOL)contain;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)string entityClass:(Class)class;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3PersistentIDsPredicate

- (void)appendSQLToMutableString:(id)string entityClass:(Class)class
{
  stringCopy = string;
  databaseTable = [(objc_class *)class databaseTable];
  [stringCopy appendString:databaseTable];

  if (self->_shouldContain)
  {
    v7 = &stru_28408B690;
  }

  else
  {
    v7 = @" NOT";
  }

  objc_msgSend(stringCopy, "appendFormat:", @".ROWID%@ IN ("), v7;
  if ([(NSArray *)self->_persistentIDs count])
  {
    [stringCopy appendString:@"?"];
  }

  if ([(NSArray *)self->_persistentIDs count]>= 2)
  {
    v8 = 1;
    do
    {
      [stringCopy appendString:{@", ?"}];
      ++v8;
    }

    while (v8 < [(NSArray *)self->_persistentIDs count]);
  }

  [stringCopy appendString:@""]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ML3PersistentIDsPredicate;
    v6 = [(ML3Predicate *)&v8 isEqual:equalCopy]&& (v5 = [(NSArray *)self->_persistentIDs count], v5 == [(NSArray *)equalCopy->_persistentIDs count]) && self->_shouldContain == equalCopy->_shouldContain && [(NSArray *)self->_persistentIDs isEqualToArray:equalCopy->_persistentIDs];
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = ML3PersistentIDsPredicate;
  v3 = [(ML3Predicate *)&v5 hash]^ self->_shouldContain;
  return v3 ^ [(NSArray *)self->_persistentIDs hash];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ML3PersistentIDsPredicate;
  coderCopy = coder;
  [(ML3Predicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_shouldContain forKey:{@"shouldContain", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_persistentIDs forKey:@"persistentIDs"];
}

- (ML3PersistentIDsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ML3PersistentIDsPredicate;
  v5 = [(ML3Predicate *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_shouldContain = [coderCopy decodeBoolForKey:@"shouldContain"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"persistentIDs"];
    persistentIDs = v5->_persistentIDs;
    v5->_persistentIDs = v9;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ML3PersistentIDsPredicate;
  [(ML3PersistentIDsPredicate *)&v2 dealloc];
}

- (ML3PersistentIDsPredicate)initWithPersistentIDs:(id)ds shouldContain:(BOOL)contain
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = ML3PersistentIDsPredicate;
  v8 = [(ML3PersistentIDsPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldContain = contain;
    objc_storeStrong(&v8->_persistentIDs, ds);
  }

  return v9;
}

+ (id)predicateWithPersistentIDs:(id)ds shouldContain:(BOOL)contain
{
  containCopy = contain;
  dsCopy = ds;
  v6 = [[ML3PersistentIDsPredicate alloc] initWithPersistentIDs:dsCopy shouldContain:containCopy];

  return v6;
}

+ (id)predicateWithPersistentIDs:(const int64_t *)ds count:(unint64_t)count shouldContain:(BOOL)contain
{
  containCopy = contain;
  countCopy = count;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  {
    v9 = *ds++;
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    [i addObject:v10];
  }

  v11 = [[ML3PersistentIDsPredicate alloc] initWithPersistentIDs:i shouldContain:containCopy];

  return v11;
}

@end
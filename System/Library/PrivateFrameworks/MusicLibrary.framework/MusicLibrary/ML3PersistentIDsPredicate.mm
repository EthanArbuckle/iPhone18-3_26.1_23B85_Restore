@interface ML3PersistentIDsPredicate
+ (id)predicateWithPersistentIDs:(const int64_t *)a3 count:(unint64_t)a4 shouldContain:(BOOL)a5;
+ (id)predicateWithPersistentIDs:(id)a3 shouldContain:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (ML3PersistentIDsPredicate)initWithCoder:(id)a3;
- (ML3PersistentIDsPredicate)initWithPersistentIDs:(id)a3 shouldContain:(BOOL)a4;
- (unint64_t)hash;
- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3PersistentIDsPredicate

- (void)appendSQLToMutableString:(id)a3 entityClass:(Class)a4
{
  v9 = a3;
  v6 = [(objc_class *)a4 databaseTable];
  [v9 appendString:v6];

  if (self->_shouldContain)
  {
    v7 = &stru_28408B690;
  }

  else
  {
    v7 = @" NOT";
  }

  objc_msgSend(v9, "appendFormat:", @".ROWID%@ IN ("), v7;
  if ([(NSArray *)self->_persistentIDs count])
  {
    [v9 appendString:@"?"];
  }

  if ([(NSArray *)self->_persistentIDs count]>= 2)
  {
    v8 = 1;
    do
    {
      [v9 appendString:{@", ?"}];
      ++v8;
    }

    while (v8 < [(NSArray *)self->_persistentIDs count]);
  }

  [v9 appendString:@""]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ML3PersistentIDsPredicate;
    v6 = [(ML3Predicate *)&v8 isEqual:v4]&& (v5 = [(NSArray *)self->_persistentIDs count], v5 == [(NSArray *)v4->_persistentIDs count]) && self->_shouldContain == v4->_shouldContain && [(NSArray *)self->_persistentIDs isEqualToArray:v4->_persistentIDs];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ML3PersistentIDsPredicate;
  v4 = a3;
  [(ML3Predicate *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_shouldContain forKey:{@"shouldContain", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_persistentIDs forKey:@"persistentIDs"];
}

- (ML3PersistentIDsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ML3PersistentIDsPredicate;
  v5 = [(ML3Predicate *)&v12 initWithCoder:v4];
  if (v5)
  {
    v5->_shouldContain = [v4 decodeBoolForKey:@"shouldContain"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"persistentIDs"];
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

- (ML3PersistentIDsPredicate)initWithPersistentIDs:(id)a3 shouldContain:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ML3PersistentIDsPredicate;
  v8 = [(ML3PersistentIDsPredicate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldContain = a4;
    objc_storeStrong(&v8->_persistentIDs, a3);
  }

  return v9;
}

+ (id)predicateWithPersistentIDs:(id)a3 shouldContain:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[ML3PersistentIDsPredicate alloc] initWithPersistentIDs:v5 shouldContain:v4];

  return v6;
}

+ (id)predicateWithPersistentIDs:(const int64_t *)a3 count:(unint64_t)a4 shouldContain:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  {
    v9 = *a3++;
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    [i addObject:v10];
  }

  v11 = [[ML3PersistentIDsPredicate alloc] initWithPersistentIDs:i shouldContain:v5];

  return v11;
}

@end
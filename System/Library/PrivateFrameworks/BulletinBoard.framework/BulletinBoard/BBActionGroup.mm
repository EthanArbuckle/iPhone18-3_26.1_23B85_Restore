@interface BBActionGroup
+ (id)actionGroupWithActions:(id)actions;
- (BBActionGroup)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBActionGroup

+ (id)actionGroupWithActions:(id)actions
{
  actionsCopy = actions;
  v5 = objc_alloc_init(self);
  [v5 setActions:actionsCopy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      v10.receiver = self;
      v10.super_class = BBActionGroup;
      if ([(BBAction *)&v10 isEqual:v5])
      {
        actions = [(BBActionGroup *)self actions];
        actions2 = [(BBActionGroup *)v5 actions];
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = BBActionGroup;
  v3 = [(BBAction *)&v7 hash];
  actions = [(BBActionGroup *)self actions];
  v5 = [actions hash];

  return v5 ^ v3;
}

- (BBActionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BBActionGroup;
  v5 = [(BBAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = BBAllowedClasses();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"actions"];
    [(BBActionGroup *)v5 setActions:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BBActionGroup;
  coderCopy = coder;
  [(BBAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(BBActionGroup *)self actions:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"actions"];
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

@end
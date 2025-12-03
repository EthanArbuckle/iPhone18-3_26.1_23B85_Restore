@interface HFDifference
+ (id)difference:(id)difference;
+ (id)difference:(id)difference priority:(unint64_t)priority;
+ (id)difference:(id)difference priority:(unint64_t)priority withBlock:(id)block;
- (HFDifference)initWithKey:(id)key priority:(unint64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionBuilder;
- (id)withPriority:(unint64_t)priority;
@end

@implementation HFDifference

- (HFDifference)initWithKey:(id)key priority:(unint64_t)priority
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = HFDifference;
  v7 = [(HFDifference *)&v11 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    key = v7->_key;
    v7->_key = v8;

    v7->_priority = priority;
  }

  return v7;
}

+ (id)difference:(id)difference
{
  differenceCopy = difference;
  v5 = [[self alloc] initWithKey:differenceCopy];

  return v5;
}

+ (id)difference:(id)difference priority:(unint64_t)priority
{
  differenceCopy = difference;
  v7 = [[self alloc] initWithKey:differenceCopy];

  [v7 setPriority:priority];

  return v7;
}

+ (id)difference:(id)difference priority:(unint64_t)priority withBlock:(id)block
{
  differenceCopy = difference;
  if ((*(block + 2))(block))
  {
    v9 = [[self alloc] initWithKey:differenceCopy];
    [v9 setPriority:priority];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)withPriority:(unint64_t)priority
{
  v4 = [(HFDifference *)self copy];
  [v4 setPriority:priority];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFDifference *)self key];
  v6 = [v4 initWithKey:v5];

  [v6 setPriority:{-[HFDifference priority](self, "priority")}];
  userInfo = [(HFDifference *)self userInfo];
  v8 = [userInfo copy];
  [v6 setUserInfo:v8];

  return v6;
}

- (id)descriptionBuilder
{
  v3 = [objc_alloc(MEMORY[0x277D2C8F8]) initWithObject:self];
  v4 = [(HFDifference *)self priority]- 1;
  if (v4 > 3)
  {
    v5 = @"none";
  }

  else
  {
    v5 = off_277DF4640[v4];
  }

  v6 = [(HFDifference *)self key];
  [v3 appendString:v6 withName:@"key"];

  [v3 appendString:v5 withName:@"priority"];
  userInfo = [(HFDifference *)self userInfo];

  if (userInfo)
  {
    userInfo2 = [(HFDifference *)self userInfo];
    [v3 appendDictionarySection:userInfo2 withName:@"userInfo" skipIfEmpty:1];
  }

  return v3;
}

__CFString *__34__HFDifference_descriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) priority];
  if ((v1 - 1) > 3)
  {
    return @"none";
  }

  else
  {
    return off_277DF4640[v1 - 1];
  }
}

- (id)description
{
  descriptionBuilder = [(HFDifference *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

@end
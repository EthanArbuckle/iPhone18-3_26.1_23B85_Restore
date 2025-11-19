@interface HFDifference
+ (id)difference:(id)a3;
+ (id)difference:(id)a3 priority:(unint64_t)a4;
+ (id)difference:(id)a3 priority:(unint64_t)a4 withBlock:(id)a5;
- (HFDifference)initWithKey:(id)a3 priority:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionBuilder;
- (id)withPriority:(unint64_t)a3;
@end

@implementation HFDifference

- (HFDifference)initWithKey:(id)a3 priority:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HFDifference;
  v7 = [(HFDifference *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    key = v7->_key;
    v7->_key = v8;

    v7->_priority = a4;
  }

  return v7;
}

+ (id)difference:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKey:v4];

  return v5;
}

+ (id)difference:(id)a3 priority:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithKey:v6];

  [v7 setPriority:a4];

  return v7;
}

+ (id)difference:(id)a3 priority:(unint64_t)a4 withBlock:(id)a5
{
  v8 = a3;
  if ((*(a5 + 2))(a5))
  {
    v9 = [[a1 alloc] initWithKey:v8];
    [v9 setPriority:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)withPriority:(unint64_t)a3
{
  v4 = [(HFDifference *)self copy];
  [v4 setPriority:a3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFDifference *)self key];
  v6 = [v4 initWithKey:v5];

  [v6 setPriority:{-[HFDifference priority](self, "priority")}];
  v7 = [(HFDifference *)self userInfo];
  v8 = [v7 copy];
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
  v7 = [(HFDifference *)self userInfo];

  if (v7)
  {
    v8 = [(HFDifference *)self userInfo];
    [v3 appendDictionarySection:v8 withName:@"userInfo" skipIfEmpty:1];
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
  v2 = [(HFDifference *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end
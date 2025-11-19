@interface ICCRIndexElement
+ (id)elementWithInteger:(int64_t)a3 replica:(id)a4;
- (BOOL)isEqual:(id)a3;
- (ICCRIndexElement)initWithInteger:(int64_t)a3 replica:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation ICCRIndexElement

+ (id)elementWithInteger:(int64_t)a3 replica:(id)a4
{
  v5 = a4;
  v6 = [[ICCRIndexElement alloc] initWithInteger:a3 replica:v5];

  return v6;
}

- (ICCRIndexElement)initWithInteger:(int64_t)a3 replica:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICCRIndexElement;
  v8 = [(ICCRIndexElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replica, a4);
    v9->_integer = a3;
  }

  return v9;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICCRIndexElement *)self integer];
  if (v5 == [v4 integer])
  {
    v6 = [(ICCRIndexElement *)self replica];
    v7 = [v4 replica];
    v8 = [v6 CR_compare:v7];
  }

  else
  {
    v9 = [(ICCRIndexElement *)self integer];
    if (v9 < [v4 integer])
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRIndexElement *)self replica];
    v6 = [v4 replica];
    if ([v5 isEqual:v6])
    {
      v7 = [(ICCRIndexElement *)self integer];
      v8 = v7 == [v4 integer];
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

  return v8;
}

- (unint64_t)hash
{
  v3 = [(ICCRIndexElement *)self replica];
  v4 = [v3 hash];
  v5 = [(ICCRIndexElement *)self integer];

  return v5 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICCRIndexElement allocWithZone:a3];
  v5 = [(ICCRIndexElement *)self integer];
  v6 = [(ICCRIndexElement *)self replica];
  v7 = [(ICCRIndexElement *)v4 initWithInteger:v5 replica:v6];

  return v7;
}

@end
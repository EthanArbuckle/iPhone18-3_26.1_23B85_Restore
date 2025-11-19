@interface FSItemPair
+ (id)pairWith:(id)a3 andObject:(id)a4;
- (BOOL)isEqual:(id)a3;
- (FSItemPair)initWith:(id)a3 andObject:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FSItemPair

- (FSItemPair)initWith:(id)a3 andObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FSItemPair;
  v8 = [(FSItemPair *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    first = v8->_first;
    v8->_first = v9;

    v11 = [v7 copy];
    second = v8->_second;
    v8->_second = v11;
  }

  return v8;
}

+ (id)pairWith:(id)a3 andObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWith:v7 andObject:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    first = self->_first;
    v7 = [v5 first];
    if ([first isEqual:v7])
    {
      second = self->_second;
      v9 = [v5 second];
      v10 = [second isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  first = self->_first;
  second = self->_second;

  return [v4 initWith:first andObject:second];
}

@end
@interface FSItemTriple
+ (id)tripleWith:(id)a3 second:(id)a4 third:(id)a5;
- (BOOL)isEqual:(id)a3;
- (FSItemTriple)initWith:(id)a3 second:(id)a4 third:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation FSItemTriple

- (FSItemTriple)initWith:(id)a3 second:(id)a4 third:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = FSItemTriple;
  v11 = [(FSItemTriple *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    first = v11->_first;
    v11->_first = v12;

    v14 = [v9 copy];
    second = v11->_second;
    v11->_second = v14;

    v16 = [v10 copy];
    third = v11->_third;
    v11->_third = v16;
  }

  return v11;
}

+ (id)tripleWith:(id)a3 second:(id)a4 third:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWith:v10 second:v9 third:v8];

  return v11;
}

- (unint64_t)hash
{
  v3 = [self->_first hash];
  v4 = [self->_second hash]+ 199 * v3;
  return [self->_third hash]+ 199 * v4;
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
      if ([second isEqual:v9])
      {
        third = self->_third;
        v11 = [v5 third];
        v12 = [third isEqual:v11];
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

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  first = self->_first;
  second = self->_second;
  third = self->_third;

  return [v4 initWith:first second:second third:third];
}

@end
@interface FSItemTriple
+ (id)tripleWith:(id)with second:(id)second third:(id)third;
- (BOOL)isEqual:(id)equal;
- (FSItemTriple)initWith:(id)with second:(id)second third:(id)third;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FSItemTriple

- (FSItemTriple)initWith:(id)with second:(id)second third:(id)third
{
  withCopy = with;
  secondCopy = second;
  thirdCopy = third;
  v19.receiver = self;
  v19.super_class = FSItemTriple;
  v11 = [(FSItemTriple *)&v19 init];
  if (v11)
  {
    v12 = [withCopy copy];
    first = v11->_first;
    v11->_first = v12;

    v14 = [secondCopy copy];
    second = v11->_second;
    v11->_second = v14;

    v16 = [thirdCopy copy];
    third = v11->_third;
    v11->_third = v16;
  }

  return v11;
}

+ (id)tripleWith:(id)with second:(id)second third:(id)third
{
  thirdCopy = third;
  secondCopy = second;
  withCopy = with;
  v11 = [[self alloc] initWith:withCopy second:secondCopy third:thirdCopy];

  return v11;
}

- (unint64_t)hash
{
  v3 = [self->_first hash];
  v4 = [self->_second hash]+ 199 * v3;
  return [self->_third hash]+ 199 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    first = self->_first;
    first = [v5 first];
    if ([first isEqual:first])
    {
      second = self->_second;
      second = [v5 second];
      if ([second isEqual:second])
      {
        third = self->_third;
        third = [v5 third];
        v12 = [third isEqual:third];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  first = self->_first;
  second = self->_second;
  third = self->_third;

  return [v4 initWith:first second:second third:third];
}

@end
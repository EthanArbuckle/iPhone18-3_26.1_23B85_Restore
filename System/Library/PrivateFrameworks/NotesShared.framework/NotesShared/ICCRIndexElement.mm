@interface ICCRIndexElement
+ (id)elementWithInteger:(int64_t)integer replica:(id)replica;
- (BOOL)isEqual:(id)equal;
- (ICCRIndexElement)initWithInteger:(int64_t)integer replica:(id)replica;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation ICCRIndexElement

+ (id)elementWithInteger:(int64_t)integer replica:(id)replica
{
  replicaCopy = replica;
  v6 = [[ICCRIndexElement alloc] initWithInteger:integer replica:replicaCopy];

  return v6;
}

- (ICCRIndexElement)initWithInteger:(int64_t)integer replica:(id)replica
{
  replicaCopy = replica;
  v11.receiver = self;
  v11.super_class = ICCRIndexElement;
  v8 = [(ICCRIndexElement *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_replica, replica);
    v9->_integer = integer;
  }

  return v9;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  integer = [(ICCRIndexElement *)self integer];
  if (integer == [compareCopy integer])
  {
    replica = [(ICCRIndexElement *)self replica];
    replica2 = [compareCopy replica];
    v8 = [replica CR_compare:replica2];
  }

  else
  {
    integer2 = [(ICCRIndexElement *)self integer];
    if (integer2 < [compareCopy integer])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    replica = [(ICCRIndexElement *)self replica];
    replica2 = [equalCopy replica];
    if ([replica isEqual:replica2])
    {
      integer = [(ICCRIndexElement *)self integer];
      v8 = integer == [equalCopy integer];
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
  replica = [(ICCRIndexElement *)self replica];
  v4 = [replica hash];
  integer = [(ICCRIndexElement *)self integer];

  return integer ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICCRIndexElement allocWithZone:zone];
  integer = [(ICCRIndexElement *)self integer];
  replica = [(ICCRIndexElement *)self replica];
  v7 = [(ICCRIndexElement *)v4 initWithInteger:integer replica:replica];

  return v7;
}

@end
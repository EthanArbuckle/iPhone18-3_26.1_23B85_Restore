@interface MBCKFileChange
- (NSString)changeTypeString;
- (id)description;
@end

@implementation MBCKFileChange

- (id)description
{
  v3 = [NSString alloc];
  v10.receiver = self;
  v10.super_class = MBCKFileChange;
  v4 = [(MBCKFileChange *)&v10 description];
  v5 = [(MBCKFileChange *)self domain];
  v6 = [v5 name];
  v7 = [(MBCKFileChange *)self relativePath];
  v8 = [v3 initWithFormat:@"%@ <%@:%@>", v4, v6, v7];

  return v8;
}

- (NSString)changeTypeString
{
  v2 = [(MBCKFileChange *)self changeType];
  if (v2 > 3)
  {
    return @"added";
  }

  else
  {
    return &off_1003BEA18[v2]->isa;
  }
}

@end
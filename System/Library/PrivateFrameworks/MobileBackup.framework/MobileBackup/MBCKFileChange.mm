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
  domain = [(MBCKFileChange *)self domain];
  name = [domain name];
  relativePath = [(MBCKFileChange *)self relativePath];
  v8 = [v3 initWithFormat:@"%@ <%@:%@>", v4, name, relativePath];

  return v8;
}

- (NSString)changeTypeString
{
  changeType = [(MBCKFileChange *)self changeType];
  if (changeType > 3)
  {
    return @"added";
  }

  else
  {
    return &off_1003BEA18[changeType]->isa;
  }
}

@end
@interface OADFill
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation OADFill

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFill;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end
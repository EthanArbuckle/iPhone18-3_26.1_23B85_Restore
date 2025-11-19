@interface DBGAttributedString
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withAttributedString:(id)a3;
- (DBGAttributedString)initWithAttributedString:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGAttributedString

+ (id)withAttributedString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttributedString:v4];

  return v5;
}

- (DBGAttributedString)initWithAttributedString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGAttributedString;
  v6 = [(DBGAttributedString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributedString, a3);
  }

  return v7;
}

- (NSString)description
{
  v2 = [(DBGAttributedString *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGAttributedString *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"attrStr"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[NSAttributedString alloc] initWithString:v8];
    v10 = [a1 withAttributedString:v9];
  }

  else
  {
    v10 = 0;
    if (!v8 && a5)
    {
      v10 = 0;
      *a5 = 0;
    }
  }

  return v10;
}

@end
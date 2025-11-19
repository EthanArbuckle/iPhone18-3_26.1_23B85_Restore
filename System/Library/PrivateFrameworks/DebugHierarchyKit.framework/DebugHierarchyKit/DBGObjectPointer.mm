@interface DBGObjectPointer
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withAddress:(id)a3;
- (DBGObjectPointer)initWithAddress:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGObjectPointer

+ (id)withAddress:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAddress:v4];

  return v5;
}

- (DBGObjectPointer)initWithAddress:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGObjectPointer;
  v6 = [(DBGObjectPointer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectPointer, a3);
  }

  return v7;
}

- (NSString)description
{
  v2 = [(DBGObjectPointer *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGObjectPointer *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"public.plain-text"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [a1 withAddress:v8];
  }

  else
  {
    v9 = 0;
    if (!v8 && a5)
    {
      v9 = 0;
      *a5 = 0;
    }
  }

  return v9;
}

@end
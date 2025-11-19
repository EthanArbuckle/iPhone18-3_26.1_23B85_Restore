@interface DBGFont
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withDescription:(id)a3;
- (DBGFont)initWithDescription:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)displayString;
- (id)objectValue;
@end

@implementation DBGFont

+ (id)withDescription:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDescription:v4];

  return v5;
}

- (DBGFont)initWithDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGFont;
  v6 = [(DBGFont *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontDescription, a3);
  }

  return v7;
}

- (id)displayString
{
  v3 = [(DBGFont *)self fontDescription];

  if (v3)
  {
    v4 = [(DBGFont *)self fontDescription];
    v5 = [v4 objectForKeyedSubscript:@"fontName"];

    v6 = [(DBGFont *)self fontDescription];
    v7 = [v6 objectForKeyedSubscript:@"pointSize"];

    v8 = 0;
    if (v5 && v7)
    {
      [v7 floatValue];
      v8 = [NSString stringWithFormat:@"%@ %.2fpt", v5, v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)objectValue
{
  v3 = [(DBGFont *)self fontDescription];

  if (v3)
  {
    v4 = [(DBGFont *)self fontDescription];
    v5 = [v4 objectForKeyedSubscript:@"fontName"];

    v6 = [(DBGFont *)self fontDescription];
    v7 = [v6 objectForKeyedSubscript:@"pointSize"];
  }

  return [(DBGFont *)self displayString];
}

- (NSString)description
{
  v2 = [(DBGFont *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGFont *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = DBGDecodeValueFromJSONCompatibleValue();
    v11 = 0;
    v12 = [a1 withDescription:v10];
    if (a5 && v11)
    {
      v13 = v11;
      *a5 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)JSONCompatibleRepresentation
{
  v2 = [(DBGFont *)self fontDescription];
  v3 = DBGEncodeValueAsJSONCompatibleValue();
  v4 = 0;

  if (v4)
  {
    v5 = [v4 localizedDescription];
    NSLog(&cfstr_SError_0.isa, "[DBGFont(JSONSerialization) JSONCompatibleRepresentation]", v5);

    v3 = 0;
  }

  return v3;
}

@end
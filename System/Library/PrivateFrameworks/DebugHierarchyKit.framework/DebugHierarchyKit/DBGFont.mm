@interface DBGFont
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withDescription:(id)description;
- (DBGFont)initWithDescription:(id)description;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)displayString;
- (id)objectValue;
@end

@implementation DBGFont

+ (id)withDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[self alloc] initWithDescription:descriptionCopy];

  return v5;
}

- (DBGFont)initWithDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = DBGFont;
  v6 = [(DBGFont *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fontDescription, description);
  }

  return v7;
}

- (id)displayString
{
  fontDescription = [(DBGFont *)self fontDescription];

  if (fontDescription)
  {
    fontDescription2 = [(DBGFont *)self fontDescription];
    v5 = [fontDescription2 objectForKeyedSubscript:@"fontName"];

    fontDescription3 = [(DBGFont *)self fontDescription];
    v7 = [fontDescription3 objectForKeyedSubscript:@"pointSize"];

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
  fontDescription = [(DBGFont *)self fontDescription];

  if (fontDescription)
  {
    fontDescription2 = [(DBGFont *)self fontDescription];
    v5 = [fontDescription2 objectForKeyedSubscript:@"fontName"];

    fontDescription3 = [(DBGFont *)self fontDescription];
    v7 = [fontDescription3 objectForKeyedSubscript:@"pointSize"];
  }

  return [(DBGFont *)self displayString];
}

- (NSString)description
{
  objectValue = [(DBGFont *)self objectValue];
  v3 = [objectValue description];

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

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  formatCopy = format;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = DBGDecodeValueFromJSONCompatibleValue();
    v11 = 0;
    v12 = [self withDescription:v10];
    if (error && v11)
    {
      v13 = v11;
      *error = v11;
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
  fontDescription = [(DBGFont *)self fontDescription];
  v3 = DBGEncodeValueAsJSONCompatibleValue();
  v4 = 0;

  if (v4)
  {
    localizedDescription = [v4 localizedDescription];
    NSLog(&cfstr_SError_0.isa, "[DBGFont(JSONSerialization) JSONCompatibleRepresentation]", localizedDescription);

    v3 = 0;
  }

  return v3;
}

@end
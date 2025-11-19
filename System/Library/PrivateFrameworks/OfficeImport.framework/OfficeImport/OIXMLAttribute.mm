@interface OIXMLAttribute
+ (id)attributeWithName:(id)a3 stringValue:(id)a4;
- (OIXMLAttribute)initWithName:(id)a3 stringValue:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4;
@end

@implementation OIXMLAttribute

+ (id)attributeWithName:(id)a3 stringValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 stringValue:v6];

  return v8;
}

- (OIXMLAttribute)initWithName:(id)a3 stringValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = OIXMLAttribute;
  v9 = [(OIXMLAttribute *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  name = self->_name;
  value = self->_value;

  return [v4 initWithName:name stringValue:value];
}

- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4
{
  v11 = 34;
  *chars = 2228285;
  v6 = [(OIXMLAttribute *)self name:a3];
  CFStringAppend(a3, v6);
  CFStringAppendCharacters(a3, chars, 2);
  v8 = 2490428;
  v9 = 34;
  v7 = [(OIXMLAttribute *)self stringValue];
  [OIXMLNode _escapeCharacters:&v8 amount:3 escapeWhiteSpaces:0 inString:v7 appendingToString:a3];

  CFStringAppendCharacters(a3, &v11, 1);
}

@end
@interface OIXMLAttribute
+ (id)attributeWithName:(id)name stringValue:(id)value;
- (OIXMLAttribute)initWithName:(id)name stringValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_appendXMLStringToString:(__CFString *)string level:(int)level;
@end

@implementation OIXMLAttribute

+ (id)attributeWithName:(id)name stringValue:(id)value
{
  valueCopy = value;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy stringValue:valueCopy];

  return v8;
}

- (OIXMLAttribute)initWithName:(id)name stringValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = OIXMLAttribute;
  v9 = [(OIXMLAttribute *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  name = self->_name;
  value = self->_value;

  return [v4 initWithName:name stringValue:value];
}

- (void)_appendXMLStringToString:(__CFString *)string level:(int)level
{
  v11 = 34;
  *chars = 2228285;
  v6 = [(OIXMLAttribute *)self name:string];
  CFStringAppend(string, v6);
  CFStringAppendCharacters(string, chars, 2);
  v8 = 2490428;
  v9 = 34;
  stringValue = [(OIXMLAttribute *)self stringValue];
  [OIXMLNode _escapeCharacters:&v8 amount:3 escapeWhiteSpaces:0 inString:stringValue appendingToString:string];

  CFStringAppendCharacters(string, &v11, 1);
}

@end
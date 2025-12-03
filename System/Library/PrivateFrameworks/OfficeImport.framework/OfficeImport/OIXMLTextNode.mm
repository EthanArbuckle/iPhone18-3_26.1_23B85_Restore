@interface OIXMLTextNode
+ (id)textNodeWithStringValue:(id)value;
- (OIXMLTextNode)initWithStringValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)name;
- (void)_appendXMLStringToString:(__CFString *)string level:(int)level;
@end

@implementation OIXMLTextNode

- (id)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:216 description:@"This should never be reached"];

  return 0;
}

+ (id)textNodeWithStringValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithStringValue:valueCopy];

  return v5;
}

- (OIXMLTextNode)initWithStringValue:(id)value
{
  valueCopy = value;
  v8.receiver = self;
  v8.super_class = OIXMLTextNode;
  v5 = [(OIXMLTextNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OIXMLTextNode *)v5 setStringValue:valueCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  stringValue = [(OIXMLTextNode *)self stringValue];
  v6 = [v4 initWithStringValue:stringValue];

  return v6;
}

- (void)_appendXMLStringToString:(__CFString *)string level:(int)level
{
  v8 = *MEMORY[0x277D85DE8];
  LOWORD(v7) = -3913;
  v5 = [(OIXMLTextNode *)self stringValue:string];
  [OIXMLNode _escapeCharacters:&v6 amount:9 escapeWhiteSpaces:1 inString:v5 appendingToString:string];
}

@end
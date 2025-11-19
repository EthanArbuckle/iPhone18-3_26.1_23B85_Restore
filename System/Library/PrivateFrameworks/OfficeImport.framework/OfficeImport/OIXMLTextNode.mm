@interface OIXMLTextNode
+ (id)textNodeWithStringValue:(id)a3;
- (OIXMLTextNode)initWithStringValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)name;
- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4;
@end

@implementation OIXMLTextNode

- (id)name
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"OIXMLNode.m" lineNumber:216 description:@"This should never be reached"];

  return 0;
}

+ (id)textNodeWithStringValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithStringValue:v4];

  return v5;
}

- (OIXMLTextNode)initWithStringValue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OIXMLTextNode;
  v5 = [(OIXMLTextNode *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(OIXMLTextNode *)v5 setStringValue:v4];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(OIXMLTextNode *)self stringValue];
  v6 = [v4 initWithStringValue:v5];

  return v6;
}

- (void)_appendXMLStringToString:(__CFString *)a3 level:(int)a4
{
  v8 = *MEMORY[0x277D85DE8];
  LOWORD(v7) = -3913;
  v5 = [(OIXMLTextNode *)self stringValue:a3];
  [OIXMLNode _escapeCharacters:&v6 amount:9 escapeWhiteSpaces:1 inString:v5 appendingToString:a3];
}

@end
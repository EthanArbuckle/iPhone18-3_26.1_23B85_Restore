@interface GDRelationshipIdentifier
+ (id)prefixedIdentifierStringForIdentifierString:(id)string;
+ (id)prefixedIdentifierStringForIdentifierValue:(unint64_t)value;
+ (id)unprefixedIdentifierStringForIdentifierString:(id)string;
- (GDRelationshipIdentifier)initWithCoder:(id)coder;
- (GDRelationshipIdentifier)initWithString:(id)string;
- (GDRelationshipIdentifier)initWithValue:(unint64_t)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation GDRelationshipIdentifier

- (GDRelationshipIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GDRelationshipIdentifier;
  v6 = [(GDRelationshipIdentifier *)&v13 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    if (!v7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"GDEntityIdentifier.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
    }

    stringValue = v6->_stringValue;
    v6->_stringValue = v7;
    v9 = v7;

    v10 = [GDEntityIdentifier unprefixedIdentifierStringForIdentifierString:v9];

    v6->_intValue = [v10 longLongValue];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stringValue = self->_stringValue;

  return [v4 initWithString:stringValue];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDRelationshipIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDRelationshipIdentifier: %@>", stringValue];

  return v5;
}

- (GDRelationshipIdentifier)initWithValue:(unint64_t)value
{
  v9.receiver = self;
  v9.super_class = GDRelationshipIdentifier;
  v4 = [(GDRelationshipIdentifier *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_intValue = value;
    v6 = [GDRelationshipIdentifier prefixedIdentifierStringForIdentifierValue:value];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (GDRelationshipIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = GDRelationshipIdentifier;
  v5 = [(GDRelationshipIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [GDRelationshipIdentifier prefixedIdentifierStringForIdentifierString:stringCopy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [GDRelationshipIdentifier unprefixedIdentifierStringForIdentifierString:stringCopy];
    v5->_intValue = [v8 longLongValue];
  }

  return v5;
}

+ (id)unprefixedIdentifierStringForIdentifierString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  if ([stringCopy hasPrefix:@"ri:"])
  {
    v5 = [stringCopy substringFromIndex:{objc_msgSend(@"ri:", "length")}];
  }

  else
  {
    v5 = stringCopy;
  }

  v6 = v5;
  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)prefixedIdentifierStringForIdentifierValue:(unint64_t)value
{
  v4 = objc_autoreleasePoolPush();
  value = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%llu", @"ri:", value];
  objc_autoreleasePoolPop(v4);

  return value;
}

+ (id)prefixedIdentifierStringForIdentifierString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  if ([stringCopy hasPrefix:@"ri:"])
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = [@"ri:" stringByAppendingString:stringCopy];
  }

  v6 = v5;
  objc_autoreleasePoolPop(v4);

  return v6;
}

@end
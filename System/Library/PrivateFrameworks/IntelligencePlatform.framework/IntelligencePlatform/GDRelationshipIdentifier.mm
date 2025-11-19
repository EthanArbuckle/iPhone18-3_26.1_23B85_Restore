@interface GDRelationshipIdentifier
+ (id)prefixedIdentifierStringForIdentifierString:(id)a3;
+ (id)prefixedIdentifierStringForIdentifierValue:(unint64_t)a3;
+ (id)unprefixedIdentifierStringForIdentifierString:(id)a3;
- (GDRelationshipIdentifier)initWithCoder:(id)a3;
- (GDRelationshipIdentifier)initWithString:(id)a3;
- (GDRelationshipIdentifier)initWithValue:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation GDRelationshipIdentifier

- (GDRelationshipIdentifier)initWithCoder:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = GDRelationshipIdentifier;
  v6 = [(GDRelationshipIdentifier *)&v13 init];
  if (v6)
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"stringValue"];
    if (!v7)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v6 file:@"GDEntityIdentifier.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"stringValue"}];
    }

    stringValue = v6->_stringValue;
    v6->_stringValue = v7;
    v9 = v7;

    v10 = [GDEntityIdentifier unprefixedIdentifierStringForIdentifierString:v9];

    v6->_intValue = [v10 longLongValue];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  stringValue = self->_stringValue;

  return [v4 initWithString:stringValue];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDRelationshipIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDRelationshipIdentifier: %@>", v4];

  return v5;
}

- (GDRelationshipIdentifier)initWithValue:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = GDRelationshipIdentifier;
  v4 = [(GDRelationshipIdentifier *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_intValue = a3;
    v6 = [GDRelationshipIdentifier prefixedIdentifierStringForIdentifierValue:a3];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

- (GDRelationshipIdentifier)initWithString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GDRelationshipIdentifier;
  v5 = [(GDRelationshipIdentifier *)&v10 init];
  if (v5)
  {
    v6 = [GDRelationshipIdentifier prefixedIdentifierStringForIdentifierString:v4];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;

    v8 = [GDRelationshipIdentifier unprefixedIdentifierStringForIdentifierString:v4];
    v5->_intValue = [v8 longLongValue];
  }

  return v5;
}

+ (id)unprefixedIdentifierStringForIdentifierString:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([v3 hasPrefix:@"ri:"])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(@"ri:", "length")}];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;
  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)prefixedIdentifierStringForIdentifierValue:(unint64_t)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%llu", @"ri:", a3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)prefixedIdentifierStringForIdentifierString:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([v3 hasPrefix:@"ri:"])
  {
    v5 = v3;
  }

  else
  {
    v5 = [@"ri:" stringByAppendingString:v3];
  }

  v6 = v5;
  objc_autoreleasePoolPop(v4);

  return v6;
}

@end
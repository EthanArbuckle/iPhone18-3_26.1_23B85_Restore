@interface LNStructuredDataRepresentableTypeSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithStructuredRepresentations:(int64_t)representations;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNStructuredDataRepresentableTypeSystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      structuredDataRepresentations = [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)self structuredDataRepresentations];
      v8 = structuredDataRepresentations == [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)v6 structuredDataRepresentations];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, supportedReps: %lx>", v5, self, -[LNStructuredDataRepresentableTypeSystemProtocolMetadata structuredDataRepresentations](self, "structuredDataRepresentations")];

  return v6;
}

- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"structuredDataRepresentations"];

  return [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)self initWithStructuredRepresentations:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNStructuredDataRepresentableTypeSystemProtocolMetadata structuredDataRepresentations](self forKey:{"structuredDataRepresentations"), @"structuredDataRepresentations"}];
}

- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithStructuredRepresentations:(int64_t)representations
{
  v8.receiver = self;
  v8.super_class = LNStructuredDataRepresentableTypeSystemProtocolMetadata;
  v4 = [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_structuredDataRepresentations = representations;
    v6 = v4;
  }

  return v5;
}

@end
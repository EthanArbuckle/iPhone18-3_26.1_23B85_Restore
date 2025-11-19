@interface LNStructuredDataRepresentableTypeSystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithCoder:(id)a3;
- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithStructuredRepresentations:(int64_t)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNStructuredDataRepresentableTypeSystemProtocolMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)self structuredDataRepresentations];
      v8 = v7 == [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)v6 structuredDataRepresentations];
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

- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"structuredDataRepresentations"];

  return [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)self initWithStructuredRepresentations:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNStructuredDataRepresentableTypeSystemProtocolMetadata structuredDataRepresentations](self forKey:{"structuredDataRepresentations"), @"structuredDataRepresentations"}];
}

- (LNStructuredDataRepresentableTypeSystemProtocolMetadata)initWithStructuredRepresentations:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LNStructuredDataRepresentableTypeSystemProtocolMetadata;
  v4 = [(LNStructuredDataRepresentableTypeSystemProtocolMetadata *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_structuredDataRepresentations = a3;
    v6 = v4;
  }

  return v5;
}

@end
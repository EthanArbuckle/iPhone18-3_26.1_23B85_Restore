@interface _DASFastPass
- (_DASFastPass)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASFastPass

- (_DASFastPass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _DASFastPass;
  v5 = [(_DASFastPass *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"processingTaskIdentifiers"];
    v10 = [v9 mutableCopy];

    v11 = [v10 copy];
    processingTaskIdentifiers = v5->_processingTaskIdentifiers;
    v5->_processingTaskIdentifiers = v11;

    v5->_semanticVersion = [coderCopy decodeIntegerForKey:@"kSemanticIdentifier"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  processingTaskIdentifiers = [(_DASFastPass *)self processingTaskIdentifiers];

  if (processingTaskIdentifiers)
  {
    [coderCopy encodeObject:self->_processingTaskIdentifiers forKey:@"processingTaskIdentifiers"];
  }

  [coderCopy encodeInteger:-[_DASFastPass semanticVersion](self forKey:{"semanticVersion"), @"kSemanticIdentifier"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(_DASFastPass);
  processingTaskIdentifiers = [(_DASFastPass *)self processingTaskIdentifiers];
  v7 = [processingTaskIdentifiers copyWithZone:zone];
  [(_DASFastPass *)v5 setProcessingTaskIdentifiers:v7];

  [(_DASFastPass *)v5 setSemanticVersion:[(_DASFastPass *)self semanticVersion]];
  return v5;
}

@end
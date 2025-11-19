@interface _DASFastPass
- (_DASFastPass)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASFastPass

- (_DASFastPass)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _DASFastPass;
  v5 = [(_DASFastPass *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"processingTaskIdentifiers"];
    v10 = [v9 mutableCopy];

    v11 = [v10 copy];
    processingTaskIdentifiers = v5->_processingTaskIdentifiers;
    v5->_processingTaskIdentifiers = v11;

    v5->_semanticVersion = [v4 decodeIntegerForKey:@"kSemanticIdentifier"];
    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(_DASFastPass *)self processingTaskIdentifiers];

  if (v4)
  {
    [v5 encodeObject:self->_processingTaskIdentifiers forKey:@"processingTaskIdentifiers"];
  }

  [v5 encodeInteger:-[_DASFastPass semanticVersion](self forKey:{"semanticVersion"), @"kSemanticIdentifier"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(_DASFastPass);
  v6 = [(_DASFastPass *)self processingTaskIdentifiers];
  v7 = [v6 copyWithZone:a3];
  [(_DASFastPass *)v5 setProcessingTaskIdentifiers:v7];

  [(_DASFastPass *)v5 setSemanticVersion:[(_DASFastPass *)self semanticVersion]];
  return v5;
}

@end
@interface HDUnresolvedReferenceSet
- (HDUnresolvedReferenceSet)init;
- (HDUnresolvedReferenceSet)initWithCoder:(id)a3;
- (HDUnresolvedReferenceSet)initWithReferences:(id)a3 resource:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDUnresolvedReferenceSet

- (HDUnresolvedReferenceSet)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDUnresolvedReferenceSet)initWithReferences:(id)a3 resource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HDUnresolvedReferenceSet;
  v8 = [(HDUnresolvedReferenceSet *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    references = v8->_references;
    v8->_references = v9;

    objc_storeStrong(&v8->_resource, a4);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDUnresolvedReferenceSet *)self references];
  [v4 encodeObject:v5 forKey:@"References"];

  v6 = [(HDUnresolvedReferenceSet *)self resource];
  [v4 encodeObject:v6 forKey:@"Resource"];
}

- (HDUnresolvedReferenceSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"References"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Resource"];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  else
  {
    self = [(HDUnresolvedReferenceSet *)self initWithReferences:v8 resource:v9];
    v12 = self;
  }

  return v12;
}

@end
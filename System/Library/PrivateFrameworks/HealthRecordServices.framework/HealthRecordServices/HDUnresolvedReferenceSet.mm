@interface HDUnresolvedReferenceSet
- (HDUnresolvedReferenceSet)init;
- (HDUnresolvedReferenceSet)initWithCoder:(id)coder;
- (HDUnresolvedReferenceSet)initWithReferences:(id)references resource:(id)resource;
- (void)encodeWithCoder:(id)coder;
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

- (HDUnresolvedReferenceSet)initWithReferences:(id)references resource:(id)resource
{
  referencesCopy = references;
  resourceCopy = resource;
  v12.receiver = self;
  v12.super_class = HDUnresolvedReferenceSet;
  v8 = [(HDUnresolvedReferenceSet *)&v12 init];
  if (v8)
  {
    v9 = [referencesCopy copy];
    references = v8->_references;
    v8->_references = v9;

    objc_storeStrong(&v8->_resource, resource);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  references = [(HDUnresolvedReferenceSet *)self references];
  [coderCopy encodeObject:references forKey:@"References"];

  resource = [(HDUnresolvedReferenceSet *)self resource];
  [coderCopy encodeObject:resource forKey:@"Resource"];
}

- (HDUnresolvedReferenceSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"References"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Resource"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    self = [(HDUnresolvedReferenceSet *)self initWithReferences:v8 resource:v9];
    selfCopy = self;
  }

  return selfCopy;
}

@end
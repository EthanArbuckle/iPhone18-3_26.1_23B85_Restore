@interface HDExtractionRequest
- (HDExtractionRequest)initWithCoder:(id)coder;
- (HDExtractionRequest)initWithResources:(id)resources;
- (id)debugDescription;
@end

@implementation HDExtractionRequest

- (HDExtractionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"Resources"];
  if (v6)
  {
    self = [(HDExtractionRequest *)self initWithResources:v6];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (HDExtractionRequest)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = HDExtractionRequest;
  v5 = [(HDExtractionRequest *)&v9 init];
  if (v5)
  {
    v6 = [resourcesCopy copy];
    resources = v5->_resources;
    v5->_resources = v6;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p, %ld resources>", v5, self, -[NSArray count](self->_resources, "count")];

  return v6;
}

@end
@interface HDExtractionRequest
- (HDExtractionRequest)initWithCoder:(id)a3;
- (HDExtractionRequest)initWithResources:(id)a3;
- (id)debugDescription;
@end

@implementation HDExtractionRequest

- (HDExtractionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"Resources"];
  if (v6)
  {
    self = [(HDExtractionRequest *)self initWithResources:v6];
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

- (HDExtractionRequest)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDExtractionRequest;
  v5 = [(HDExtractionRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
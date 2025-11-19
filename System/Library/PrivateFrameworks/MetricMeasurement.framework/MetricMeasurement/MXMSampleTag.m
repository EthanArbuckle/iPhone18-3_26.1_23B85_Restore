@interface MXMSampleTag
- (BOOL)isEqualToTag:(id)a3;
- (MXMSampleTag)initWithCoder:(id)a3;
- (MXMSampleTag)initWithComponents:(id)a3;
- (MXMSampleTag)initWithDNString:(id)a3;
- (MXMSampleTag)initWithTaxonomy:(id)a3;
- (NSString)domainNameString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MXMSampleTag

- (NSString)domainNameString
{
  v2 = [(NSOrderedSet *)self->_taxonomy array];
  v3 = [v2 componentsJoinedByString:@"."];

  return v3;
}

- (MXMSampleTag)initWithDNString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [(MXMSampleTag *)self initWithComponents:v4];

  return v5;
}

- (MXMSampleTag)initWithComponents:(id)a3
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:a3];
  v5 = [(MXMSampleTag *)self initWithTaxonomy:v4];

  return v5;
}

- (MXMSampleTag)initWithTaxonomy:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MXMSampleTag;
  v6 = [(MXMSampleTag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taxonomy, a3);
  }

  return v7;
}

- (MXMSampleTag)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MXMSampleTag;
  v5 = [(MXMSampleTag *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_taxonomy"];
    taxonomy = v5->_taxonomy;
    v5->_taxonomy = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSOrderedSet *)self->_taxonomy copyWithZone:a3];
  v7 = [v5 initWithTaxonomy:v6];

  return v7;
}

- (BOOL)isEqualToTag:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MXMSampleTag *)a2 isEqualToTag:?];
  }

  v6 = [v5[1] isEqualToOrderedSet:self->_taxonomy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MXMSampleTag *)self domainNameString];
  v7 = [v3 stringWithFormat:@"<%@: %p '%@'>", v5, self, v6];

  return v7;
}

- (void)isEqualToTag:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleTag.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"[tag isKindOfClass:MXMSampleTag.class]"}];
}

@end
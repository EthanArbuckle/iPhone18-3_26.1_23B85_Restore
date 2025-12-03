@interface MXMSampleTag
- (BOOL)isEqualToTag:(id)tag;
- (MXMSampleTag)initWithCoder:(id)coder;
- (MXMSampleTag)initWithComponents:(id)components;
- (MXMSampleTag)initWithDNString:(id)string;
- (MXMSampleTag)initWithTaxonomy:(id)taxonomy;
- (NSString)domainNameString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MXMSampleTag

- (NSString)domainNameString
{
  array = [(NSOrderedSet *)self->_taxonomy array];
  v3 = [array componentsJoinedByString:@"."];

  return v3;
}

- (MXMSampleTag)initWithDNString:(id)string
{
  v4 = [string componentsSeparatedByString:@"."];
  v5 = [(MXMSampleTag *)self initWithComponents:v4];

  return v5;
}

- (MXMSampleTag)initWithComponents:(id)components
{
  v4 = [MEMORY[0x277CBEB70] orderedSetWithArray:components];
  v5 = [(MXMSampleTag *)self initWithTaxonomy:v4];

  return v5;
}

- (MXMSampleTag)initWithTaxonomy:(id)taxonomy
{
  taxonomyCopy = taxonomy;
  v9.receiver = self;
  v9.super_class = MXMSampleTag;
  v6 = [(MXMSampleTag *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taxonomy, taxonomy);
  }

  return v7;
}

- (MXMSampleTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MXMSampleTag;
  v5 = [(MXMSampleTag *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_taxonomy"];
    taxonomy = v5->_taxonomy;
    v5->_taxonomy = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(NSOrderedSet *)self->_taxonomy copyWithZone:zone];
  v7 = [v5 initWithTaxonomy:v6];

  return v7;
}

- (BOOL)isEqualToTag:(id)tag
{
  tagCopy = tag;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MXMSampleTag *)a2 isEqualToTag:?];
  }

  v6 = [tagCopy[1] isEqualToOrderedSet:self->_taxonomy];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  domainNameString = [(MXMSampleTag *)self domainNameString];
  v7 = [v3 stringWithFormat:@"<%@: %p '%@'>", v5, self, domainNameString];

  return v7;
}

- (void)isEqualToTag:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleTag.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"[tag isKindOfClass:MXMSampleTag.class]"}];
}

@end
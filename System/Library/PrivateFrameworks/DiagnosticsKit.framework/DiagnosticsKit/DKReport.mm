@interface DKReport
+ (id)reportWithComponents:(id)components;
- (BOOL)isEmpty;
- (DKReport)initWithCoder:(id)coder;
- (DKReport)initWithComponents:(id)components;
- (id)arrayForJSON;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)reportByMergingReport:(id)report;
- (void)encodeWithCoder:(id)coder;
- (void)mergeWithReport:(id)report;
@end

@implementation DKReport

+ (id)reportWithComponents:(id)components
{
  componentsCopy = components;
  v5 = [[self alloc] initWithComponents:componentsCopy];

  return v5;
}

- (DKReport)initWithComponents:(id)components
{
  componentsCopy = components;
  v9.receiver = self;
  v9.super_class = DKReport;
  v6 = [(DKReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_components, components);
  }

  return v7;
}

- (id)reportByMergingReport:(id)report
{
  selfCopy = self;
  if (report)
  {
    reportCopy = report;
    components = [(DKReport *)selfCopy components];
    v7 = [components mutableCopy];

    components2 = [reportCopy components];

    [v7 addObjectsFromArray:components2];
    v9 = [DKReport reportWithComponents:v7];

    selfCopy = v9;
  }

  return selfCopy;
}

- (void)mergeWithReport:(id)report
{
  if (report)
  {
    reportCopy = report;
    components = [(DKReport *)self components];
    components2 = [reportCopy components];

    v6 = [components arrayByAddingObjectsFromArray:components2];
    components = self->_components;
    self->_components = v6;
  }
}

- (id)arrayForJSON
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  components = [(DKReport *)self components];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(components, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  components2 = [(DKReport *)self components];
  v7 = [components2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(components2);
        }

        dictionaryForJSON = [*(*(&v14 + 1) + 8 * i) dictionaryForJSON];
        [v5 addObject:dictionaryForJSON];
      }

      v8 = [components2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isEmpty
{
  components = [(DKReport *)self components];
  v3 = [components count] == 0;

  return v3;
}

- (DKReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = DKReport;
  v5 = [(DKReport *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"components"];
    components = v5->_components;
    v5->_components = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  components = [(DKReport *)self components];
  [coderCopy encodeObject:components forKey:@"components"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_components copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p components: %@>", v5, self, self->_components];;

  return v6;
}

@end
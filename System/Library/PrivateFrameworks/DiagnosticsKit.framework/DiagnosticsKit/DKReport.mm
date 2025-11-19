@interface DKReport
+ (id)reportWithComponents:(id)a3;
- (BOOL)isEmpty;
- (DKReport)initWithCoder:(id)a3;
- (DKReport)initWithComponents:(id)a3;
- (id)arrayForJSON;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)reportByMergingReport:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeWithReport:(id)a3;
@end

@implementation DKReport

+ (id)reportWithComponents:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComponents:v4];

  return v5;
}

- (DKReport)initWithComponents:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DKReport;
  v6 = [(DKReport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_components, a3);
  }

  return v7;
}

- (id)reportByMergingReport:(id)a3
{
  v4 = self;
  if (a3)
  {
    v5 = a3;
    v6 = [(DKReport *)v4 components];
    v7 = [v6 mutableCopy];

    v8 = [v5 components];

    [v7 addObjectsFromArray:v8];
    v9 = [DKReport reportWithComponents:v7];

    v4 = v9;
  }

  return v4;
}

- (void)mergeWithReport:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v8 = [(DKReport *)self components];
    v5 = [v4 components];

    v6 = [v8 arrayByAddingObjectsFromArray:v5];
    components = self->_components;
    self->_components = v6;
  }
}

- (id)arrayForJSON
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(DKReport *)self components];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(DKReport *)self components];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) dictionaryForJSON];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isEmpty
{
  v2 = [(DKReport *)self components];
  v3 = [v2 count] == 0;

  return v3;
}

- (DKReport)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DKReport;
  v5 = [(DKReport *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"components"];
    components = v5->_components;
    v5->_components = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKReport *)self components];
  [v4 encodeObject:v5 forKey:@"components"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_components copyWithZone:a3];
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
@interface ML3DatabaseNaturalStatement
+ (id)naturalStatementWithSQL:(id)l parameters:(id)parameters;
- (ML3DatabaseNaturalStatement)initWithCoder:(id)coder;
- (ML3DatabaseNaturalStatement)initWithSQL:(id)l parameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
- (void)setParameter:(id)parameter forPosition:(unint64_t)position;
@end

@implementation ML3DatabaseNaturalStatement

- (void)encodeWithCoder:(id)coder
{
  sql = self->_sql;
  coderCopy = coder;
  [coderCopy encodeObject:sql forKey:@"ML3DatabaseNaturalStatementSQLKey"];
  [coderCopy encodeObject:self->_parameters forKey:@"ML3DatabaseNaturalStatementParametersKey"];
}

- (ML3DatabaseNaturalStatement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ML3DatabaseNaturalStatement;
  v5 = [(ML3DatabaseNaturalStatement *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ML3DatabaseNaturalStatementSQLKey"];
    sql = v5->_sql;
    v5->_sql = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = MSVPropertyListDataClasses();
    v11 = [v10 setByAddingObject:objc_opt_class()];

    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"ML3DatabaseNaturalStatementParametersKey"];
    if (v12)
    {
      [(NSMutableArray *)v5->_parameters addObjectsFromArray:v12];
    }
  }

  return v5;
}

- (void)setParameter:(id)parameter forPosition:(unint64_t)position
{
  parameterCopy = parameter;
  v6 = position - 1;
  if (v6 >= [(NSMutableArray *)self->_parameters count])
  {
    v7 = [(NSMutableArray *)self->_parameters count];
    if (v7 <= v6)
    {
      v8 = v7;
      do
      {
        null = [MEMORY[0x277CBEB68] null];
        [(NSMutableArray *)self->_parameters setObject:null atIndexedSubscript:v8];

        ++v8;
      }

      while (v8 <= v6);
    }
  }

  [(NSMutableArray *)self->_parameters setObject:parameterCopy atIndexedSubscript:v6];
}

- (ML3DatabaseNaturalStatement)initWithSQL:(id)l parameters:(id)parameters
{
  lCopy = l;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = ML3DatabaseNaturalStatement;
  v8 = [(ML3DatabaseNaturalStatement *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    sql = v8->_sql;
    v8->_sql = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v8->_parameters;
    v8->_parameters = v11;

    if (parametersCopy)
    {
      [(NSMutableArray *)v8->_parameters addObjectsFromArray:parametersCopy];
    }
  }

  return v8;
}

+ (id)naturalStatementWithSQL:(id)l parameters:(id)parameters
{
  parametersCopy = parameters;
  lCopy = l;
  v7 = [objc_alloc(objc_opt_class()) initWithSQL:lCopy parameters:parametersCopy];

  return v7;
}

@end
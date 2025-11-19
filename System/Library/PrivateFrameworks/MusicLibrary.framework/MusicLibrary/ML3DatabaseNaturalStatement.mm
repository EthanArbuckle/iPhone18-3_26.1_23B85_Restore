@interface ML3DatabaseNaturalStatement
+ (id)naturalStatementWithSQL:(id)a3 parameters:(id)a4;
- (ML3DatabaseNaturalStatement)initWithCoder:(id)a3;
- (ML3DatabaseNaturalStatement)initWithSQL:(id)a3 parameters:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setParameter:(id)a3 forPosition:(unint64_t)a4;
@end

@implementation ML3DatabaseNaturalStatement

- (void)encodeWithCoder:(id)a3
{
  sql = self->_sql;
  v5 = a3;
  [v5 encodeObject:sql forKey:@"ML3DatabaseNaturalStatementSQLKey"];
  [v5 encodeObject:self->_parameters forKey:@"ML3DatabaseNaturalStatementParametersKey"];
}

- (ML3DatabaseNaturalStatement)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ML3DatabaseNaturalStatement;
  v5 = [(ML3DatabaseNaturalStatement *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ML3DatabaseNaturalStatementSQLKey"];
    sql = v5->_sql;
    v5->_sql = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = MSVPropertyListDataClasses();
    v11 = [v10 setByAddingObject:objc_opt_class()];

    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"ML3DatabaseNaturalStatementParametersKey"];
    if (v12)
    {
      [(NSMutableArray *)v5->_parameters addObjectsFromArray:v12];
    }
  }

  return v5;
}

- (void)setParameter:(id)a3 forPosition:(unint64_t)a4
{
  v10 = a3;
  v6 = a4 - 1;
  if (v6 >= [(NSMutableArray *)self->_parameters count])
  {
    v7 = [(NSMutableArray *)self->_parameters count];
    if (v7 <= v6)
    {
      v8 = v7;
      do
      {
        v9 = [MEMORY[0x277CBEB68] null];
        [(NSMutableArray *)self->_parameters setObject:v9 atIndexedSubscript:v8];

        ++v8;
      }

      while (v8 <= v6);
    }
  }

  [(NSMutableArray *)self->_parameters setObject:v10 atIndexedSubscript:v6];
}

- (ML3DatabaseNaturalStatement)initWithSQL:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ML3DatabaseNaturalStatement;
  v8 = [(ML3DatabaseNaturalStatement *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sql = v8->_sql;
    v8->_sql = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v8->_parameters;
    v8->_parameters = v11;

    if (v7)
    {
      [(NSMutableArray *)v8->_parameters addObjectsFromArray:v7];
    }
  }

  return v8;
}

+ (id)naturalStatementWithSQL:(id)a3 parameters:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSQL:v6 parameters:v5];

  return v7;
}

@end
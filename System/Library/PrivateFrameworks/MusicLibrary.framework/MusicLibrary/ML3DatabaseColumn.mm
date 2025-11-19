@interface ML3DatabaseColumn
+ (id)columnWithName:(id)a3 datatype:(unint64_t)a4 constraints:(unint64_t)a5 defaultValue:(id)a6;
- (ML3DatabaseColumn)initWithName:(id)a3 datatype:(unint64_t)a4 constraints:(unint64_t)a5 defaultValue:(id)a6;
- (id)_columnDefinitionSQL;
@end

@implementation ML3DatabaseColumn

- (id)_columnDefinitionSQL
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  columnConstraints = self->_columnConstraints;
  if ((columnConstraints & 1) == 0)
  {
    if ((columnConstraints & 0x10) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v11 = [@"PRIMARY KEY" mutableCopy];
  v12 = v11;
  v13 = self->_columnConstraints;
  if ((v13 & 2) != 0)
  {
    v14 = @" ASC";
  }

  else
  {
    if ((v13 & 4) == 0)
    {
      goto LABEL_23;
    }

    v14 = @" DESC";
  }

  [v11 appendString:v14];
  v13 = self->_columnConstraints;
LABEL_23:
  if ((v13 & 8) != 0)
  {
    [v12 appendString:@" AUTOINCREMENT"];
  }

  [v4 addObject:v12];

  columnConstraints = self->_columnConstraints;
  if ((columnConstraints & 0x10) == 0)
  {
LABEL_3:
    if ((columnConstraints & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_26:
  [v4 addObject:@"NOT NULL"];
  if ((self->_columnConstraints & 0x20) != 0)
  {
LABEL_4:
    [v4 addObject:@"UNIQUE"];
  }

LABEL_5:
  defaultValue = self->_defaultValue;
  if (defaultValue)
  {
    v7 = [defaultValue ml_stringValueForSQL];
    if (!v7)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"ML3DatabaseColumn.m" lineNumber:79 description:{@"Unsupported default value type %@", self->_defaultValue}];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"DEFAULT %@", v7];
    [v4 addObject:v8];
  }

  v9 = self->_datatype - 1;
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_27875CE18[v9];
  }

  v15 = [v4 componentsJoinedByString:@" "];
  if ([v4 count])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ %@", self->_name, v10, v15];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_name, v10, v19];
  }
  v16 = ;

  return v16;
}

- (ML3DatabaseColumn)initWithName:(id)a3 datatype:(unint64_t)a4 constraints:(unint64_t)a5 defaultValue:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = ML3DatabaseColumn;
  v12 = [(ML3DatabaseColumn *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_datatype = a4;
    v12->_columnConstraints = a5;
    objc_storeStrong(&v12->_defaultValue, a6);
  }

  return v12;
}

+ (id)columnWithName:(id)a3 datatype:(unint64_t)a4 constraints:(unint64_t)a5 defaultValue:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [objc_alloc(objc_opt_class()) initWithName:v10 datatype:a4 constraints:a5 defaultValue:v9];

  return v11;
}

@end
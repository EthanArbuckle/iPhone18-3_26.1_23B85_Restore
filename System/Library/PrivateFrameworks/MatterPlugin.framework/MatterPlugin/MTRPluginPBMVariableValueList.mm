@interface MTRPluginPBMVariableValueList
- (BOOL)isEqual:(id)equal;
- (MTRPluginPBMVariableValueList)initWithArray:(id)array;
- (MTRPluginPBMVariableValueList)initWithSet:(id)set;
- (NSArray)array;
- (NSSet)set;
- (id)_convertArray:(id)array;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setArray:(id)array;
- (void)setSet:(id)set;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMVariableValueList

- (MTRPluginPBMVariableValueList)initWithArray:(id)array
{
  arrayCopy = array;
  v5 = [(MTRPluginPBMVariableValueList *)self init];
  v6 = v5;
  if (v5)
  {
    if (arrayCopy)
    {
      v7 = [(MTRPluginPBMVariableValueList *)v5 _convertArray:arrayCopy];
      if (v7)
      {
        [(MTRPluginPBMVariableValueList *)v6 setValues:v7];
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MTRPluginPBMVariableValueList)initWithSet:(id)set
{
  allObjects = [set allObjects];
  v5 = [(MTRPluginPBMVariableValueList *)self initWithArray:allObjects];

  return v5;
}

- (id)_convertArray:(id)array
{
  v3 = [array mutableCopy];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [MTRPluginPBMVariableValue alloc];
      v8 = [v3 objectAtIndexedSubscript:v6];
      v9 = [(MTRPluginPBMVariableValue *)v7 initWithObjectValue:v8];

      if (!v9)
      {
        break;
      }

      [v3 replaceObjectAtIndex:v6 withObject:v9];

      if (v5 == ++v6)
      {
        goto LABEL_5;
      }
    }

    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = v3;
  }

  return v10;
}

- (void)setArray:(id)array
{
  if (array)
  {
    v4 = [(MTRPluginPBMVariableValueList *)self _convertArray:?];
    if (v4)
    {
      [(MTRPluginPBMVariableValueList *)self setValues:v4];
    }

    MEMORY[0x2821F96F8]();
  }

  else
  {

    [(MTRPluginPBMVariableValueList *)self setValues:?];
  }
}

- (NSArray)array
{
  values = [(MTRPluginPBMVariableValueList *)self values];
  v3 = [values mutableCopy];

  if (!v3)
  {
    array = [MEMORY[0x277CBEA60] array];
    goto LABEL_8;
  }

  v4 = [v3 count];
  if (!v4)
  {
LABEL_6:
    array = v3;
LABEL_8:
    v10 = array;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = [v3 objectAtIndexedSubscript:v6];
    object = [v7 object];

    if (!object)
    {
      break;
    }

    [v3 replaceObjectAtIndex:v6 withObject:object];

    if (v5 == ++v6)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (void)setSet:(id)set
{
  if (set)
  {
    allObjects = [set allObjects];
    v6 = [(MTRPluginPBMVariableValueList *)self _convertArray:allObjects];

    v5 = v6;
    if (v6)
    {
      [(MTRPluginPBMVariableValueList *)self setValues:v6];
      v5 = v6;
    }
  }

  else
  {

    [(MTRPluginPBMVariableValueList *)self setValues:?];
  }
}

- (NSSet)set
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  array = [(MTRPluginPBMVariableValueList *)self array];
  v5 = [v3 initWithArray:array];

  return v5;
}

- (void)addValue:(id)value
{
  valueCopy = value;
  values = self->_values;
  v8 = valueCopy;
  if (!values)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_values;
    self->_values = v6;

    valueCopy = v8;
    values = self->_values;
  }

  [(NSMutableArray *)values addObject:valueCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMVariableValueList;
  v4 = [(MTRPluginPBMVariableValueList *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMVariableValueList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_values count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_values, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_values;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"value"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_values;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MTRPluginPBMVariableValueList *)self valuesCount])
  {
    [toCopy clearValues];
    valuesCount = [(MTRPluginPBMVariableValueList *)self valuesCount];
    if (valuesCount)
    {
      v5 = valuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MTRPluginPBMVariableValueList *)self valueAtIndex:i];
        [toCopy addValue:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_values;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{zone, v14}];
        [v5 addValue:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    values = self->_values;
    if (values | equalCopy[1])
    {
      v6 = [(NSMutableArray *)values isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(from + 1);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTRPluginPBMVariableValueList *)self addValue:*(*(&v10 + 1) + 8 * v8++), v10];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end
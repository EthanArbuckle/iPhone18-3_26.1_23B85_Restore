@interface CPLPrequeliteVariableGroup
+ (CPLPrequeliteVariableGroup)variableGroupWithVariables:(id)variables;
+ (CPLPrequeliteVariableGroup)variableGroupWithVariablesAndGroups:(id)groups;
- (CPLPrequeliteVariableGroup)initWithVariables:(id)variables;
- (PQLInjecting)injectionForDefaultValues;
- (PQLInjecting)injectionForDefaultValuesUpdate;
- (id)_defaultValuesObject;
- (id)injectionForUpdates:(id)updates;
- (id)injectionForValues:(id)values;
@end

@implementation CPLPrequeliteVariableGroup

+ (CPLPrequeliteVariableGroup)variableGroupWithVariables:(id)variables
{
  variablesCopy = variables;
  v5 = [[self alloc] initWithVariables:variablesCopy];

  return v5;
}

+ (CPLPrequeliteVariableGroup)variableGroupWithVariablesAndGroups:(id)groups
{
  groupsCopy = groups;
  v5 = objc_alloc_init(NSMutableArray);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = groupsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
        }

        else
        {
          variables = [v11 variables];
          [v5 addObjectsFromArray:variables];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [self variableGroupWithVariables:v5];

  return v13;
}

- (CPLPrequeliteVariableGroup)initWithVariables:(id)variables
{
  variablesCopy = variables;
  v41.receiver = self;
  v41.super_class = CPLPrequeliteVariableGroup;
  v5 = [(CPLPrequeliteVariableGroup *)&v41 init];
  if (v5)
  {
    v6 = [variablesCopy copy];
    variables = v5->_variables;
    v34 = v5;
    v5->_variables = v6;

    v8 = objc_alloc_init(NSMutableData);
    v9 = objc_alloc_init(NSMutableData);
    v10 = objc_alloc_init(NSMutableData);
    v11 = objc_alloc_init(NSMutableData);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = variablesCopy;
    obj = variablesCopy;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 1;
      v15 = *v38;
      do
      {
        v16 = 0;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          if (v14)
          {
            v18 = v9;
            v19 = "?";
            v20 = 1;
          }

          else
          {
            [v8 appendBytes:" length:{", 2}];
            [(NSData *)v9 appendBytes:" length:?", 3];
            [(NSData *)v10 appendBytes:" length:", 2];
            v18 = v11;
            v19 = ", ";
            v20 = 2;
          }

          [(NSData *)v18 appendBytes:v19 length:v20];
          v21 = [v17 sql];
          [v8 appendData:v21];

          v22 = [v17 sql];
          [(NSData *)v10 appendData:v22];

          [(NSData *)v10 appendBytes:" = ?" length:4];
          columnDefinition = [v17 columnDefinition];
          v24 = [columnDefinition sql];
          [(NSData *)v11 appendData:v24];

          v14 = 0;
          v16 = v16 + 1;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
        v14 = 0;
      }

      while (v13);
    }

    v25 = [[PQLRawInjection alloc] initWithData:v8];
    v5 = v34;
    namesInjection = v34->_namesInjection;
    v34->_namesInjection = v25;

    sqlForValues = v34->_sqlForValues;
    v34->_sqlForValues = v9;
    v28 = v9;

    sqlForUpdates = v34->_sqlForUpdates;
    v34->_sqlForUpdates = v10;
    v30 = v10;

    v31 = [[PQLRawInjection alloc] initWithData:v11];
    definitionInjection = v34->_definitionInjection;
    v34->_definitionInjection = v31;

    variablesCopy = v35;
  }

  return v5;
}

- (id)_defaultValuesObject
{
  p_defaultValuesObject = &self->_defaultValuesObject;
  defaultValuesObject = self->_defaultValuesObject;
  if (defaultValuesObject)
  {
    v4 = defaultValuesObject;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_variables;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          defaultValue = [v11 defaultValue];
          if (defaultValue)
          {
            if (!v8)
            {
              v8 = objc_alloc_init(NSMutableDictionary);
            }

            variableName = [v11 variableName];
            [v8 setObject:defaultValue forKeyedSubscript:variableName];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = &__NSDictionary0__struct;
    }

    objc_storeStrong(p_defaultValuesObject, v14);
    v4 = *p_defaultValuesObject;
  }

  return v4;
}

- (id)injectionForValues:(id)values
{
  valuesCopy = values;
  v5 = [[_CPLObjectInjection alloc] initWithVariables:self->_variables object:valuesCopy sql:self->_sqlForValues];

  return v5;
}

- (PQLInjecting)injectionForDefaultValues
{
  _defaultValuesObject = [(CPLPrequeliteVariableGroup *)self _defaultValuesObject];
  v4 = [(CPLPrequeliteVariableGroup *)self injectionForValues:_defaultValuesObject];

  return v4;
}

- (id)injectionForUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = [[_CPLObjectInjection alloc] initWithVariables:self->_variables object:updatesCopy sql:self->_sqlForUpdates];

  return v5;
}

- (PQLInjecting)injectionForDefaultValuesUpdate
{
  _defaultValuesObject = [(CPLPrequeliteVariableGroup *)self _defaultValuesObject];
  v4 = [(CPLPrequeliteVariableGroup *)self injectionForUpdates:_defaultValuesObject];

  return v4;
}

@end
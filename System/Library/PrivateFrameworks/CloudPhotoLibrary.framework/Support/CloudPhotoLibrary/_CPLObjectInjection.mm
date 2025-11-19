@interface _CPLObjectInjection
- (_CPLObjectInjection)initWithVariables:(id)a3 object:(id)a4 sql:(id)a5;
- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4;
@end

@implementation _CPLObjectInjection

- (_CPLObjectInjection)initWithVariables:(id)a3 object:(id)a4 sql:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _CPLObjectInjection;
  v12 = [(_CPLObjectInjection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_variables, a3);
    objc_storeStrong(&v13->_object, a4);
    objc_storeStrong(&v13->_sql, a5);
  }

  return v13;
}

- (int)bindWithStatement:(sqlite3_stmt *)a3 startingAtIndex:(int)a4
{
  LODWORD(v4) = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_variables, "count")}];
  bindValuesToKeepAlive = self->_bindValuesToKeepAlive;
  self->_bindValuesToKeepAlive = v7;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_variables;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v20 = v4;
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    v4 = v4;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        object = self->_object;
        v16 = [v14 variableName];
        v17 = [object valueForKey:v16];
        v18 = [v14 bindableValueForValue:v17];

        if (v18)
        {
          [v18 sqliteBind:a3 index:v4];
          [(NSMutableArray *)self->_bindValuesToKeepAlive addObject:v18];
        }

        else
        {
          sqlite3_bind_null(a3, v4);
        }

        v4 = (v4 + 1);
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v4 - v20;
}

@end
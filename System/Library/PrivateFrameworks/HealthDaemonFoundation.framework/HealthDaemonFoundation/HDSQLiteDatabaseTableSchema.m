@interface HDSQLiteDatabaseTableSchema
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HDSQLiteDatabaseTableSchema

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSDictionary *)self->_columns hash]^ v3;
  return v4 ^ [(NSSet *)self->_indices hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4[1];
  if (name != v6 && (!v6 || ![(NSString *)name isEqual:?]))
  {
    goto LABEL_10;
  }

  columns = self->_columns;
  v8 = v4[2];
  if (columns != v8 && (!v8 || ![(NSDictionary *)columns isEqual:?]))
  {
    goto LABEL_10;
  }

  indices = self->_indices;
  v10 = v4[3];
  if (indices == v10)
  {
    v11 = 1;
    goto LABEL_11;
  }

  if (v10)
  {
    v11 = [(NSSet *)indices isEqual:?];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  name = self->_name;
  v5 = [(NSDictionary *)self->_columns allValues];
  v6 = [v5 componentsJoinedByString:{@", "}];
  v7 = [v3 stringWithFormat:@"CREATE TABLE %@ (%@)", name, v6];;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_indices;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 name];
        if ([v13 isUnique])
        {
          v15 = @"UNIQUE ";
        }

        else
        {
          v15 = &stru_28637B800;
        }

        [v7 appendFormat:@" CREATE %@INDEX %@ on %@;", v14, v15, v13];
      }

      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
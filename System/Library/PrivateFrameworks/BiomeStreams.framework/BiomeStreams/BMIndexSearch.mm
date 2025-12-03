@interface BMIndexSearch
- (BMIndexSearch)initWithIndex:(id)index startFields:(id)fields endFields:(id)endFields database:(id)database;
- (id)_buildSearchQueryWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed;
- (id)description;
- (id)performSearchWithError:(id *)error;
@end

@implementation BMIndexSearch

- (BMIndexSearch)initWithIndex:(id)index startFields:(id)fields endFields:(id)endFields database:(id)database
{
  indexCopy = index;
  fieldsCopy = fields;
  endFieldsCopy = endFields;
  databaseCopy = database;
  v15 = [fieldsCopy count];
  if (v15 != [endFieldsCopy count])
  {
    [BMIndexSearch initWithIndex:a2 startFields:self endFields:? database:?];
  }

  v20.receiver = self;
  v20.super_class = BMIndexSearch;
  v16 = [(BMIndexSearch *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_index, index);
    objc_storeStrong(&v17->_startFields, fields);
    objc_storeStrong(&v17->_endFields, endFields);
    objc_storeStrong(&v17->_database, database);
  }

  return v17;
}

- (id)_buildSearchQueryWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v86 = *MEMORY[0x1E69E9840];
  v10 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  selfCopy = self;
  schema = [(BMIndex *)self->_index schema];
  columns = [schema columns];

  v13 = [columns countByEnumeratingWithState:&v80 objects:v85 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v81;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v81 != v15)
        {
          objc_enumerationMutation(columns);
        }

        v17 = *(*(&v80 + 1) + 8 * i);
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        name = [v17 name];
        v20 = [v18 initWithFormat:@"%@", name];
        [v10 addObject:v20];
      }

      v14 = [columns countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v14);
  }

  v75 = objc_opt_new();
  if ([(NSArray *)selfCopy->_startFields count])
  {
    v21 = 0;
    do
    {
      v22 = [(NSArray *)selfCopy->_startFields objectAtIndexedSubscript:v21];
      null = [MEMORY[0x1E695DFB0] null];

      if (v22 != null)
      {
        v24 = MEMORY[0x1E696AEC0];
        schema2 = [(BMIndex *)selfCopy->_index schema];
        columns2 = [schema2 columns];
        v27 = [columns2 objectAtIndexedSubscript:v21];
        name2 = [v27 name];
        v29 = [v24 stringWithFormat:@"%@ >= ?", name2];
        [v75 addObject:v29];
      }

      v30 = [(NSArray *)selfCopy->_endFields objectAtIndexedSubscript:v21];
      null2 = [MEMORY[0x1E695DFB0] null];

      if (v30 != null2)
      {
        v32 = MEMORY[0x1E696AEC0];
        schema3 = [(BMIndex *)selfCopy->_index schema];
        columns3 = [schema3 columns];
        v35 = [columns3 objectAtIndexedSubscript:v21];
        name3 = [v35 name];
        v37 = [v32 stringWithFormat:@"%@ <= ?", name3];
        [v75 addObject:v37];
      }

      ++v21;
    }

    while ([(NSArray *)selfCopy->_startFields count]> v21);
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v40 = v39;

  if (v40 != time)
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = BMEventTimestampSQLColumn();
    name4 = [v42 name];
    v44 = [v41 stringWithFormat:@"%@ >= ?", name4];
    [v75 addObject:v44];
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v47 = v46;

  if (v47 != endTime)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = BMEventTimestampSQLColumn();
    name5 = [v49 name];
    v51 = [v48 stringWithFormat:@"%@ <= ?", name5];
    [v75 addObject:v51];
  }

  if ([v75 count])
  {
    v52 = MEMORY[0x1E696AEC0];
    v53 = [v75 componentsJoinedByString:@" AND "];
    v72 = [v52 stringWithFormat:@"WHERE %@", v53];
  }

  else
  {
    v72 = &stru_1EF2B2408;
  }

  v54 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  fields = [(BMIndex *)selfCopy->_index fields];
  v56 = [fields countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v77;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v77 != v58)
        {
          objc_enumerationMutation(fields);
        }

        name6 = [*(*(&v76 + 1) + 8 * j) name];
        v61 = name6;
        if (reversedCopy)
        {
          v62 = [name6 stringByAppendingString:@" DESC"];

          v61 = v62;
        }

        [v54 addObject:v61];
      }

      v57 = [fields countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v57);
  }

  v63 = MEMORY[0x1E696AEC0];
  v64 = [v10 componentsJoinedByString:{@", "}];
  schema4 = [(BMIndex *)selfCopy->_index schema];
  tableName = [schema4 tableName];
  v67 = [v54 componentsJoinedByString:{@", "}];
  v68 = [v63 stringWithFormat:@"SELECT %@ FROM %@ %@ ORDER BY %@", v64, tableName, v72, v67];

  if (events != -1)
  {
    v69 = [v68 stringByAppendingString:@" LIMIT ?"];

    v68 = v69;
  }

  v70 = *MEMORY[0x1E69E9840];

  return v68;
}

- (id)performSearchWithError:(id *)error
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v7 = v6;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v10 = [(BMIndexSearch *)self performSearchWithStartTime:-1 endTime:0 maxEvents:error reversed:v7 error:v9];

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> index: %@, startFields: %@, endFields: %@", objc_opt_class(), self, self->_index, self->_startFields, self->_endFields];

  return v2;
}

@end
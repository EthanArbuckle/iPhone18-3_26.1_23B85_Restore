@interface BMIndexSearch
- (BMIndexSearch)initWithIndex:(id)a3 startFields:(id)a4 endFields:(id)a5 database:(id)a6;
- (id)_buildSearchQueryWithStartTime:(double)a3 endTime:(double)a4 maxEvents:(unint64_t)a5 reversed:(BOOL)a6;
- (id)description;
- (id)performSearchWithError:(id *)a3;
@end

@implementation BMIndexSearch

- (BMIndexSearch)initWithIndex:(id)a3 startFields:(id)a4 endFields:(id)a5 database:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v12 count];
  if (v15 != [v13 count])
  {
    [BMIndexSearch initWithIndex:a2 startFields:self endFields:? database:?];
  }

  v20.receiver = self;
  v20.super_class = BMIndexSearch;
  v16 = [(BMIndexSearch *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_index, a3);
    objc_storeStrong(&v17->_startFields, a4);
    objc_storeStrong(&v17->_endFields, a5);
    objc_storeStrong(&v17->_database, a6);
  }

  return v17;
}

- (id)_buildSearchQueryWithStartTime:(double)a3 endTime:(double)a4 maxEvents:(unint64_t)a5 reversed:(BOOL)a6
{
  v6 = a6;
  v86 = *MEMORY[0x1E69E9840];
  v10 = objc_opt_new();
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v74 = self;
  v11 = [(BMIndex *)self->_index schema];
  v12 = [v11 columns];

  v13 = [v12 countByEnumeratingWithState:&v80 objects:v85 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v80 + 1) + 8 * i);
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        v19 = [v17 name];
        v20 = [v18 initWithFormat:@"%@", v19];
        [v10 addObject:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v80 objects:v85 count:16];
    }

    while (v14);
  }

  v75 = objc_opt_new();
  if ([(NSArray *)v74->_startFields count])
  {
    v21 = 0;
    do
    {
      v22 = [(NSArray *)v74->_startFields objectAtIndexedSubscript:v21];
      v23 = [MEMORY[0x1E695DFB0] null];

      if (v22 != v23)
      {
        v24 = MEMORY[0x1E696AEC0];
        v25 = [(BMIndex *)v74->_index schema];
        v26 = [v25 columns];
        v27 = [v26 objectAtIndexedSubscript:v21];
        v28 = [v27 name];
        v29 = [v24 stringWithFormat:@"%@ >= ?", v28];
        [v75 addObject:v29];
      }

      v30 = [(NSArray *)v74->_endFields objectAtIndexedSubscript:v21];
      v31 = [MEMORY[0x1E695DFB0] null];

      if (v30 != v31)
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = [(BMIndex *)v74->_index schema];
        v34 = [v33 columns];
        v35 = [v34 objectAtIndexedSubscript:v21];
        v36 = [v35 name];
        v37 = [v32 stringWithFormat:@"%@ <= ?", v36];
        [v75 addObject:v37];
      }

      ++v21;
    }

    while ([(NSArray *)v74->_startFields count]> v21);
  }

  v38 = [MEMORY[0x1E695DF00] distantPast];
  [v38 timeIntervalSinceReferenceDate];
  v40 = v39;

  if (v40 != a3)
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = BMEventTimestampSQLColumn();
    v43 = [v42 name];
    v44 = [v41 stringWithFormat:@"%@ >= ?", v43];
    [v75 addObject:v44];
  }

  v45 = [MEMORY[0x1E695DF00] distantFuture];
  [v45 timeIntervalSinceReferenceDate];
  v47 = v46;

  if (v47 != a4)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = BMEventTimestampSQLColumn();
    v50 = [v49 name];
    v51 = [v48 stringWithFormat:@"%@ <= ?", v50];
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
  v55 = [(BMIndex *)v74->_index fields];
  v56 = [v55 countByEnumeratingWithState:&v76 objects:v84 count:16];
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
          objc_enumerationMutation(v55);
        }

        v60 = [*(*(&v76 + 1) + 8 * j) name];
        v61 = v60;
        if (v6)
        {
          v62 = [v60 stringByAppendingString:@" DESC"];

          v61 = v62;
        }

        [v54 addObject:v61];
      }

      v57 = [v55 countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v57);
  }

  v63 = MEMORY[0x1E696AEC0];
  v64 = [v10 componentsJoinedByString:{@", "}];
  v65 = [(BMIndex *)v74->_index schema];
  v66 = [v65 tableName];
  v67 = [v54 componentsJoinedByString:{@", "}];
  v68 = [v63 stringWithFormat:@"SELECT %@ FROM %@ %@ ORDER BY %@", v64, v66, v72, v67];

  if (a5 != -1)
  {
    v69 = [v68 stringByAppendingString:@" LIMIT ?"];

    v68 = v69;
  }

  v70 = *MEMORY[0x1E69E9840];

  return v68;
}

- (id)performSearchWithError:(id *)a3
{
  v5 = [MEMORY[0x1E695DF00] distantPast];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [MEMORY[0x1E695DF00] distantFuture];
  [v8 timeIntervalSinceReferenceDate];
  v10 = [(BMIndexSearch *)self performSearchWithStartTime:-1 endTime:0 maxEvents:a3 reversed:v7 error:v9];

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> index: %@, startFields: %@, endFields: %@", objc_opt_class(), self, self->_index, self->_startFields, self->_endFields];

  return v2;
}

@end
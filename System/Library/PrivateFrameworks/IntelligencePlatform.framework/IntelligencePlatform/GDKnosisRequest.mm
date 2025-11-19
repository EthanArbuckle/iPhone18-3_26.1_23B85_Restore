@interface GDKnosisRequest
- (GDKnosisRequest)initWithCoder:(id)a3;
- (GDKnosisRequest)initWithIntents:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6;
- (GDKnosisRequest)initWithIntents:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7;
- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6;
- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7;
- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7 enableTextualization:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisRequest

- (GDKnosisRequest)initWithCoder:(id)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_query);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector("kgq");
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      v31 = [v4 error];

      if (v31)
      {
        v10 = 0;
        v30 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = NSStringFromSelector(sel_intentArgs);
    v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];

    if (v15)
    {
      goto LABEL_4;
    }

    v32 = [v4 error];

    if (!v32)
    {
      if (!v10)
      {
        v39 = MEMORY[0x1E696ABC0];
        v48 = *MEMORY[0x1E696A578];
        v49 = @"GDKnosisRequest either kgq or intentArgs is required";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v21 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v18];
        [v4 failWithError:v21];
        goto LABEL_26;
      }

LABEL_4:
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(sel_limit);
      v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = NSStringFromSelector(sel_offset);
        v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

        if (v21)
        {
          v22 = NSStringFromSelector(sel_enableDebug);
          v23 = [v4 decodeBoolForKey:v22];

          v24 = [v4 error];

          if (!v24)
          {
            v25 = NSStringFromSelector(sel_enableTextualization);
            v26 = [v4 decodeBoolForKey:v25];

            v27 = [v4 error];

            if (!v27)
            {
              if (v15)
              {
                v28 = [(GDKnosisRequest *)self initWithIntents:v15 query:v7 limit:v18 offset:v21 enableDebug:v23];
              }

              else
              {
                v28 = [(GDKnosisRequest *)self initWithKGQ:v10 query:v7 limit:v18 offset:v21 enableDebug:v23 enableTextualization:v26];
              }

              self = v28;
              v30 = self;
              goto LABEL_27;
            }
          }
        }

        else
        {
          v35 = [v4 error];

          if (!v35)
          {
            v36 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A578];
            v45 = @"GDKnosisRequest offset is nil";
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v38 = [v36 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v37];
            [v4 failWithError:v38];
          }

          v21 = 0;
        }
      }

      else
      {
        v34 = [v4 error];

        if (v34)
        {
          v18 = 0;
          v30 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v40 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A578];
        v47 = @"GDKnosisRequest limit is nil";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v41 = [v40 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v21];
        [v4 failWithError:v41];

        v18 = 0;
      }

LABEL_26:
      v30 = 0;
LABEL_27:

      goto LABEL_28;
    }

    v15 = 0;
LABEL_17:
    v30 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v29 = [v4 error];

  if (!v29)
  {
    v33 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51[0] = @"GDKnosisRequest query is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v15 = [v33 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v15];
    goto LABEL_17;
  }

  v30 = 0;
LABEL_31:

  v42 = *MEMORY[0x1E69E9840];
  return v30;
}

- (void)encodeWithCoder:(id)a3
{
  query = self->_query;
  v5 = a3;
  v6 = NSStringFromSelector(sel_query);
  [v5 encodeObject:query forKey:v6];

  kgq = self->_kgq;
  v8 = NSStringFromSelector("kgq");
  [v5 encodeObject:kgq forKey:v8];

  intentArgs = self->_intentArgs;
  v10 = NSStringFromSelector(sel_intentArgs);
  [v5 encodeObject:intentArgs forKey:v10];

  limit = self->_limit;
  v12 = NSStringFromSelector(sel_limit);
  [v5 encodeObject:limit forKey:v12];

  offset = self->_offset;
  v14 = NSStringFromSelector(sel_offset);
  [v5 encodeObject:offset forKey:v14];

  enableDebug = self->_enableDebug;
  v16 = NSStringFromSelector(sel_enableDebug);
  [v5 encodeBool:enableDebug forKey:v16];

  enableTextualization = self->_enableTextualization;
  v18 = NSStringFromSelector(sel_enableTextualization);
  [v5 encodeBool:enableTextualization forKey:v18];
}

- (GDKnosisRequest)initWithIntents:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = GDKnosisRequest;
  v17 = [(GDKnosisRequest *)&v26 init];
  if (v17)
  {
    v18 = [v14 copy];
    query = v17->_query;
    v17->_query = v18;

    kgq = v17->_kgq;
    v17->_kgq = 0;

    objc_storeStrong(&v17->_intentArgs, a3);
    v21 = [v15 copy];
    limit = v17->_limit;
    v17->_limit = v21;

    v23 = [v16 copy];
    offset = v17->_offset;
    v17->_offset = v23;

    v17->_enableDebug = a7;
    v17->_enableTextualization = 0;
  }

  return v17;
}

- (GDKnosisRequest)initWithIntents:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = GDKnosisRequest;
  v15 = [(GDKnosisRequest *)&v24 init];
  if (v15)
  {
    v16 = [v12 copy];
    query = v15->_query;
    v15->_query = v16;

    kgq = v15->_kgq;
    v15->_kgq = 0;

    objc_storeStrong(&v15->_intentArgs, a3);
    v19 = [v13 copy];
    limit = v15->_limit;
    v15->_limit = v19;

    v21 = [v14 copy];
    offset = v15->_offset;
    v15->_offset = v21;

    *&v15->_enableDebug = 0;
  }

  return v15;
}

- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7 enableTextualization:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v29.receiver = self;
  v29.super_class = GDKnosisRequest;
  v18 = [(GDKnosisRequest *)&v29 init];
  if (v18)
  {
    v19 = [v15 copy];
    query = v18->_query;
    v18->_query = v19;

    v21 = [v14 copy];
    kgq = v18->_kgq;
    v18->_kgq = v21;

    intentArgs = v18->_intentArgs;
    v18->_intentArgs = 0;

    v24 = [v16 copy];
    limit = v18->_limit;
    v18->_limit = v24;

    v26 = [v17 copy];
    offset = v18->_offset;
    v18->_offset = v26;

    v18->_enableDebug = a7;
    v18->_enableTextualization = a8;
  }

  return v18;
}

- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6 enableDebug:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v27.receiver = self;
  v27.super_class = GDKnosisRequest;
  v16 = [(GDKnosisRequest *)&v27 init];
  if (v16)
  {
    v17 = [v13 copy];
    query = v16->_query;
    v16->_query = v17;

    v19 = [v12 copy];
    kgq = v16->_kgq;
    v16->_kgq = v19;

    intentArgs = v16->_intentArgs;
    v16->_intentArgs = 0;

    v22 = [v14 copy];
    limit = v16->_limit;
    v16->_limit = v22;

    v24 = [v15 copy];
    offset = v16->_offset;
    v16->_offset = v24;

    v16->_enableDebug = a7;
    v16->_enableTextualization = 0;
  }

  return v16;
}

- (GDKnosisRequest)initWithKGQ:(id)a3 query:(id)a4 limit:(id)a5 offset:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = GDKnosisRequest;
  v14 = [(GDKnosisRequest *)&v25 init];
  if (v14)
  {
    v15 = [v11 copy];
    query = v14->_query;
    v14->_query = v15;

    v17 = [v10 copy];
    kgq = v14->_kgq;
    v14->_kgq = v17;

    intentArgs = v14->_intentArgs;
    v14->_intentArgs = 0;

    v20 = [v12 copy];
    limit = v14->_limit;
    v14->_limit = v20;

    v22 = [v13 copy];
    offset = v14->_offset;
    v14->_offset = v22;

    *&v14->_enableDebug = 0;
  }

  return v14;
}

@end
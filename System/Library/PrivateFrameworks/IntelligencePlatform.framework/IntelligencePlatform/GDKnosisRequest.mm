@interface GDKnosisRequest
- (GDKnosisRequest)initWithCoder:(id)coder;
- (GDKnosisRequest)initWithIntents:(id)intents query:(id)query limit:(id)limit offset:(id)offset;
- (GDKnosisRequest)initWithIntents:(id)intents query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug;
- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset;
- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug;
- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug enableTextualization:(BOOL)textualization;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisRequest

- (GDKnosisRequest)initWithCoder:(id)coder
{
  v51[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_query);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector("kgq");
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      error = [coderCopy error];

      if (error)
      {
        v10 = 0;
        selfCopy = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = NSStringFromSelector(sel_intentArgs);
    v15 = [coderCopy decodeObjectOfClasses:v13 forKey:v14];

    if (v15)
    {
      goto LABEL_4;
    }

    error2 = [coderCopy error];

    if (!error2)
    {
      if (!v10)
      {
        v39 = MEMORY[0x1E696ABC0];
        v48 = *MEMORY[0x1E696A578];
        v49 = @"GDKnosisRequest either kgq or intentArgs is required";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v21 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v18];
        [coderCopy failWithError:v21];
        goto LABEL_26;
      }

LABEL_4:
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(sel_limit);
      v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

      if (v18)
      {
        v19 = objc_opt_class();
        v20 = NSStringFromSelector(sel_offset);
        v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

        if (v21)
        {
          v22 = NSStringFromSelector(sel_enableDebug);
          v23 = [coderCopy decodeBoolForKey:v22];

          error3 = [coderCopy error];

          if (!error3)
          {
            v25 = NSStringFromSelector(sel_enableTextualization);
            v26 = [coderCopy decodeBoolForKey:v25];

            error4 = [coderCopy error];

            if (!error4)
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
              selfCopy = self;
              goto LABEL_27;
            }
          }
        }

        else
        {
          error5 = [coderCopy error];

          if (!error5)
          {
            v36 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A578];
            v45 = @"GDKnosisRequest offset is nil";
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v38 = [v36 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v37];
            [coderCopy failWithError:v38];
          }

          v21 = 0;
        }
      }

      else
      {
        error6 = [coderCopy error];

        if (error6)
        {
          v18 = 0;
          selfCopy = 0;
LABEL_28:

          goto LABEL_29;
        }

        v40 = MEMORY[0x1E696ABC0];
        v46 = *MEMORY[0x1E696A578];
        v47 = @"GDKnosisRequest limit is nil";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v41 = [v40 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v21];
        [coderCopy failWithError:v41];

        v18 = 0;
      }

LABEL_26:
      selfCopy = 0;
LABEL_27:

      goto LABEL_28;
    }

    v15 = 0;
LABEL_17:
    selfCopy = 0;
LABEL_29:

    goto LABEL_30;
  }

  error7 = [coderCopy error];

  if (!error7)
  {
    v33 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v51[0] = @"GDKnosisRequest query is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v15 = [v33 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [coderCopy failWithError:v15];
    goto LABEL_17;
  }

  selfCopy = 0;
LABEL_31:

  v42 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  query = self->_query;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_query);
  [coderCopy encodeObject:query forKey:v6];

  kgq = self->_kgq;
  v8 = NSStringFromSelector("kgq");
  [coderCopy encodeObject:kgq forKey:v8];

  intentArgs = self->_intentArgs;
  v10 = NSStringFromSelector(sel_intentArgs);
  [coderCopy encodeObject:intentArgs forKey:v10];

  limit = self->_limit;
  v12 = NSStringFromSelector(sel_limit);
  [coderCopy encodeObject:limit forKey:v12];

  offset = self->_offset;
  v14 = NSStringFromSelector(sel_offset);
  [coderCopy encodeObject:offset forKey:v14];

  enableDebug = self->_enableDebug;
  v16 = NSStringFromSelector(sel_enableDebug);
  [coderCopy encodeBool:enableDebug forKey:v16];

  enableTextualization = self->_enableTextualization;
  v18 = NSStringFromSelector(sel_enableTextualization);
  [coderCopy encodeBool:enableTextualization forKey:v18];
}

- (GDKnosisRequest)initWithIntents:(id)intents query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug
{
  intentsCopy = intents;
  queryCopy = query;
  limitCopy = limit;
  offsetCopy = offset;
  v26.receiver = self;
  v26.super_class = GDKnosisRequest;
  v17 = [(GDKnosisRequest *)&v26 init];
  if (v17)
  {
    v18 = [queryCopy copy];
    query = v17->_query;
    v17->_query = v18;

    kgq = v17->_kgq;
    v17->_kgq = 0;

    objc_storeStrong(&v17->_intentArgs, intents);
    v21 = [limitCopy copy];
    limit = v17->_limit;
    v17->_limit = v21;

    v23 = [offsetCopy copy];
    offset = v17->_offset;
    v17->_offset = v23;

    v17->_enableDebug = debug;
    v17->_enableTextualization = 0;
  }

  return v17;
}

- (GDKnosisRequest)initWithIntents:(id)intents query:(id)query limit:(id)limit offset:(id)offset
{
  intentsCopy = intents;
  queryCopy = query;
  limitCopy = limit;
  offsetCopy = offset;
  v24.receiver = self;
  v24.super_class = GDKnosisRequest;
  v15 = [(GDKnosisRequest *)&v24 init];
  if (v15)
  {
    v16 = [queryCopy copy];
    query = v15->_query;
    v15->_query = v16;

    kgq = v15->_kgq;
    v15->_kgq = 0;

    objc_storeStrong(&v15->_intentArgs, intents);
    v19 = [limitCopy copy];
    limit = v15->_limit;
    v15->_limit = v19;

    v21 = [offsetCopy copy];
    offset = v15->_offset;
    v15->_offset = v21;

    *&v15->_enableDebug = 0;
  }

  return v15;
}

- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug enableTextualization:(BOOL)textualization
{
  qCopy = q;
  queryCopy = query;
  limitCopy = limit;
  offsetCopy = offset;
  v29.receiver = self;
  v29.super_class = GDKnosisRequest;
  v18 = [(GDKnosisRequest *)&v29 init];
  if (v18)
  {
    v19 = [queryCopy copy];
    query = v18->_query;
    v18->_query = v19;

    v21 = [qCopy copy];
    kgq = v18->_kgq;
    v18->_kgq = v21;

    intentArgs = v18->_intentArgs;
    v18->_intentArgs = 0;

    v24 = [limitCopy copy];
    limit = v18->_limit;
    v18->_limit = v24;

    v26 = [offsetCopy copy];
    offset = v18->_offset;
    v18->_offset = v26;

    v18->_enableDebug = debug;
    v18->_enableTextualization = textualization;
  }

  return v18;
}

- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset enableDebug:(BOOL)debug
{
  qCopy = q;
  queryCopy = query;
  limitCopy = limit;
  offsetCopy = offset;
  v27.receiver = self;
  v27.super_class = GDKnosisRequest;
  v16 = [(GDKnosisRequest *)&v27 init];
  if (v16)
  {
    v17 = [queryCopy copy];
    query = v16->_query;
    v16->_query = v17;

    v19 = [qCopy copy];
    kgq = v16->_kgq;
    v16->_kgq = v19;

    intentArgs = v16->_intentArgs;
    v16->_intentArgs = 0;

    v22 = [limitCopy copy];
    limit = v16->_limit;
    v16->_limit = v22;

    v24 = [offsetCopy copy];
    offset = v16->_offset;
    v16->_offset = v24;

    v16->_enableDebug = debug;
    v16->_enableTextualization = 0;
  }

  return v16;
}

- (GDKnosisRequest)initWithKGQ:(id)q query:(id)query limit:(id)limit offset:(id)offset
{
  qCopy = q;
  queryCopy = query;
  limitCopy = limit;
  offsetCopy = offset;
  v25.receiver = self;
  v25.super_class = GDKnosisRequest;
  v14 = [(GDKnosisRequest *)&v25 init];
  if (v14)
  {
    v15 = [queryCopy copy];
    query = v14->_query;
    v14->_query = v15;

    v17 = [qCopy copy];
    kgq = v14->_kgq;
    v14->_kgq = v17;

    intentArgs = v14->_intentArgs;
    v14->_intentArgs = 0;

    v20 = [limitCopy copy];
    limit = v14->_limit;
    v14->_limit = v20;

    v22 = [offsetCopy copy];
    offset = v14->_offset;
    v14->_offset = v22;

    *&v14->_enableDebug = 0;
  }

  return v14;
}

@end
@interface GDKnosisResult
- (GDKnosisResult)initWithCoder:(id)a3;
- (GDKnosisResult)initWithQuery:(id)a3 kgq:(id)a4 status:(unint64_t)a5 answers:(id)a6 errorMessage:(id)a7 limit:(id)a8 offset:(id)a9 hasMoreAnswers:(BOOL)a10 debug:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisResult

- (void)encodeWithCoder:(id)a3
{
  query = self->_query;
  v5 = a3;
  v6 = NSStringFromSelector(sel_query);
  [v5 encodeObject:query forKey:v6];

  kgq = self->_kgq;
  v8 = NSStringFromSelector("kgq");
  [v5 encodeObject:kgq forKey:v8];

  status = self->_status;
  v10 = NSStringFromSelector(sel_status);
  [v5 encodeInteger:status forKey:v10];

  answers = self->_answers;
  v12 = NSStringFromSelector(sel_answers);
  [v5 encodeObject:answers forKey:v12];

  errorMessage = self->_errorMessage;
  v14 = NSStringFromSelector(sel_errorMessage);
  [v5 encodeObject:errorMessage forKey:v14];

  limit = self->_limit;
  v16 = NSStringFromSelector(sel_limit);
  [v5 encodeObject:limit forKey:v16];

  offset = self->_offset;
  v18 = NSStringFromSelector(sel_offset);
  [v5 encodeObject:offset forKey:v18];

  hasMoreAnswers = self->_hasMoreAnswers;
  v20 = NSStringFromSelector(sel_hasMoreAnswers);
  [v5 encodeBool:hasMoreAnswers forKey:v20];

  debug = self->_debug;
  v22 = NSStringFromSelector(sel_debug);
  [v5 encodeObject:debug forKey:v22];
}

- (GDKnosisResult)initWithCoder:(id)a3
{
  v62[1] = *MEMORY[0x1E69E9840];
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
      v35 = [v4 error];

      if (v35)
      {
        v10 = 0;
        v33 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v38 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v60 = @"GDKnosisResult kgq is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v18 = [v38 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [v4 failWithError:v18];
      goto LABEL_20;
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = NSStringFromSelector(sel_answers);
    v15 = [v4 decodeObjectOfClasses:v13 forKey:v14];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(sel_errorMessage);
      v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

      v19 = [v4 error];

      if (!v19)
      {
        v20 = NSStringFromSelector(sel_status);
        v21 = [v4 decodeIntegerForKey:v20];

        v22 = [v4 error];

        if (!v22)
        {
          v23 = objc_opt_class();
          v24 = NSStringFromSelector(sel_limit);
          v25 = [v4 decodeObjectOfClass:v23 forKey:v24];

          if (v25)
          {
            v26 = objc_opt_class();
            v27 = NSStringFromSelector(sel_offset);
            v28 = [v4 decodeObjectOfClass:v26 forKey:v27];

            if (v28)
            {
              v29 = NSStringFromSelector(sel_hasMoreAnswers);
              v52 = [v4 decodeBoolForKey:v29];

              v30 = [v4 error];

              if (!v30)
              {
                v50 = objc_opt_class();
                v31 = NSStringFromSelector(sel_debug);
                v51 = [v4 decodeObjectOfClass:v50 forKey:v31];

                v32 = [v4 error];

                if (v32)
                {
                  v33 = 0;
                }

                else
                {
                  LOBYTE(v49) = v52;
                  self = [(GDKnosisResult *)self initWithQuery:v7 kgq:v10 status:v21 answers:v15 errorMessage:v18 limit:v25 offset:v28 hasMoreAnswers:v49 debug:v51];
                  v33 = self;
                }

                goto LABEL_30;
              }
            }

            else
            {
              v41 = [v4 error];

              if (!v41)
              {
                v42 = MEMORY[0x1E696ABC0];
                v53 = *MEMORY[0x1E696A578];
                v54 = @"GDKnosisResult offset is nil";
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                v44 = [v42 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v43];
                [v4 failWithError:v44];
              }

              v28 = 0;
            }

LABEL_29:
            v33 = 0;
LABEL_30:

            goto LABEL_31;
          }

          v40 = [v4 error];

          if (!v40)
          {
            v45 = MEMORY[0x1E696ABC0];
            v55 = *MEMORY[0x1E696A578];
            v56 = @"GDKnosisResult limit is nil";
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v46 = [v45 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v28];
            [v4 failWithError:v46];

            goto LABEL_29;
          }

          v25 = 0;
LABEL_22:
          v33 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

LABEL_20:
      v33 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v36 = [v4 error];

    if (!v36)
    {
      v39 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = @"GDKnosisResult answers is nil";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v25 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v18];
      [v4 failWithError:v25];
      goto LABEL_22;
    }

    v15 = 0;
LABEL_18:
    v33 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v34 = [v4 error];

  if (!v34)
  {
    v37 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62[0] = @"GDKnosisResult query is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v15 = [v37 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v15];
    goto LABEL_18;
  }

  v33 = 0;
LABEL_35:

  v47 = *MEMORY[0x1E69E9840];
  return v33;
}

- (GDKnosisResult)initWithQuery:(id)a3 kgq:(id)a4 status:(unint64_t)a5 answers:(id)a6 errorMessage:(id)a7 limit:(id)a8 offset:(id)a9 hasMoreAnswers:(BOOL)a10 debug:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v38.receiver = self;
  v38.super_class = GDKnosisResult;
  v24 = [(GDKnosisResult *)&v38 init];
  if (v24)
  {
    v25 = [v17 copy];
    query = v24->_query;
    v24->_query = v25;

    v27 = [v18 copy];
    kgq = v24->_kgq;
    v24->_kgq = v27;

    v24->_status = a5;
    v29 = [v19 copy];
    answers = v24->_answers;
    v24->_answers = v29;

    v31 = [v20 copy];
    errorMessage = v24->_errorMessage;
    v24->_errorMessage = v31;

    v33 = [v21 copy];
    limit = v24->_limit;
    v24->_limit = v33;

    v35 = [v22 copy];
    offset = v24->_offset;
    v24->_offset = v35;

    v24->_hasMoreAnswers = a10;
    objc_storeStrong(&v24->_debug, a11);
  }

  return v24;
}

@end
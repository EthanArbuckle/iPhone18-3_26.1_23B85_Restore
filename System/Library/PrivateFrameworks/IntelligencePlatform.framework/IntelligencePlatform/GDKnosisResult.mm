@interface GDKnosisResult
- (GDKnosisResult)initWithCoder:(id)coder;
- (GDKnosisResult)initWithQuery:(id)query kgq:(id)kgq status:(unint64_t)status answers:(id)answers errorMessage:(id)message limit:(id)limit offset:(id)offset hasMoreAnswers:(BOOL)self0 debug:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisResult

- (void)encodeWithCoder:(id)coder
{
  query = self->_query;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_query);
  [coderCopy encodeObject:query forKey:v6];

  kgq = self->_kgq;
  v8 = NSStringFromSelector("kgq");
  [coderCopy encodeObject:kgq forKey:v8];

  status = self->_status;
  v10 = NSStringFromSelector(sel_status);
  [coderCopy encodeInteger:status forKey:v10];

  answers = self->_answers;
  v12 = NSStringFromSelector(sel_answers);
  [coderCopy encodeObject:answers forKey:v12];

  errorMessage = self->_errorMessage;
  v14 = NSStringFromSelector(sel_errorMessage);
  [coderCopy encodeObject:errorMessage forKey:v14];

  limit = self->_limit;
  v16 = NSStringFromSelector(sel_limit);
  [coderCopy encodeObject:limit forKey:v16];

  offset = self->_offset;
  v18 = NSStringFromSelector(sel_offset);
  [coderCopy encodeObject:offset forKey:v18];

  hasMoreAnswers = self->_hasMoreAnswers;
  v20 = NSStringFromSelector(sel_hasMoreAnswers);
  [coderCopy encodeBool:hasMoreAnswers forKey:v20];

  debug = self->_debug;
  v22 = NSStringFromSelector(sel_debug);
  [coderCopy encodeObject:debug forKey:v22];
}

- (GDKnosisResult)initWithCoder:(id)coder
{
  v62[1] = *MEMORY[0x1E69E9840];
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
LABEL_34:

        goto LABEL_35;
      }

      v38 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E696A578];
      v60 = @"GDKnosisResult kgq is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v18 = [v38 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [coderCopy failWithError:v18];
      goto LABEL_20;
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = NSStringFromSelector(sel_answers);
    v15 = [coderCopy decodeObjectOfClasses:v13 forKey:v14];

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(sel_errorMessage);
      v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

      error2 = [coderCopy error];

      if (!error2)
      {
        v20 = NSStringFromSelector(sel_status);
        v21 = [coderCopy decodeIntegerForKey:v20];

        error3 = [coderCopy error];

        if (!error3)
        {
          v23 = objc_opt_class();
          v24 = NSStringFromSelector(sel_limit);
          v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];

          if (v25)
          {
            v26 = objc_opt_class();
            v27 = NSStringFromSelector(sel_offset);
            v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];

            if (v28)
            {
              v29 = NSStringFromSelector(sel_hasMoreAnswers);
              v52 = [coderCopy decodeBoolForKey:v29];

              error4 = [coderCopy error];

              if (!error4)
              {
                v50 = objc_opt_class();
                v31 = NSStringFromSelector(sel_debug);
                v51 = [coderCopy decodeObjectOfClass:v50 forKey:v31];

                error5 = [coderCopy error];

                if (error5)
                {
                  selfCopy = 0;
                }

                else
                {
                  LOBYTE(v49) = v52;
                  self = [(GDKnosisResult *)self initWithQuery:v7 kgq:v10 status:v21 answers:v15 errorMessage:v18 limit:v25 offset:v28 hasMoreAnswers:v49 debug:v51];
                  selfCopy = self;
                }

                goto LABEL_30;
              }
            }

            else
            {
              error6 = [coderCopy error];

              if (!error6)
              {
                v42 = MEMORY[0x1E696ABC0];
                v53 = *MEMORY[0x1E696A578];
                v54 = @"GDKnosisResult offset is nil";
                v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                v44 = [v42 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v43];
                [coderCopy failWithError:v44];
              }

              v28 = 0;
            }

LABEL_29:
            selfCopy = 0;
LABEL_30:

            goto LABEL_31;
          }

          error7 = [coderCopy error];

          if (!error7)
          {
            v45 = MEMORY[0x1E696ABC0];
            v55 = *MEMORY[0x1E696A578];
            v56 = @"GDKnosisResult limit is nil";
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v46 = [v45 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v28];
            [coderCopy failWithError:v46];

            goto LABEL_29;
          }

          v25 = 0;
LABEL_22:
          selfCopy = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

LABEL_20:
      selfCopy = 0;
LABEL_32:

      goto LABEL_33;
    }

    error8 = [coderCopy error];

    if (!error8)
    {
      v39 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v58 = @"GDKnosisResult answers is nil";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      v25 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v18];
      [coderCopy failWithError:v25];
      goto LABEL_22;
    }

    v15 = 0;
LABEL_18:
    selfCopy = 0;
LABEL_33:

    goto LABEL_34;
  }

  error9 = [coderCopy error];

  if (!error9)
  {
    v37 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62[0] = @"GDKnosisResult query is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v15 = [v37 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [coderCopy failWithError:v15];
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_35:

  v47 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (GDKnosisResult)initWithQuery:(id)query kgq:(id)kgq status:(unint64_t)status answers:(id)answers errorMessage:(id)message limit:(id)limit offset:(id)offset hasMoreAnswers:(BOOL)self0 debug:(id)self1
{
  queryCopy = query;
  kgqCopy = kgq;
  answersCopy = answers;
  messageCopy = message;
  limitCopy = limit;
  offsetCopy = offset;
  debugCopy = debug;
  v38.receiver = self;
  v38.super_class = GDKnosisResult;
  v24 = [(GDKnosisResult *)&v38 init];
  if (v24)
  {
    v25 = [queryCopy copy];
    query = v24->_query;
    v24->_query = v25;

    v27 = [kgqCopy copy];
    kgq = v24->_kgq;
    v24->_kgq = v27;

    v24->_status = status;
    v29 = [answersCopy copy];
    answers = v24->_answers;
    v24->_answers = v29;

    v31 = [messageCopy copy];
    errorMessage = v24->_errorMessage;
    v24->_errorMessage = v31;

    v33 = [limitCopy copy];
    limit = v24->_limit;
    v24->_limit = v33;

    v35 = [offsetCopy copy];
    offset = v24->_offset;
    v24->_offset = v35;

    v24->_hasMoreAnswers = moreAnswers;
    objc_storeStrong(&v24->_debug, debug);
  }

  return v24;
}

@end
@interface GDKnosisIntentArgInfo
- (GDKnosisIntentArgInfo)initWithCoder:(id)coder;
- (GDKnosisIntentArgInfo)initWithIntent:(id)intent args:(id)args score:(id)score;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisIntentArgInfo

- (GDKnosisIntentArgInfo)initWithCoder:(id)coder
{
  v33[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_intent);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = NSStringFromSelector(sel_args);
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:v11];

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_score);
      v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

      if (v15)
      {
        self = [(GDKnosisIntentArgInfo *)self initWithIntent:v7 args:v12 score:v15];
        selfCopy = self;
LABEL_15:

        goto LABEL_16;
      }

      error = [coderCopy error];

      if (!error)
      {
        v20 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A578];
        v29 = @"GDKnosisIntentArgInfo score is nil";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v22 = [v20 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v21];
        [coderCopy failWithError:v22];
      }

      v15 = 0;
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        v12 = 0;
        selfCopy = 0;
LABEL_16:

        goto LABEL_17;
      }

      v24 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31 = @"GDKnosisIntentArgInfo args is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v25 = [v24 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [coderCopy failWithError:v25];

      v12 = 0;
    }

LABEL_14:
    selfCopy = 0;
    goto LABEL_15;
  }

  error3 = [coderCopy error];

  if (!error3)
  {
    v23 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @"GDKnosisIntentArgInfo intent is nil";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v15 = [v23 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v12];
    [coderCopy failWithError:v15];
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_17:

  v26 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  intent = self->_intent;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_intent);
  [coderCopy encodeObject:intent forKey:v6];

  args = self->_args;
  v8 = NSStringFromSelector(sel_args);
  [coderCopy encodeObject:args forKey:v8];

  score = self->_score;
  v10 = NSStringFromSelector(sel_score);
  [coderCopy encodeObject:score forKey:v10];
}

- (GDKnosisIntentArgInfo)initWithIntent:(id)intent args:(id)args score:(id)score
{
  intentCopy = intent;
  argsCopy = args;
  scoreCopy = score;
  v19.receiver = self;
  v19.super_class = GDKnosisIntentArgInfo;
  v11 = [(GDKnosisIntentArgInfo *)&v19 init];
  if (v11)
  {
    v12 = [intentCopy copy];
    intent = v11->_intent;
    v11->_intent = v12;

    v14 = [argsCopy copy];
    args = v11->_args;
    v11->_args = v14;

    v16 = [scoreCopy copy];
    score = v11->_score;
    v11->_score = v16;
  }

  return v11;
}

@end
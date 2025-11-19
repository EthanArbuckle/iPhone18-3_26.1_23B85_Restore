@interface GDKnosisDebug
- (GDKnosisDebug)initWithCoder:(id)a3;
- (GDKnosisDebug)initWithIndexCallCount:(int)a3 execSteps:(id)a4 messages:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisDebug

- (GDKnosisDebug)initWithCoder:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = NSStringFromSelector(sel_indexCallCount);
  v6 = [v4 decodeIntForKey:v5];

  v7 = [v4 error];

  if (!v7)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_execSteps);
    v11 = [v4 decodeArrayOfObjectsOfClass:v9 forKey:v10];

    if (!v11)
    {
      v15 = [v4 error];

      if (v15)
      {
        v8 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v19 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"GDKnosisDebug execSteps is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v20];
      [v4 failWithError:v21];
    }

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_messages);
    v14 = [v4 decodeArrayOfObjectsOfClass:v12 forKey:v13];

    if (!v14)
    {
      v16 = [v4 error];

      if (v16)
      {
        v8 = 0;
        goto LABEL_10;
      }

      v22 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"GDKnosisDebug messages is nil";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v24 = [v22 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v23];
      [v4 failWithError:v24];
    }

    self = [(GDKnosisDebug *)self initWithIndexCallCount:v6 execSteps:v11 messages:v14];
    v8 = self;
LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  indexCallCount = self->_indexCallCount;
  v5 = a3;
  v6 = NSStringFromSelector(sel_indexCallCount);
  [v5 encodeInt:indexCallCount forKey:v6];

  execSteps = self->_execSteps;
  v8 = NSStringFromSelector(sel_execSteps);
  [v5 encodeObject:execSteps forKey:v8];

  messages = self->_messages;
  v10 = NSStringFromSelector(sel_messages);
  [v5 encodeObject:messages forKey:v10];
}

- (GDKnosisDebug)initWithIndexCallCount:(int)a3 execSteps:(id)a4 messages:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = GDKnosisDebug;
  v10 = [(GDKnosisDebug *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_indexCallCount = a3;
    v12 = [v8 copy];
    execSteps = v11->_execSteps;
    v11->_execSteps = v12;

    v14 = [v9 copy];
    messages = v11->_messages;
    v11->_messages = v14;
  }

  return v11;
}

@end
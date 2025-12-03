@interface GDKnosisDebug
- (GDKnosisDebug)initWithCoder:(id)coder;
- (GDKnosisDebug)initWithIndexCallCount:(int)count execSteps:(id)steps messages:(id)messages;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisDebug

- (GDKnosisDebug)initWithCoder:(id)coder
{
  v28[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_indexCallCount);
  v6 = [coderCopy decodeIntForKey:v5];

  error = [coderCopy error];

  if (!error)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_execSteps);
    v11 = [coderCopy decodeArrayOfObjectsOfClass:v9 forKey:v10];

    if (!v11)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
LABEL_11:

        goto LABEL_12;
      }

      v19 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28[0] = @"GDKnosisDebug execSteps is nil";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v21 = [v19 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v20];
      [coderCopy failWithError:v21];
    }

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_messages);
    v14 = [coderCopy decodeArrayOfObjectsOfClass:v12 forKey:v13];

    if (!v14)
    {
      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        goto LABEL_10;
      }

      v22 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26 = @"GDKnosisDebug messages is nil";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v24 = [v22 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v23];
      [coderCopy failWithError:v24];
    }

    self = [(GDKnosisDebug *)self initWithIndexCallCount:v6 execSteps:v11 messages:v14];
    selfCopy = self;
LABEL_10:

    goto LABEL_11;
  }

  selfCopy = 0;
LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  indexCallCount = self->_indexCallCount;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_indexCallCount);
  [coderCopy encodeInt:indexCallCount forKey:v6];

  execSteps = self->_execSteps;
  v8 = NSStringFromSelector(sel_execSteps);
  [coderCopy encodeObject:execSteps forKey:v8];

  messages = self->_messages;
  v10 = NSStringFromSelector(sel_messages);
  [coderCopy encodeObject:messages forKey:v10];
}

- (GDKnosisDebug)initWithIndexCallCount:(int)count execSteps:(id)steps messages:(id)messages
{
  stepsCopy = steps;
  messagesCopy = messages;
  v17.receiver = self;
  v17.super_class = GDKnosisDebug;
  v10 = [(GDKnosisDebug *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_indexCallCount = count;
    v12 = [stepsCopy copy];
    execSteps = v11->_execSteps;
    v11->_execSteps = v12;

    v14 = [messagesCopy copy];
    messages = v11->_messages;
    v11->_messages = v14;
  }

  return v11;
}

@end
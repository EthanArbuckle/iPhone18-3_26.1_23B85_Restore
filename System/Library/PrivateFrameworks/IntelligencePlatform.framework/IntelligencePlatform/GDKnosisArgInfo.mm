@interface GDKnosisArgInfo
- (GDKnosisArgInfo)initWithCoder:(id)coder;
- (GDKnosisArgInfo)initWithValue:(id)value arg:(id)arg;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisArgInfo

- (GDKnosisArgInfo)initWithCoder:(id)coder
{
  v24[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_value);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector("arg");
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      self = [(GDKnosisArgInfo *)self initWithValue:v7 arg:v10];
      selfCopy = self;
LABEL_11:

      goto LABEL_12;
    }

    error = [coderCopy error];

    if (!error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"GDKnosisArgInfo arg is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [v14 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [coderCopy failWithError:v16];
    }

    v10 = 0;
LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  error2 = [coderCopy error];

  if (!error2)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"GDKnosisArgInfo value is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v17 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [coderCopy failWithError:v18];

    goto LABEL_10;
  }

  selfCopy = 0;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:v6];

  arg = self->_arg;
  v8 = NSStringFromSelector("arg");
  [coderCopy encodeObject:arg forKey:v8];
}

- (GDKnosisArgInfo)initWithValue:(id)value arg:(id)arg
{
  valueCopy = value;
  argCopy = arg;
  v14.receiver = self;
  v14.super_class = GDKnosisArgInfo;
  v8 = [(GDKnosisArgInfo *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = [argCopy copy];
    arg = v8->_arg;
    v8->_arg = v11;
  }

  return v8;
}

@end
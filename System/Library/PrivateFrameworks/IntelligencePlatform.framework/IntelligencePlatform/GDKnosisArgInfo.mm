@interface GDKnosisArgInfo
- (GDKnosisArgInfo)initWithCoder:(id)a3;
- (GDKnosisArgInfo)initWithValue:(id)a3 arg:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisArgInfo

- (GDKnosisArgInfo)initWithCoder:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_value);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector("arg");
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (v10)
    {
      self = [(GDKnosisArgInfo *)self initWithValue:v7 arg:v10];
      v11 = self;
LABEL_11:

      goto LABEL_12;
    }

    v13 = [v4 error];

    if (!v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"GDKnosisArgInfo arg is nil";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v16 = [v14 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v15];
      [v4 failWithError:v16];
    }

    v10 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v12 = [v4 error];

  if (!v12)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"GDKnosisArgInfo value is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v17 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v18];

    goto LABEL_10;
  }

  v11 = 0;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  v6 = NSStringFromSelector(sel_value);
  [v5 encodeObject:value forKey:v6];

  arg = self->_arg;
  v8 = NSStringFromSelector("arg");
  [v5 encodeObject:arg forKey:v8];
}

- (GDKnosisArgInfo)initWithValue:(id)a3 arg:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GDKnosisArgInfo;
  v8 = [(GDKnosisArgInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    value = v8->_value;
    v8->_value = v9;

    v11 = [v7 copy];
    arg = v8->_arg;
    v8->_arg = v11;
  }

  return v8;
}

@end
@interface GDKnosisAlias
- (GDKnosisAlias)initWithCoder:(id)a3;
- (GDKnosisAlias)initWithPrimary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisAlias

- (GDKnosisAlias)initWithCoder:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_primary);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    self = [(GDKnosisAlias *)self initWithPrimary:v7];
    v8 = self;
  }

  else
  {
    v9 = [v4 error];

    if (!v9)
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"GDKnosisAlias primary is nil";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v10 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v11];
      [v4 failWithError:v12];
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  primary = self->_primary;
  v4 = a3;
  v5 = NSStringFromSelector(sel_primary);
  [v4 encodeObject:primary forKey:v5];
}

- (GDKnosisAlias)initWithPrimary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDKnosisAlias;
  v5 = [(GDKnosisAlias *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    primary = v5->_primary;
    v5->_primary = v6;
  }

  return v5;
}

@end
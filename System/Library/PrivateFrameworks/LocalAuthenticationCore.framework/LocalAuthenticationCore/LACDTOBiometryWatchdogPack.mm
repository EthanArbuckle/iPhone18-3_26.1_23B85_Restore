@interface LACDTOBiometryWatchdogPack
+ (id)nullInstance;
- (BOOL)isBarking;
- (BOOL)isEqual:(id)a3;
- (LACDTOBiometryWatchdogPack)initWithBiometryWatchdogGlobal:(id)a3 biometryWatchdogDTO:(id)a4;
- (LACDTOBiometryWatchdogPack)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LACDTOBiometryWatchdogPack

- (LACDTOBiometryWatchdogPack)initWithBiometryWatchdogGlobal:(id)a3 biometryWatchdogDTO:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTOBiometryWatchdogPack;
  v9 = [(LACDTOBiometryWatchdogPack *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometryWatchdogGlobal, a3);
    objc_storeStrong(&v10->_biometryWatchdogDTO, a4);
  }

  return v10;
}

- (BOOL)isBarking
{
  v3 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  if ([v3 isBarking])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
    v4 = [v5 isBarking];
  }

  return v4;
}

+ (id)nullInstance
{
  v2 = [LACDTOBiometryWatchdogPack alloc];
  v3 = +[LACDTOBiometryWatchdog nullInstance];
  v4 = +[LACDTOBiometryWatchdog nullInstance];
  v5 = [(LACDTOBiometryWatchdogPack *)v2 initWithBiometryWatchdogGlobal:v3 biometryWatchdogDTO:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
  v6 = NSStringFromSelector(sel_biometryWatchdogGlobal);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  v7 = NSStringFromSelector(sel_biometryWatchdogDTO);
  [v4 encodeObject:v8 forKey:v7];
}

- (LACDTOBiometryWatchdogPack)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_biometryWatchdogGlobal);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_biometryWatchdogDTO);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(LACDTOBiometryWatchdogPack *)self initWithBiometryWatchdogGlobal:v7 biometryWatchdogDTO:v10];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
    v7 = [v5 biometryWatchdogGlobal];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
      v10 = [v5 biometryWatchdogGlobal];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    v13 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
    v14 = [v5 biometryWatchdogDTO];
    if (v13 == v14)
    {
      v12 = 1;
    }

    else
    {
      v15 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
      v16 = [v5 biometryWatchdogDTO];
      v12 = [v15 isEqual:v16];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12 & 1;
}

- (id)description
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
  v7 = [v5 stringWithFormat:@"biometryWatchdogGlobal: %@", v6];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  v10 = [v8 stringWithFormat:@"biometryWatchdogDTO: %@", v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end
@interface LACDTOBiometryWatchdogPack
+ (id)nullInstance;
- (BOOL)isBarking;
- (BOOL)isEqual:(id)equal;
- (LACDTOBiometryWatchdogPack)initWithBiometryWatchdogGlobal:(id)global biometryWatchdogDTO:(id)o;
- (LACDTOBiometryWatchdogPack)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACDTOBiometryWatchdogPack

- (LACDTOBiometryWatchdogPack)initWithBiometryWatchdogGlobal:(id)global biometryWatchdogDTO:(id)o
{
  globalCopy = global;
  oCopy = o;
  v12.receiver = self;
  v12.super_class = LACDTOBiometryWatchdogPack;
  v9 = [(LACDTOBiometryWatchdogPack *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_biometryWatchdogGlobal, global);
    objc_storeStrong(&v10->_biometryWatchdogDTO, o);
  }

  return v10;
}

- (BOOL)isBarking
{
  biometryWatchdogDTO = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  if ([biometryWatchdogDTO isBarking])
  {
    isBarking = 1;
  }

  else
  {
    biometryWatchdogGlobal = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
    isBarking = [biometryWatchdogGlobal isBarking];
  }

  return isBarking;
}

+ (id)nullInstance
{
  v2 = [LACDTOBiometryWatchdogPack alloc];
  v3 = +[LACDTOBiometryWatchdog nullInstance];
  v4 = +[LACDTOBiometryWatchdog nullInstance];
  v5 = [(LACDTOBiometryWatchdogPack *)v2 initWithBiometryWatchdogGlobal:v3 biometryWatchdogDTO:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  biometryWatchdogGlobal = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
  v6 = NSStringFromSelector(sel_biometryWatchdogGlobal);
  [coderCopy encodeObject:biometryWatchdogGlobal forKey:v6];

  biometryWatchdogDTO = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  v7 = NSStringFromSelector(sel_biometryWatchdogDTO);
  [coderCopy encodeObject:biometryWatchdogDTO forKey:v7];
}

- (LACDTOBiometryWatchdogPack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_biometryWatchdogGlobal);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_biometryWatchdogDTO);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(LACDTOBiometryWatchdogPack *)self initWithBiometryWatchdogGlobal:v7 biometryWatchdogDTO:v10];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    biometryWatchdogGlobal = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
    biometryWatchdogGlobal2 = [v5 biometryWatchdogGlobal];
    v8 = biometryWatchdogGlobal2;
    if (biometryWatchdogGlobal == biometryWatchdogGlobal2)
    {
    }

    else
    {
      biometryWatchdogGlobal3 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
      biometryWatchdogGlobal4 = [v5 biometryWatchdogGlobal];
      v11 = [biometryWatchdogGlobal3 isEqual:biometryWatchdogGlobal4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    biometryWatchdogDTO = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
    biometryWatchdogDTO2 = [v5 biometryWatchdogDTO];
    if (biometryWatchdogDTO == biometryWatchdogDTO2)
    {
      v12 = 1;
    }

    else
    {
      biometryWatchdogDTO3 = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
      biometryWatchdogDTO4 = [v5 biometryWatchdogDTO];
      v12 = [biometryWatchdogDTO3 isEqual:biometryWatchdogDTO4];
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
  biometryWatchdogGlobal = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogGlobal];
  v7 = [v5 stringWithFormat:@"biometryWatchdogGlobal: %@", biometryWatchdogGlobal];
  v16[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  biometryWatchdogDTO = [(LACDTOBiometryWatchdogPack *)self biometryWatchdogDTO];
  v10 = [v8 stringWithFormat:@"biometryWatchdogDTO: %@", biometryWatchdogDTO];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end
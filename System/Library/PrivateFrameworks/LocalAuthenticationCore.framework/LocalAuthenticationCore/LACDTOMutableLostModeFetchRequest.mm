@interface LACDTOMutableLostModeFetchRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation LACDTOMutableLostModeFetchRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F2696FE0])
  {
    v5 = v4;
    v6 = [(LACDTOMutableLostModeFetchRequest *)self policy];
    if (v6 == [v5 policy])
    {
      v7 = [(LACDTOMutableLostModeFetchRequest *)self options];
      v8 = [v5 options];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(LACDTOMutableLostModeFetchRequest *)self options];
        v11 = [v5 options];
        v12 = [v10 isEqualToDictionary:v11];

        if (!v12)
        {
          goto LABEL_11;
        }
      }

      v14 = [(LACDTOMutableLostModeFetchRequest *)self isDTOEnabled];
      if (v14 == [v5 isDTOEnabled])
      {
        v15 = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
        v16 = [v5 ratchetState];
        v17 = v16;
        if (v15 == v16)
        {
        }

        else
        {
          v18 = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
          v19 = [v5 ratchetState];
          v20 = [v18 isEqual:v19];

          if (!v20)
          {
            goto LABEL_11;
          }
        }

        v22 = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
        v23 = [v5 biometryWatchdogPack];
        if (v22 == v23)
        {
          v13 = 1;
        }

        else
        {
          v24 = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
          v25 = [v5 biometryWatchdogPack];
          v13 = [v24 isEqual:v25];
        }

        goto LABEL_12;
      }
    }

LABEL_11:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13 & 1;
}

- (NSString)description
{
  v24[5] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E696AEC0];
  v21 = objc_opt_class();
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"policy: %d", -[LACDTOMutableLostModeFetchRequest policy](self, "policy")];
  v24[0] = v23;
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LACDTOMutableLostModeFetchRequest *)self options];
  v5 = [v3 stringWithFormat:@"options: %@", v4];
  v24[1] = v5;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [(LACDTOMutableLostModeFetchRequest *)self isDTOEnabled];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v6 stringWithFormat:@"isDTOEnabled: %@", v8];
  v24[2] = v9;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
  v12 = [v10 stringWithFormat:@"ratchetState: %@", v11];
  v24[3] = v12;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
  v15 = [v13 stringWithFormat:@"biometryWatchdogPack: %@", v14];
  v24[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  v17 = [v16 componentsJoinedByString:@" "];;
  v18 = [v22 stringWithFormat:@"<%@ %p %@>", v21, self, v17];;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end
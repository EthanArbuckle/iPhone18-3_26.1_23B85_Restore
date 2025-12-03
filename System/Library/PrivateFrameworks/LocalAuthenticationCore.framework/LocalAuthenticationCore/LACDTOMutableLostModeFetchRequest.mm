@interface LACDTOMutableLostModeFetchRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation LACDTOMutableLostModeFetchRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F2696FE0])
  {
    v5 = equalCopy;
    policy = [(LACDTOMutableLostModeFetchRequest *)self policy];
    if (policy == [v5 policy])
    {
      options = [(LACDTOMutableLostModeFetchRequest *)self options];
      options2 = [v5 options];
      v9 = options2;
      if (options == options2)
      {
      }

      else
      {
        options3 = [(LACDTOMutableLostModeFetchRequest *)self options];
        options4 = [v5 options];
        v12 = [options3 isEqualToDictionary:options4];

        if (!v12)
        {
          goto LABEL_11;
        }
      }

      isDTOEnabled = [(LACDTOMutableLostModeFetchRequest *)self isDTOEnabled];
      if (isDTOEnabled == [v5 isDTOEnabled])
      {
        ratchetState = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
        ratchetState2 = [v5 ratchetState];
        v17 = ratchetState2;
        if (ratchetState == ratchetState2)
        {
        }

        else
        {
          ratchetState3 = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
          ratchetState4 = [v5 ratchetState];
          v20 = [ratchetState3 isEqual:ratchetState4];

          if (!v20)
          {
            goto LABEL_11;
          }
        }

        biometryWatchdogPack = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
        biometryWatchdogPack2 = [v5 biometryWatchdogPack];
        if (biometryWatchdogPack == biometryWatchdogPack2)
        {
          v13 = 1;
        }

        else
        {
          biometryWatchdogPack3 = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
          biometryWatchdogPack4 = [v5 biometryWatchdogPack];
          v13 = [biometryWatchdogPack3 isEqual:biometryWatchdogPack4];
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
  options = [(LACDTOMutableLostModeFetchRequest *)self options];
  v5 = [v3 stringWithFormat:@"options: %@", options];
  v24[1] = v5;
  v6 = MEMORY[0x1E696AEC0];
  isDTOEnabled = [(LACDTOMutableLostModeFetchRequest *)self isDTOEnabled];
  v8 = @"NO";
  if (isDTOEnabled)
  {
    v8 = @"YES";
  }

  v9 = [v6 stringWithFormat:@"isDTOEnabled: %@", v8];
  v24[2] = v9;
  v10 = MEMORY[0x1E696AEC0];
  ratchetState = [(LACDTOMutableLostModeFetchRequest *)self ratchetState];
  v12 = [v10 stringWithFormat:@"ratchetState: %@", ratchetState];
  v24[3] = v12;
  v13 = MEMORY[0x1E696AEC0];
  biometryWatchdogPack = [(LACDTOMutableLostModeFetchRequest *)self biometryWatchdogPack];
  v15 = [v13 stringWithFormat:@"biometryWatchdogPack: %@", biometryWatchdogPack];
  v24[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];
  v17 = [v16 componentsJoinedByString:@" "];;
  v18 = [v22 stringWithFormat:@"<%@ %p %@>", v21, self, v17];;

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end
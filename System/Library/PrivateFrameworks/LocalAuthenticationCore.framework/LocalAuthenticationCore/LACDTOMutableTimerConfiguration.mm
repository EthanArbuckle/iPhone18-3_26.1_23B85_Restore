@interface LACDTOMutableTimerConfiguration
- (BOOL)isEqual:(id)a3;
- (LACDTOMutableTimerConfiguration)init;
- (LACDTOMutableTimerConfiguration)initWithConfiguration:(id)a3;
- (NSString)description;
- (void)setValue:(id)a3 forTimer:(int64_t)a4;
@end

@implementation LACDTOMutableTimerConfiguration

- (LACDTOMutableTimerConfiguration)init
{
  v5.receiver = self;
  v5.super_class = LACDTOMutableTimerConfiguration;
  v2 = [(LACDTOMutableTimerConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LACDTOMutableTimerConfiguration *)v2 setCoolOff:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setWaitingForSecondAuth:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setReady:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setDtoFallback:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setDtoShortFallback:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setLostMode:&unk_1F2693778];
    [(LACDTOMutableTimerConfiguration *)v3 setGracePeriod:&unk_1F2693778];
  }

  return v3;
}

- (LACDTOMutableTimerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LACDTOMutableTimerConfiguration;
  v5 = [(LACDTOMutableTimerConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [v4 coolOff];
    [(LACDTOMutableTimerConfiguration *)v5 setCoolOff:v6];

    v7 = [v4 waitingForSecondAuth];
    [(LACDTOMutableTimerConfiguration *)v5 setWaitingForSecondAuth:v7];

    v8 = [v4 ready];
    [(LACDTOMutableTimerConfiguration *)v5 setReady:v8];

    v9 = [v4 dtoFallback];
    [(LACDTOMutableTimerConfiguration *)v5 setDtoFallback:v9];

    v10 = [v4 dtoShortFallback];
    [(LACDTOMutableTimerConfiguration *)v5 setDtoShortFallback:v10];

    v11 = [v4 lostMode];
    [(LACDTOMutableTimerConfiguration *)v5 setLostMode:v11];

    v12 = [v4 gracePeriod];
    [(LACDTOMutableTimerConfiguration *)v5 setGracePeriod:v12];
  }

  return v5;
}

- (void)setValue:(id)a3 forTimer:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v8 = v6;
        v6 = [(LACDTOMutableTimerConfiguration *)self setWaitingForSecondAuth:v6];
      }

      else
      {
        if (a4 != 2)
        {
          goto LABEL_17;
        }

        v8 = v6;
        v6 = [(LACDTOMutableTimerConfiguration *)self setReady:v6];
      }
    }

    else
    {
      v8 = v6;
      v6 = [(LACDTOMutableTimerConfiguration *)self setCoolOff:v6];
    }
  }

  else if (a4 > 4)
  {
    if (a4 == 5)
    {
      v8 = v6;
      v6 = [(LACDTOMutableTimerConfiguration *)self setLostMode:v6];
    }

    else
    {
      if (a4 != 6)
      {
        goto LABEL_17;
      }

      v8 = v6;
      v6 = [(LACDTOMutableTimerConfiguration *)self setGracePeriod:v6];
    }
  }

  else
  {
    v8 = v6;
    if (a4 == 3)
    {
      v6 = [(LACDTOMutableTimerConfiguration *)self setDtoFallback:v6];
    }

    else
    {
      v6 = [(LACDTOMutableTimerConfiguration *)self setDtoShortFallback:v6];
    }
  }

  v7 = v8;
LABEL_17:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F26A1AD8])
  {
    v5 = v4;
    v6 = [(LACDTOMutableTimerConfiguration *)self coolOff];
    v7 = [v5 coolOff];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(LACDTOMutableTimerConfiguration *)self coolOff];
      v10 = [v5 coolOff];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v13 = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
    v14 = [v5 waitingForSecondAuth];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
      v17 = [v5 waitingForSecondAuth];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    v19 = [(LACDTOMutableTimerConfiguration *)self ready];
    v20 = [v5 ready];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(LACDTOMutableTimerConfiguration *)self ready];
      v23 = [v5 ready];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    v25 = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
    v26 = [v5 dtoFallback];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
      v29 = [v5 dtoFallback];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    v31 = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
    v32 = [v5 dtoShortFallback];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
      v35 = [v5 dtoShortFallback];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    v37 = [(LACDTOMutableTimerConfiguration *)self lostMode];
    v38 = [v5 lostMode];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(LACDTOMutableTimerConfiguration *)self lostMode];
      v41 = [v5 lostMode];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v44 = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
    v45 = [v5 gracePeriod];
    if (v44 == v45)
    {
      v12 = 1;
    }

    else
    {
      v46 = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
      v47 = [v5 gracePeriod];
      v12 = [v46 isEqual:v47];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

  return v12 & 1;
}

- (NSString)description
{
  v31[7] = *MEMORY[0x1E69E9840];
  v25 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  v3 = MEMORY[0x1E696AEC0];
  v30 = [(LACDTOMutableTimerConfiguration *)self coolOff];
  v29 = [v3 stringWithFormat:@"coolOff: %@", v30];
  v31[0] = v29;
  v4 = MEMORY[0x1E696AEC0];
  v28 = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
  v27 = [v4 stringWithFormat:@"waitingForSecondAuth: %@", v28];
  v31[1] = v27;
  v5 = MEMORY[0x1E696AEC0];
  v26 = [(LACDTOMutableTimerConfiguration *)self ready];
  v24 = [v5 stringWithFormat:@"ready: %@", v26];
  v31[2] = v24;
  v6 = MEMORY[0x1E696AEC0];
  v22 = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
  v7 = [v6 stringWithFormat:@"dtoFallback: %@", v22];
  v31[3] = v7;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
  v10 = [v8 stringWithFormat:@"dtoShortFallback: %@", v9];
  v31[4] = v10;
  v11 = MEMORY[0x1E696AEC0];
  v12 = [(LACDTOMutableTimerConfiguration *)self lostMode];
  v13 = [v11 stringWithFormat:@"lostMode: %@", v12];
  v31[5] = v13;
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
  v16 = [v14 stringWithFormat:@"gracePeriod: %@", v15];
  v31[6] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:7];
  v18 = [v17 componentsJoinedByString:@" "];;
  v19 = [v25 stringWithFormat:@"<%@ %p %@>", v23, self, v18];;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
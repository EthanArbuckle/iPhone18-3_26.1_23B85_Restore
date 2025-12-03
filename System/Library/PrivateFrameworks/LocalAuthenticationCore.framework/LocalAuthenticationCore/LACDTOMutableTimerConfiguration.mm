@interface LACDTOMutableTimerConfiguration
- (BOOL)isEqual:(id)equal;
- (LACDTOMutableTimerConfiguration)init;
- (LACDTOMutableTimerConfiguration)initWithConfiguration:(id)configuration;
- (NSString)description;
- (void)setValue:(id)value forTimer:(int64_t)timer;
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

- (LACDTOMutableTimerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = LACDTOMutableTimerConfiguration;
  v5 = [(LACDTOMutableTimerConfiguration *)&v14 init];
  if (v5)
  {
    coolOff = [configurationCopy coolOff];
    [(LACDTOMutableTimerConfiguration *)v5 setCoolOff:coolOff];

    waitingForSecondAuth = [configurationCopy waitingForSecondAuth];
    [(LACDTOMutableTimerConfiguration *)v5 setWaitingForSecondAuth:waitingForSecondAuth];

    ready = [configurationCopy ready];
    [(LACDTOMutableTimerConfiguration *)v5 setReady:ready];

    dtoFallback = [configurationCopy dtoFallback];
    [(LACDTOMutableTimerConfiguration *)v5 setDtoFallback:dtoFallback];

    dtoShortFallback = [configurationCopy dtoShortFallback];
    [(LACDTOMutableTimerConfiguration *)v5 setDtoShortFallback:dtoShortFallback];

    lostMode = [configurationCopy lostMode];
    [(LACDTOMutableTimerConfiguration *)v5 setLostMode:lostMode];

    gracePeriod = [configurationCopy gracePeriod];
    [(LACDTOMutableTimerConfiguration *)v5 setGracePeriod:gracePeriod];
  }

  return v5;
}

- (void)setValue:(id)value forTimer:(int64_t)timer
{
  valueCopy = value;
  v7 = valueCopy;
  if (timer <= 2)
  {
    if (timer)
    {
      if (timer == 1)
      {
        v8 = valueCopy;
        valueCopy = [(LACDTOMutableTimerConfiguration *)self setWaitingForSecondAuth:valueCopy];
      }

      else
      {
        if (timer != 2)
        {
          goto LABEL_17;
        }

        v8 = valueCopy;
        valueCopy = [(LACDTOMutableTimerConfiguration *)self setReady:valueCopy];
      }
    }

    else
    {
      v8 = valueCopy;
      valueCopy = [(LACDTOMutableTimerConfiguration *)self setCoolOff:valueCopy];
    }
  }

  else if (timer > 4)
  {
    if (timer == 5)
    {
      v8 = valueCopy;
      valueCopy = [(LACDTOMutableTimerConfiguration *)self setLostMode:valueCopy];
    }

    else
    {
      if (timer != 6)
      {
        goto LABEL_17;
      }

      v8 = valueCopy;
      valueCopy = [(LACDTOMutableTimerConfiguration *)self setGracePeriod:valueCopy];
    }
  }

  else
  {
    v8 = valueCopy;
    if (timer == 3)
    {
      valueCopy = [(LACDTOMutableTimerConfiguration *)self setDtoFallback:valueCopy];
    }

    else
    {
      valueCopy = [(LACDTOMutableTimerConfiguration *)self setDtoShortFallback:valueCopy];
    }
  }

  v7 = v8;
LABEL_17:

  MEMORY[0x1EEE66BB8](valueCopy, v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy conformsToProtocol:&unk_1F26A1AD8])
  {
    v5 = equalCopy;
    coolOff = [(LACDTOMutableTimerConfiguration *)self coolOff];
    coolOff2 = [v5 coolOff];
    v8 = coolOff2;
    if (coolOff == coolOff2)
    {
    }

    else
    {
      coolOff3 = [(LACDTOMutableTimerConfiguration *)self coolOff];
      coolOff4 = [v5 coolOff];
      v11 = [coolOff3 isEqual:coolOff4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    waitingForSecondAuth = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
    waitingForSecondAuth2 = [v5 waitingForSecondAuth];
    v15 = waitingForSecondAuth2;
    if (waitingForSecondAuth == waitingForSecondAuth2)
    {
    }

    else
    {
      waitingForSecondAuth3 = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
      waitingForSecondAuth4 = [v5 waitingForSecondAuth];
      v18 = [waitingForSecondAuth3 isEqual:waitingForSecondAuth4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    ready = [(LACDTOMutableTimerConfiguration *)self ready];
    ready2 = [v5 ready];
    v21 = ready2;
    if (ready == ready2)
    {
    }

    else
    {
      ready3 = [(LACDTOMutableTimerConfiguration *)self ready];
      ready4 = [v5 ready];
      v24 = [ready3 isEqual:ready4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    dtoFallback = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
    dtoFallback2 = [v5 dtoFallback];
    v27 = dtoFallback2;
    if (dtoFallback == dtoFallback2)
    {
    }

    else
    {
      dtoFallback3 = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
      dtoFallback4 = [v5 dtoFallback];
      v30 = [dtoFallback3 isEqual:dtoFallback4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    dtoShortFallback = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
    dtoShortFallback2 = [v5 dtoShortFallback];
    v33 = dtoShortFallback2;
    if (dtoShortFallback == dtoShortFallback2)
    {
    }

    else
    {
      dtoShortFallback3 = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
      dtoShortFallback4 = [v5 dtoShortFallback];
      v36 = [dtoShortFallback3 isEqual:dtoShortFallback4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    lostMode = [(LACDTOMutableTimerConfiguration *)self lostMode];
    lostMode2 = [v5 lostMode];
    v39 = lostMode2;
    if (lostMode == lostMode2)
    {
    }

    else
    {
      lostMode3 = [(LACDTOMutableTimerConfiguration *)self lostMode];
      lostMode4 = [v5 lostMode];
      v42 = [lostMode3 isEqual:lostMode4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    gracePeriod = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
    gracePeriod2 = [v5 gracePeriod];
    if (gracePeriod == gracePeriod2)
    {
      v12 = 1;
    }

    else
    {
      gracePeriod3 = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
      gracePeriod4 = [v5 gracePeriod];
      v12 = [gracePeriod3 isEqual:gracePeriod4];
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
  coolOff = [(LACDTOMutableTimerConfiguration *)self coolOff];
  v29 = [v3 stringWithFormat:@"coolOff: %@", coolOff];
  v31[0] = v29;
  v4 = MEMORY[0x1E696AEC0];
  waitingForSecondAuth = [(LACDTOMutableTimerConfiguration *)self waitingForSecondAuth];
  v27 = [v4 stringWithFormat:@"waitingForSecondAuth: %@", waitingForSecondAuth];
  v31[1] = v27;
  v5 = MEMORY[0x1E696AEC0];
  ready = [(LACDTOMutableTimerConfiguration *)self ready];
  v24 = [v5 stringWithFormat:@"ready: %@", ready];
  v31[2] = v24;
  v6 = MEMORY[0x1E696AEC0];
  dtoFallback = [(LACDTOMutableTimerConfiguration *)self dtoFallback];
  v7 = [v6 stringWithFormat:@"dtoFallback: %@", dtoFallback];
  v31[3] = v7;
  v8 = MEMORY[0x1E696AEC0];
  dtoShortFallback = [(LACDTOMutableTimerConfiguration *)self dtoShortFallback];
  v10 = [v8 stringWithFormat:@"dtoShortFallback: %@", dtoShortFallback];
  v31[4] = v10;
  v11 = MEMORY[0x1E696AEC0];
  lostMode = [(LACDTOMutableTimerConfiguration *)self lostMode];
  v13 = [v11 stringWithFormat:@"lostMode: %@", lostMode];
  v31[5] = v13;
  v14 = MEMORY[0x1E696AEC0];
  gracePeriod = [(LACDTOMutableTimerConfiguration *)self gracePeriod];
  v16 = [v14 stringWithFormat:@"gracePeriod: %@", gracePeriod];
  v31[6] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:7];
  v18 = [v17 componentsJoinedByString:@" "];;
  v19 = [v25 stringWithFormat:@"<%@ %p %@>", v23, self, v18];;

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
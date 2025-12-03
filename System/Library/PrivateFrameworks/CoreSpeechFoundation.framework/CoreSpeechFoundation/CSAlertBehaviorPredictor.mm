@interface CSAlertBehaviorPredictor
+ (int64_t)predictStartAlertBehaviorFor:(int64_t)for avSystemController:(id)controller hasAOP:(BOOL)p supportVibrator:(BOOL)vibrator isiOS:(BOOL)s isWatchOS:(BOOL)oS isHorseman:(BOOL)horseman isBridgeOS:(BOOL)self0 recordRoute:(id)self1 playbackRoute:(id)self2;
+ (int64_t)predictStartAlertBehaviorFor:(int64_t)for recordRoute:(id)route playbackRoute:(id)playbackRoute;
@end

@implementation CSAlertBehaviorPredictor

+ (int64_t)predictStartAlertBehaviorFor:(int64_t)for avSystemController:(id)controller hasAOP:(BOOL)p supportVibrator:(BOOL)vibrator isiOS:(BOOL)s isWatchOS:(BOOL)oS isHorseman:(BOOL)horseman isBridgeOS:(BOOL)self0 recordRoute:(id)self1 playbackRoute:(id)self2
{
  oSCopy = oS;
  sCopy = s;
  vibratorCopy = vibrator;
  pCopy = p;
  v52 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  routeCopy = route;
  playbackRouteCopy = playbackRoute;
  v39 = routeCopy;
  v18 = [routeCopy isEqualToString:*MEMORY[0x1E69581C8]];
  v19 = v18;
  v20 = !sCopy || horseman;
  if (pCopy)
  {
    v21 = (bridgeOS | ~v20) & v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E69AEA48];
  if (controllerCopy && ([controllerCopy attributeForKey:*MEMORY[0x1E69AEA48]], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLValue"), v23, (v24 & 1) != 0))
  {
    v25 = 1;
  }

  else
  {
    mEMORY[0x1E69AED08] = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v27 = [mEMORY[0x1E69AED08] attributeForKey:*v22];
    bOOLValue = [v27 BOOLValue];

    v25 = bOOLValue | v21;
  }

  v29 = playbackRouteCopy;
  v30 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v41 = "+[CSAlertBehaviorPredictor predictStartAlertBehaviorFor:avSystemController:hasAOP:supportVibrator:isiOS:isWatchOS:isHorseman:isBridgeOS:recordRoute:playbackRoute:]";
    v42 = 1026;
    forCopy = for;
    v44 = 2114;
    v45 = v39;
    v46 = 2114;
    v47 = playbackRouteCopy;
    v48 = 1026;
    v49 = v19;
    v50 = 1026;
    v51 = v25 & 1;
    _os_log_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_DEFAULT, "%s Context(%{public}d) recordRoute(%{public}@) playbackRoute(%{public}@) isRouteToBuiltInMic(%{public}d) isZLLAvailable(%{public}d)", buf, 0x32u);
  }

  if (!oSCopy)
  {
    if (v20)
    {
      v31 = horseman - 1;
      goto LABEL_21;
    }

    if (for <= 0x1B)
    {
      if (((1 << for) & 0xCD09C40) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << for) & 0x12) != 0)
      {
        if ([playbackRouteCopy isEqualToString:*MEMORY[0x1E69581D8]])
        {
          v34 = 0;
        }

        else
        {
          v34 = [playbackRouteCopy isEqualToString:*MEMORY[0x1E69581E8]] ^ 1;
        }

        v35 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "+[CSAlertBehaviorPredictor predictStartAlertBehaviorFor:avSystemController:hasAOP:supportVibrator:isiOS:isWatchOS:isHorseman:isBridgeOS:recordRoute:playbackRoute:]";
          v42 = 1026;
          forCopy = v34;
          v44 = 1026;
          LODWORD(v45) = vibratorCopy;
          _os_log_impl(&dword_1DDA4B000, v35, OS_LOG_TYPE_DEFAULT, "%s isHandsFree = %{public}d hasHaptic = %{public}d", buf, 0x18u);
        }

        if ((vibratorCopy | v25))
        {
          v36 = 1;
          if (v34)
          {
            v36 = 2;
          }

          if (v25)
          {
            v31 = 0;
          }

          else
          {
            v31 = v36;
          }
        }

        else
        {
          v31 = 2;
        }

        v29 = playbackRouteCopy;
        goto LABEL_21;
      }

      if (for == 7)
      {
        if (v25)
        {
          v31 = 0;
        }

        else
        {
          v31 = 2;
        }

        goto LABEL_21;
      }
    }

    v31 = 2;
    goto LABEL_21;
  }

  if (for > 0xF)
  {
LABEL_15:
    v31 = 1;
    goto LABEL_21;
  }

  if (((1 << for) & 0x8E40) != 0)
  {
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  if ((1 << for) & 0x1A) == 0 || ([playbackRouteCopy isEqualToString:*MEMORY[0x1E69581D8]])
  {
    goto LABEL_15;
  }

  if ([playbackRouteCopy isEqualToString:*MEMORY[0x1E69581E8]])
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (int64_t)predictStartAlertBehaviorFor:(int64_t)for recordRoute:(id)route playbackRoute:(id)playbackRoute
{
  playbackRouteCopy = playbackRoute;
  routeCopy = route;
  if (CSHasAOP_onceToken != -1)
  {
    dispatch_once(&CSHasAOP_onceToken, &__block_literal_global_38);
  }

  v9 = CSHasAOP_hasAOP;
  if (CSSupportsVibrator_onceToken != -1)
  {
    dispatch_once(&CSSupportsVibrator_onceToken, &__block_literal_global_43);
  }

  v10 = CSSupportsVibrator_hasHaptic;
  if (CSIsHorseman_onceToken != -1)
  {
    dispatch_once(&CSIsHorseman_onceToken, &__block_literal_global_9);
  }

  LOWORD(v13) = CSIsHorseman_isHorseman;
  v11 = [CSAlertBehaviorPredictor predictStartAlertBehaviorFor:for avSystemController:0 hasAOP:v9 supportVibrator:v10 isiOS:1 isWatchOS:0 isHorseman:v13 isBridgeOS:routeCopy recordRoute:playbackRouteCopy playbackRoute:?];

  return v11;
}

@end
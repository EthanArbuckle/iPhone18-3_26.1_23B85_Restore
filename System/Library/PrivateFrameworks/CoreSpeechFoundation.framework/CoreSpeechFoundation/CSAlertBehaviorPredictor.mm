@interface CSAlertBehaviorPredictor
+ (int64_t)predictStartAlertBehaviorFor:(int64_t)a3 avSystemController:(id)a4 hasAOP:(BOOL)a5 supportVibrator:(BOOL)a6 isiOS:(BOOL)a7 isWatchOS:(BOOL)a8 isHorseman:(BOOL)a9 isBridgeOS:(BOOL)a10 recordRoute:(id)a11 playbackRoute:(id)a12;
+ (int64_t)predictStartAlertBehaviorFor:(int64_t)a3 recordRoute:(id)a4 playbackRoute:(id)a5;
@end

@implementation CSAlertBehaviorPredictor

+ (int64_t)predictStartAlertBehaviorFor:(int64_t)a3 avSystemController:(id)a4 hasAOP:(BOOL)a5 supportVibrator:(BOOL)a6 isiOS:(BOOL)a7 isWatchOS:(BOOL)a8 isHorseman:(BOOL)a9 isBridgeOS:(BOOL)a10 recordRoute:(id)a11 playbackRoute:(id)a12
{
  v12 = a8;
  v13 = a7;
  v37 = a6;
  v14 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a11;
  v38 = a12;
  v39 = v17;
  v18 = [v17 isEqualToString:*MEMORY[0x1E69581C8]];
  v19 = v18;
  v20 = !v13 || a9;
  if (v14)
  {
    v21 = (a10 | ~v20) & v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E69AEA48];
  if (v16 && ([v16 attributeForKey:*MEMORY[0x1E69AEA48]], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "BOOLValue"), v23, (v24 & 1) != 0))
  {
    v25 = 1;
  }

  else
  {
    v26 = [MEMORY[0x1E69AED08] sharedAVSystemController];
    v27 = [v26 attributeForKey:*v22];
    v28 = [v27 BOOLValue];

    v25 = v28 | v21;
  }

  v29 = v38;
  v30 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v41 = "+[CSAlertBehaviorPredictor predictStartAlertBehaviorFor:avSystemController:hasAOP:supportVibrator:isiOS:isWatchOS:isHorseman:isBridgeOS:recordRoute:playbackRoute:]";
    v42 = 1026;
    v43 = a3;
    v44 = 2114;
    v45 = v39;
    v46 = 2114;
    v47 = v38;
    v48 = 1026;
    v49 = v19;
    v50 = 1026;
    v51 = v25 & 1;
    _os_log_impl(&dword_1DDA4B000, v30, OS_LOG_TYPE_DEFAULT, "%s Context(%{public}d) recordRoute(%{public}@) playbackRoute(%{public}@) isRouteToBuiltInMic(%{public}d) isZLLAvailable(%{public}d)", buf, 0x32u);
  }

  if (!v12)
  {
    if (v20)
    {
      v31 = a9 - 1;
      goto LABEL_21;
    }

    if (a3 <= 0x1B)
    {
      if (((1 << a3) & 0xCD09C40) != 0)
      {
        goto LABEL_20;
      }

      if (((1 << a3) & 0x12) != 0)
      {
        if ([v38 isEqualToString:*MEMORY[0x1E69581D8]])
        {
          v34 = 0;
        }

        else
        {
          v34 = [v38 isEqualToString:*MEMORY[0x1E69581E8]] ^ 1;
        }

        v35 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "+[CSAlertBehaviorPredictor predictStartAlertBehaviorFor:avSystemController:hasAOP:supportVibrator:isiOS:isWatchOS:isHorseman:isBridgeOS:recordRoute:playbackRoute:]";
          v42 = 1026;
          v43 = v34;
          v44 = 1026;
          LODWORD(v45) = v37;
          _os_log_impl(&dword_1DDA4B000, v35, OS_LOG_TYPE_DEFAULT, "%s isHandsFree = %{public}d hasHaptic = %{public}d", buf, 0x18u);
        }

        if ((v37 | v25))
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

        v29 = v38;
        goto LABEL_21;
      }

      if (a3 == 7)
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

  if (a3 > 0xF)
  {
LABEL_15:
    v31 = 1;
    goto LABEL_21;
  }

  if (((1 << a3) & 0x8E40) != 0)
  {
LABEL_20:
    v31 = 0;
    goto LABEL_21;
  }

  if ((1 << a3) & 0x1A) == 0 || ([v38 isEqualToString:*MEMORY[0x1E69581D8]])
  {
    goto LABEL_15;
  }

  if ([v38 isEqualToString:*MEMORY[0x1E69581E8]])
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

+ (int64_t)predictStartAlertBehaviorFor:(int64_t)a3 recordRoute:(id)a4 playbackRoute:(id)a5
{
  v7 = a5;
  v8 = a4;
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
  v11 = [CSAlertBehaviorPredictor predictStartAlertBehaviorFor:a3 avSystemController:0 hasAOP:v9 supportVibrator:v10 isiOS:1 isWatchOS:0 isHorseman:v13 isBridgeOS:v8 recordRoute:v7 playbackRoute:?];

  return v11;
}

@end
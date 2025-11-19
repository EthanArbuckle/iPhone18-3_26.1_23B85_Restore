@interface _WDSelectedRangeIcon
+ (id)_dataLabelImageForPlusSign:(BOOL)a3 foregroundColor:(id)a4 dimension:(double)a5 strokeOffset:(double)a6 strokeWidth:(double)a7;
+ (id)iconForData:(id)a3 foregroundColor:(id)a4 compatibleWithFont:(id)a5;
@end

@implementation _WDSelectedRangeIcon

+ (id)iconForData:(id)a3 foregroundColor:(id)a4 compatibleWithFont:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v11 = [v7 statisticsType];
  if (v11 == 6)
  {
    v12 = 1;
    goto LABEL_5;
  }

  if (v11 == 7)
  {
    v12 = 0;
LABEL_5:
    v13 = [_WDSelectedRangeIcon _dataLabelImageForPlusSign:v12 foregroundColor:v8 dimension:10.0 strokeOffset:1.0 strokeWidth:1.5];
    [v10 setImage:v13];
  }

  v14 = [v7 dataType];
  switch(v14)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_11;
    case 3:
    case 4:
    case 28:
    case 29:
      [v9 capHeight];
      v16 = [HKChartSeriesPointMarker chartPointWithColor:v8 radius:0 style:v15 * 0.5];
      goto LABEL_26;
    case 5:
    case 6:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 30:
    case 31:
    case 32:
      goto LABEL_29;
    case 7:
      v40 = [MEMORY[0x1E696C608] sharedBehavior];
      v41 = [v40 features];
      v42 = [v41 yodel];

      if (!v42 || [v7 statisticsType] == 3)
      {
        goto LABEL_29;
      }

      v33 = [v7 metadata];
      [v9 capHeight];
      v35 = v43 / 1.5;
      v36 = v33;
      v37 = 1;
      goto LABEL_37;
    case 8:
      v30 = [MEMORY[0x1E696C608] sharedBehavior];
      v31 = [v30 features];
      v32 = [v31 yodel];

      if (!v32 || [v7 statisticsType] == 3)
      {
        goto LABEL_29;
      }

      v33 = [v7 metadata];
      [v9 capHeight];
      v35 = v34 / 1.5;
      v36 = v33;
      v37 = 2;
LABEL_37:
      v21 = [HKAudiogramLineSeries filledSymbolUsingMetadata:v36 forEar:v37 radius:1 useEarSpecificColor:v35];

      [v9 capHeight];
      v45 = v44;
      [v21 size];
      v47 = (v45 - v46) * 0.5;
      [v21 size];
      v49 = v48;
      [v21 size];
      [v10 setBounds:{0.0, v47, v49, v50}];
      goto LABEL_27;
    case 9:
      v16 = [HKSleepPeriodSeries inBedImageCompatibleWithFont:v9 withColor:v8];
      goto LABEL_26;
    case 10:
      v16 = [HKSleepPeriodSeries asleepImageCompatibleWithFont:v9 withColor:v8];
      goto LABEL_26;
    case 11:
      v21 = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      v22 = 4.0;
      goto LABEL_19;
    case 12:
      v21 = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      v22 = 4.0;
      v23 = v21;
      v24 = 1;
      goto LABEL_20;
    case 33:
      v25 = [MEMORY[0x1E696C608] sharedBehavior];
      v26 = [v25 features];
      v27 = [v26 yodel];

      if (!v27)
      {
        goto LABEL_29;
      }

      v20 = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramLeftEarPointMarkerColor];
      goto LABEL_18;
    case 34:
      v17 = [MEMORY[0x1E696C608] sharedBehavior];
      v18 = [v17 features];
      v19 = [v18 yodel];

      if (!v19)
      {
        goto LABEL_29;
      }

      v20 = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramRightEarPointMarkerColor];
LABEL_18:
      v21 = v20;
      [v9 capHeight];
      v22 = v28 * 0.5;
LABEL_19:
      v23 = v21;
      v24 = 0;
LABEL_20:
      v29 = [HKChartSeriesPointMarker chartPointWithColor:v23 radius:v24 style:v22];
      [v10 setImage:v29];

      goto LABEL_28;
    default:
      if (v14 == 41)
      {
LABEL_11:
        v16 = [HKBloodPressureSeries diastolicImageCompatibleWithFont:v9 withColor:v8];
      }

      else
      {
        if (v14 != 40)
        {
          goto LABEL_29;
        }

LABEL_10:
        v16 = [HKBloodPressureSeries systolicImageCompatibleWithFont:v9 withColor:v8];
      }

LABEL_26:
      v21 = v16;
LABEL_27:
      [v10 setImage:v21];
LABEL_28:

LABEL_29:
      v38 = [v10 image];

      if (v38)
      {
        v38 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
      }

      return v38;
  }
}

+ (id)_dataLabelImageForPlusSign:(BOOL)a3 foregroundColor:(id)a4 dimension:(double)a5 strokeOffset:(double)a6 strokeWidth:(double)a7
{
  v10 = a3;
  v11 = a4;
  v20.width = a5;
  v20.height = a5;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = a5 * 0.5 - a7 * 0.5;
  v14 = a5 + a6 * -2.0;
  v15 = [HKBarSeries barSeriesRoundedRect:a6 cornerRadius:v13, v14, a7, 1.0];
  CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);
  CGContextAddPath(CurrentContext, [v15 CGPath]);
  CGContextFillPath(CurrentContext);
  if (v10)
  {
    v16 = [HKBarSeries barSeriesRoundedRect:v13 cornerRadius:a6, a7, v14, 1.0];
    CGContextSetFillColorWithColor(CurrentContext, [v11 CGColor]);
    CGContextAddPath(CurrentContext, [v16 CGPath]);
    CGContextFillPath(CurrentContext);
  }

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

@end
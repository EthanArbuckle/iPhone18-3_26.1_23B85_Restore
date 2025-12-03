@interface _WDSelectedRangeIcon
+ (id)_dataLabelImageForPlusSign:(BOOL)sign foregroundColor:(id)color dimension:(double)dimension strokeOffset:(double)offset strokeWidth:(double)width;
+ (id)iconForData:(id)data foregroundColor:(id)color compatibleWithFont:(id)font;
@end

@implementation _WDSelectedRangeIcon

+ (id)iconForData:(id)data foregroundColor:(id)color compatibleWithFont:(id)font
{
  dataCopy = data;
  colorCopy = color;
  fontCopy = font;
  v10 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  statisticsType = [dataCopy statisticsType];
  if (statisticsType == 6)
  {
    v12 = 1;
    goto LABEL_5;
  }

  if (statisticsType == 7)
  {
    v12 = 0;
LABEL_5:
    v13 = [_WDSelectedRangeIcon _dataLabelImageForPlusSign:v12 foregroundColor:colorCopy dimension:10.0 strokeOffset:1.0 strokeWidth:1.5];
    [v10 setImage:v13];
  }

  dataType = [dataCopy dataType];
  switch(dataType)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_11;
    case 3:
    case 4:
    case 28:
    case 29:
      [fontCopy capHeight];
      v16 = [HKChartSeriesPointMarker chartPointWithColor:colorCopy radius:0 style:v15 * 0.5];
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
      mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
      features = [mEMORY[0x1E696C608] features];
      yodel = [features yodel];

      if (!yodel || [dataCopy statisticsType] == 3)
      {
        goto LABEL_29;
      }

      metadata = [dataCopy metadata];
      [fontCopy capHeight];
      v35 = v43 / 1.5;
      v36 = metadata;
      v37 = 1;
      goto LABEL_37;
    case 8:
      mEMORY[0x1E696C608]2 = [MEMORY[0x1E696C608] sharedBehavior];
      features2 = [mEMORY[0x1E696C608]2 features];
      yodel2 = [features2 yodel];

      if (!yodel2 || [dataCopy statisticsType] == 3)
      {
        goto LABEL_29;
      }

      metadata = [dataCopy metadata];
      [fontCopy capHeight];
      v35 = v34 / 1.5;
      v36 = metadata;
      v37 = 2;
LABEL_37:
      hk_reproductiveHealthKeyColor = [HKAudiogramLineSeries filledSymbolUsingMetadata:v36 forEar:v37 radius:1 useEarSpecificColor:v35];

      [fontCopy capHeight];
      v45 = v44;
      [hk_reproductiveHealthKeyColor size];
      v47 = (v45 - v46) * 0.5;
      [hk_reproductiveHealthKeyColor size];
      v49 = v48;
      [hk_reproductiveHealthKeyColor size];
      [v10 setBounds:{0.0, v47, v49, v50}];
      goto LABEL_27;
    case 9:
      v16 = [HKSleepPeriodSeries inBedImageCompatibleWithFont:fontCopy withColor:colorCopy];
      goto LABEL_26;
    case 10:
      v16 = [HKSleepPeriodSeries asleepImageCompatibleWithFont:fontCopy withColor:colorCopy];
      goto LABEL_26;
    case 11:
      hk_reproductiveHealthKeyColor = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      v22 = 4.0;
      goto LABEL_19;
    case 12:
      hk_reproductiveHealthKeyColor = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      v22 = 4.0;
      v23 = hk_reproductiveHealthKeyColor;
      v24 = 1;
      goto LABEL_20;
    case 33:
      mEMORY[0x1E696C608]3 = [MEMORY[0x1E696C608] sharedBehavior];
      features3 = [mEMORY[0x1E696C608]3 features];
      yodel3 = [features3 yodel];

      if (!yodel3)
      {
        goto LABEL_29;
      }

      hk_hearingHealthAudiogramLeftEarPointMarkerColor = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramLeftEarPointMarkerColor];
      goto LABEL_18;
    case 34:
      mEMORY[0x1E696C608]4 = [MEMORY[0x1E696C608] sharedBehavior];
      features4 = [mEMORY[0x1E696C608]4 features];
      yodel4 = [features4 yodel];

      if (!yodel4)
      {
        goto LABEL_29;
      }

      hk_hearingHealthAudiogramLeftEarPointMarkerColor = [MEMORY[0x1E69DC888] hk_hearingHealthAudiogramRightEarPointMarkerColor];
LABEL_18:
      hk_reproductiveHealthKeyColor = hk_hearingHealthAudiogramLeftEarPointMarkerColor;
      [fontCopy capHeight];
      v22 = v28 * 0.5;
LABEL_19:
      v23 = hk_reproductiveHealthKeyColor;
      v24 = 0;
LABEL_20:
      v29 = [HKChartSeriesPointMarker chartPointWithColor:v23 radius:v24 style:v22];
      [v10 setImage:v29];

      goto LABEL_28;
    default:
      if (dataType == 41)
      {
LABEL_11:
        v16 = [HKBloodPressureSeries diastolicImageCompatibleWithFont:fontCopy withColor:colorCopy];
      }

      else
      {
        if (dataType != 40)
        {
          goto LABEL_29;
        }

LABEL_10:
        v16 = [HKBloodPressureSeries systolicImageCompatibleWithFont:fontCopy withColor:colorCopy];
      }

LABEL_26:
      hk_reproductiveHealthKeyColor = v16;
LABEL_27:
      [v10 setImage:hk_reproductiveHealthKeyColor];
LABEL_28:

LABEL_29:
      image = [v10 image];

      if (image)
      {
        image = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
      }

      return image;
  }
}

+ (id)_dataLabelImageForPlusSign:(BOOL)sign foregroundColor:(id)color dimension:(double)dimension strokeOffset:(double)offset strokeWidth:(double)width
{
  signCopy = sign;
  colorCopy = color;
  v20.width = dimension;
  v20.height = dimension;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v13 = dimension * 0.5 - width * 0.5;
  v14 = dimension + offset * -2.0;
  v15 = [HKBarSeries barSeriesRoundedRect:offset cornerRadius:v13, v14, width, 1.0];
  CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
  CGContextAddPath(CurrentContext, [v15 CGPath]);
  CGContextFillPath(CurrentContext);
  if (signCopy)
  {
    v16 = [HKBarSeries barSeriesRoundedRect:v13 cornerRadius:offset, width, v14, 1.0];
    CGContextSetFillColorWithColor(CurrentContext, [colorCopy CGColor]);
    CGContextAddPath(CurrentContext, [v16 CGPath]);
    CGContextFillPath(CurrentContext);
  }

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

@end
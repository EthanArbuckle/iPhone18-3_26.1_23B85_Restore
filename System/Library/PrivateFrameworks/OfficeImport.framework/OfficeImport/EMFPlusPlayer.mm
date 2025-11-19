@interface EMFPlusPlayer
+ (float)firstTabPosPastPos:(float)a3 stringFormat:(id)a4 isExplicit:(BOOL *)a5;
+ (int)serializableObjectTypeForGUID:(id)a3;
- (EMFPlusPlayer)initWithOwner:(id)a3 canvas:(CGRect)a4;
- (id)canvasInWorldCoordinates;
- (int)play:(const char *)a3 in_size:(unsigned int)a4;
- (int)playBeginContainer:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playBlurEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playBrightnessContrastEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playBrush:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playClear:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playColorBalanceEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playColorCurveEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playColorLUTEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playColorMatrixEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playDrawArc:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawBeziers:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawClosedCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawDriverString:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawEllipse:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawImage:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawImagePoints:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawLines:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawPie:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawRects:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playDrawString:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillClosedCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillEllipse:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillPath:(id)a3 in_pData:(const char *)a4 in_size:(unsigned int)a5 in_flags:(unsigned __int16)a6;
- (int)playFillPie:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillPolygon:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFillRects:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playFont:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playHeader:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playHueSaturationLightnessEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playImage:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playLevelsEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playMultiplyWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playObject:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playPath:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playPen:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playRecord:(int)a3 pData:(const char *)a4 dataSize:(unsigned int)a5 flags:(unsigned __int16)a6;
- (int)playRedEyeCorrectionEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playResetWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playRotateWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playScaleWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSerializableObject:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetAntiAliasMode:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetClipPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetClipRect:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetInterpolationMode:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetPageTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetRenderingOrigin:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSetWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)playSharpenEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playStringFormat:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5;
- (int)playStrokePath:(id)a3 in_pData:(const char *)a4 in_size:(unsigned int)a5 in_flags:(unsigned __int16)a6;
- (int)playTintEffectWithData:(const char *)a3 size:(unsigned int)a4;
- (int)playTranslateWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5;
- (int)readBrush:(const char *)a3 in_size:(unsigned int)a4 returnBrush:(id *)a5;
- (int)readGradientBrush:(id)a3 from:(const char *)a4 brushFlags:(unsigned int)a5 in_size:(unsigned int)a6;
- (int)readImage:(const char *)a3 in_size:(unsigned int)a4 pImage:(id *)a5;
- (int)readPath:(const char *)a3 in_size:(unsigned int)a4 returnPath:(id *)a5;
- (int)setClipPath:(id)a3 flags:(unsigned __int16)a4;
- (void)resetLargeRecord;
@end

@implementation EMFPlusPlayer

- (EMFPlusPlayer)initWithOwner:(id)a3 canvas:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v18.receiver = self;
  v18.super_class = EMFPlusPlayer;
  v11 = [(EMFPlusPlayer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->mOwner, a3);
    v13 = [[MFPGraphics alloc] initWithCanvas:x, y, width, height];
    mGraphics = v12->mGraphics;
    v12->mGraphics = v13;

    v12->mLargeType = 0x4000;
    v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
    mLargeData = v12->mLargeData;
    v12->mLargeData = v15;
  }

  return v12;
}

+ (int)serializableObjectTypeForGUID:(id)a3
{
  v3 = a3;
  v4 = +[EMFPlusPlayer serializableObjectTypeForGUID:]::serializableObjectGUIDToTypeMap;
  if (!+[EMFPlusPlayer serializableObjectTypeForGUID:]::serializableObjectGUIDToTypeMap)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v24 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v6 = +[MFPBlurEffect GUID];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v7 = +[MFPSharpenEffect GUID];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:3];
    +[MFPColorMatrixEffect GUID];
    v33 = v32 = v6;
    v31 = [MEMORY[0x277CCABB0] numberWithInt:4];
    v22 = +[MFPColorLUTEffect GUID];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v29 = +[MFPBrightnessContrastEffect GUID];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v21 = +[MFPHueSaturationLightnessEffect GUID];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:7];
    v20 = +[MFPLevelsEffect GUID];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v19 = +[MFPTintEffect GUID];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:9];
    v18 = +[MFPColorBalanceEffect GUID];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v8 = +[MFPRedEyeCorrectionEffect GUID];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:11];
    v9 = +[MFPColorCurveEffect GUID];
    v10 = [v5 initWithObjectsAndKeys:{v24, v32, v23, v7, v34, v33, v31, v22, v30, v29, v28, v21, v26, v20, v27, v19, v25, v18, v17, v8, v16, v9, 0}];
    v11 = +[EMFPlusPlayer serializableObjectTypeForGUID:]::serializableObjectGUIDToTypeMap;
    +[EMFPlusPlayer serializableObjectTypeForGUID:]::serializableObjectGUIDToTypeMap = v10;

    v4 = +[EMFPlusPlayer serializableObjectTypeForGUID:]::serializableObjectGUIDToTypeMap;
  }

  v12 = [v4 objectForKey:v3];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 intValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)playHeader:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v7 = (a5 & 1) == 0;
  [(EMFPlayer *)self->mOwner setIgnoreEMFPlusRecords:a5 & 1, *&a4];
  [(EMFPlayer *)self->mOwner setIgnoreEMFRecords:v7];
  [(MFPGraphics *)self->mGraphics setHorizontalDpi:*(a3 + 2) verticalDpi:*(a3 + 3)];
  return 0;
}

- (int)readImage:(const char *)a3 in_size:(unsigned int)a4 pImage:(id *)a5
{
  *a5 = 0;
  v5 = a4 - 8;
  if (a4 < 8)
  {
    return -7;
  }

  v7 = *(a3 + 1);
  if (v7 == 2)
  {
    if (v5 >= 8)
    {
      v10 = a4 - 16;
      if (*(a3 + 3) == v10)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 + 16 length:v10];
        *a5 = [[MFPMetafileImage alloc] initWithMetafileData:v11];

        return 0;
      }
    }

    return -7;
  }

  if (v7 != 1 || v5 < 0x14)
  {
    return -7;
  }

  v8 = *(a3 + 6);
  if (!v8)
  {
    return v8;
  }

  if (v8 != 1)
  {
    return -7;
  }

  if (*(a3 + 2) | *(a3 + 3) | *(a3 + 4) | *(a3 + 5))
  {
    v8 = -7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 + 28 length:a4 - 28];
  *a5 = [[MFPBitmapImage alloc] initWithBitmapData:v9];

  return v8;
}

- (int)readPath:(const char *)a3 in_size:(unsigned int)a4 returnPath:(id *)a5
{
  if (a4 < 0xC)
  {
    return -7;
  }

  v42 = v20;
  v43 = v19;
  v44 = v18;
  v45 = v17;
  v46 = v14;
  v47 = v13;
  v48 = v12;
  v49 = v11;
  v50 = v10;
  v51 = v9;
  v52 = v8;
  v53 = v7;
  v54 = v6;
  v55 = v5;
  v56 = v15;
  v57 = v16;
  v23 = *(a3 + 1);
  v24 = *(a3 + 9);
  if ((v24 & 0x40) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 3;
  }

  if (v23 > a4)
  {
    return -7;
  }

  v26 = v23 << v25;
  if (v23 + (v23 << v25) + 12 > a4)
  {
    return -7;
  }

  v28 = *(a3 + 8);
  *a5 = objc_alloc_init(OITSUBezierPath);
  if (v23)
  {
    v29 = 0;
    v30 = v28 | (v24 << 8);
    v31 = (a3 + 12);
    if ((v24 & 0x40) != 0)
    {
      v32 = 4;
    }

    else
    {
      v32 = 8;
    }

    v33 = &v31[v26];
    do
    {
      v34 = v33[v29];
      v35 = v34;
      Point = readPoint(v31, v30);
      v31 += v32;
      switch(v34 & 7)
      {
        case 3:
          if (v34 < 0)
          {
            return -7;
          }

          if (v29 + 2 >= v23)
          {
            return -7;
          }

          readPoint(v31, v30);
          if ((v33[v29 + 1] & 0x87) != 3)
          {
            return -7;
          }

          v39 = &v31[v32];
          v40 = readPoint(v39, v30);
          v41 = v33[v29 + 2];
          if ((v41 & 7) != 3)
          {
            return -7;
          }

          v31 = &v39[v32];
          [*a5 curveToPoint:v40 controlPoint1:? controlPoint2:?];
          v38 = 3;
          if ((v41 & 0x80) != 0)
          {
            goto LABEL_20;
          }

          break;
        case 1:
          [*a5 lineToPoint:{Point, v37}];
          v38 = 1;
          if ((v35 & 0x80) != 0)
          {
            goto LABEL_20;
          }

          break;
        case 0:
          if (v34 < 0)
          {
            return -7;
          }

          [*a5 moveToPoint:{Point, v37}];
          v38 = 1;
          break;
        default:
          v38 = 1;
          if (((v35 >> 7) & 1) == 1)
          {
LABEL_20:
            [*a5 closePath];
          }

          break;
      }

      v29 += v38;
    }

    while (v29 < v23);
  }

  return 0;
}

- (int)readGradientBrush:(id)a3 from:(const char *)a4 brushFlags:(unsigned int)a5 in_size:(unsigned int)a6
{
  v7 = a5;
  v9 = a3;
  if ((v7 & 2) != 0)
  {
    v10 = a6 >= 0x18;
    a6 -= 24;
    if (!v10)
    {
LABEL_16:
      v11 = -7;
      goto LABEL_17;
    }

    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    readAffineTransform(*a4, &v43);
    v42[0] = v43;
    v42[1] = v44;
    v42[2] = v45;
    [v9 setTransform:v42];
    *a4 += 24;
  }

  if ((v7 & 8) != 0)
  {
    v12 = a6 - 4;
    if (a6 < 4)
    {
      goto LABEL_16;
    }

    v13 = **a4;
    *a4 += 4;
    if (v12 < 8 * v13)
    {
      goto LABEL_16;
    }

    LODWORD(v38) = v12;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v13];
    if (v13)
    {
      v15 = 0;
      v16 = (4 * v13);
      v17 = v13;
      do
      {
        [MFByteUtils readFloat32FromByteArray:*a4 in_offset:v15, v38];
        v19 = v18;
        [MFByteUtils readFloat32FromByteArray:*a4 in_offset:v16];
        v21 = v20;
        v22 = [MFPBlendStop alloc];
        LODWORD(v23) = v21;
        LODWORD(v24) = v19;
        v25 = [(MFPBlendStop *)v22 initWithFactor:v23 position:v24];
        [v14 addObject:v25];

        v16 = (v16 + 4);
        v15 = (v15 + 4);
        --v17;
      }

      while (v17);
    }

    [v9 setBlend:{v14, v38}];
    v26 = 8 * v13;
    a6 = v39 - 8 * v13;
    *a4 += v26;

    if ((v7 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  if (a6 < 4)
  {
    goto LABEL_16;
  }

  v27 = **a4;
  *a4 += 4;
  if (a6 - 4 < 8 * v27)
  {
    goto LABEL_16;
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v27];
  v40 = v27;
  if (v27)
  {
    v30 = 0;
    v31 = 4 * v27;
    do
    {
      [MFByteUtils readFloat32FromByteArray:*a4 in_offset:v30, v40];
      v33 = v32;
      v34 = [OITSUColor colorWithBinaryRed:(*a4)[v31 + 2] green:(*a4)[v31 + 1] blue:(*a4)[v31] alpha:(*a4)[v31 + 3]];
      v35 = [MFPGradientStop alloc];
      LODWORD(v36) = v33;
      v37 = [(MFPGradientStop *)v35 initWithColor:v34 position:v36];
      [v29 addObject:v37];

      v31 += 4;
      v30 += 4;
    }

    while (4 * v27 != v30);
  }

  [v9 setColorBlend:{v29, v40}];
  *a4 += (8 * v41);

LABEL_7:
  v11 = 0;
LABEL_17:

  return v11;
}

- (int)readBrush:(const char *)a3 in_size:(unsigned int)a4 returnBrush:(id *)a5
{
  v63 = a3;
  v5 = a4 - 8;
  if (a4 < 8)
  {
    return -7;
  }

  v6 = 0;
  v10 = *(a3 + 1);
  if (v10 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        return v6;
      }

      if (v5 < 0xC)
      {
        return -7;
      }

      v18 = *(a3 + 2);
      v19 = [OITSUColor colorWithBinaryRed:*(a3 + 14) green:*(a3 + 13) blue:*(a3 + 12) alpha:*(a3 + 15)];
      v20 = [OITSUColor colorWithBinaryRed:*(a3 + 18) green:*(a3 + 17) blue:*(a3 + 16) alpha:*(a3 + 19)];
      *a5 = [[MFPHatchBrush alloc] initWithHatchStyle:v18 foreColor:v19 backColor:v20];
    }

    else
    {
      if (v5 < 4)
      {
        return -7;
      }

      v19 = [OITSUColor colorWithBinaryRed:*(a3 + 10) green:*(a3 + 9) blue:*(a3 + 8) alpha:*(a3 + 11)];
      *a5 = [[MFPSolidBrush alloc] initWithColor:v19];
    }

    return 0;
  }

  if (v10 != 2)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        return v6;
      }

      if (v5 < 0x28)
      {
        return -7;
      }

      v13 = objc_alloc_init(MFPLinearGradientBrush);
      v14 = *(a3 + 2);
      [(MFPGradientBrush *)v13 setWrapMode:*(a3 + 3)];
      [(MFPLinearGradientBrush *)v13 setBounds:readFloat32Rect(a3 + 16)];
      v15 = [OITSUColor colorWithBinaryRed:*(a3 + 34) green:*(a3 + 33) blue:*(a3 + 32) alpha:*(a3 + 35)];
      [(MFPLinearGradientBrush *)v13 setStartColor:v15];
      v16 = [OITSUColor colorWithBinaryRed:*(a3 + 38) green:*(a3 + 37) blue:*(a3 + 36) alpha:*(a3 + 39)];
      [(MFPLinearGradientBrush *)v13 setEndColor:v16];
      *&v60 = a3 + 48;
      v6 = [(EMFPlusPlayer *)self readGradientBrush:v13 from:&v60 brushFlags:v14 in_size:a4 - 48];
      [(MFPGradientBrush *)v13 createPhoneBrush];
      v17 = v13;
      *a5 = v13;

LABEL_10:
      return v6;
    }

    if (v5 >= 0x18)
    {
      v13 = objc_alloc_init(MFPPathGradientBrush);
      v26 = *(a3 + 8);
      v27 = *(a3 + 9);
      v54 = *(a3 + 10);
      v28 = *(a3 + 11);
      [(MFPGradientBrush *)v13 setWrapMode:*(a3 + 3)];
      [OITSUColor colorWithBinaryRed:*(a3 + 18) green:*(a3 + 17) blue:*(a3 + 16) alpha:*(a3 + 19)];
      v56 = v53 = v27;
      [(MFPLinearGradientBrush *)v13 setCenterColor:v56];
      v55 = v26;
      [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:0];
      v30 = v29;
      [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:4];
      [(MFPLinearGradientBrush *)v13 setCenterPoint:v30, v31];
      v32 = a4 - 32;
      v33 = *(a3 + 7);
      v34 = (a3 + 32);
      v63 = v34;
      if (v33)
      {
        if (v32 < 4 * v33)
        {
          goto LABEL_26;
        }

        v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v33];
        v32 -= 4 * v33;
        do
        {
          v36 = [OITSUColor colorWithBinaryRed:v34[2] green:v34[1] blue:*v34 alpha:v34[3]];
          [v35 addObject:v36];
          v34 += 4;
          v63 = v34;

          LODWORD(v33) = v33 - 1;
        }

        while (v33);
        [(MFPLinearGradientBrush *)v13 setSurroundColors:v35];
      }

      v37 = v32 - 4;
      if (v32 < 4)
      {
        goto LABEL_26;
      }

      v40 = *v34;
      v38 = (v34 + 4);
      v39 = v40;
      v63 = v38;
      if (v37 < v40)
      {
        goto LABEL_26;
      }

      v43 = v55;
      if (v55)
      {
        v57 = 0;
        [(EMFPlusPlayer *)self readPath:v38 in_size:v39 returnPath:&v57];
        v44 = v57;
        v38 = v63;
LABEL_45:
        v63 = &v38[v39];
        [(MFPLinearGradientBrush *)v13 setPath:v44];
        v6 = [(EMFPlusPlayer *)self readGradientBrush:v13 from:&v63 brushFlags:(v54 << 16) | (v53 << 8) | (v28 << 24) | v43 in_size:v37];
        [(MFPGradientBrush *)v13 createPhoneBrush];
        v52 = v13;
        *a5 = v13;

        goto LABEL_10;
      }

      if (v37 >= 8 * v39)
      {
        v44 = objc_alloc_init(OITSUBezierPath);
        if (v39)
        {
          v45 = 0;
          do
          {
            [MFByteUtils readFloat32FromByteArray:&v38[v45 & 0xFFFFFFF8] in_offset:0];
            v47 = v46;
            [MFByteUtils readFloat32FromByteArray:&v38[v45 & 0xFFFFFFF8] in_offset:4];
            v49 = v48;
            v50 = v47;
            v51 = v49;
            if (v45)
            {
              [(OITSUBezierPath *)v44 lineToPoint:v50, v51];
            }

            else
            {
              [(OITSUBezierPath *)v44 moveToPoint:v50, v51];
            }

            v45 += 8;
          }

          while (8 * v39 != v45);
        }

        [(OITSUBezierPath *)v44 closePath];
        v43 = v55;
        LODWORD(v39) = 8 * v39;
        v37 = (v37 - v39);
        goto LABEL_45;
      }

LABEL_26:
    }

    return -7;
  }

  if (v5 < 8)
  {
    return -7;
  }

  v21 = a4 - 16;
  v22 = a3[8];
  v23 = *(a3 + 3);
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  v60 = *MEMORY[0x277CBF2C0];
  v61 = v24;
  v62 = *(MEMORY[0x277CBF2C0] + 32);
  if ((v22 & 2) != 0)
  {
    if (v21 < 0x18)
    {
      return -7;
    }

    v21 = a4 - 40;
    readAffineTransform(a3 + 16, &v60);
    v25 = 40;
  }

  else
  {
    v25 = 16;
  }

  v59 = 0;
  v6 = [(EMFPlusPlayer *)self readImage:&a3[v25] in_size:v21 pImage:&v59];
  v41 = v59;
  if (v41)
  {
    v42 = [MFPTextureBrush alloc];
    v58[0] = v60;
    v58[1] = v61;
    v58[2] = v62;
    *a5 = [(MFPTextureBrush *)v42 initWithImage:v41 wrapMode:v23 transform:v58];
  }

  return v6;
}

- (int)playBrush:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  v5 = a5;
  v11 = 0;
  v7 = [(EMFPlusPlayer *)self readBrush:a3 in_size:*&a4 returnBrush:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = [(MFPGraphics *)self->mGraphics objectTable];
    [v9 setObject:v8 atIndex:v5];
  }

  return v7;
}

- (int)playPen:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MFPPen);
  v10 = a4 - 20;
  if (a4 < 0x14)
  {
    goto LABEL_2;
  }

  v13 = a3[8];
  v14 = a3[9];
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:16];
  [(MFPPen *)v9 setWidth:?];
  v15 = (a3 + 20);
  if ((v13 & 1) == 0)
  {
LABEL_7:
    if ((v13 & 2) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setStartCap:*v15++];
    }

    if ((v13 & 4) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setEndCap:*v15++];
    }

    if ((v13 & 8) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setLineJoin:*v15++];
    }

    if ((v13 & 0x10) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [MFByteUtils readFloat32FromByteArray:v15 in_offset:0];
      [(MFPPen *)v9 setMiterLimit:?];
      ++v15;
    }

    if ((v13 & 0x20) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setDashStyle:*v15++];
    }

    if ((v13 & 0x40) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setDashCap:*v15++];
    }

    if (v13 < 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [MFByteUtils readFloat32FromByteArray:v15 in_offset:0];
      [(MFPPen *)v9 setDashOffset:?];
      ++v15;
    }

    if (v14)
    {
      if (v10 >= 4)
      {
        [(MFPPen *)v9 setDashStyle:5];
        operator new[]();
      }

      goto LABEL_2;
    }

    if ((v14 & 2) != 0)
    {
      v27 = v10 >= 4;
      v10 = (v10 - 4);
      if (!v27)
      {
        goto LABEL_2;
      }

      [(MFPPen *)v9 setAlignment:*v15++];
    }

    if ((v14 & 4) != 0)
    {
      if (v10 >= 4)
      {
        operator new[]();
      }

      goto LABEL_2;
    }

    if ((v14 & 8) != 0)
    {
      if (v10 < 4)
      {
        goto LABEL_2;
      }

      v30 = *v15;
      v27 = v10 >= v30;
      v10 = (v10 - v30);
      if (!v27)
      {
        goto LABEL_2;
      }

      v15 = (v15 + v30);
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_47;
      }
    }

    else if ((v14 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    if (v10 < 4)
    {
      goto LABEL_2;
    }

    v31 = *v15;
    v27 = v10 >= v31;
    v10 = (v10 - v31);
    if (!v27)
    {
      goto LABEL_2;
    }

    v15 = (v15 + v31);
LABEL_47:
    v32 = 0;
    v11 = [(EMFPlusPlayer *)self readBrush:v15 in_size:v10 returnBrush:&v32];
    v28 = v32;
    [(MFPPen *)v9 setBrush:v28];
    v29 = [(MFPGraphics *)self->mGraphics objectTable];
    [v29 setObject:v9 atIndex:v5];

    goto LABEL_3;
  }

  if (v10 >= 0x18)
  {
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:0];
    v17 = v16;
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:4];
    v19 = v18;
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:8];
    v21 = v20;
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:12];
    v23 = v22;
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:16];
    v25 = v24;
    [MFByteUtils readFloat32FromByteArray:a3 + 20 in_offset:20];
    v33[0] = v17;
    v33[1] = v19;
    v33[2] = v21;
    v33[3] = v23;
    v33[4] = v25;
    v33[5] = v26;
    [(MFPPen *)v9 setTransform:v33];
    v10 = a4 - 44;
    v15 = (a3 + 44);
    goto LABEL_7;
  }

LABEL_2:
  v11 = -7;
LABEL_3:

  return v11;
}

- (int)playPath:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  v5 = a5;
  v12 = 0;
  v7 = [(EMFPlusPlayer *)self readPath:a3 in_size:*&a4 returnPath:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = [[MFPPath alloc] initWithPath:v8];
    v10 = [(MFPGraphics *)self->mGraphics objectTable];
    [v10 setObject:v9 atIndex:v5];
  }

  return v7;
}

- (int)playImage:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  v5 = a5;
  v11 = 0;
  v7 = [(EMFPlusPlayer *)self readImage:a3 in_size:*&a4 pImage:&v11];
  v8 = v11;
  if (v8)
  {
    v9 = [(MFPGraphics *)self->mGraphics objectTable];
    [v9 setObject:v8 atIndex:v5];
  }

  return v7;
}

- (int)playFont:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  v5 = a4 - 24;
  if (a4 < 0x18)
  {
    return -7;
  }

  v7 = a5;
  v10 = objc_alloc_init(MFPFont);
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  v12 = v11;
  v13.i32[0] = *(a3 + 5);
  v14 = vshlq_u32(vmovl_u16(*&vmovl_u8(v13)), xmmword_25D6FD710);
  v15 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  v16 = (v15.i32[0] | v15.i32[1]);
  if (v5 >= v16)
  {
    v18 = *(a3 + 2);
    v17 = *(a3 + 3);
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 + 24 length:v16 encoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u)];
    LODWORD(v20) = v12;
    [(MFPFont *)v10 setSize:v20];
    [(MFPFont *)v10 setUnit:v18];
    [(MFPFont *)v10 setFlags:v17];
    [(MFPFont *)v10 setName:v19];
    v21 = [(MFPGraphics *)self->mGraphics objectTable];
    [v21 setObject:v10 atIndex:v7];

    v6 = 0;
  }

  else
  {
    v6 = -7;
  }

  return v6;
}

- (int)playStringFormat:(const char *)a3 in_size:(unsigned int)a4 objectIndex:(unsigned __int8)a5
{
  if (a4 < 0x38)
  {
    return -7;
  }

  v6 = *&a4;
  v26 = a5;
  v8 = objc_alloc_init(MFPStringFormat);
  v9 = *(a3 + 4);
  v10 = *(a3 + 5);
  v11 = *(a3 + 6);
  v12 = *(a3 + 7);
  v14 = *(a3 + 3);
  v13 = *(a3 + 4);
  v28 = *(a3 + 24);
  v29 = *(a3 + 10);
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:28];
  v16 = v15;
  v17 = v9 | (v10 << 8) | (v11 << 16) | (v12 << 24);
  v18 = *(a3 + 8);
  v19 = *(a3 + 12);
  [(MFPStringFormat *)v8 setFormatFlags:v17];
  [(MFPStringFormat *)v8 setAlignment:v14];
  [(MFPStringFormat *)v8 setLineAlignment:v13];
  [(MFPStringFormat *)v8 setDigitSubstitutionLanguage:v29];
  [(MFPStringFormat *)v8 setDigitSubstitutionMethod:v28];
  LODWORD(v20) = v16;
  [(MFPStringFormat *)v8 setFirstTabOffset:v20];
  [(MFPStringFormat *)v8 setHotkeyPrefix:v18];
  [(MFPStringFormat *)v8 setTrimming:v19];
  v21 = *(a3 + 13);
  if (v21 < 1)
  {
    v24 = [(MFPGraphics *)self->mGraphics objectTable];
    [v24 setObject:v8 atIndex:v26];

    v5 = 0;
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
    v23 = [v22 integerValue];

    if (v23 >= (4 * v21) + 60)
    {
      operator new[]();
    }

    v5 = -7;
  }

  return v5;
}

- (int)playObject:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = HIBYTE(a5) & 0x3F;
  if (v5 > 5)
  {
    if ((HIBYTE(a5) & 0x3Fu) <= 7)
    {
      if (v5 == 6)
      {
        return [(EMFPlusPlayer *)self playFont:a3 in_size:*&a4 objectIndex:a5];
      }

      if (v5 == 7)
      {
        return [(EMFPlusPlayer *)self playStringFormat:a3 in_size:*&a4 objectIndex:a5];
      }
    }

    else
    {
      switch(v5)
      {
        case 8u:
          return [(EMFPlusPlayer *)self playImageAttributes:a3 in_size:*&a4 objectIndex:a5];
        case 9u:
          return [(EMFPlusPlayer *)self playCustomLineCap:a3 in_size:*&a4 objectIndex:a5];
        case 0xAu:
          return [(EMFPlusPlayer *)self playGraphics:a3 in_size:*&a4 objectIndex:a5];
      }
    }
  }

  else if ((HIBYTE(a5) & 0x3Fu) <= 2)
  {
    if (v5 == 1)
    {
      return [(EMFPlusPlayer *)self playBrush:a3 in_size:*&a4 objectIndex:a5];
    }

    if (v5 == 2)
    {
      return [(EMFPlusPlayer *)self playPen:a3 in_size:*&a4 objectIndex:a5];
    }
  }

  else
  {
    switch(v5)
    {
      case 3u:
        return [(EMFPlusPlayer *)self playPath:a3 in_size:*&a4 objectIndex:a5];
      case 4u:
        return [(EMFPlusPlayer *)self playRegion:a3 in_size:*&a4 objectIndex:a5];
      case 5u:
        return [(EMFPlusPlayer *)self playImage:a3 in_size:*&a4 objectIndex:a5];
    }
  }

  return 0;
}

- (id)canvasInWorldCoordinates
{
  [(MFPGraphics *)self->mGraphics canvas];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = TCCurrentGraphicsContext();
  memset(&v15, 0, sizeof(v15));
  CGContextGetCTM(&v15, v10);
  v13 = v15;
  CGAffineTransformInvert(&v14, &v13);
  v15 = v14;
  v11 = [OITSUBezierPath bezierPathWithRect:v3, v5, v7, v9];
  v14 = v15;
  [v11 transformUsingAffineTransform:&v14];

  return v11;
}

- (int)playFillPath:(id)a3 in_pData:(const char *)a4 in_size:(unsigned int)a5 in_flags:(unsigned __int16)a6
{
  v9 = a3;
  v10 = *a4;
  if ((a6 & 0x8000) != 0)
  {
    v12 = [OITSUColor colorWithBinaryRed:*(a4 + 2) green:*(a4 + 1) blue:*a4 alpha:*(a4 + 3)];
    v14 = [[MFPSolidBrush alloc] initWithColor:v12];
  }

  else
  {
    v11 = [(MFPGraphics *)self->mGraphics objectTable];
    v12 = [v11 objectAtIndex:v10];

    v13 = objc_opt_class();
    v14 = TSUDynamicCast(v13, v12);
    if (!v14)
    {
      v15 = objc_opt_class();
      v16 = TSUDynamicCast(v15, v12);
      v14 = [v16 brush];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFPGraphics *)self->mGraphics fillPath:v9 brush:v14];
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

- (int)playStrokePath:(id)a3 in_pData:(const char *)a4 in_size:(unsigned int)a5 in_flags:(unsigned __int16)a6
{
  v6 = a6;
  v8 = a3;
  v9 = [(MFPGraphics *)self->mGraphics objectTable];
  v10 = [v9 objectAtIndex:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFPGraphics *)self->mGraphics strokePath:v8 pen:v10];
    v11 = 0;
  }

  else
  {
    v11 = -7;
  }

  return v11;
}

- (int)playClear:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v7 = [(EMFPlusPlayer *)self canvasInWorldCoordinates:a3];
  v8 = [OITSUColor colorWithBinaryRed:*(a3 + 2) green:*(a3 + 1) blue:*a3 alpha:*(a3 + 3)];
  v9 = [[MFPSolidBrush alloc] initWithColor:v8];
  [(MFPGraphics *)self->mGraphics fillPath:v7 brush:v9];

  return 0;
}

- (int)playFillEllipse:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  v9 = [OITSUBezierPath bezierPathWithOvalInRect:readRect(a3 + 4, a5)];
  LODWORD(v5) = [(EMFPlusPlayer *)self playFillPath:v9 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playDrawEllipse:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  v9 = [OITSUBezierPath bezierPathWithOvalInRect:readRect(a3, a5)];
  LODWORD(v5) = [(EMFPlusPlayer *)self playStrokePath:v9 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playFillRects:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  v9 = objc_alloc_init(OITSUBezierPath);
  if (v6 >= 8)
  {
    v11 = *(a3 + 7);
    v12 = *(a3 + 4) | (*(a3 + 5) << 8) | (*(a3 + 6) << 16) & 0xFFFFFF | (v11 << 24);
    if ((v5 & 0x4000) != 0)
    {
      v13 = 8;
    }

    else
    {
      v13 = 16;
    }

    v14 = v12 * v13;
    v10 = -7;
    if ((v14 & 0xFFFFFFFF00000000) == 0 && v14 <= v6)
    {
      if (v12)
      {
        v15 = (a3 + 8);
        v16 = (v11 << 24) + (*(a3 + 6) << 16) + (*(a3 + 5) << 8) + *(a3 + 4);
        do
        {
          [(OITSUBezierPath *)v9 appendBezierPathWithRect:readRect(v15, v5)];
          v15 += v13;
          --v16;
        }

        while (v16);
      }

      v10 = [(EMFPlusPlayer *)self playFillPath:v9 in_pData:a3 in_size:v6 in_flags:v5];
    }
  }

  else
  {
    v10 = -7;
  }

  return v10;
}

- (int)playDrawRects:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 < 4)
  {
    return -7;
  }

  v5 = a5;
  v6 = *&a4;
  v8 = *a3;
  v9 = *(a3 + 1);
  v10 = *(a3 + 2);
  v11 = *(a3 + 3);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a4];
  v13 = [v12 integerValue];
  v24 = v8;
  v14 = v8 | (v9 << 8) | (v10 << 16) & 0xFFFFFF | (v11 << 24);
  v15 = (v5 & 0x4000) != 0 ? 3 : 4;
  v16 = ((v14 << v15) + 4);

  if (v13 < v16)
  {
    return -7;
  }

  v18 = objc_alloc_init(OITSUBezierPath);
  if (v14)
  {
    v19 = v10 << 16;
    v20 = (a3 + 4);
    if ((v5 & 0x4000) != 0)
    {
      v21 = 8;
    }

    else
    {
      v21 = 16;
    }

    v22 = (v11 << 24) + v19 + (v9 << 8) + v24;
    do
    {
      [(OITSUBezierPath *)v18 appendBezierPathWithRect:readRect(v20, v5)];
      v20 += v21;
      --v22;
    }

    while (v22);
  }

  v17 = [(EMFPlusPlayer *)self playStrokePath:v18 in_pData:a3 in_size:v6 in_flags:v5];

  return v17;
}

- (int)playFillPolygon:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a4 - 8;
  if (a4 < 8)
  {
    return -7;
  }

  v7 = a5;
  v9 = objc_alloc_init(OITSUBezierPath);
  v10 = *(a3 + 1);
  if ((v7 & 0x4000) != 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  if (v10)
  {
    v12 = v5 >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = (a3 + 8);
    v15 = 1;
    do
    {
      Point = readPoint(v14, v7);
      if (v15 == 1)
      {
        [(OITSUBezierPath *)v9 moveToPoint:Point];
      }

      else
      {
        [(OITSUBezierPath *)v9 lineToPoint:Point];
      }

      v13 = (v5 - v11);
      if (v15 >= v10)
      {
        break;
      }

      v14 += v11;
      ++v15;
      LODWORD(v5) = v5 - v11;
    }

    while (v5 >= v11);
  }

  else
  {
    v13 = v5;
  }

  [(OITSUBezierPath *)v9 closePath];
  v6 = [(EMFPlusPlayer *)self playFillPath:v9 in_pData:a3 in_size:v13 in_flags:v7];

  return v6;
}

- (int)playDrawLines:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v9 = objc_alloc_init(OITSUBezierPath);
  v10 = a4 >= 4;
  v11 = a4 - 4;
  if (v10)
  {
    v13 = *a3;
    if ((v5 & 0x4000) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 8;
    }

    if (!v13)
    {
LABEL_14:
      v12 = [(EMFPlusPlayer *)self playStrokePath:v9 in_pData:a3 in_size:v11 in_flags:v5];
      goto LABEL_15;
    }

    v15 = 0;
    v16 = (a3 + 4);
    while (1)
    {
      v10 = v11 >= v14;
      v11 = (v11 - v14);
      if (!v10)
      {
        break;
      }

      Point = readPoint(v16, v5);
      if (v15)
      {
        [(OITSUBezierPath *)v9 lineToPoint:Point];
      }

      else
      {
        [(OITSUBezierPath *)v9 moveToPoint:Point];
      }

      v16 += v14;
      if (v13 == ++v15)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = -7;
LABEL_15:

  return v12;
}

- (int)playDrawArc:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v10 = v9;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  v12 = v11;
  Rect = readRect(a3 + 8, v5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v20 appendBezierPathWithArcWithEllipseBounds:1 startAngle:1 swingAngle:Rect angleType:v15 startNewPath:v17, v19, v10, v12];
  LODWORD(v5) = [(EMFPlusPlayer *)self playStrokePath:v20 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playFillPie:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  v10 = v9;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:8];
  v12 = v11;
  Rect = readRect(a3 + 12, v5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v20 moveToPoint:TSUCenterOfRect(Rect, v15, v17, v19)];
  [(OITSUBezierPath *)v20 appendBezierPathWithArcWithEllipseBounds:1 startAngle:0 swingAngle:Rect angleType:v15 startNewPath:v17, v19, v10, v12];
  [(OITSUBezierPath *)v20 closePath];
  LODWORD(v5) = [(EMFPlusPlayer *)self playFillPath:v20 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playDrawPie:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v10 = v9;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  v12 = v11;
  Rect = readRect(a3 + 8, v5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_alloc_init(OITSUBezierPath);
  [(OITSUBezierPath *)v20 moveToPoint:TSUCenterOfRect(Rect, v15, v17, v19)];
  [(OITSUBezierPath *)v20 appendBezierPathWithArcWithEllipseBounds:1 startAngle:0 swingAngle:Rect angleType:v15 startNewPath:v17, v19, v10, v12];
  [(OITSUBezierPath *)v20 closePath];
  LODWORD(v5) = [(EMFPlusPlayer *)self playStrokePath:v20 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playDrawBeziers:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4 - 4;
  if (a4 >= 4)
  {
    v7 = a5;
    v10 = objc_alloc_init(OITSUBezierPath);
    if ((v7 & 0x4000) != 0)
    {
      v11 = 4;
    }

    else
    {
      v11 = 8;
    }

    v12 = v5 - v11;
    if (v5 >= v11)
    {
      v13 = *a3;
      [(OITSUBezierPath *)v10 moveToPoint:readPoint(a3 + 4, v7)];
      v24 = self;
      v25 = a3;
      if ((v13 - 1) < 3)
      {
LABEL_20:
        v6 = [(EMFPlusPlayer *)v24 playStrokePath:v10 in_pData:v25 in_size:v12 in_flags:v7, v24, v25];
        goto LABEL_21;
      }

      v14 = 0;
      v15 = &a3[v11 + 4];
      if ((v7 & 0x4000) != 0)
      {
        v16 = 12;
      }

      else
      {
        v16 = 24;
      }

      if ((v13 - 1) / 3u <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = (v13 - 1) / 3u;
      }

      while (1)
      {
        v18 = v12 >= v16;
        v12 = v12 - v16;
        if (!v18)
        {
          break;
        }

        v19 = 0;
        v26 = *MEMORY[0x277CBF348];
        v27 = v26;
        v28 = v26;
        do
        {
          Point = readPoint(v15, v7);
          v21 = &v26 + v19;
          *v21 = Point;
          *(v21 + 1) = v22;
          v15 += v11;
          v19 += 16;
        }

        while (v19 != 48);
        [(OITSUBezierPath *)v10 curveToPoint:v28 controlPoint1:v26 controlPoint2:v27];
        if (++v14 == v17)
        {
          goto LABEL_20;
        }
      }
    }

    v6 = -7;
LABEL_21:

    return v6;
  }

  return -7;
}

- (int)playFillClosedCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v8 = objc_alloc_init(OITSUBezierPath);
  if (a4 >= 0xC)
  {
    [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
    if ((a5 & 0x4000) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    if (a4 - 12 >= (*(a3 + 8) | (*(a3 + 9) << 8) | (*(a3 + 10) << 16) & 0xFFFFFF | (*(a3 + 11) << 24)) << v9)
    {
      operator new[]();
    }
  }

  return -7;
}

- (int)playDrawClosedCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 < 8)
  {
    return -7;
  }

  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v8 = *(a3 + 4) | (*(a3 + 5) << 8) | (*(a3 + 6) << 16) & 0xFFFFFF | (*(a3 + 7) << 24);
  if ((a5 & 0x4000) != 0)
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  v10 = v9 * v8;
  v11 = (v10 & 0xFFFFFFFF00000000) != 0;
  v12 = __CFADD__(v10, 8);
  v13 = v10 + 8;
  if (v12)
  {
    v11 = 1;
  }

  if (!v11 || v13 > a4)
  {
    return -7;
  }

  if (v8)
  {
    v17 = objc_alloc_init(OITSUBezierPath);
    operator new[]();
  }

  return 0;
}

- (int)playDrawCurve:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 >= 0x10)
  {
    if ((a5 & 0x4000) != 0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    v7 = (a4 - 16) >> v6;
    [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
    v8 = *(a3 + 3);
    if (v8 - 1 < v7)
    {
      v9 = *(a3 + 4) | (*(a3 + 5) << 8) | (*(a3 + 6) << 16) & 0xFFFFFF | (*(a3 + 7) << 24);
      v10 = *(a3 + 8) | (*(a3 + 9) << 8) | (*(a3 + 10) << 16) & 0xFFFFFF | (*(a3 + 11) << 24);
      if (!__CFADD__(v10, v9) && v10 + v9 <= v8)
      {
        objc_alloc_init(OITSUBezierPath);
        operator new[]();
      }
    }
  }

  return -7;
}

- (int)playDrawPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v8 = [(MFPGraphics *)self->mGraphics objectTable:a3];
  v9 = [v8 objectAtIndex:v5];

  v10 = *a3;
  v11 = [(MFPGraphics *)self->mGraphics objectTable];
  v12 = [v11 objectAtIndex:v10];

  mGraphics = self->mGraphics;
  v14 = [v9 path];
  [(MFPGraphics *)mGraphics strokePath:v14 pen:v12];

  return 0;
}

- (int)playFillPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = *&a4;
  v9 = [(MFPGraphics *)self->mGraphics objectTable];
  v10 = [v9 objectAtIndex:v5];

  v11 = [v10 path];
  LODWORD(v5) = [(EMFPlusPlayer *)self playFillPath:v11 in_pData:a3 in_size:v6 in_flags:v5];

  return v5;
}

- (int)playDrawImage:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v8 = [(MFPGraphics *)self->mGraphics objectTable:a3];
  v9 = [v8 objectAtIndex:a5];

  v10 = *(a3 + 2);
  readFloat32Rect(a3 + 8);
  [v9 drawInRect:v10 fromRect:self->mEffect unit:readRect(a3 + 24 effect:a5)];

  return 0;
}

- (int)playDrawImagePoints:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = [(MFPGraphics *)self->mGraphics objectTable:a3];
  v9 = [v8 objectAtIndex:a5];

  v10 = *(a3 + 2);
  Float32Rect = readFloat32Rect(a3 + 8);
  if (*(a3 + 12) == 3)
  {
    v15 = Float32Rect;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = 0;
    v20 = a3 + 28;
    if ((a5 & 0x4000) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    v22 = &v35[0].f64[1];
    do
    {
      *(v22 - 1) = readPoint(&v20[v19 << v21], a5);
      *v22 = v23;
      ++v19;
      v22 += 2;
    }

    while (v19 != 3);
    v24 = TCCurrentGraphicsContext();
    CGContextSaveGState(v24);
    memset(&v34, 0, sizeof(v34));
    CGContextGetCTM(&v34, v24);
    v32 = v34;
    CGAffineTransformInvert(&transform, &v32);
    CGContextConcatCTM(v24, &transform);
    v25 = 0;
    v26 = *&v34.a;
    v27 = *&v34.c;
    v28 = *&v34.tx;
    do
    {
      v35[v25] = vaddq_f64(v28, vmlaq_n_f64(vmulq_n_f64(v27, v35[v25].f64[1]), v26, v35[v25].f64[0]));
      ++v25;
    }

    while (v25 != 3);
    v29 = vdupq_n_s64(0x4059000000000000uLL);
    *&transform.a = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(v35[1], v35[0]), v29)));
    *&transform.c = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vsubq_f64(v35[2], v35[0]), v29)));
    *&transform.tx = vcvtq_f64_f32(vcvt_f32_f64(v35[0]));
    CGContextConcatCTM(v24, &transform);
    [v9 drawInRect:v10 fromRect:self->mEffect unit:0.0 effect:{0.0, 100.0, 100.0, v15, v16, v17, v18}];
    CGContextRestoreGState(v24);
    v30 = 0;
  }

  else
  {
    v30 = -7;
  }

  return v30;
}

+ (float)firstTabPosPastPos:(float)a3 stringFormat:(id)a4 isExplicit:(BOOL *)a5
{
  v7 = a4;
  v8 = v7;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  v9 = [v7 tabStopCount];
  [v8 firstTabOffset];
  if (v9 < 1 || (v11 = v10, v10 < 0.0))
  {
    if (a5)
    {
      *a5 = 0;
    }

LABEL_16:
    v11 = a3;
    goto LABEL_17;
  }

  v12 = 0;
  do
  {
    if (a5)
    {
      *a5 = v12 < v9;
    }

    v13 = [v8 tabStops];
    if (v12 >= v9 - 1)
    {
      v14 = v9 - 1;
    }

    else
    {
      v14 = v12;
    }

    v11 = v11 + *(v13 + 4 * v14);
    ++v12;
  }

  while (v11 <= a3);
LABEL_17:

  return v11;
}

- (int)playDrawString:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 >= 0x1C)
  {
    v6 = 2 * *(a3 + 4);
    if (v6 + 28 <= a4)
    {
      v130 = *(a3 + 4);
      v10 = [(MFPGraphics *)self->mGraphics objectTable];
      v11 = [v10 objectAtIndex:a5];

      v123 = v11;
      v12 = [v11 flags];
      v13 = [v11 createCTFontWithGraphics:self->mGraphics];
      Size = CTFontGetSize(v13);
      Ascent = CTFontGetAscent(v13);
      v14 = *a3;
      if ((a5 & 0x8000) != 0)
      {
        v17 = [OITSUColor colorWithBinaryRed:*(a3 + 2) green:*(a3 + 1) blue:v14 alpha:*(a3 + 3)];
      }

      else
      {
        v15 = [(MFPGraphics *)self->mGraphics objectTable];
        v16 = [v15 objectAtIndex:v14];

        v17 = [v16 color];
      }

      v124 = v17;
      if (!v17)
      {
        v7 = 0;
LABEL_82:

        return v7;
      }

      v18 = TCCurrentGraphicsContext();
      CGContextSaveGState(v18);
      [v17 set];
      v19 = *(a3 + 4);
      v20 = *(a3 + 5);
      v21 = [(MFPGraphics *)self->mGraphics objectTable];
      v22 = [v21 objectAtIndex:v19 | (v20 << 8)];

      v23 = [v22 formatFlags];
      Float32Rect = readFloat32Rect(a3 + 12);
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 + 28 length:v6 encoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u)];
      v128 = v22;
      if (v22)
      {
        rect = [v22 alignment];
        v114 = [v22 lineAlignment];
        v32 = [v22 trimming];
      }

      else
      {
        v114 = 0;
        rect = 0;
        v32 = 1;
      }

      v33 = CTFontGetAscent(v13);
      Descent = CTFontGetDescent(v13);
      Leading = CTFontGetLeading(v13);
      if ((v23 & 0x1000) == 0)
      {
        v144.origin.x = Float32Rect;
        v144.origin.y = v26;
        v144.size.width = v28;
        v144.size.height = v30;
        if (CGRectGetWidth(v144) > 0.0)
        {
          v145.origin.x = Float32Rect;
          v145.origin.y = v26;
          v145.size.width = v28;
          v145.size.height = v30;
          CGRectGetWidth(v145);
        }
      }

      characters = 32;
      font = CTFontCopyGraphicsFont(v13, 0);
      CTFontGetGlyphsForCharacters(v13, &characters, glyphs, 1);
      v112 = Descent;
      CTFontGetAdvancesForGlyphs(v13, kCTFontOrientationDefault, glyphs, 0, 1);
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v125 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" \t\n"];
      v138 = 0;
      v134 = v31;
      if (v130)
      {
        operator new();
      }

      v37 = v139;
      v36 = v140;
      v146.origin.x = Float32Rect;
      v146.origin.y = v26;
      v146.size.width = v28;
      v146.size.height = v30;
      MinY = CGRectGetMinY(v146);
      v147.origin.x = Float32Rect;
      v147.origin.y = v26;
      v147.size.width = v28;
      v147.size.height = v30;
      Height = CGRectGetHeight(v147);
      v148.origin.x = Float32Rect;
      v148.origin.y = v26;
      v148.size.width = v28;
      v148.size.height = v30;
      v40 = CGRectGetHeight(v148);
      v41 = v36 - v37;
      v42 = v33 + v112 + Leading;
      v127 = v42;
      v43 = (v42 * (v41 >> 3));
      v44 = MinY + Height * v114 * 0.5 - vcvtd_n_f64_u32(v114 * v43, 1uLL);
      v131 = v44;
      v45 = (v41 >> 3) - 1;
      if (v40 <= 0.0 || (v149.origin.x = Float32Rect, v149.origin.y = v26, v149.size.width = v28, v149.size.height = v30, CGRectGetHeight(v149) >= v43))
      {
        v54 = 0;
      }

      else
      {
        v150.origin.x = Float32Rect;
        v150.origin.y = v26;
        v150.size.width = v28;
        v150.size.height = v30;
        v46 = CGRectGetMinY(v150);
        v151.origin.x = Float32Rect;
        v151.origin.y = v26;
        v151.size.width = v28;
        v151.size.height = v30;
        MaxY = CGRectGetMaxY(v151);
        v48 = (v46 - v131) / v127;
        v49 = floorf(v48);
        v50 = ceilf(v48);
        if ((v23 & 0x2000) == 0)
        {
          v50 = v49;
        }

        v51 = (MaxY - v131) / v127;
        v52 = ceilf(v51);
        v53 = floorf(v51);
        if ((v23 & 0x2000) == 0)
        {
          v53 = v52;
        }

        if (v45 >= v50)
        {
          v54 = v50;
        }

        else
        {
          v54 = (v41 >> 3) - 1;
        }

        if (v45 >= v53)
        {
          v45 = v53;
        }
      }

      v152.origin.x = Float32Rect;
      v152.origin.y = v26;
      v152.size.width = v28;
      v152.size.height = v30;
      if (CGRectGetWidth(v152) != 0.0 || (v153.origin.x = Float32Rect, v153.origin.y = v26, v153.size.width = v28, v153.size.height = v30, CGRectGetHeight(v153) != 0.0))
      {
        v154.origin.x = Float32Rect;
        v154.origin.y = v26;
        v154.size.width = v28;
        v154.size.height = v30;
        v55 = CGRectGetMinY(v154);
        v155.origin.x = Float32Rect;
        v155.origin.y = v26;
        v155.size.width = v28;
        v155.size.height = v30;
        v56 = CGRectGetMaxY(v155);
        v156.origin.x = Float32Rect;
        v156.origin.y = v26;
        v156.size.width = v28;
        v156.size.height = v30;
        v57 = CGRectGetHeight(v156);
        if (v57 == 0.0)
        {
          v60 = v43 + v131;
        }

        else
        {
          v59 = v56;
          v60 = v59;
        }

        if (v57 == 0.0)
        {
          v61 = v131;
        }

        else
        {
          v58 = v55;
          v61 = v58;
        }

        v132 = v61;
        v157.origin.x = Float32Rect;
        v157.origin.y = v26;
        v157.size.width = v28;
        v157.size.height = v30;
        MinX = CGRectGetMinX(v157);
        v158.origin.x = Float32Rect;
        v158.origin.y = v26;
        v158.size.width = v28;
        v158.size.height = v30;
        MaxX = CGRectGetMaxX(v158);
        v159.origin.x = Float32Rect;
        v159.origin.y = v26;
        v159.size.width = v28;
        v159.size.height = v30;
        if (CGRectGetWidth(v159) == 0.0)
        {
          if ((v41 >> 3))
          {
            v64 = v139;
            v65 = (v41 >> 3);
            v66 = 0.0;
            do
            {
              v67 = *v64++;
              v68 = *(v67 + 24) + *(v67 + 28);
              if (v68 > v66)
              {
                v66 = v68;
              }

              --v65;
            }

            while (v65);
          }

          else
          {
            v66 = 0.0;
          }

          v160.origin.x = Float32Rect;
          v160.origin.y = v26;
          v160.size.width = v28;
          v160.size.height = v30;
          v69 = CGRectGetMinX(v160) + (v66 * rect) * -0.5;
          v70 = v66 + v69;
        }

        else
        {
          v69 = MinX;
          v70 = MaxX;
        }

        v71 = v70 - v69;
        if ((v70 - v69) > 0.0 && (v60 - v132) > 0.0)
        {
          v72 = TCCurrentGraphicsContext();
          v161.origin.x = v69;
          v161.origin.y = v132;
          v161.size.width = v71;
          v161.size.height = (v60 - v132);
          CGContextClipToRect(v72, v161);
        }
      }

      v73 = TCCurrentGraphicsContext();
      CGContextSetFont(v73, font);
      v74 = TCCurrentGraphicsContext();
      v75 = CTFontGetSize(v13);
      CGContextSetFontSize(v74, v75);
      if (v54 > v45)
      {
LABEL_51:
        v7 = 0;
LABEL_79:
        CFRelease(font);
        CFRelease(v13);
        v107 = TCCurrentGraphicsContext();
        CGContextRestoreGState(v107);
        destroyPointerVectorElements<EMFPlusDrawStringLine>(&v139);

        if (v139)
        {
          v140 = v139;
          operator delete(v139);
        }

        goto LABEL_82;
      }

      v76 = Size;
      v77 = Ascent;
      v115 = v77;
      v121 = rect;
      v119 = rect;
      recta = (v76 / 12.0);
      v111 = v76 / 10.0;
      v109 = v76 * 0.05;
      v110 = v76;
      v113 = v45;
      while (1)
      {
        v78 = v12;
        v79 = *&v139[8 * v54];
        v80 = v79[6];
        v81 = v79[7];
        v162.origin.x = Float32Rect;
        v162.origin.y = v26;
        v162.size.width = v28;
        v162.size.height = v30;
        v82 = CGRectGetMinX(v162);
        v163.origin.x = Float32Rect;
        v163.origin.y = v26;
        v163.size.width = v28;
        v163.size.height = v30;
        v83 = v82 + CGRectGetWidth(v163) * v121 * 0.5 - (((v80 + v81) * v119) * 0.5 + 0.0);
        v133 = v83;
        v126 = v54;
        v129 = v131 + (v54 * v127);
        v84 = *v79;
        if (*(v79 + 1) != *v79)
        {
          break;
        }

LABEL_72:
        v102 = v129 + v115;
        v12 = v78;
        if ((v78 & 4) != 0)
        {
          v103 = v79[6];
          v104 = TCCurrentGraphicsContext();
          v166.size.width = v103;
          v166.origin.y = (v111 + v102);
          v166.origin.x = v133;
          v166.size.height = recta;
          CGContextFillRect(v104, v166);
        }

        v31 = v134;
        if ((v78 & 8) != 0)
        {
          v105 = v79[6];
          v106 = TCCurrentGraphicsContext();
          v167.size.width = v105;
          v167.origin.x = v133;
          v167.size.height = v109;
          v167.origin.y = v102 + v110 * -0.28;
          CGContextFillRect(v106, v167);
        }

        v54 = v126 + 1;
        if (v126 + 1 > v113)
        {
          goto LABEL_51;
        }
      }

      v85 = 0;
      while (1)
      {
        v86 = *(v84 + 8 * v85);
        v87 = *v86;
        v88 = malloc_type_malloc(*(v86 + 16) - *(v86 + 8), 0x1000040BDFB0063uLL);
        if (!v88)
        {
          v7 = -4;
          v31 = v134;
          goto LABEL_79;
        }

        v89 = *(v86 + 8);
        if (*(v86 + 16) != v89)
        {
          break;
        }

LABEL_71:
        free(v88);
        ++v85;
        v84 = *v79;
        if (v85 >= (*(v79 + 1) - *v79) >> 3)
        {
          goto LABEL_72;
        }
      }

      v90 = 0;
      v91 = v87 + v133;
      while (1)
      {
        v136 = *(v89 + 2 * v90);
        CTFontGetGlyphsForCharacters(v13, &v136, &v137, 1);
        AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(v13, kCTFontOrientationDefault, &v137, 0, 1);
        v164.origin.x = Float32Rect;
        v164.origin.y = v26;
        v164.size.width = v28;
        v164.size.height = v30;
        v93 = AdvancesForGlyphs;
        if (CGRectGetWidth(v164) <= 0.0 || (v23 & 0x1000) == 0 || v32 == 0)
        {
          v96 = v91;
        }

        else
        {
          v98 = Float32Rect;
          v99 = v26;
          v100 = v28;
          v101 = v30;
          v96 = v91;
          if (CGRectGetMinX(*&v98) > v91)
          {
            goto LABEL_70;
          }

          v165.origin.x = Float32Rect;
          v165.origin.y = v26;
          v165.size.width = v28;
          v165.size.height = v30;
          if (CGRectGetMaxX(v165) < (v91 + v93))
          {
            goto LABEL_70;
          }
        }

        Lpositions.x = v96;
        Lpositions.y = v129;
        v97 = TCCurrentGraphicsContext();
        CGContextShowGlyphsAtPositions(v97, &v137, &Lpositions, 1uLL);
LABEL_70:
        v91 = v91 + v93;
        ++v90;
        v89 = *(v86 + 8);
        if (v90 >= (*(v86 + 16) - v89) >> 1)
        {
          goto LABEL_71;
        }
      }
    }
  }

  return -7;
}

- (int)playDrawDriverString:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 < 4)
  {
    return 0;
  }

  v5 = a5;
  v9 = *a3;
  if ((a5 & 0x8000) != 0)
  {
    v17 = [OITSUColor colorWithBinaryRed:*(a3 + 2) green:*(a3 + 1) blue:v9 alpha:*(a3 + 3)];
    if (v17)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v10 = [(MFPGraphics *)self->mGraphics objectTable];
  v11 = [v10 objectAtIndex:v9];

  v12 = objc_opt_class();
  v13 = TSUDynamicCast(v12, v11);
  v14 = objc_opt_class();
  v15 = TSUDynamicCast(v14, v11);
  v16 = v15;
  if (!v13 && v15)
  {
    v13 = [v15 brush];
  }

  v17 = [v13 color];

  if (!v17)
  {
    return 0;
  }

LABEL_7:
  a = *MEMORY[0x277CBF2C0];
  v19 = *(MEMORY[0x277CBF2C0] + 8);
  c = *(MEMORY[0x277CBF2C0] + 16);
  v21 = *(MEMORY[0x277CBF2C0] + 24);
  tx = *(MEMORY[0x277CBF2C0] + 32);
  ty = *(MEMORY[0x277CBF2C0] + 40);
  v67 = v17;
  if (a4 < 0xA)
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v24 = 1;
LABEL_15:
    v26 = 16;
    goto LABEL_16;
  }

  v24 = (a3[8] & 1) == 0;
  if (a4 < 0xE)
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_15;
  }

  v25 = *(a3 + 6);
  v26 = 2 * v25 + 16;
  if (v26 <= a4)
  {
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a3 + 16 length:2 * v25 encoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u)];
    v28 = 1;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

LABEL_16:
  std::vector<CGPoint>::vector[abi:ne200100](__p, v25);
  v30 = v28 ^ 1;
  if (!v25)
  {
    v30 = 1;
  }

  if (v30)
  {
    if (v28)
    {
      goto LABEL_25;
    }
  }

  else if (v26 + 16 * v25 <= a4)
  {
    v31 = 0;
    v32 = &a3[v26];
    v33 = v32;
    do
    {
      [MFByteUtils readFloat32FromByteArray:v33 in_offset:0];
      *(__p[0] + v31) = v34;
      [MFByteUtils readFloat32FromByteArray:v33 + 4 in_offset:0];
      *(__p[0] + v31 + 8) = v35;
      v31 += 16;
      v33 += 8;
    }

    while (16 * v25 != v31);
    if (!v24)
    {
      v36 = v67;
      readAffineTransform(&v32[8 * v25], &transform.a);
      a = transform.a;
      c = transform.c;
      v69.a = transform.a;
      v69.b = transform.b;
      d = transform.d;
      b = transform.b;
      v69.c = transform.c;
      v69.d = transform.d;
      v69.tx = 0.0;
      v69.ty = 0.0;
      CGAffineTransformInvert(&transform, &v69);
      v37 = transform.a;
      v19 = transform.b;
      v38 = transform.c;
      v21 = transform.d;
      v62 = 0.0;
      v39 = 1;
      v65 = 0.0;
      tx = transform.tx;
      ty = transform.ty;
      goto LABEL_26;
    }

LABEL_25:
    v39 = 0;
    v62 = ty;
    d = v21;
    b = v19;
    v65 = tx;
    v38 = c;
    v37 = a;
    v36 = v67;
LABEL_26:
    if (self->mGraphics)
    {
      v40 = TCCurrentGraphicsContext();
      CGContextSaveGState(v40);
      [v36 set];
      v41 = [(MFPGraphics *)self->mGraphics objectTable];
      v42 = [v41 objectAtIndex:v5];

      v43 = [v42 createCTFontWithGraphics:self->mGraphics];
      v44 = CTFontCopyGraphicsFont(v43, 0);
      v61 = a;
      Ascent = CTFontGetAscent(v43);
      v46 = TCCurrentGraphicsContext();
      CGContextSetFont(v46, v44);
      v47 = TCCurrentGraphicsContext();
      Size = CTFontGetSize(v43);
      CGContextSetFontSize(v47, Size);
      v49 = Ascent;
      v66 = v49;
      v50 = 0.0;
      if (v39)
      {
        v60 = v21;
        v51 = TCCurrentGraphicsContext();
        transform.a = v61;
        transform.b = b;
        transform.c = c;
        transform.d = d;
        transform.tx = v65;
        transform.ty = v62;
        CGContextConcatCTM(v51, &transform);
        v52 = v65 + c * v66 + v61 * 0.0;
        v50 = -v52;
      }

      if (v25)
      {
        v53 = 0;
        v54 = v66;
        do
        {
          LOWORD(v69.a) = [v27 characterAtIndex:{v53, *&v60}];
          glyphs = 0;
          CTFontGetGlyphsForCharacters(v43, &v69, &glyphs, 1);
          *&transform.a = *(__p[0] + v53);
          v55 = transform.b - v54;
          v56 = v50 + transform.a;
          transform.a = v50 + transform.a;
          transform.b = transform.b - v54;
          if (v39)
          {
            transform.a = tx + v38 * v55 + v37 * v56;
            transform.b = ty + v21 * v55 + v19 * v56;
          }

          v57 = TCCurrentGraphicsContext();
          CGContextShowGlyphsAtPositions(v57, &glyphs, &transform, 1uLL);
          ++v53;
        }

        while (v53 != v25);
      }

      v58 = TCCurrentGraphicsContext();
      CGContextRestoreGState(v58);
      CFRelease(v44);
      CFRelease(v43);

      v29 = 0;
    }

    else
    {
      v29 = -1;
    }

    goto LABEL_37;
  }

  v29 = -1;
  v36 = v67;
LABEL_37:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v29;
}

- (int)playBeginContainer:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  Float32Rect = readFloat32Rect(a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = readFloat32Rect(a3 + 16);
  [(MFPGraphics *)self->mGraphics beginContainerWithId:*(a3 + 8) boundsInParent:v5 bounds:Float32Rect boundsUnit:v10, v12, v14, v15, v16, v17, v18];
  return 0;
}

- (int)playSetWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v5 = [(MFPGraphics *)self->mGraphics currentState:readAffineTransform(a3];
  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  [v5 setWorldTransform:v7];

  return 0;
}

- (int)playResetWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = [(MFPGraphics *)self->mGraphics currentState:a3];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8[0] = *MEMORY[0x277CBF2C0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v5 setWorldTransform:v8];

  return 0;
}

- (int)playMultiplyWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v5 = (a5 >> 13) & 1;
  v6 = [(MFPGraphics *)self->mGraphics currentState:readAffineTransform(a3];
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  [v6 multiplyWorldTransformBy:v8 order:v5];

  return 0;
}

- (int)playTranslateWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v9 = v8;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, v9, v10);
  v11 = (v5 >> 13) & 1;
  v12 = [(MFPGraphics *)self->mGraphics currentState];
  v14 = v15;
  [v12 multiplyWorldTransformBy:&v14 order:v11];

  return 0;
}

- (int)playScaleWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v9 = v8;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v9, v10);
  v11 = (v5 >> 13) & 1;
  v12 = [(MFPGraphics *)self->mGraphics currentState];
  v14 = v15;
  [v12 multiplyWorldTransformBy:&v14 order:v11];

  return 0;
}

- (int)playRotateWorldTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, v7 * 3.14159265 / 180.0);
  v8 = (v5 >> 13) & 1;
  v9 = [(MFPGraphics *)self->mGraphics currentState];
  v11 = v12;
  [v9 multiplyWorldTransformBy:&v11 order:v8];

  return 0;
}

- (int)playSetPageTransform:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  mGraphics = self->mGraphics;
  if (mGraphics)
  {
    [(MFPGraphics *)mGraphics pageTransformWithScale:v5 unit:?];
    mGraphics = self->mGraphics;
  }

  v8 = [(MFPGraphics *)mGraphics currentState];
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  [v8 setPageTransform:v10];

  return 0;
}

- (int)setClipPath:(id)a3 flags:(unsigned __int16)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 <= 0xFF)
  {
    [(MFPGraphics *)self->mGraphics areThereOpenContainers];
LABEL_4:
    [v6 addClip];
    goto LABEL_5;
  }

  if ((v4 & 0xFF00) == 0x100)
  {
    goto LABEL_4;
  }

LABEL_5:

  return 0;
}

- (int)playSetClipRect:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v7 = [OITSUBezierPath bezierPathWithRect:readRect(a3, a5)];
  [(EMFPlusPlayer *)self setClipPath:v7 flags:v5];

  return 0;
}

- (int)playSetClipPath:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v7 = [(MFPGraphics *)self->mGraphics objectTable:a3];
  v8 = [v7 objectAtIndex:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 path];
    [(EMFPlusPlayer *)self setClipPath:v9 flags:v5];
  }

  return 0;
}

- (int)playSetRenderingOrigin:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = TCCurrentGraphicsContext();
  v9.width = v5;
  v9.height = v6;
  CGContextSetPatternPhase(v7, v9);
  return 0;
}

- (int)playSetAntiAliasMode:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  v5 = a5;
  v6 = TCCurrentGraphicsContext();
  CGContextSetShouldAntialias(v6, v5 != 0);
  return 0;
}

- (int)playSetInterpolationMode:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if ((a5 - 1) > 6)
  {
    v5 = kCGInterpolationDefault;
  }

  else
  {
    v5 = dword_25D6FD730[(a5 - 1)];
  }

  v6 = TCCurrentGraphicsContext();
  CGContextSetInterpolationQuality(v6, v5);
  return 0;
}

- (int)playBlurEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v7 = v6;
  v8 = *(a3 + 1) != 0;
  v9 = [MFPBlurEffect alloc];
  LODWORD(v10) = v7;
  v11 = [(MFPBlurEffect *)v9 initWithRadius:v8 expandEdge:v10];
  mEffect = self->mEffect;
  self->mEffect = v11;

  return 0;
}

- (int)playSharpenEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:0];
  v7 = v6;
  [MFByteUtils readFloat32FromByteArray:a3 in_offset:4];
  v9 = v8;
  v10 = [MFPSharpenEffect alloc];
  LODWORD(v11) = v9;
  LODWORD(v12) = v7;
  v13 = [(MFPSharpenEffect *)v10 initWithAmount:v11 radius:v12];
  mEffect = self->mEffect;
  self->mEffect = v13;

  return 0;
}

- (int)playColorMatrixEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v6 = 0;
  v7 = 0;
  v15 = *MEMORY[0x277D85DE8];
  do
  {
    v8 = 5;
    v9 = v6;
    do
    {
      [MFByteUtils readFloat32FromByteArray:a3 in_offset:v9];
      *&v14[v9] = v10;
      v9 += 4;
      --v8;
    }

    while (v8);
    ++v7;
    v6 += 20;
  }

  while (v7 != 5);
  v11 = [[MFPColorMatrixEffect alloc] initWithColorMatrix:v14];
  mEffect = self->mEffect;
  self->mEffect = &v11->super;

  return 0;
}

- (int)playColorLUTEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPColorLUTEffect alloc] initWithLUTA:a3 LUTR:a3 + 256 LUTG:a3 + 512 LUTB:a3 + 768];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playBrightnessContrastEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPBrightnessContrastEffect alloc] initWithBrightness:*a3 contrast:*(a3 + 1)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playHueSaturationLightnessEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPHueSaturationLightnessEffect alloc] initWithHueChange:*a3 saturationChange:*(a3 + 1) lightnessChange:*(a3 + 2)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playLevelsEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPLevelsEffect alloc] initWithHighlight:*a3 midtone:*(a3 + 1) shadow:*(a3 + 2)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playTintEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPTintEffect alloc] initWithHue:*a3 amount:*(a3 + 1)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playColorBalanceEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPColorBalanceEffect alloc] initWithCyanRed:*a3 magentaGreen:*(a3 + 1) yellowBlue:*(a3 + 2)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playRedEyeCorrectionEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v6 = *a3;
  std::vector<CGRect>::vector[abi:ne200100](__p, v6);
  if (v6)
  {
    v7 = 0;
    v8 = (__p[0] + 16);
    do
    {
      v9 = &a3[(v7 & 0xFFFFFFF0) + 8];
      v10 = *v9;
      v11 = v9[2];
      v12 = (v9[4] - v10);
      v13 = (v9[6] - v11);
      *(v8 - 2) = v10;
      *(v8 - 1) = v11;
      *v8 = v12;
      v8[1] = v13;
      v8 += 4;
      v7 += 16;
    }

    while (16 * v6 != v7);
  }

  v14 = [[MFPRedEyeCorrectionEffect alloc] initWithAreas:__p];
  mEffect = self->mEffect;
  self->mEffect = &v14->super;

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

- (int)playColorCurveEffectWithData:(const char *)a3 size:(unsigned int)a4
{
  v5 = [[MFPColorCurveEffect alloc] initWithAdjustment:*a3 channel:*(a3 + 1) adjustValue:*(a3 + 2)];
  mEffect = self->mEffect;
  self->mEffect = &v5->super;

  return 0;
}

- (int)playSerializableObject:(const char *)a3 in_size:(unsigned int)a4 in_flags:(unsigned __int16)a5
{
  if (a4 < 0x14)
  {
    return -7;
  }

  v8 = vmovl_u8(*(a3 + 8));
  v9 = +[EMFPlusPlayer serializableObjectTypeForGUID:](EMFPlusPlayer, "serializableObjectTypeForGUID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%08X-%04hX-%04hX-%02hX%02hX-%02hX%02hX%02hX%02hX%02hX%02hX", *a3, *(a3 + 2), *(a3 + 3), v8.u16[0], v8.u16[1], v8.u16[2], v8.u16[3], v8.u16[4], v8.u16[5], v8.u16[6], v8.u16[7]]);
  result = 0;
  v10 = *(a3 + 8);
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9 == 1)
      {

        return [(EMFPlusPlayer *)self playBlurEffectWithData:a3 + 20 size:v10];
      }

      else if (v9 == 2)
      {

        return [(EMFPlusPlayer *)self playSharpenEffectWithData:a3 + 20 size:v10];
      }
    }

    else if (v9 == 3)
    {

      return [(EMFPlusPlayer *)self playColorMatrixEffectWithData:a3 + 20 size:v10];
    }

    else if (v9 == 4)
    {

      return [(EMFPlusPlayer *)self playColorLUTEffectWithData:a3 + 20 size:v10];
    }

    else
    {

      return [(EMFPlusPlayer *)self playBrightnessContrastEffectWithData:a3 + 20 size:v10];
    }
  }

  else if (v9 > 8)
  {
    switch(v9)
    {
      case 9:

        return [(EMFPlusPlayer *)self playColorBalanceEffectWithData:a3 + 20 size:v10];
      case 10:

        return [(EMFPlusPlayer *)self playRedEyeCorrectionEffectWithData:a3 + 20 size:v10];
      case 11:

        return [(EMFPlusPlayer *)self playColorCurveEffectWithData:a3 + 20 size:v10];
    }
  }

  else if (v9 == 6)
  {

    return [(EMFPlusPlayer *)self playHueSaturationLightnessEffectWithData:a3 + 20 size:v10];
  }

  else if (v9 == 7)
  {

    return [(EMFPlusPlayer *)self playLevelsEffectWithData:a3 + 20 size:v10];
  }

  else
  {

    return [(EMFPlusPlayer *)self playTintEffectWithData:a3 + 20 size:v10];
  }

  return result;
}

- (int)playRecord:(int)a3 pData:(const char *)a4 dataSize:(unsigned int)a5 flags:(unsigned __int16)a6
{
  v6 = a6;
  v7 = *&a5;
  v9 = *&a3;
  v11 = self->mEffect;
  switch(v9)
  {
    case 16385:
      v12 = [(EMFPlusPlayer *)self playHeader:a4 in_size:v7 in_flags:v6];
      break;
    case 16388:
      v12 = [(EMFPlusPlayer *)self playGetDC:a4 in_size:v7 in_flags:v6];
      break;
    case 16392:
      v12 = [(EMFPlusPlayer *)self playObject:a4 in_size:v7 in_flags:v6];
      break;
    case 16393:
      v12 = [(EMFPlusPlayer *)self playClear:a4 in_size:v7 in_flags:v6];
      break;
    case 16394:
      v12 = [(EMFPlusPlayer *)self playFillRects:a4 in_size:v7 in_flags:v6];
      break;
    case 16395:
      v12 = [(EMFPlusPlayer *)self playDrawRects:a4 in_size:v7 in_flags:v6];
      break;
    case 16396:
      v12 = [(EMFPlusPlayer *)self playFillPolygon:a4 in_size:v7 in_flags:v6];
      break;
    case 16397:
      v12 = [(EMFPlusPlayer *)self playDrawLines:a4 in_size:v7 in_flags:v6];
      break;
    case 16398:
      v12 = [(EMFPlusPlayer *)self playFillEllipse:a4 in_size:v7 in_flags:v6];
      break;
    case 16399:
      v12 = [(EMFPlusPlayer *)self playDrawEllipse:a4 in_size:v7 in_flags:v6];
      break;
    case 16400:
      v12 = [(EMFPlusPlayer *)self playFillPie:a4 in_size:v7 in_flags:v6];
      break;
    case 16401:
      v12 = [(EMFPlusPlayer *)self playDrawPie:a4 in_size:v7 in_flags:v6];
      break;
    case 16402:
      v12 = [(EMFPlusPlayer *)self playDrawArc:a4 in_size:v7 in_flags:v6];
      break;
    case 16404:
      v12 = [(EMFPlusPlayer *)self playFillPath:a4 in_size:v7 in_flags:v6];
      break;
    case 16405:
      v12 = [(EMFPlusPlayer *)self playDrawPath:a4 in_size:v7 in_flags:v6];
      break;
    case 16406:
      v12 = [(EMFPlusPlayer *)self playFillClosedCurve:a4 in_size:v7 in_flags:v6];
      break;
    case 16407:
      v12 = [(EMFPlusPlayer *)self playDrawClosedCurve:a4 in_size:v7 in_flags:v6];
      break;
    case 16408:
      v12 = [(EMFPlusPlayer *)self playDrawCurve:a4 in_size:v7 in_flags:v6];
      break;
    case 16409:
      v12 = [(EMFPlusPlayer *)self playDrawBeziers:a4 in_size:v7 in_flags:v6];
      break;
    case 16410:
      v12 = [(EMFPlusPlayer *)self playDrawImage:a4 in_size:v7 in_flags:v6];
      break;
    case 16411:
      v12 = [(EMFPlusPlayer *)self playDrawImagePoints:a4 in_size:v7 in_flags:v6];
      break;
    case 16412:
      v12 = [(EMFPlusPlayer *)self playDrawString:a4 in_size:v7 in_flags:v6];
      break;
    case 16413:
      v12 = [(EMFPlusPlayer *)self playSetRenderingOrigin:a4 in_size:v7 in_flags:v6];
      break;
    case 16414:
      v12 = [(EMFPlusPlayer *)self playSetAntiAliasMode:a4 in_size:v7 in_flags:v6];
      break;
    case 16415:
      v12 = [(EMFPlusPlayer *)self playSetTextRenderingHint:a4 in_size:v7 in_flags:v6];
      break;
    case 16416:
      v12 = [(EMFPlusPlayer *)self playSetTextContrast:a4 in_size:v7 in_flags:v6];
      break;
    case 16417:
      v12 = [(EMFPlusPlayer *)self playSetInterpolationMode:a4 in_size:v7 in_flags:v6];
      break;
    case 16418:
      v12 = [(EMFPlusPlayer *)self playSetPixelOffsetMode:a4 in_size:v7 in_flags:v6];
      break;
    case 16419:
      v12 = [(EMFPlusPlayer *)self playSetCompositingMode:a4 in_size:v7 in_flags:v6];
      break;
    case 16420:
      v12 = [(EMFPlusPlayer *)self playSetCompositingQuality:a4 in_size:v7 in_flags:v6];
      break;
    case 16421:
      v12 = [(EMFPlusPlayer *)self playSave:a4 in_size:v7 in_flags:v6];
      break;
    case 16422:
      v12 = [(EMFPlusPlayer *)self playRestore:a4 in_size:v7 in_flags:v6];
      break;
    case 16423:
      v12 = [(EMFPlusPlayer *)self playBeginContainer:a4 in_size:v7 in_flags:v6];
      break;
    case 16424:
      v12 = [(EMFPlusPlayer *)self playBeginContainerNoParams:a4 in_size:v7 in_flags:v6];
      break;
    case 16425:
      v12 = [(EMFPlusPlayer *)self playEndContainer:a4 in_size:v7 in_flags:v6];
      break;
    case 16426:
      v12 = [(EMFPlusPlayer *)self playSetWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16427:
      v12 = [(EMFPlusPlayer *)self playResetWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16428:
      v12 = [(EMFPlusPlayer *)self playMultiplyWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16429:
      v12 = [(EMFPlusPlayer *)self playTranslateWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16430:
      v12 = [(EMFPlusPlayer *)self playScaleWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16431:
      v12 = [(EMFPlusPlayer *)self playRotateWorldTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16432:
      v12 = [(EMFPlusPlayer *)self playSetPageTransform:a4 in_size:v7 in_flags:v6];
      break;
    case 16433:
      v12 = [(EMFPlusPlayer *)self playResetClip:a4 in_size:v7 in_flags:v6];
      break;
    case 16434:
      v12 = [(EMFPlusPlayer *)self playSetClipRect:a4 in_size:v7 in_flags:v6];
      break;
    case 16435:
      v12 = [(EMFPlusPlayer *)self playSetClipPath:a4 in_size:v7 in_flags:v6];
      break;
    case 16436:
      v12 = [(EMFPlusPlayer *)self playSetClipRegion:a4 in_size:v7 in_flags:v6];
      break;
    case 16437:
      v12 = [(EMFPlusPlayer *)self playOffsetClip:a4 in_size:v7 in_flags:v6];
      break;
    case 16438:
      v12 = [(EMFPlusPlayer *)self playDrawDriverString:a4 in_size:v7 in_flags:v6];
      break;
    case 16440:
      v12 = [(EMFPlusPlayer *)self playSerializableObject:a4 in_size:v7 in_flags:v6];
      break;
    default:
      v12 = [(EMFPlusPlayer *)self playUnknown:a4 in_size:v7 in_type:v9 in_flags:v6];
      break;
  }

  v13 = v12;
  mEffect = self->mEffect;
  if (mEffect)
  {
    v15 = mEffect == v11;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    [(EMFPlusPlayer *)self setEffect:0];
  }

  return v13;
}

- (void)resetLargeRecord
{
  self->mLargeType = 0x4000;
  self->mLargeFlags = 0;
  self->mLargeSize = 0;
  [(NSMutableData *)self->mLargeData setLength:0];
}

- (int)play:(const char *)a3 in_size:(unsigned int)a4
{
  v4 = a4;
  if (a4 >= 0xC)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(a3 + 1);
      if (v8 < 0xC)
      {
        return -7;
      }

      v9 = *(a3 + 2);
      if (v8 != v9 + 12)
      {
        return -7;
      }

      if (v8 >= v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = *(a3 + 1);
      }

      if (v8 >= v4)
      {
        v11 = v8 - v4;
      }

      else
      {
        v11 = 0;
      }

      v12 = v9 - v11;
      if (v9 == v11)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v14 = *a3;
      v15 = *(a3 + 3);
      v16 = *(a3 + 2) | (v15 << 8);
      if ((v14 - 16394) < 0xD || v14 == 16412 || v14 == 16438 || ((v15 << 8) & 0x80000000) == 0)
      {
        if (self->mLargeType != 0x4000)
        {
          [(EMFPlusPlayer *)self resetLargeRecord];
          v7 = 1;
        }

        v17 = [(EMFPlusPlayer *)self playRecord:v14 pData:a3 + 12 dataSize:v12 flags:v16];
        goto LABEL_17;
      }

      v19 = *(a3 + 3);
      v20 = (v12 - 4);
      mLargeType = self->mLargeType;
      if (mLargeType == 0x4000)
      {
        if (v19 <= v20)
        {
          goto LABEL_44;
        }

        self->mLargeType = v14;
        self->mLargeFlags = v16;
        self->mLargeSize = v19;
        [(NSMutableData *)self->mLargeData setLength:0];
        [(NSMutableData *)self->mLargeData appendBytes:a3 + 16 length:v20];
      }

      else
      {
        if (v14 != mLargeType || self->mLargeFlags != v16 || v19 != self->mLargeSize)
        {
LABEL_44:
          [(EMFPlusPlayer *)self resetLargeRecord];
          return -7;
        }

        [(NSMutableData *)self->mLargeData appendBytes:a3 + 16 length:v20];
        v22 = [(NSMutableData *)self->mLargeData length];
        mLargeSize = self->mLargeSize;
        if (mLargeSize == v22)
        {
          v17 = [(EMFPlusPlayer *)self playRecord:self->mLargeType pData:[(NSMutableData *)self->mLargeData bytes] dataSize:self->mLargeSize flags:self->mLargeFlags];
          [(EMFPlusPlayer *)self resetLargeRecord];
          goto LABEL_17;
        }

        if (mLargeSize < v22)
        {
          goto LABEL_44;
        }
      }

      v17 = 0;
LABEL_17:
      v7 |= v17 == -7;
      if (v17 == -7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v17;
      }

LABEL_20:
      v4 -= v10;
      a3 += v10;
      if (v4 < 0xC || v13 != 0)
      {
        goto LABEL_39;
      }
    }
  }

  v7 = 0;
  v13 = 0;
LABEL_39:
  if (((v13 == 0) & v7) != 0)
  {
    v13 = -7;
  }

  if (v4)
  {
    return -7;
  }

  else
  {
    return v13;
  }
}

@end
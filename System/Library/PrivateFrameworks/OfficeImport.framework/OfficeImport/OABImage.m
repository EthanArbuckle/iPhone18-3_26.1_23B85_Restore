@interface OABImage
+ (void)readfromShape:(id)a3 toImage:(id)a4 state:(id)a5;
@end

@implementation OABImage

+ (void)readfromShape:(id)a3 toImage:(id)a4 state:(id)a5
{
  v7 = a3;
  v8 = a4;
  v47 = v7;
  v48 = a5;
  v9 = [v8 imageProperties];
  v10 = objc_alloc_init(OADImageFill);
  v11 = [v7 eshShape];
  isBlipSet = EshShapeImageData::isBlipSet((v11 + 480));
  if (isBlipSet)
  {
    isBlipSet = EshShapeImageData::getBlipId((v11 + 480));
    v13 = isBlipSet;
  }

  else
  {
    v13 = 0;
  }

  DefaultBlipName = EshFill::getDefaultBlipName(isBlipSet);
  if (EshShapeImageData::isBlipNameSet((v11 + 480)))
  {
    DefaultBlipName = EshShapeImageData::getBlipName((v11 + 480));
  }

  if (DefaultBlipName && *(DefaultBlipName + 16))
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:DefaultBlipName];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(OADStretchTechnique);
  if (v13)
  {
    v17 = [[OADBlipRef alloc] initWithIndex:v13 name:v15 blip:0];
    if ((EshShapeImageData::isCropTopSet((v11 + 480)) & 1) != 0 || (EshShapeImageData::isCropBottomSet((v11 + 480)) & 1) != 0 || (EshShapeImageData::isCropLeftSet((v11 + 480)) & 1) != 0 || EshShapeImageData::isCropRightSet((v11 + 480)))
    {
      v18 = objc_alloc_init(OADRelativeRect);
      if (EshShapeImageData::isCropTopSet((v11 + 480)))
      {
        CropTop = EshShapeImageData::getCropTop((v11 + 480));
        *&v20 = EshFixedPointUtil::toFloat(CropTop);
        [(OADRelativeRect *)v18 setTop:v20];
      }

      if (EshShapeImageData::isCropBottomSet((v11 + 480)))
      {
        CropBottom = EshShapeImageData::getCropBottom((v11 + 480));
        *&v22 = EshFixedPointUtil::toFloat(CropBottom);
        [(OADRelativeRect *)v18 setBottom:v22];
      }

      if (EshShapeImageData::isCropLeftSet((v11 + 480)))
      {
        CropLeft = EshShapeImageData::getCropLeft((v11 + 480));
        *&v24 = EshFixedPointUtil::toFloat(CropLeft);
        [(OADRelativeRect *)v18 setLeft:v24];
      }

      if (EshShapeImageData::isCropRightSet((v11 + 480)))
      {
        CropRight = EshShapeImageData::getCropRight((v11 + 480));
        *&v26 = EshFixedPointUtil::toFloat(CropRight);
        [(OADRelativeRect *)v18 setRight:v26];
      }

      [(OADImageFill *)v10 setSourceRect:v18];
    }

    if ((EshShapeImageData::isGainSet((v11 + 480)) & 1) != 0 || EshShapeImageData::isBlackLevelSet((v11 + 480)))
    {
      v27 = objc_alloc_init(OADLuminanceEffect);
      if (EshShapeImageData::isGainSet((v11 + 480)))
      {
        Gain = EshShapeImageData::getGain((v11 + 480));
        *&v29 = EshFixedPointUtil::toFloat(Gain);
        if (*&v29 <= 1.0)
        {
          *&v29 = *&v29 + -1.0;
        }

        else
        {
          *&v29 = 1.0 - (1.0 / *&v29);
        }

        [(OADLuminanceEffect *)v27 setContrast:v29];
      }

      if (EshShapeImageData::isBlackLevelSet((v11 + 480)))
      {
        BlackLevel = EshShapeImageData::getBlackLevel((v11 + 480));
        v31 = EshFixedPointUtil::toFloat(BlackLevel);
        *&v32 = v31 + v31;
        [(OADLuminanceEffect *)v27 setBrightness:v32];
      }

      [(OADBlipRef *)v17 addEffect:v27];
    }

    if (EshShapeImageData::isGrayScaleSet((v11 + 480)) && EshShapeImageData::getGrayScale((v11 + 480)))
    {
      v33 = objc_alloc_init(OADGrayscaleEffect);
      [(OADBlipRef *)v17 addEffect:v33];
    }

    if (EshShapeImageData::isBilevelSet((v11 + 480)) && EshShapeImageData::getBilevel((v11 + 480)))
    {
      v34 = objc_alloc_init(OADBiLevelEffect);
      LODWORD(v35) = 0.5;
      [(OADBiLevelEffect *)v34 setThreshold:v35];
      [(OADBlipRef *)v17 addEffect:v34];
    }

    if (EshShapeImageData::isChromakeySet((v11 + 480)))
    {
      Chromakey = EshShapeImageData::getChromakey((v11 + 480));
      EshColor::EshColor(&v51, Chromakey);
      EshColor::EshColor(&v50, &v51);
      LODWORD(v37) = 1.0;
      v38 = [OABShapeProperties targetColorWithSourceColor:&v50 alpha:0 colorPropertiesManager:v48 state:v37];
      EshColor::EshColor(&v49, &v51);
      v39 = [OABShapeProperties targetColorWithSourceColor:&v49 alpha:0 colorPropertiesManager:v48 state:0.0];
      v40 = objc_alloc_init(OADColorChangeEffect);
      [(OADColorChangeEffect *)v40 setFromColor:v38];
      [(OADColorChangeEffect *)v40 setToColor:v39];
      [(OADBlipRef *)v17 addEffect:v40];
    }

    if (EshFill::isOpacitySet((v11 + 296)))
    {
      v41 = objc_alloc_init(OADAlphaModFixEffect);
      Opacity = EshFill::getOpacity((v11 + 296));
      *&v43 = EshFixedPointUtil::toFloat(Opacity);
      [(OADAlphaModFixEffect *)v41 setAlpha:v43];
      [(OADBlipRef *)v17 addEffect:v41];
    }

    [(OADImageFill *)v10 setBlipRef:v17];
  }

  [(OADImageFill *)v10 setTechnique:v16];
  [v9 setImageFill:v10];
  if (EshShapeImageData::isQuicktimeDataSet((v11 + 480)))
  {
    QuicktimeData = EshShapeImageData::getQuicktimeData((v11 + 480));
    if (QuicktimeData)
    {
      if (*QuicktimeData)
      {
        v45 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*(QuicktimeData + 1) length:*QuicktimeData];
        v46 = objc_alloc_init(OADQTStubFile);
        [(OADMovie *)v46 setName:v15];
        [(OADMovie *)v46 setData:v45];
        [(OCDDelayedNode *)v46 setLoaded:1];
        [v8 setMovie:v46];
      }
    }
  }
}

@end
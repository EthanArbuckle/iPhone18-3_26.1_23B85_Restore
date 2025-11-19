@interface DOCImageMetadataProvider
+ (id)imageMetadataProviderWithNode:(id)a3 levelOfDetail:(int64_t)a4 URL:(id)a5;
- (BOOL)readTag:(CGImageMetadataTag *)a3 path:(id)a4 title:(id *)a5 value:(id *)a6;
- (NSArray)displaySortOrder;
- (NSDictionary)metadataValues;
- (id)compactMetadataValues;
- (id)fullMetadataValues;
- (void)addCGExifPropertiesToDictionary:(id)a3;
- (void)addColorInfoToDictionary:(id)a3;
- (void)addCreditTypeToDictionary:(id)a3;
- (void)addDigitalSourceTypeToDictionary:(id)a3;
- (void)addFlashProperitesToDictionary:(id)a3;
- (void)addGPSInfoToDictionary:(id)a3;
- (void)addHasAlphaToDictionary:(id)a3;
- (void)addHasDPIToDictionary:(id)a3;
- (void)addHasSizeToDictionary:(id)a3;
- (void)dealloc;
@end

@implementation DOCImageMetadataProvider

+ (id)imageMetadataProviderWithNode:(id)a3 levelOfDetail:(int64_t)a4 URL:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (imageMetadataProviderWithNode_levelOfDetail_URL__imageTypesOnceToken != -1)
  {
    +[DOCImageMetadataProvider imageMetadataProviderWithNode:levelOfDetail:URL:];
  }

  v9 = imageMetadataProviderWithNode_levelOfDetail_URL__imageTypes;
  v10 = [v7 contentType];
  v11 = [v10 identifier];
  LODWORD(v9) = [v9 containsObject:v11];

  if (!v9)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_13;
  }

  v12 = CGImageSourceCreateWithURL(v8, 0);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
  if (!v14)
  {
    CFRelease(v13);
    goto LABEL_11;
  }

  v15 = CGImageSourceCopyMetadataAtIndex(v13, 0, 0);
  CFRelease(v13);
  if (!v15)
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = objc_opt_new();
  *(v13 + 24) = a4;
  objc_storeStrong((v13 + 8), v14);
  *(v13 + 16) = v15;
LABEL_12:

LABEL_13:

  return v13;
}

void __76__DOCImageMetadataProvider_imageMetadataProviderWithNode_levelOfDetail_URL___block_invoke()
{
  v0 = CGImageSourceCopyTypeIdentifiers();
  v1 = imageMetadataProviderWithNode_levelOfDetail_URL__imageTypes;
  imageMetadataProviderWithNode_levelOfDetail_URL__imageTypes = v0;
}

- (void)dealloc
{
  CFRelease(self->_metadata);
  v3.receiver = self;
  v3.super_class = DOCImageMetadataProvider;
  [(DOCImageMetadataProvider *)&v3 dealloc];
}

- (void)addHasSizeToDictionary:(id)a3
{
  imageProperties = self->_imageProperties;
  v5 = *MEMORY[0x277CD3450];
  v6 = a3;
  [(NSDictionary *)imageProperties objectForKeyedSubscript:v5];
  v7 = 0.0;
  v19 = v8 = 0.0;
  if (v19)
  {
    [v19 floatValue];
    v8 = v9;
  }

  v10 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3448]];
  v11 = v10;
  if (v10)
  {
    [v10 floatValue];
    v7 = v12;
  }

  v13 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3410]];
  v14 = v13;
  if (v13 && ((v15 = [v13 intValue], v15 != 8) ? (v16 = v15 == 6) : (v16 = 1), v16))
  {
    v17 = v8;
  }

  else
  {
    v17 = v7;
    v7 = v8;
  }

  v18 = DOCLocalizedMetadataStringForWidthByHeight(v7, v17);
  [v6 setObject:v18 forKeyedSubscript:@"Dimensions"];
}

- (void)addHasDPIToDictionary:(id)a3
{
  v18 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD2F30]];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD2F28]];
  v9 = v8;
  if (v8)
  {
    [v8 floatValue];
    if (v7 > 0.0 && v10 > 0.0)
    {
      v11 = v10;
      v12 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3410]];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 intValue];
        v15 = v14 == 8 || v14 == 6;
        if (v15)
        {
          v16 = v7;
        }

        else
        {
          v16 = v11;
        }

        if (v15)
        {
          v7 = v11;
        }

        v11 = v16;
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d × %d", v7, v11];
      [v18 setObject:v17 forKeyedSubscript:@"Resolution"];
    }
  }
}

- (void)addHasAlphaToDictionary:(id)a3
{
  v7 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3368]];
  v5 = v4;
  if (v4)
  {
    v6 = DOCLocalizedMetadataYesNoStringForBool([v4 BOOLValue]);
    [v7 setObject:v6 forKeyedSubscript:@"hasAlpha"];
  }
}

- (void)addColorInfoToDictionary:(id)a3
{
  v6 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3400]];
  if (v4)
  {
    [v6 setObject:v4 forKeyedSubscript:@"ColorSpace"];
  }

  v5 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3460]];
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"ColorProfile"];
  }
}

- (void)addCGExifPropertiesToDictionary:(id)a3
{
  v28 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3038]];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setMaxFractionalDigits:4];
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD2F48]];
    v7 = [v5 displayStringForMetadataValue:v6];
    [v28 setObject:v7 forKeyedSubscript:@"ApertureValue"];

    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3058]];
    v9 = DOCLocalizedMetadataStringForExposureProgramNumber(v8);
    [v28 setObject:v9 forKeyedSubscript:@"ExposureProgram"];

    v10 = objc_opt_new();
    [v10 setMaxFractionalDigits:4];
    [v10 setPrefersIntegerFractionalDisplay:1];
    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3060]];
    v12 = [v10 displayStringForMetadataValue:v11];
    [v28 setObject:v12 forKeyedSubscript:@"ExposureTime"];

    v13 = objc_opt_new();
    [v13 setMaxFractionalDigits:4];
    [v13 setLengthUnits:8];
    v14 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3088]];
    v15 = [v13 displayStringForMetadataValue:v14];
    [v28 setObject:v15 forKeyedSubscript:@"FocalLength"];

    v16 = objc_opt_new();
    [v16 setMaxFractionalDigits:2];
    v17 = _DocumentManagerBundle();
    v18 = [v17 localizedStringForKey:@"f/%1$@" value:@"f/%1$@" table:@"Localizable"];

    [v16 setDecimalFormatString:v18];
    v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3068]];
    v20 = [v16 displayStringForMetadataValue:v19];
    [v28 setObject:v20 forKeyedSubscript:@"FNumber"];

    v21 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD30F0]];
    v22 = DOCLocalizedMetadataStringForMeteringModeNumber(v21);
    [v28 setObject:v22 forKeyedSubscript:@"MeteringMode"];

    v23 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD30B0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 firstObject];

      v23 = v24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v23 description];
      [v28 setObject:v25 forKeyedSubscript:@"ISOSpeed"];
    }

    v26 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD31A8]];
    v27 = DOCLocalizedMetadataStringForWhiteBalanceModeNumber(v26);
    [v28 setObject:v27 forKeyedSubscript:@"WhiteBalance"];
  }
}

- (void)addFlashProperitesToDictionary:(id)a3
{
  v11 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3038]];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3070]];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
      v9 = DOCLocalizedMetadataYesNoStringForBool(v8 & 1);
      [v11 setObject:v9 forKeyedSubscript:@"Flash"];

      v10 = DOCLocalizedMetadataYesNoStringForBool((v8 >> 6) & 1);
      [v11 setObject:v10 forKeyedSubscript:@"FlashRedEye"];
    }
  }
}

- (void)addGPSInfoToDictionary:(id)a3
{
  v4 = a3;
  v7 = 0.0;
  v8 = 0.0;
  if (DOCSpotlightGPSInfoFromCGImagePropertyDictionary(self->_imageProperties, &v8, &v7))
  {
    v5 = DOCLocalizedMetadataStringForLatitude(v8);
    v6 = DOCLocalizedMetadataStringForLongitude(v7);
    if ([v5 length] && objc_msgSend(v6, "length"))
    {
      [v4 setObject:v5 forKeyedSubscript:@"GPSLatitude"];
      [v4 setObject:v6 forKeyedSubscript:@"GPSLongitude"];
    }
  }
}

- (void)addDigitalSourceTypeToDictionary:(id)a3
{
  v6 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3380]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3388]];
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"DigitalSourceType"];
  }
}

- (void)addCreditTypeToDictionary:(id)a3
{
  v6 = a3;
  v4 = [(NSDictionary *)self->_imageProperties objectForKeyedSubscript:*MEMORY[0x277CD3380]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3378]];
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"Credit"];
  }
}

- (BOOL)readTag:(CGImageMetadataTag *)a3 path:(id)a4 title:(id *)a5 value:(id *)a6
{
  v9 = a4;
  *a5 = CGImageMetadataTagCopyName(a3);
  v10 = CGImageMetadataTagCopyValue(a3);
  LODWORD(a3) = [MEMORY[0x277CBEBF8] containsObject:v9];

  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = DOCLocalizedMetadataYesNoStringForBool([v10 BOOLValue]);
  }

  else
  {
    v11 = v10;
  }

  *a6 = v11;

  return 1;
}

- (NSArray)displaySortOrder
{
  v4[23] = *MEMORY[0x277D85DE8];
  v4[0] = @"Dimensions";
  v4[1] = @"Resolution";
  v4[2] = @"ColorSpace";
  v4[3] = @"ColorProfile";
  v4[4] = @"hasAlpha";
  v4[5] = @"Make";
  v4[6] = @"Model";
  v4[7] = @"LensModel";
  v4[8] = @"ApertureValue";
  v4[9] = @"ExposureTime";
  v4[10] = @"ExposureProgram";
  v4[11] = @"FocalLength";
  v4[12] = @"ISOSpeed";
  v4[13] = @"Flash";
  v4[14] = @"FlashRedEye";
  v4[15] = @"FNumber";
  v4[16] = @"MeteringMode";
  v4[17] = @"WhiteBalance";
  v4[18] = @"Credit";
  v4[19] = @"CreatorTool";
  v4[20] = @"DigitalSourceType";
  v4[21] = @"GPSLatitude";
  v4[22] = @"GPSLongitude";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:23];

  return v2;
}

- (NSDictionary)metadataValues
{
  levelOfDetail = self->_levelOfDetail;
  if (levelOfDetail)
  {
    if (levelOfDetail == 1)
    {
      v4 = [(DOCImageMetadataProvider *)self fullMetadataValues];
    }

    else
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"DOCImageMetadataProvider.m" lineNumber:384 description:{@"Unhandled DOCMetadataLevelOfDetail %lu", self->_levelOfDetail}];
    }
  }

  else
  {
    v4 = [(DOCImageMetadataProvider *)self compactMetadataValues];
  }

  return v4;
}

- (id)compactMetadataValues
{
  v3 = objc_opt_new();
  [(DOCImageMetadataProvider *)self addHasSizeToDictionary:v3];

  return v3;
}

- (id)fullMetadataValues
{
  v3 = objc_opt_new();
  [(DOCImageMetadataProvider *)self addHasSizeToDictionary:v3];
  [(DOCImageMetadataProvider *)self addHasDPIToDictionary:v3];
  [(DOCImageMetadataProvider *)self addHasAlphaToDictionary:v3];
  [(DOCImageMetadataProvider *)self addColorInfoToDictionary:v3];
  [(DOCImageMetadataProvider *)self addGPSInfoToDictionary:v3];
  [(DOCImageMetadataProvider *)self addCGExifPropertiesToDictionary:v3];
  [(DOCImageMetadataProvider *)self addFlashProperitesToDictionary:v3];
  [(DOCImageMetadataProvider *)self addCreditTypeToDictionary:v3];
  [(DOCImageMetadataProvider *)self addDigitalSourceTypeToDictionary:v3];
  v4 = [MEMORY[0x277CBEB58] setWithObjects:{@"exifEX:LensModel", @"tiff:Model", @"tiff:Make", @"xmp:CreatorTool", 0}];
  metadata = self->_metadata;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DOCImageMetadataProvider_fullMetadataValues__block_invoke;
  block[3] = &unk_278FA24C0;
  v12 = v4;
  v13 = self;
  v6 = v3;
  v14 = v6;
  v7 = v4;
  CGImageMetadataEnumerateTagsUsingBlock(metadata, 0, 0, block);
  v8 = v14;
  v9 = v6;

  return v6;
}

BOOL __46__DOCImageMetadataProvider_fullMetadataValues__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = *(a1 + 40);
    v12 = 0;
    v13 = 0;
    v7 = [v6 readTag:a3 path:v5 title:&v13 value:&v12];
    v8 = v13;
    v9 = v12;
    if (v7)
    {
      [*(a1 + 48) setObject:v9 forKeyedSubscript:v8];
    }

    [*(a1 + 32) removeObject:v5];
  }

  v10 = [*(a1 + 32) count] != 0;

  return v10;
}

@end
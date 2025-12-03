@interface ConversionOptionSet
+ (CGSize)sizeForImageAtPath:(id)path;
+ (id)knownConversionTypes;
- (BOOL)processConversionOptionKey:(id)key valueString:(id)string;
- (ConversionOptionSet)init;
- (double)scaleFactorForInputSize:(CGSize)size sharedStreamsSizeSpecificationString:(id)string;
- (id)arrayOfStringsForString:(id)string;
- (id)cmTimeRangeDictionaryForString:(id)string;
- (id)conversionOptionValueForString:(id)string valueType:(unint64_t)type;
- (id)metadataPolicyForString:(id)string;
- (id)pfVideoAdjustmentsDictionaryForString:(id)string;
- (id)photosAdjustmentsDictionaryForAdjustmentsFileAtPath:(id)path;
- (id)photosAdjustmentsDictionaryForString:(id)string;
- (id)presetListForMapping:(id)mapping;
- (id)presetNameToOptionsMappingForVideoTranscoding;
- (int)checkDestinationExists;
- (int)validateAndProcess;
@end

@implementation ConversionOptionSet

- (id)photosAdjustmentsDictionaryForAdjustmentsFileAtPath:(id)path
{
  v19[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
  v17 = 0;
  v6 = [v4 dictionaryWithContentsOfURL:v5 error:&v17];
  v7 = v17;

  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B558]];
    v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B560]];
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3B548]];
    v11 = v10;
    if (v8)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || v10 == 0)
    {
      [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Interpreted as file path, but some expected information is missing in file %@\n", pathCopy];
      v14 = 0;
    }

    else
    {
      v18[0] = @"PAMediaConversionServiceAdjustmentFormatIdentifierKey";
      v18[1] = @"PAMediaConversionServiceAdjustmentFormatVersionKey";
      v19[0] = v8;
      v19[1] = v9;
      v18[2] = @"PAMediaConversionServiceAdjustmentDataKey";
      v19[2] = v10;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
    }
  }

  else
  {
    [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Interpreted as file path, but unable to read adjustment plist file: %@\n", v7];
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)pfVideoAdjustmentsDictionaryForString:(id)string
{
  v18[5] = *MEMORY[0x277D85DE8];
  v3 = [string componentsSeparatedByString:@":"];
  if ([v3 count] == 5)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v3 objectAtIndexedSubscript:1];
    v6 = [v3 objectAtIndexedSubscript:2];
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:0];
    if (v7)
    {
      v8 = [v3 objectAtIndexedSubscript:3];
      integerValue = [v8 integerValue];

      v10 = [v3 objectAtIndexedSubscript:4];
      integerValue2 = [v10 integerValue];

      v17[0] = @"adjustmentFormatIdentifier";
      v17[1] = @"adjustmentFormatVersion";
      v18[0] = v4;
      v18[1] = v5;
      v18[2] = v7;
      v17[2] = @"adjustmentData";
      v17[3] = @"adjustmentBaseVersion";
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
      v18[3] = v12;
      v17[4] = @"adjustmentRenderTypes";
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue2];
      v18[4] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
    }

    else
    {
      [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Unable to decode base64 encoded adjustment data\n"];
      v14 = 0;
    }
  }

  else
  {
    [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Expected format is a colon-separated tuple of <format-identifier>:<format-version>:<base64 encoded adjustment data>:<adjustment-base-version>:<adjustment-render-types>\n"];
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)photosAdjustmentsDictionaryForString:(id)string
{
  v18[3] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  stringByExpandingTildeInPath = [stringCopy stringByExpandingTildeInPath];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:stringByExpandingTildeInPath];

  if (v7)
  {
    v8 = [(ConversionOptionSet *)self photosAdjustmentsDictionaryForAdjustmentsFileAtPath:stringByExpandingTildeInPath];
  }

  else
  {
    v9 = [stringCopy componentsSeparatedByString:@":"];
    if ([v9 count] == 3)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v9 objectAtIndexedSubscript:1];
      v12 = [v9 objectAtIndexedSubscript:2];
      v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:0];
      v14 = v13;
      if (v13)
      {
        v17[0] = @"PAMediaConversionServiceAdjustmentFormatIdentifierKey";
        v17[1] = @"PAMediaConversionServiceAdjustmentFormatVersionKey";
        v18[0] = v10;
        v18[1] = v11;
        v17[2] = @"PAMediaConversionServiceAdjustmentDataKey";
        v18[2] = v13;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
      }

      else
      {
        [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Unable to decode base64 encoded adjustment data\n"];
        v8 = 0;
      }
    }

    else
    {
      [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse photos adjustment option string. Expected format is a path to an existing adjustment plist file or a colon-separated tuple of <format-identifier>:<format-version>:<base64 encoded adjustment data>\n"];
      v8 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)cmTimeRangeDictionaryForString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(\\d+)/(\\d+):(\\d+)/(\\d+)$" options:0 error:0];
  v5 = [v4 firstMatchInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
  v6 = v5;
  if (v5)
  {
    memset(&v28, 0, sizeof(v28));
    v7 = [v5 rangeAtIndex:1];
    v9 = [stringCopy substringWithRange:{v7, v8}];
    integerValue = [v9 integerValue];
    v11 = [v6 rangeAtIndex:2];
    v13 = [stringCopy substringWithRange:{v11, v12}];
    CMTimeMake(&v28, integerValue, [v13 integerValue]);

    memset(&v27, 0, sizeof(v27));
    v14 = [v6 rangeAtIndex:3];
    v16 = [stringCopy substringWithRange:{v14, v15}];
    integerValue2 = [v16 integerValue];
    v18 = [v6 rangeAtIndex:4];
    v20 = [stringCopy substringWithRange:{v18, v19}];
    CMTimeMake(&v27, integerValue2, [v20 integerValue]);

    memset(&v26, 0, sizeof(v26));
    start.start = v28;
    duration = v27;
    CMTimeRangeMake(&v26, &start.start, &duration);
    start = v26;
    v21 = CMTimeRangeCopyAsDictionary(&start, 0);
    v22 = CFAutorelease(v21);
  }

  else
  {
    [MediaConversionServiceCommandLineDriver outputError:@"Unable to parse string %@ as a CMTimeRange. Expected format is <value>/<timescale>:<value>/<timescale>, the first pair is the start time, the second pair is the duration.\n", stringCopy];
    v22 = 0;
  }

  return v22;
}

- (id)metadataPolicyForString:(id)string
{
  v13[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy isEqualToString:@"default"])
  {
    v4 = MEMORY[0x277D3B418];
    standardPolicy = [MEMORY[0x277D3B420] standardPolicy];
    v13[0] = standardPolicy;
    livePhotoPairingIdentifierMetadataKey = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v7 = [v4 policyWithPolicies:livePhotoPairingIdentifierMetadataKey];
LABEL_5:
    v10 = v7;

    goto LABEL_7;
  }

  if ([stringCopy hasPrefix:@"set-livephoto-id:"])
  {
    v8 = [stringCopy componentsSeparatedByString:@":"];
    standardPolicy = [v8 lastObject];

    v9 = MEMORY[0x277D3B410];
    livePhotoPairingIdentifierMetadataKey = [MEMORY[0x277D3B458] livePhotoPairingIdentifierMetadataKey];
    v7 = [v9 policyWithKey:livePhotoPairingIdentifierMetadataKey value:standardPolicy];
    goto LABEL_5;
  }

  [MediaConversionServiceCommandLineDriver outputError:@"metadata policy %@ is not supported\n", stringCopy];
  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)arrayOfStringsForString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy substringToIndex:1];
  v5 = [stringCopy componentsSeparatedByString:v4];

  v6 = [v5 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ConversionOptionSet_arrayOfStringsForString___block_invoke;
  v10[3] = &__block_descriptor_40_e25_B32__0__NSString_8Q16_B24l;
  v10[4] = v6 - 1;
  v7 = [v5 indexesOfObjectsPassingTest:v10];
  v8 = [v5 objectsAtIndexes:v7];

  return v8;
}

uint64_t __47__ConversionOptionSet_arrayOfStringsForString___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    a3 = *(a1 + 32) != a3 || [v5 length];
  }

  return a3;
}

- (id)conversionOptionValueForString:(id)string valueType:(unint64_t)type
{
  stringCopy = string;
  v7 = objc_opt_new();
  [v7 setNumberStyle:1];
  v8 = objc_opt_new();
  v9 = v8;
  v10 = 0;
  if (type <= 5)
  {
    if (type <= 2)
    {
      if (type)
      {
        if (type == 1)
        {
          v11 = stringCopy;
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_26;
          }

          v11 = [v7 numberFromString:stringCopy];
        }

        goto LABEL_25;
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to create value from string %@ for unknown value type", stringCopy}];
LABEL_16:
      v10 = 0;
      goto LABEL_26;
    }

    if (type == 3)
    {
      v11 = [v8 dateFromString:stringCopy];
      goto LABEL_25;
    }

    if (type == 4)
    {
      [(ConversionOptionSet *)self pfVideoAdjustmentsDictionaryForString:stringCopy];
    }

    else
    {
      [(ConversionOptionSet *)self cmTimeRangeDictionaryForString:stringCopy];
    }
  }

  else
  {
    if (type > 8)
    {
      if (type - 10 >= 3)
      {
        if (type != 9)
        {
          goto LABEL_26;
        }

        v11 = [(ConversionOptionSet *)self photosAdjustmentsDictionaryForString:stringCopy];
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (type == 6)
    {
LABEL_15:
      v12 = off_27989B2B0[type];
      [MediaConversionServiceCommandLineDriver outputError:@"Value type %@ is not supported\n", v12];

      goto LABEL_16;
    }

    if (type == 7)
    {
      [(ConversionOptionSet *)self arrayOfStringsForString:stringCopy];
    }

    else
    {
      [(ConversionOptionSet *)self metadataPolicyForString:stringCopy];
    }
  }
  v11 = ;
LABEL_25:
  v10 = v11;
LABEL_26:

  return v10;
}

- (double)scaleFactorForInputSize:(CGSize)size sharedStreamsSizeSpecificationString:(id)string
{
  height = size.height;
  width = size.width;
  stringCopy = string;
  v7 = [stringCopy componentsSeparatedByString:@":"];
  if ([v7 count] == 3)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 doubleValue];
    v10 = v9;

    v11 = [v7 objectAtIndexedSubscript:1];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v7 objectAtIndexedSubscript:2];
    [v14 doubleValue];
    v16 = v15;

    if (width >= height)
    {
      v17 = height;
    }

    else
    {
      v17 = width;
    }

    if (width >= height)
    {
      v18 = width;
    }

    else
    {
      v18 = height;
    }

    v19 = v10 / v17;
    v20 = floor(v18 * v19);
    if (v20 >= v13)
    {
      if (v20 > v16)
      {
        v19 = v16 / v18;
      }
    }

    else
    {
      v19 = v13 / v18;
    }

    if (v19 <= 1.0)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1.0;
    }
  }

  else
  {
    [MediaConversionServiceCommandLineDriver outputError:@"Unable to get values from size specification string %@\n", stringCopy];
    v21 = 0.0;
  }

  return v21;
}

- (BOOL)processConversionOptionKey:(id)key valueString:(id)string
{
  keyCopy = key;
  stringCopy = string;
  if (!self->_conversionOptions)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    conversionOptions = self->_conversionOptions;
    self->_conversionOptions = dictionary;
  }

  if (processConversionOptionKey_valueString__onceToken != -1)
  {
    dispatch_once(&processConversionOptionKey_valueString__onceToken, &__block_literal_global_743);
  }

  if (![keyCopy isEqualToString:@"SharedStreamsDimensions"])
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"PAMediaConversionServiceOption%@Key", keyCopy];
    v17 = [processConversionOptionKey_valueString__knownConversionOptions objectForKeyedSubscript:keyCopy];
    if (v17)
    {
      v18 = [(NSMutableDictionary *)self->_conversionOptions objectForKeyedSubscript:keyCopy];

      if (!v18)
      {
        integerValue = [v17 integerValue];
        v21 = [(ConversionOptionSet *)self conversionOptionValueForString:stringCopy valueType:integerValue];
        v15 = v21 != 0;
        if (v21)
        {
          [(NSMutableDictionary *)self->_conversionOptions setObject:v21 forKeyedSubscript:keyCopy];
        }

        else
        {
          if (integerValue > 0xC)
          {
            v22 = 0;
          }

          else
          {
            v22 = off_27989B2B0[integerValue];
          }

          v23 = v22;
          [MediaConversionServiceCommandLineDriver outputError:@"Unable to create value of type %@ from string '%@' for option '%@'\n", v23, stringCopy, keyCopy];
        }

        goto LABEL_30;
      }

      [MediaConversionServiceCommandLineDriver outputError:@"Conversion option '%@' passed more than once, must be unique\n", keyCopy];
    }

    else
    {
      [MediaConversionServiceCommandLineDriver outputError:@"Unknown conversion option '%@'\n", keyCopy];
    }

    LOBYTE(v15) = 0;
LABEL_30:

    goto LABEL_31;
  }

  if (![(NSString *)self->_conversionType isEqualToString:@"image"])
  {
    v19 = @"Conversion option SharedStreamsDimensions is only valid for images\n";
LABEL_23:
    [MediaConversionServiceCommandLineDriver outputError:v19, v25];
    goto LABEL_24;
  }

  [objc_opt_class() sizeForImageAtPath:self->_sourcePath];
  if (v11 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [MediaConversionServiceCommandLineDriver outputError:@"Unable to determine input image size for %@\n", self->_sourcePath];
LABEL_24:
    LOBYTE(v15) = 0;
    goto LABEL_31;
  }

  [(ConversionOptionSet *)self scaleFactorForInputSize:stringCopy sharedStreamsSizeSpecificationString:?];
  if (v13 == 0.0)
  {
    v19 = @"Unable to determine scale factor\n";
    goto LABEL_23;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [(NSMutableDictionary *)self->_conversionOptions setObject:v14 forKeyedSubscript:@"PAMediaConversionServiceOptionScaleFactorKey"];

  LOBYTE(v15) = 1;
LABEL_31:

  return v15;
}

- (id)presetNameToOptionsMappingForVideoTranscoding
{
  v43[9] = *MEMORY[0x277D85DE8];
  v42[0] = @"CPLResourceTypeVideoLargeSize";
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C30]];
  v41[0] = v32;
  v2 = *MEMORY[0x277CE5DA8];
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", *MEMORY[0x277CE5DA8]];
  v41[1] = v31;
  v41[2] = @"AVIncludeMetadata=1";
  v41[3] = @"AVMetadataIncludeLocation=1";
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v43[0] = v30;
  v42[1] = @"CPLResourceTypeVideoMediumSize";
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C20]];
  v40[0] = v29;
  v3 = *MEMORY[0x277CE5D98];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", *MEMORY[0x277CE5D98]];
  v40[1] = v28;
  v40[2] = @"AVIncludeMetadata=1";
  v40[3] = @"AVMetadataIncludeLocation=1";
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v43[1] = v27;
  v42[2] = @"CPLResourceTypeVideoMediumSize+LivePhoto";
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C18]];
  v39[0] = v26;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v2];
  v39[1] = v25;
  v39[2] = @"AVIncludeMetadata=1";
  v39[3] = @"AVMetadataIncludeLocation=1";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  v43[2] = v24;
  v42[3] = @"CPLResourceTypeVideoMediumSize+HDR";
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C28]];
  v38[0] = v23;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v2];
  v38[1] = v22;
  v38[2] = @"AVIncludeMetadata=1";
  v38[3] = @"AVMetadataIncludeLocation=1";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
  v43[3] = v21;
  v42[4] = @"CPLResourceTypeVideoSmallSize";
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C08]];
  v37[0] = v20;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v3];
  v37[1] = v19;
  v37[2] = @"AVIncludeMetadata=1";
  v37[3] = @"AVMetadataIncludeLocation=1";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
  v43[4] = v18;
  v42[5] = @"CPLResourceTypeVideoMetaData";
  v36[0] = @"IsVideoMetadataTrackExtraction=1";
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v2];
  v36[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v43[5] = v16;
  v42[6] = @"CPLResourceTypeVideoSmallSize+LivePhoto";
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C10]];
  v35[0] = v15;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v2];
  v35[1] = v4;
  v35[2] = @"AVIncludeMetadata=1";
  v35[3] = @"AVMetadataIncludeLocation=1";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v43[6] = v5;
  v42[7] = @"PhotostreamSmall";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C80]];
  v34[0] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v3];
  v34[1] = v7;
  v34[2] = @"AVIncludeMetadata=1";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v43[7] = v8;
  v42[8] = @"Photostream";
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"ExportPresetName=%@", *MEMORY[0x277CE5C88]];
  v33[0] = v9;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"OutputFileType=%@", v3];
  v33[1] = v10;
  v33[2] = @"AVIncludeMetadata=1";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v43[8] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)presetListForMapping:(id)mapping
{
  allKeys = [mapping allKeys];
  v4 = [allKeys componentsJoinedByString:{@", "}];

  return v4;
}

- (int)checkDestinationExists
{
  v24 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  array = [MEMORY[0x277CBEB18] array];
  if (self->_destinationPath && [defaultManager fileExistsAtPath:?])
  {
    [array addObject:self->_destinationPath];
  }

  if (self->_destinationPathVideoComplement && [defaultManager fileExistsAtPath:?])
  {
    [array addObject:self->_destinationPathVideoComplement];
  }

  if (![array count])
  {
LABEL_18:
    v14 = 0;
    goto LABEL_22;
  }

  if (self->_replaceExistingOutput)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = array;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v18 = 0;
          v11 = [defaultManager removeItemAtPath:v10 error:&v18];
          v12 = v18;
          v13 = v12;
          if ((v11 & 1) == 0)
          {
            [MediaConversionServiceCommandLineDriver outputError:@"Unable to remove existing item at %@: %@\n", v10, v12];

            goto LABEL_21;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  v15 = [array componentsJoinedByString:{@", "}];
  [MediaConversionServiceCommandLineDriver outputError:@"Destination path(s) already exist(s): %@. Use --replace option to overwrite existing output files.\n", v15];

LABEL_21:
  v14 = 73;
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)validateAndProcess
{
  v37 = *MEMORY[0x277D85DE8];
  knownConversionTypes = [objc_opt_class() knownConversionTypes];
  v4 = [knownConversionTypes containsObject:self->_conversionType];

  if (v4)
  {
    if (self->_presetName)
    {
      if ([(NSString *)self->_conversionType isEqualToString:@"video"])
      {
        [(ConversionOptionSet *)self presetNameToOptionsMappingForVideoTranscoding];
      }

      else
      {
        [(ConversionOptionSet *)self presetNameToOptionsMappingForImageConversionOrVideoStillImageExtraction];
      }
      v8 = ;
      v9 = [v8 objectForKeyedSubscript:self->_presetName];
      if (!v9)
      {
        conversionType = self->_conversionType;
        v13 = [(ConversionOptionSet *)self presetListForMapping:v8];
        [MediaConversionServiceCommandLineDriver outputError:@"Valid preset names for conversion type %@: %@\n", conversionType, v13];

        goto LABEL_17;
      }

      v10 = v9;
      [(NSMutableArray *)self->_conversionOptionInputKeyValuePairs addObjectsFromArray:v9];
    }

    v11 = ![(NSString *)self->_conversionType isEqualToString:@"still"]&& [(NSMutableArray *)self->_conversionOptionInputKeyValuePairs count]== 0;
    if (!self->_sourcePath || !self->_destinationPath || self->_conversionType == 0 || v11)
    {
      v8 = +[MediaConversionServiceCommandLineDriver usage];
      [MediaConversionServiceCommandLineDriver output:@"%@\n", v8];
LABEL_17:

      checkDestinationExists = 64;
      goto LABEL_18;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:self->_sourcePath])
    {
      checkDestinationExists = [(ConversionOptionSet *)self checkDestinationExists];
      if (!checkDestinationExists)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        conversionOptions = self->_conversionOptions;
        self->_conversionOptions = dictionary;

        [(NSMutableDictionary *)self->_conversionOptions setObject:@"photosctl media-conversion" forKeyedSubscript:@"PAMediaConversionServiceOptionRequestReasonKey"];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = self->_conversionOptionInputKeyValuePairs;
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v33;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v33 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v32 + 1) + 8 * i);
              v25 = [v24 rangeOfString:@"="];
              if (v25)
              {
                v26 = v25 == 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = 1;
              }

              if (v26 || (v27 = v25, v25 == [v24 length] - 1))
              {
                [MediaConversionServiceCommandLineDriver outputError:@"Invalid conversion option '%@', expecting 'key=value' format\n", v24];
LABEL_43:

                goto LABEL_47;
              }

              v28 = [v24 substringWithRange:{0, v27}];
              v29 = [v24 substringWithRange:{v27 + 1, objc_msgSend(v24, "length") + ~v27}];
              v30 = [(ConversionOptionSet *)self processConversionOptionKey:v28 valueString:v29];

              if (!v30)
              {
                goto LABEL_43;
              }
            }

            v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        if (!self->_sourcePathVideoComplement && !self->_destinationPathVideoComplement)
        {
          goto LABEL_38;
        }

        if (([(NSString *)self->_conversionType isEqual:@"image"]& 1) != 0)
        {
          if (self->_sourcePathVideoComplement)
          {
LABEL_38:
            if (self->_verbose)
            {
              [MediaConversionServiceCommandLineDriver output:@"Conversion options: %@\n", self->_conversionOptions];
            }

            checkDestinationExists = 0;
            goto LABEL_48;
          }

          v31 = @"--source-video-complement is required if --destination-video-complement is given\n";
        }

        else
        {
          v31 = @"--source-video-complement and --destination-video-complement are only valid for image conversions\n";
        }

        [MediaConversionServiceCommandLineDriver outputError:v31];
LABEL_47:
        checkDestinationExists = 65;
      }
    }

    else
    {
      [MediaConversionServiceCommandLineDriver outputError:@"Source path does not exist: %@\n", self->_sourcePath];
      checkDestinationExists = 66;
    }

LABEL_48:

    goto LABEL_18;
  }

  knownConversionTypes2 = [objc_opt_class() knownConversionTypes];
  v6 = [knownConversionTypes2 componentsJoinedByString:{@", "}];
  [MediaConversionServiceCommandLineDriver output:@"Please specify a valid conversion type: %@\n", v6];

  checkDestinationExists = 65;
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return checkDestinationExists;
}

- (ConversionOptionSet)init
{
  v6.receiver = self;
  v6.super_class = ConversionOptionSet;
  v2 = [(ConversionOptionSet *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    conversionOptionInputKeyValuePairs = v2->_conversionOptionInputKeyValuePairs;
    v2->_conversionOptionInputKeyValuePairs = array;

    v2->_repeatCount = 1;
  }

  return v2;
}

+ (CGSize)sizeForImageAtPath:(id)path
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v4 = [PAMediaConversionServiceImagingUtilities primaryImagePropertiesForFileAtURL:v3];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
  integerValue = [v5 integerValue];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
  integerValue2 = [v7 integerValue];

  v9 = integerValue;
  v10 = integerValue2;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)knownConversionTypes
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"image";
  v5[1] = @"video";
  v5[2] = @"still";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
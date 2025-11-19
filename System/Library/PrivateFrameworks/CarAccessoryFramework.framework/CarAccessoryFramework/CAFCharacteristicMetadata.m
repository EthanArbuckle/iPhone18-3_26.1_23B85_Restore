@interface CAFCharacteristicMetadata
- (CAFCharacteristicMetadata)initWithConfig:(id)a3;
- (NSString)formatString;
@end

@implementation CAFCharacteristicMetadata

- (NSString)formatString
{
  v2 = [(CAFCharacteristicMetadata *)self format];

  return NSStringFromCharacteristicMetadataFormat(v2);
}

- (CAFCharacteristicMetadata)initWithConfig:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CAFCharacteristicMetadata;
  v5 = [(CAFCharacteristicMetadata *)&v30 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"format"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v27 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CAFCharacteristicMetadata initWithConfig:];
    }

    goto LABEL_40;
  }

  v5->_format = [v7 unsignedIntValue];
  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"minimumValue"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  minimumValue = v5->_minimumValue;
  v5->_minimumValue = v9;

  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:@"maximumValue"];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  maximumValue = v5->_maximumValue;
  v5->_maximumValue = v12;

  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:@"maximumLength"];
  if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  maximumLength = v5->_maximumLength;
  v5->_maximumLength = v15;

  objc_opt_class();
  v17 = [v4 objectForKeyedSubscript:@"stepValue"];
  if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  stepValue = v5->_stepValue;
  v5->_stepValue = v18;

  objc_opt_class();
  v20 = [v4 objectForKeyedSubscript:@"validValues"];
  if (v20 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  validValues = v5->_validValues;
  v5->_validValues = v21;

  objc_opt_class();
  v23 = [v4 objectForKeyedSubscript:@"units"];
  if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  units = v5->_units;
  v5->_units = v24;

  format = v5->_format;
  if (format > 9)
  {
    if (format > 11)
    {
      if (format == 12)
      {
        if (!v5->_maximumLength)
        {
          v27 = CAFCharacteristicLogging();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [CAFCharacteristicMetadata initWithConfig:];
          }

          goto LABEL_40;
        }
      }

      else if (format == 13 && !v5->_maximumLength)
      {
        v27 = CAFCharacteristicLogging();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CAFCharacteristicMetadata initWithConfig:];
        }

        goto LABEL_40;
      }
    }

    else if (format == 10)
    {
      if (!v5->_maximumLength)
      {
        v27 = CAFCharacteristicLogging();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [CAFCharacteristicMetadata initWithConfig:];
        }

        goto LABEL_40;
      }
    }

    else if (!v5->_maximumLength)
    {
      v27 = CAFCharacteristicLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [CAFCharacteristicMetadata initWithConfig:];
      }

      goto LABEL_40;
    }

    goto LABEL_55;
  }

  if ((format - 1) >= 9 || v5->_minimumValue && v5->_maximumValue && v5->_stepValue)
  {
LABEL_55:

LABEL_56:
    v28 = v5;
    goto LABEL_57;
  }

  v27 = CAFCharacteristicLogging();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [CAFCharacteristicMetadata initWithConfig:];
  }

LABEL_40:

  v28 = 0;
LABEL_57:

  return v28;
}

@end
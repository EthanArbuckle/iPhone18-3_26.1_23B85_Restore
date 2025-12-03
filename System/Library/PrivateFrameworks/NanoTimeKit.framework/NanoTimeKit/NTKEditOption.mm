@interface NTKEditOption
+ (CGSize)sizeForSwatchStyle:(int64_t)style;
- (BOOL)isValidOption;
- (NSString)dailySnapshotKey;
- (NSString)localizedName;
- (NTKEditOption)initWithCoder:(id)coder;
- (NTKEditOption)initWithDevice:(id)device;
- (NTKEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device;
- (id)JSONObjectRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKEditOption

+ (CGSize)sizeForSwatchStyle:(int64_t)style
{
  v3 = 0.0;
  if (style <= 1)
  {
    if (style)
    {
      v4 = 0.0;
      if (style == 1)
      {
        if (_largeCircleSwatchSize_onceToken != -1)
        {
          +[NTKEditOption(Companion) sizeForSwatchStyle:];
        }

        v4 = *&_largeCircleSwatchSize_size_0;
        v3 = *&_largeCircleSwatchSize_size_1;
      }
    }

    else
    {
      if (_smallCircleSwatchSize_onceToken != -1)
      {
        +[NTKEditOption(Companion) sizeForSwatchStyle:];
      }

      v4 = *&_smallCircleSwatchSize_size_0;
      v3 = *&_smallCircleSwatchSize_size_1;
    }
  }

  else if (style == 2)
  {
    v4 = _smallRectSwatchSize();
  }

  else if (style == 3)
  {
    v4 = _largeRectSwatchSize();
  }

  else
  {
    v4 = 0.0;
    if (style == 4)
    {
      if (_shortLargeRectSwatchSize_onceToken != -1)
      {
        +[NTKEditOption(Companion) sizeForSwatchStyle:];
      }

      v4 = *&_shortLargeRectSwatchSize_size_0;
      v3 = *&_shortLargeRectSwatchSize_size_1;
    }
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (NTKEditOption)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKEditOption;
  v6 = [(NTKEditOption *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  device = self->_device;
  coderCopy = coder;
  pairingID = [(CLKDevice *)device pairingID];
  [coderCopy encodeObject:pairingID forKey:@"DeviceUUIDKey"];
}

- (NTKEditOption)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUIDKey"];

  v6 = [MEMORY[0x277CBBAE8] deviceForPairingID:v5];
  v7 = [(NTKEditOption *)self initWithDevice:v6];

  return v7;
}

- (NSString)dailySnapshotKey
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (NSString)localizedName
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (id)JSONObjectRepresentation
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

- (NTKEditOption)initWithJSONObjectRepresentation:(id)representation forDevice:(id)device
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();

  return 0;
}

- (BOOL)isValidOption
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_5();
  return 0;
}

@end
@interface NTKEditOption
+ (CGSize)sizeForSwatchStyle:(int64_t)a3;
- (BOOL)isValidOption;
- (NSString)dailySnapshotKey;
- (NSString)localizedName;
- (NTKEditOption)initWithCoder:(id)a3;
- (NTKEditOption)initWithDevice:(id)a3;
- (NTKEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (id)JSONObjectRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKEditOption

+ (CGSize)sizeForSwatchStyle:(int64_t)a3
{
  v3 = 0.0;
  if (a3 <= 1)
  {
    if (a3)
    {
      v4 = 0.0;
      if (a3 == 1)
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

  else if (a3 == 2)
  {
    v4 = _smallRectSwatchSize();
  }

  else if (a3 == 3)
  {
    v4 = _largeRectSwatchSize();
  }

  else
  {
    v4 = 0.0;
    if (a3 == 4)
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

- (NTKEditOption)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKEditOption;
  v6 = [(NTKEditOption *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  device = self->_device;
  v4 = a3;
  v5 = [(CLKDevice *)device pairingID];
  [v4 encodeObject:v5 forKey:@"DeviceUUIDKey"];
}

- (NTKEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceUUIDKey"];

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

- (NTKEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
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
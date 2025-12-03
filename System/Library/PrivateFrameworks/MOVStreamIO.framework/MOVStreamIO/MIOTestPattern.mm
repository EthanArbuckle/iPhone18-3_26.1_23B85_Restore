@interface MIOTestPattern
+ (id)colorBarsForYCbCrMatrix:(const __CFString *)matrix amplitude:(double)amplitude area:(CGRect)area error:(id *)error;
+ (id)matrixCoefficientsForYCbCrMatrix:(const __CFString *)matrix error:(id *)error;
- (CGRect)area;
- (MIOTestPattern)initWithName:(id)name area:(CGRect)area parameters:(id)parameters;
@end

@implementation MIOTestPattern

+ (id)matrixCoefficientsForYCbCrMatrix:(const __CFString *)matrix error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v13 = 0.0;
  v6 = matrix_coefficients_from_string(matrix, &v13, &v12);
  if (error)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v14[0] = @"kR";
    matrix = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v14[1] = @"kB";
    v15[0] = matrix;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    matrix = [MEMORY[0x277CCACA8] stringWithFormat:@"kR, kB not supported for '%@'.", matrix];
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:matrix code:33];
    *error = v10 = 0;
  }

  return v10;
}

+ (id)colorBarsForYCbCrMatrix:(const __CFString *)matrix amplitude:(double)amplitude area:(CGRect)area error:(id *)error
{
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  v19 = 0.0;
  v20 = 0.0;
  v13 = matrix_coefficients_from_string(matrix, &v20, &v19);
  if (!error || (v13 & 1) != 0)
  {
    v16 = [MIOTestPattern matrixCoefficientsForYCbCrMatrix:matrix error:error];
    matrix = [v16 mutableCopy];

    if (matrix)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:amplitude];
      [matrix setObject:v17 forKey:@"amplitude"];

      height = [[MIOTestPattern alloc] initWithName:@"ColorBars" area:matrix parameters:x, y, width, height];
    }

    else
    {
      height = 0;
    }
  }

  else
  {
    matrix = [MEMORY[0x277CCACA8] stringWithFormat:@"kR, kB not supported for '%@'.", matrix];
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:matrix code:33];
    *error = height = 0;
  }

  return height;
}

- (MIOTestPattern)initWithName:(id)name area:(CGRect)area parameters:(id)parameters
{
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  nameCopy = name;
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = MIOTestPattern;
  v14 = [(MIOTestPattern *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    v15->_area.origin.x = x;
    v15->_area.origin.y = y;
    v15->_area.size.width = width;
    v15->_area.size.height = height;
    v16 = [parametersCopy copy];
    parameters = v15->_parameters;
    v15->_parameters = v16;
  }

  return v15;
}

- (CGRect)area
{
  objc_copyStruct(v6, &self->_area, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end
@interface MIOTestPattern
+ (id)colorBarsForYCbCrMatrix:(const __CFString *)a3 amplitude:(double)a4 area:(CGRect)a5 error:(id *)a6;
+ (id)matrixCoefficientsForYCbCrMatrix:(const __CFString *)a3 error:(id *)a4;
- (CGRect)area;
- (MIOTestPattern)initWithName:(id)a3 area:(CGRect)a4 parameters:(id)a5;
@end

@implementation MIOTestPattern

+ (id)matrixCoefficientsForYCbCrMatrix:(const __CFString *)a3 error:(id *)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v13 = 0.0;
  v6 = matrix_coefficients_from_string(a3, &v13, &v12);
  if (a4)
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
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
    v14[1] = @"kB";
    v15[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v15[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"kR, kB not supported for '%@'.", a3];
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:v8 code:33];
    *a4 = v10 = 0;
  }

  return v10;
}

+ (id)colorBarsForYCbCrMatrix:(const __CFString *)a3 amplitude:(double)a4 area:(CGRect)a5 error:(id *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19 = 0.0;
  v20 = 0.0;
  v13 = matrix_coefficients_from_string(a3, &v20, &v19);
  if (!a6 || (v13 & 1) != 0)
  {
    v16 = [MIOTestPattern matrixCoefficientsForYCbCrMatrix:a3 error:a6];
    v14 = [v16 mutableCopy];

    if (v14)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      [v14 setObject:v17 forKey:@"amplitude"];

      v15 = [[MIOTestPattern alloc] initWithName:@"ColorBars" area:v14 parameters:x, y, width, height];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"kR, kB not supported for '%@'.", a3];
    [MEMORY[0x277CCA9B8] writerErrorWithMessage:v14 code:33];
    *a6 = v15 = 0;
  }

  return v15;
}

- (MIOTestPattern)initWithName:(id)a3 area:(CGRect)a4 parameters:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = MIOTestPattern;
  v14 = [(MIOTestPattern *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    v15->_area.origin.x = x;
    v15->_area.origin.y = y;
    v15->_area.size.width = width;
    v15->_area.size.height = height;
    v16 = [v13 copy];
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
@interface CBColorSample
- ($1AB5FA073B851C12C2339EC22442E995)Lab;
- ($1AB5FA073B851C12C2339EC22442E995)XYZ;
- ($F24F406B2B787EFB06265DBA3D28CBD5)xy;
- (CBColorSample)init;
- (CBColorSample)initWithChromaticity:(id)a3 illuminance:(double)a4 andTempterature:(double)a5;
- (CBColorSample)initWithHIDEvent:(__IOHIDEvent *)a3;
- (CBColorSample)initWithTristimulus:(id)a3 illuminance:(double)a4 andTempterature:(double)a5;
- (CFXColorSample)colorSample;
- (double)CCTDifferenceWith:(id)a3;
- (double)LuxDifferenceWith:(id)a3;
- (double)colorDeltaEWith:(id)a3;
- (id)copyDataInDictionary;
- (id)description;
- (int64_t)colorBin;
- (void)fillInChromaticity;
- (void)fillInTristimulus;
@end

@implementation CBColorSample

- (void)fillInChromaticity
{
  if (self->_XYZ.X + self->_XYZ.Y + self->_XYZ.Z == 0.0)
  {
    self->_xy.x = 0.0;
    self->_xy.y = 0.0;
  }

  else
  {
    self->_xy.x = self->_XYZ.X / (self->_XYZ.X + self->_XYZ.Y + self->_XYZ.Z);
    self->_xy.y = self->_XYZ.Y / (self->_XYZ.X + self->_XYZ.Y + self->_XYZ.Z);
  }
}

- (id)copyDataInDictionary
{
  v11 = self;
  v10 = a2;
  v9 = 0;
  v3[12] = 0x1E696A000uLL;
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:self->_lux];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v11->_CCT];
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v11->_xy.x];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v11->_xy.y];
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v11->_mode];
  if (v8 && v7 && v6 && v5 && v4)
  {
    v3[11] = v3;
    v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"lux", v7, @"CCT", v6, @"x", v5, @"y", v4, @"mode", 0}];
  }

  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v5);
  return v9;
}

- ($1AB5FA073B851C12C2339EC22442E995)XYZ
{
  Y = self->_XYZ.Y;
  X = self->_XYZ.X;
  Z = self->_XYZ.Z;
  result.var2 = Z;
  result.var1 = Y;
  result.var0 = X;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)xy
{
  y = self->_xy.y;
  x = self->_xy.x;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (CFXColorSample)colorSample
{
  result = memset(retstr, 0, sizeof(CFXColorSample));
  X = self->_XYZ.X;
  retstr->XYZ[0] = X;
  Y = self->_XYZ.Y;
  retstr->XYZ[1] = Y;
  Z = self->_XYZ.Z;
  retstr->XYZ[2] = Z;
  CCT = self->_CCT;
  retstr->CCT1 = CCT;
  if (retstr->XYZ[0] == 0.0 || retstr->XYZ[1] == 0.0)
  {
    retstr->xy.y = 0.0;
    retstr->xy.x = 0.0;
  }

  else
  {
    CFXTristimulus2Chromaticity_1(retstr->XYZ, &retstr->xy);
  }

  return result;
}

- (CBColorSample)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = CBColorSample;
  v5 = [(CBColorSample *)&v3 init];
  if (v5)
  {
    v5->_lux = -1.0;
    v5->_CCT = 0.0;
    v5->_XYZ.X = 0.0;
    v5->_XYZ.Y = 0.0;
    v5->_XYZ.Z = 0.0;
    v5->_xy.x = 0.0;
    v5->_xy.y = 0.0;
  }

  return v5;
}

- (CBColorSample)initWithTristimulus:(id)a3 illuminance:(double)a4 andTempterature:(double)a5
{
  *&v12 = a3.var0;
  *(&v12 + 1) = *&a3.var1;
  var2 = a3.var2;
  v11 = self;
  v10 = a2;
  v9 = a4;
  v8 = a5;
  v7.receiver = self;
  v7.super_class = CBColorSample;
  v11 = [(CBColorSample *)&v7 init];
  if (v11)
  {
    *(v11 + 1) = v9;
    *(v11 + 2) = v8;
    v5 = v11;
    *(v11 + 56) = v12;
    v5[9] = var2;
    [v11 fillInChromaticity];
  }

  return v11;
}

- (CBColorSample)initWithChromaticity:(id)a3 illuminance:(double)a4 andTempterature:(double)a5
{
  v11 = a3;
  v10 = self;
  v9 = a2;
  v8 = a4;
  v7 = a5;
  v6.receiver = self;
  v6.super_class = CBColorSample;
  v10 = [(CBColorSample *)&v6 init];
  if (v10)
  {
    *(v10 + 1) = v8;
    *(v10 + 2) = v7;
    *(v10 + 40) = v11;
    [v10 fillInTristimulus];
  }

  return v10;
}

- (CBColorSample)initWithHIDEvent:(__IOHIDEvent *)a3
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  if (IOHIDEventGetType() == 12)
  {
    if (IOHIDEventGetIntegerValue() == 1)
    {
      v15.receiver = v24;
      v15.super_class = CBColorSample;
      v24 = [(CBColorSample *)&v15 init];
      if (v24)
      {
        IOHIDEventGetDoubleValue();
        v24->_lux = v3;
        IOHIDEventGetDoubleValue();
        v24->_CCT = v4;
        IOHIDEventGetDoubleValue();
        v24->_XYZ.X = v5;
        IOHIDEventGetDoubleValue();
        v24->_XYZ.Y = v6;
        IOHIDEventGetDoubleValue();
        v24->_XYZ.Z = v7;
        [(CBColorSample *)v24 fillInChromaticity];
      }

      return v24;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v18 = inited;
      v17 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        v9 = v18;
        v10 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_error_impl(&dword_1DE8E5000, v9, v10, "ERROR: unsupported color space", v16, 2u);
      }

      return 0;
    }
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v14 = init_default_corebrightness_log();
    }

    v21 = v14;
    v20 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "ERROR: not an ALS event", v19, 2u);
    }

    return 0;
  }
}

- (void)fillInTristimulus
{
  if (self->_xy.y == 0.0)
  {
    self->_XYZ.X = 0.0;
    self->_XYZ.Y = 0.0;
    self->_XYZ.Z = 0.0;
  }

  else
  {
    self->_XYZ.X = self->_xy.x / self->_xy.y * self->_lux / 3.14159265;
    self->_XYZ.Y = self->_lux / 3.14159265;
    self->_XYZ.Z = (1.0 - self->_xy.x - self->_xy.y) / self->_xy.y * self->_XYZ.Y;
  }
}

- ($1AB5FA073B851C12C2339EC22442E995)Lab
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = self;
  v10 = a2;
  v15 = 0;
  v16 = 0.0;
  X = self->_XYZ.X;
  *&v15 = X;
  Y = self->_XYZ.Y;
  *(&v15 + 1) = Y;
  Z = self->_XYZ.Z;
  v16 = Z;
  v8 = 0;
  v9 = 0.0;
  CFXTristimulus2Lab(&v15, &v8);
  v12 = *&v8;
  v13 = *(&v8 + 1);
  v14 = v9;
  *MEMORY[0x1E69E9840];
  v5 = v9;
  v6 = *(&v8 + 1);
  v7 = *&v8;
  result.var2 = v5;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

- (double)colorDeltaEWith:(id)a3
{
  v18 = 0.0;
  if (a3)
  {
    [(CBColorSample *)self Lab];
    v15 = v3;
    v16 = v4;
    v17 = v5;
    [a3 Lab];
    v13 = v6;
    v14 = v7;
    v11 = pow(v15 - v8, 2.0);
    v12 = v11 + pow(v16 - v13, 2.0);
    v9 = pow(v17 - v14, 2.0);
    return pow(v12 + v9, 0.5);
  }

  return v18;
}

- (double)CCTDifferenceWith:(id)a3
{
  v7 = 0.0;
  if (a3)
  {
    [(CBColorSample *)self CCT];
    v6 = v3;
    [a3 CCT];
    return vabdd_f64(v6, v4);
  }

  return v7;
}

- (double)LuxDifferenceWith:(id)a3
{
  v7 = 0.0;
  if (a3)
  {
    [(CBColorSample *)self lux];
    v6 = v3;
    [a3 lux];
    return vabdd_f64(v6, v4);
  }

  return v7;
}

- (int64_t)colorBin
{
  v7 = self;
  v6[1] = a2;
  v6[0] = 0;
  [(CBColorSample *)self xy];
  *&v2 = v2;
  LODWORD(v6[0]) = LODWORD(v2);
  [(CBColorSample *)v7 xy];
  v4 = v3;
  *(v6 + 1) = v4;
  return CFXAnsiBinFromChromaticity(v6);
}

- (id)description
{
  v4 = self;
  v3 = a2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Lux = %f; CCT = %f; XYZ = [%f, %f, %f]; xy = [%f, %f]", *&self->_lux, *&self->_CCT, *&self->_XYZ.X, *&self->_XYZ.Y, *&self->_XYZ.Z, *&self->_xy.x, *&self->_xy.y];
}

@end
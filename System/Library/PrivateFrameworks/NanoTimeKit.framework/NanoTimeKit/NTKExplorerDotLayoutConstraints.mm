@interface NTKExplorerDotLayoutConstraints
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutConstraints:(id)a3;
- (NTKExplorerDotLayoutConstraints)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKExplorerDotLayoutConstraints

- (BOOL)isEqualToLayoutConstraints:(id)a3
{
  v4 = a3;
  dotDiameter = self->_dotDiameter;
  [v4 dotDiameter];
  if (vabdd_f64(dotDiameter, v6) >= 2.22044605e-16 || (dotBorderWidth = self->_dotBorderWidth, [v4 dotBorderWidth], vabdd_f64(dotBorderWidth, v8) >= 2.22044605e-16) || (dotSpacing = self->_dotSpacing, objc_msgSend(v4, "dotSpacing"), vabdd_f64(dotSpacing, v10) >= 2.22044605e-16))
  {
    v13 = 0;
  }

  else
  {
    noServiceDotHeight = self->_noServiceDotHeight;
    [v4 noServiceDotHeight];
    v13 = vabdd_f64(noServiceDotHeight, v12) < 2.22044605e-16;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NTKExplorerDotLayoutConstraints *)self isEqualToLayoutConstraints:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dotDiameter];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dotBorderWidth];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_dotSpacing];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_noServiceDotHeight];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NTKExplorerDotLayoutConstraints);
  v5 = v4;
  if (v4)
  {
    [(NTKExplorerDotLayoutConstraints *)v4 setDotDiameter:self->_dotDiameter];
    [(NTKExplorerDotLayoutConstraints *)v5 setDotBorderWidth:self->_dotBorderWidth];
    [(NTKExplorerDotLayoutConstraints *)v5 setDotSpacing:self->_dotSpacing];
    [(NTKExplorerDotLayoutConstraints *)v5 setNoServiceDotHeight:self->_noServiceDotHeight];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dotDiameter = self->_dotDiameter;
  v5 = a3;
  [v5 encodeDouble:@"dotDiameterKey" forKey:dotDiameter];
  [v5 encodeDouble:@"dotBorderWidthKey" forKey:self->_dotBorderWidth];
  [v5 encodeDouble:@"dotSpacingKey" forKey:self->_dotSpacing];
  [v5 encodeDouble:@"noServiceDotHeightKey" forKey:self->_noServiceDotHeight];
}

- (NTKExplorerDotLayoutConstraints)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NTKExplorerDotLayoutConstraints *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"dotDiameterKey"];
    v5->_dotDiameter = v6;
    [v4 decodeDoubleForKey:@"dotBorderWidthKey"];
    v5->_dotBorderWidth = v7;
    [v4 decodeDoubleForKey:@"dotSpacingKey"];
    v5->_dotSpacing = v8;
    [v4 decodeDoubleForKey:@"noServiceDotHeightKey"];
    v5->_noServiceDotHeight = v9;
  }

  return v5;
}

@end
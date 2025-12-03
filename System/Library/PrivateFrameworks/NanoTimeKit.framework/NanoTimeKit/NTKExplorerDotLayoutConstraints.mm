@interface NTKExplorerDotLayoutConstraints
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutConstraints:(id)constraints;
- (NTKExplorerDotLayoutConstraints)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKExplorerDotLayoutConstraints

- (BOOL)isEqualToLayoutConstraints:(id)constraints
{
  constraintsCopy = constraints;
  dotDiameter = self->_dotDiameter;
  [constraintsCopy dotDiameter];
  if (vabdd_f64(dotDiameter, v6) >= 2.22044605e-16 || (dotBorderWidth = self->_dotBorderWidth, [constraintsCopy dotBorderWidth], vabdd_f64(dotBorderWidth, v8) >= 2.22044605e-16) || (dotSpacing = self->_dotSpacing, objc_msgSend(constraintsCopy, "dotSpacing"), vabdd_f64(dotSpacing, v10) >= 2.22044605e-16))
  {
    v13 = 0;
  }

  else
  {
    noServiceDotHeight = self->_noServiceDotHeight;
    [constraintsCopy noServiceDotHeight];
    v13 = vabdd_f64(noServiceDotHeight, v12) < 2.22044605e-16;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NTKExplorerDotLayoutConstraints *)self isEqualToLayoutConstraints:equalCopy];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  dotDiameter = self->_dotDiameter;
  coderCopy = coder;
  [coderCopy encodeDouble:@"dotDiameterKey" forKey:dotDiameter];
  [coderCopy encodeDouble:@"dotBorderWidthKey" forKey:self->_dotBorderWidth];
  [coderCopy encodeDouble:@"dotSpacingKey" forKey:self->_dotSpacing];
  [coderCopy encodeDouble:@"noServiceDotHeightKey" forKey:self->_noServiceDotHeight];
}

- (NTKExplorerDotLayoutConstraints)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NTKExplorerDotLayoutConstraints *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"dotDiameterKey"];
    v5->_dotDiameter = v6;
    [coderCopy decodeDoubleForKey:@"dotBorderWidthKey"];
    v5->_dotBorderWidth = v7;
    [coderCopy decodeDoubleForKey:@"dotSpacingKey"];
    v5->_dotSpacing = v8;
    [coderCopy decodeDoubleForKey:@"noServiceDotHeightKey"];
    v5->_noServiceDotHeight = v9;
  }

  return v5;
}

@end
@interface CUPowerSourceLEDInfo
- (BOOL)isEqual:(id)equal;
- (CUPowerSourceLEDInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CUPowerSourceLEDInfo

- (id)description
{
  v28 = 0;
  NSAppendPrintF(&v28, "CUPowerSourceLEDInfo %{ptr}", v2, v3, v4, v5, v6, v7, self);
  v9 = v28;
  v27 = v9;
  NSAppendPrintF(&v27, ", St %d (%s)", v10, v11, v12, v13, v14, v15, self->_LEDState);
  v16 = v27;

  v26 = v16;
  NSAppendPrintF(&v26, ", Cl %d (%s)", v17, v18, v19, v20, v21, v22, self->_LEDColor);
  v23 = v26;
  v24 = v26;

  return v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (LEDState = self->_LEDState, LEDState == [equalCopy LEDState]))
  {
    LEDColor = self->_LEDColor;
    v7 = LEDColor == [equalCopy LEDColor];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  LEDState = self->_LEDState;
  v7 = coderCopy;
  if (LEDState)
  {
    [coderCopy encodeInteger:LEDState forKey:@"state"];
    coderCopy = v7;
  }

  LEDColor = self->_LEDColor;
  if (LEDColor)
  {
    [v7 encodeInteger:LEDColor forKey:@"color"];
    coderCopy = v7;
  }
}

- (CUPowerSourceLEDInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CUPowerSourceLEDInfo;
  v5 = [(CUPowerSourceLEDInfo *)&v8 init];
  if (v5)
  {
    v9 = 0;
    if (NSDecodeSInt64RangedIfPresent(coderCopy, @"state", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v9))
    {
      v5->_LEDState = v9;
    }

    v9 = 0;
    if (NSDecodeSInt64RangedIfPresent(coderCopy, @"color", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, &v9))
    {
      v5->_LEDColor = v9;
    }

    v6 = v5;
  }

  return v5;
}

@end
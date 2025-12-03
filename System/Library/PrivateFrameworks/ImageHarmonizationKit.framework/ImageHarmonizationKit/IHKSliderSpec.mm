@interface IHKSliderSpec
- (IHKSliderSpec)init;
- (IHKSliderSpec)initWithMin:(double)min max:(double)max;
- (IHKSliderSpec)initWithMin:(double)min max:(double)max identity:(double)identity;
- (double)toNativeRange:(double)range;
- (double)toNormalizedRange:(double)range;
- (id)description;
- (void)_initWithMin:(double)min max:(double)max identity:(double)identity;
@end

@implementation IHKSliderSpec

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  objc_msgSend_identity(self, a2, v2, v3, v4);
  v8 = v7;
  objc_msgSend_min(self, v9, v10, v11, v12);
  v14 = v13;
  objc_msgSend_max(self, v15, v16, v17, v18);
  return objc_msgSend_stringWithFormat_(v6, v19, @"<IHKSliderSpec identity: %.2f, min: %.2f, max:%.2f>", v20, v21, v8, v14, v22);
}

- (void)_initWithMin:(double)min max:(double)max identity:(double)identity
{
  objc_msgSend_setMin_(self, a2, v5, v6, v7, min);
  objc_msgSend_setMax_(self, v10, v11, v12, v13, max);

  MEMORY[0x2821F9670](self, sel_setIdentity_, v14, v15, v16);
}

- (IHKSliderSpec)init
{
  v8.receiver = self;
  v8.super_class = IHKSliderSpec;
  result = [(IHKSliderSpec *)&v8 init];
  if (result)
  {
    v7 = result;
    objc_msgSend__initWithMin_max_identity_(result, v3, v4, v5, v6, -1.0, 1.0, 0.0);
    return v7;
  }

  return result;
}

- (IHKSliderSpec)initWithMin:(double)min max:(double)max
{
  v12.receiver = self;
  v12.super_class = IHKSliderSpec;
  result = [(IHKSliderSpec *)&v12 init];
  if (result)
  {
    v11 = result;
    objc_msgSend__initWithMin_max_identity_(result, v7, v8, v9, v10, min, max, 0.0);
    return v11;
  }

  return result;
}

- (IHKSliderSpec)initWithMin:(double)min max:(double)max identity:(double)identity
{
  v14.receiver = self;
  v14.super_class = IHKSliderSpec;
  result = [(IHKSliderSpec *)&v14 init];
  if (result)
  {
    v13 = result;
    objc_msgSend__initWithMin_max_identity_(result, v9, v10, v11, v12, min, max, identity);
    return v13;
  }

  return result;
}

- (double)toNormalizedRange:(double)range
{
  objc_msgSend_identity(self, a2, v3, v4, v5);
  if (v12 <= range)
  {
    objc_msgSend_identity(self, v8, v9, v10, v11);
    v28 = range - v27;
    objc_msgSend_max(self, v29, v30, v31, v32);
    v34 = v33;
    objc_msgSend_identity(self, v35, v36, v37, v38);
    return v28 / (v34 - v39);
  }

  else
  {
    objc_msgSend_min(self, v8, v9, v10, v11);
    v14 = range - v13;
    objc_msgSend_identity(self, v15, v16, v17, v18);
    v20 = v19;
    objc_msgSend_min(self, v21, v22, v23, v24);
    return v14 / (v20 - v25) + -1.0;
  }
}

- (double)toNativeRange:(double)range
{
  if (range >= 0.0)
  {
    objc_msgSend_max(self, a2, v3, v4, v5);
    v9 = v19;
    objc_msgSend_identity(self, v20, v21, v22, v23);
  }

  else
  {
    objc_msgSend_identity(self, a2, v3, v4, v5);
    v9 = v8;
    objc_msgSend_min(self, v10, v11, v12, v13);
  }

  v24 = (v9 - v18) * range;
  objc_msgSend_identity(self, v14, v15, v16, v17);
  return v25 + v24;
}

@end
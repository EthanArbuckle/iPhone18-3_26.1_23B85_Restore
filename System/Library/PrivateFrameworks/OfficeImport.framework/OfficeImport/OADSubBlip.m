@interface OADSubBlip
- (BOOL)isEqual:(id)a3;
- (BOOL)isLoaded;
- (CGRect)frame;
- (CGSize)sizeInPoints;
- (OADSubBlip)initWithData:(id)a3 type:(int)a4;
- (unint64_t)hash;
- (void)setData:(id)a3;
@end

@implementation OADSubBlip

- (BOOL)isLoaded
{
  if (!*&self->mType)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = OADSubBlip;
  return [(OCDDelayedNode *)&v3 isLoaded];
}

- (OADSubBlip)initWithData:(id)a3 type:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OADSubBlip;
  v8 = [(OADSubBlip *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a3);
    *(&v9->super.super.mLoaded + 1) = a4;
    if (v7)
    {
      LODWORD(v9->mSizeInPoints.height) = [v7 length];
    }
  }

  return v9;
}

- (void)setData:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->mType, a3);
  v5 = v6;
  if (v6)
  {
    LODWORD(self->mSizeInPoints.height) = [v6 length];
    v5 = v6;
  }
}

- (CGSize)sizeInPoints
{
  mData = self->mData;
  width = self->mSizeInPoints.width;
  result.height = width;
  result.width = *&mData;
  return result;
}

- (CGRect)frame
{
  v2 = *&self->mSizeInBytes;
  x = self->mFrame.origin.x;
  y = self->mFrame.origin.y;
  width = self->mFrame.size.width;
  result.size.height = width;
  result.size.width = y;
  result.origin.y = x;
  result.origin.x = v2;
  return result;
}

- (unint64_t)hash
{
  v3 = *(&self->super.super.mLoaded + 1);
  v4 = [*&self->mType hash];
  v5 = veorq_s8(vcvtq_u64_f64(*&self->mData), vcvtq_u64_f64(*&self->mFrame.origin.y));
  return *&veor_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) ^ *&self->mSizeInBytes ^ self->mFrame.origin.x ^ v3 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  v7 = *(&self->super.super.mLoaded + 1);
  if (v7 != [v5 type] || !TCObjectEqual(*&self->mType, v6[3]))
  {
    goto LABEL_12;
  }

  mData = self->mData;
  width = self->mSizeInPoints.width;
  [v6 sizeInPoints];
  if (*&mData != v11 || width != v10)
  {
    goto LABEL_12;
  }

  v13 = *&self->mSizeInBytes;
  x = self->mFrame.origin.x;
  y = self->mFrame.origin.y;
  v16 = self->mFrame.size.width;
  [v6 frame];
  v24.origin.x = v17;
  v24.origin.y = v18;
  v24.size.width = v19;
  v24.size.height = v20;
  v23.origin.x = v13;
  v23.origin.y = x;
  v23.size.width = y;
  v23.size.height = v16;
  v21 = CGRectEqualToRect(v23, v24);
LABEL_13:

  return v21;
}

@end
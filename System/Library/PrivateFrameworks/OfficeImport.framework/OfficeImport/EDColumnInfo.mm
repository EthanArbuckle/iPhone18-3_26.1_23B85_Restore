@interface EDColumnInfo
+ (id)columnInfoWithResources:(id)a3 worksheet:(id)a4;
- (EDColumnInfo)initWithResources:(id)a3 worksheet:(id)a4;
- (NSString)description;
- (double)width;
- (id)copyWithZone:(_NSZone *)a3;
- (id)style;
- (void)setOutlineLevel:(unsigned __int8)a3;
- (void)setRange:(id)a3;
- (void)setRangeWithFirstColumn:(int)a3 lastColumn:(int)a4;
- (void)setStyle:(id)a3;
- (void)setWidth:(double)a3;
@end

@implementation EDColumnInfo

- (double)width
{
  v3 = vcvtd_n_f64_s32([(EDColumnInfo *)self widthInXlUnits], 8uLL);
  if (v3 == 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->mWorksheet);
    [WeakRetained defaultColumnWidth];
    v3 = v5;
  }

  v6 = objc_loadWeakRetained(&self->mWorksheet);
  if (v6)
  {
    v7 = v6;
    v8 = objc_loadWeakRetained(&self->mWorksheet);
    v9 = [v8 isDisplayFormulas];

    if (v9)
    {
      return v3 + v3;
    }
  }

  return v3;
}

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained styles];

  v5 = [v4 objectAtIndex:self->mStyleIndex];

  return v5;
}

- (EDColumnInfo)initWithResources:(id)a3 worksheet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EDColumnInfo;
  v8 = [(EDColumnInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->mWorksheet, v7);
    objc_storeWeak(&v9->mResources, v6);
    v9->mWidth = 0;
    v9->mHidden = 0;
    v9->mStyleIndex = -1;
    v9->mOutlineLevel = 0;
  }

  return v9;
}

+ (id)columnInfoWithResources:(id)a3 worksheet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithResources:v5 worksheet:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v7 = objc_loadWeakRetained(&self->mWorksheet);
  v8 = [v5 initWithResources:WeakRetained worksheet:v7];

  if (v8)
  {
    *(v8 + 24) = self->mWidth;
    *(v8 + 28) = self->mHidden;
    v9 = [(EDReference *)self->mRange copyWithZone:a3];
    v10 = *(v8 + 32);
    *(v8 + 32) = v9;

    *(v8 + 40) = self->mStyleIndex;
    *(v8 + 48) = self->mOutlineLevel;
    v11 = v8;
  }

  return v8;
}

- (void)setWidth:(double)a3
{
  v3 = vcvtd_n_s64_f64(a3, 8uLL);
  if (v3 <= 0)
  {
    v4 = -(-v3 & 7);
  }

  else
  {
    v4 = v3 & 7;
  }

  [(EDColumnInfo *)self setWidthInXlUnits:(v4 + v3)];
}

- (void)setRange:(id)a3
{
  v5 = a3;
  mRange = self->mRange;
  p_mRange = &self->mRange;
  if (mRange != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mRange, a3);
    v5 = v8;
  }
}

- (void)setRangeWithFirstColumn:(int)a3 lastColumn:(int)a4
{
  v5 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:*&a3 lastColumn:*&a4];
  [(EDColumnInfo *)self setRange:?];
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained styles];

  self->mStyleIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setOutlineLevel:(unsigned __int8)a3
{
  self->mOutlineLevel = a3;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->mWorksheet);
    [WeakRetained updateMaxColumnOutlineLevelIfNeeded:self->mOutlineLevel];
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDColumnInfo;
  v2 = [(EDColumnInfo *)&v4 description];

  return v2;
}

@end
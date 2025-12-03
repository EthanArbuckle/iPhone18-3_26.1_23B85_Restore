@interface EDColumnInfo
+ (id)columnInfoWithResources:(id)resources worksheet:(id)worksheet;
- (EDColumnInfo)initWithResources:(id)resources worksheet:(id)worksheet;
- (NSString)description;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)style;
- (void)setOutlineLevel:(unsigned __int8)level;
- (void)setRange:(id)range;
- (void)setRangeWithFirstColumn:(int)column lastColumn:(int)lastColumn;
- (void)setStyle:(id)style;
- (void)setWidth:(double)width;
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
    isDisplayFormulas = [v8 isDisplayFormulas];

    if (isDisplayFormulas)
    {
      return v3 + v3;
    }
  }

  return v3;
}

- (id)style
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  styles = [WeakRetained styles];

  v5 = [styles objectAtIndex:self->mStyleIndex];

  return v5;
}

- (EDColumnInfo)initWithResources:(id)resources worksheet:(id)worksheet
{
  resourcesCopy = resources;
  worksheetCopy = worksheet;
  v11.receiver = self;
  v11.super_class = EDColumnInfo;
  v8 = [(EDColumnInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->mWorksheet, worksheetCopy);
    objc_storeWeak(&v9->mResources, resourcesCopy);
    v9->mWidth = 0;
    v9->mHidden = 0;
    v9->mStyleIndex = -1;
    v9->mOutlineLevel = 0;
  }

  return v9;
}

+ (id)columnInfoWithResources:(id)resources worksheet:(id)worksheet
{
  resourcesCopy = resources;
  worksheetCopy = worksheet;
  v7 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy worksheet:worksheetCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v7 = objc_loadWeakRetained(&self->mWorksheet);
  v8 = [v5 initWithResources:WeakRetained worksheet:v7];

  if (v8)
  {
    *(v8 + 24) = self->mWidth;
    *(v8 + 28) = self->mHidden;
    v9 = [(EDReference *)self->mRange copyWithZone:zone];
    v10 = *(v8 + 32);
    *(v8 + 32) = v9;

    *(v8 + 40) = self->mStyleIndex;
    *(v8 + 48) = self->mOutlineLevel;
    v11 = v8;
  }

  return v8;
}

- (void)setWidth:(double)width
{
  v3 = vcvtd_n_s64_f64(width, 8uLL);
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

- (void)setRange:(id)range
{
  rangeCopy = range;
  mRange = self->mRange;
  p_mRange = &self->mRange;
  if (mRange != rangeCopy)
  {
    v8 = rangeCopy;
    objc_storeStrong(p_mRange, range);
    rangeCopy = v8;
  }
}

- (void)setRangeWithFirstColumn:(int)column lastColumn:(int)lastColumn
{
  v5 = [EDReference referenceWithFirstRow:0xFFFFFFFFLL lastRow:0xFFFFFFFFLL firstColumn:*&column lastColumn:*&lastColumn];
  [(EDColumnInfo *)self setRange:?];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  styles = [WeakRetained styles];

  self->mStyleIndex = [styles addOrEquivalentObject:styleCopy];
}

- (void)setOutlineLevel:(unsigned __int8)level
{
  self->mOutlineLevel = level;
  if (level)
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
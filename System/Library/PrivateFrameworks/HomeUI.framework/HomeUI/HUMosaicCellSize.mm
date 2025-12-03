@interface HUMosaicCellSize
+ (id)createMosaicCellSizeForSizeDescription:(unint64_t)description;
@end

@implementation HUMosaicCellSize

+ (id)createMosaicCellSizeForSizeDescription:(unint64_t)description
{
  v4 = objc_alloc_init(HUMosaicCellSize);
  [(HUMosaicCellSize *)v4 setSizeDescription:description];
  v5 = description - 1;
  if (description - 1 <= 3)
  {
    v6 = qword_20D5CB328[v5];
    [(HUMosaicCellSize *)v4 setNumCols:qword_20D5CB308[v5]];
    [(HUMosaicCellSize *)v4 setNumRows:v6];
  }

  return v4;
}

@end
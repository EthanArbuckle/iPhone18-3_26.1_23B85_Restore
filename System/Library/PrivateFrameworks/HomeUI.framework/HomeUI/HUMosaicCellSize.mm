@interface HUMosaicCellSize
+ (id)createMosaicCellSizeForSizeDescription:(unint64_t)a3;
@end

@implementation HUMosaicCellSize

+ (id)createMosaicCellSizeForSizeDescription:(unint64_t)a3
{
  v4 = objc_alloc_init(HUMosaicCellSize);
  [(HUMosaicCellSize *)v4 setSizeDescription:a3];
  v5 = a3 - 1;
  if (a3 - 1 <= 3)
  {
    v6 = qword_20D5CB328[v5];
    [(HUMosaicCellSize *)v4 setNumCols:qword_20D5CB308[v5]];
    [(HUMosaicCellSize *)v4 setNumRows:v6];
  }

  return v4;
}

@end
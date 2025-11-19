@interface HKHistogramBarSeries
- (HKHistogramBarSeries)initWithFillStyle:(id)a3 numberOfColumns:(unint64_t)a4 cornerRadii:(CGSize)a5;
- (unint64_t)numberOfColumns;
- (void)setNumberOfColumns:(unint64_t)a3;
@end

@implementation HKHistogramBarSeries

- (HKHistogramBarSeries)initWithFillStyle:(id)a3 numberOfColumns:(unint64_t)a4 cornerRadii:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a3;
  v19.receiver = self;
  v19.super_class = HKHistogramBarSeries;
  v10 = [(HKBarSeries *)&v19 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v10->_seriesMutableStateLock;
    v10->_seriesMutableStateLock = v11;

    [(NSLock *)v10->_seriesMutableStateLock setName:@"HKHistogramBarSeriesLock"];
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:3.0];
    v15 = objc_alloc_init(HKStrokeStyle);
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    v17 = [v16 colorWithAlphaComponent:0.95];
    [(HKStrokeStyle *)v15 setStrokeColor:v17];

    [(HKStrokeStyle *)v15 setLineWidth:3.0];
    [(HKStrokeStyle *)v15 setBlendMode:22];
    [(HKBarSeries *)v10 setUnselectedStrokeStyle:v15];
    [(HKBarSeries *)v10 setTiledStrokeStyle:v14];
    [(HKBarSeries *)v10 setUnselectedFillStyle:v9];
    [(HKBarSeries *)v10 setCornerRadii:width, height];
    v10->_numberOfColumnsStorage = a4;
  }

  return v10;
}

- (unint64_t)numberOfColumns
{
  v3 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  numberOfColumnsStorage = self->_numberOfColumnsStorage;
  v5 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return numberOfColumnsStorage;
}

- (void)setNumberOfColumns:(unint64_t)a3
{
  v5 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_numberOfColumnsStorage = a3;
  v6 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

@end
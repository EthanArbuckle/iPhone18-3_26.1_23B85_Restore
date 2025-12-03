@interface HKHistogramBarSeries
- (HKHistogramBarSeries)initWithFillStyle:(id)style numberOfColumns:(unint64_t)columns cornerRadii:(CGSize)radii;
- (unint64_t)numberOfColumns;
- (void)setNumberOfColumns:(unint64_t)columns;
@end

@implementation HKHistogramBarSeries

- (HKHistogramBarSeries)initWithFillStyle:(id)style numberOfColumns:(unint64_t)columns cornerRadii:(CGSize)radii
{
  height = radii.height;
  width = radii.width;
  styleCopy = style;
  v19.receiver = self;
  v19.super_class = HKHistogramBarSeries;
  v10 = [(HKBarSeries *)&v19 init];
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v10->_seriesMutableStateLock;
    v10->_seriesMutableStateLock = v11;

    [(NSLock *)v10->_seriesMutableStateLock setName:@"HKHistogramBarSeriesLock"];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [HKStrokeStyle strokeStyleWithColor:whiteColor lineWidth:3.0];
    v15 = objc_alloc_init(HKStrokeStyle);
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v17 = [whiteColor2 colorWithAlphaComponent:0.95];
    [(HKStrokeStyle *)v15 setStrokeColor:v17];

    [(HKStrokeStyle *)v15 setLineWidth:3.0];
    [(HKStrokeStyle *)v15 setBlendMode:22];
    [(HKBarSeries *)v10 setUnselectedStrokeStyle:v15];
    [(HKBarSeries *)v10 setTiledStrokeStyle:v14];
    [(HKBarSeries *)v10 setUnselectedFillStyle:styleCopy];
    [(HKBarSeries *)v10 setCornerRadii:width, height];
    v10->_numberOfColumnsStorage = columns;
  }

  return v10;
}

- (unint64_t)numberOfColumns
{
  seriesMutableStateLock = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  numberOfColumnsStorage = self->_numberOfColumnsStorage;
  seriesMutableStateLock2 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return numberOfColumnsStorage;
}

- (void)setNumberOfColumns:(unint64_t)columns
{
  seriesMutableStateLock = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_numberOfColumnsStorage = columns;
  seriesMutableStateLock2 = [(HKHistogramBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

@end
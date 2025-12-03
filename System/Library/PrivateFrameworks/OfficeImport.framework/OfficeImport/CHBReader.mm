@interface CHBReader
+ (void)readChart:(id)chart state:(id)state;
@end

@implementation CHBReader

+ (void)readChart:(id)chart state:(id)state
{
  chartCopy = chart;
  stateCopy = state;
  v6 = objc_autoreleasePoolPush();
  edSheet = [stateCopy edSheet];
  [chartCopy setSheet:edSheet];

  [chartCopy setStyleId:0];
  v8 = [[CHBReaderState alloc] initWithEBReaderSheetState:stateCopy];
  [(CHBReaderState *)v8 setChart:chartCopy];
  [CHBChart readWithState:v8];

  objc_autoreleasePoolPop(v6);
}

@end
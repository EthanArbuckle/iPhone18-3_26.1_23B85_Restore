@interface CHBReader
+ (void)readChart:(id)a3 state:(id)a4;
@end

@implementation CHBReader

+ (void)readChart:(id)a3 state:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 edSheet];
  [v9 setSheet:v7];

  [v9 setStyleId:0];
  v8 = [[CHBReaderState alloc] initWithEBReaderSheetState:v5];
  [(CHBReaderState *)v8 setChart:v9];
  [CHBChart readWithState:v8];

  objc_autoreleasePoolPop(v6);
}

@end
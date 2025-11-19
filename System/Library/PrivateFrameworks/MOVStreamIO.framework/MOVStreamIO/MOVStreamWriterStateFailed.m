@interface MOVStreamWriterStateFailed
- (void)activateWithContext:(id)a3;
@end

@implementation MOVStreamWriterStateFailed

- (void)activateWithContext:(id)a3
{
  v3 = a3;
  [v3 closeEncodersAfterFailure];
  [v3 deleteMOVFile];
}

@end
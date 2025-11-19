@interface MOVStreamWriterStateCancelled
- (id)criticalErrorOccurred:(id)a3 context:(id)a4;
@end

@implementation MOVStreamWriterStateCancelled

- (id)criticalErrorOccurred:(id)a3 context:(id)a4
{
  [a4 setCriticalError:a3];
  v4 = objc_opt_new();

  return v4;
}

@end
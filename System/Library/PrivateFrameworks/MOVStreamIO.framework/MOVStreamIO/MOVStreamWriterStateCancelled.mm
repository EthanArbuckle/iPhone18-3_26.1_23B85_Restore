@interface MOVStreamWriterStateCancelled
- (id)criticalErrorOccurred:(id)occurred context:(id)context;
@end

@implementation MOVStreamWriterStateCancelled

- (id)criticalErrorOccurred:(id)occurred context:(id)context
{
  [context setCriticalError:occurred];
  v4 = objc_opt_new();

  return v4;
}

@end
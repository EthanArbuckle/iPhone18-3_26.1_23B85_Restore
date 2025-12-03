@interface MOVStreamWriterStateFailed
- (void)activateWithContext:(id)context;
@end

@implementation MOVStreamWriterStateFailed

- (void)activateWithContext:(id)context
{
  contextCopy = context;
  [contextCopy closeEncodersAfterFailure];
  [contextCopy deleteMOVFile];
}

@end
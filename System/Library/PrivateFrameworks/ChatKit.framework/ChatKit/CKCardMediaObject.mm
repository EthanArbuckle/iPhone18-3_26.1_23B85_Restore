@interface CKCardMediaObject
- (BOOL)shouldShowViewer;
@end

@implementation CKCardMediaObject

- (BOOL)shouldShowViewer
{
  transfer = [(CKMediaObject *)self transfer];
  isFileDataReady = [transfer isFileDataReady];

  return isFileDataReady;
}

@end
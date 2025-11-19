@interface CKCardMediaObject
- (BOOL)shouldShowViewer;
@end

@implementation CKCardMediaObject

- (BOOL)shouldShowViewer
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isFileDataReady];

  return v3;
}

@end
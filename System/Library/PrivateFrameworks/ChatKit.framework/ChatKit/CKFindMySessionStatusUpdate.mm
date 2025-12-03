@interface CKFindMySessionStatusUpdate
+ (id)statusUpdateWithLocationText:(id)text isLocationAvailableForDisplay:(BOOL)display;
@end

@implementation CKFindMySessionStatusUpdate

+ (id)statusUpdateWithLocationText:(id)text isLocationAvailableForDisplay:(BOOL)display
{
  displayCopy = display;
  textCopy = text;
  v6 = objc_alloc_init(CKFindMySessionStatusUpdate);
  [(CKFindMySessionStatusUpdate *)v6 setLocationText:textCopy];

  [(CKFindMySessionStatusUpdate *)v6 setIsLocationAvailableForDisplay:displayCopy];

  return v6;
}

@end
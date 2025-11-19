@interface CKFindMySessionStatusUpdate
+ (id)statusUpdateWithLocationText:(id)a3 isLocationAvailableForDisplay:(BOOL)a4;
@end

@implementation CKFindMySessionStatusUpdate

+ (id)statusUpdateWithLocationText:(id)a3 isLocationAvailableForDisplay:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CKFindMySessionStatusUpdate);
  [(CKFindMySessionStatusUpdate *)v6 setLocationText:v5];

  [(CKFindMySessionStatusUpdate *)v6 setIsLocationAvailableForDisplay:v4];

  return v6;
}

@end
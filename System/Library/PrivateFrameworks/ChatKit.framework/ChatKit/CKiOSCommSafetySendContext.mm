@interface CKiOSCommSafetySendContext
+ (id)contextWithComposition:(id)a3 sensitiveMediaObjects:(id)a4 identifiersOfShelvedImages:(id)a5;
- (CKiOSCommSafetySendContext)initWithComposition:(id)a3 sensitiveMediaObjects:(id)a4 identifiersOfShelvedImages:(id)a5;
@end

@implementation CKiOSCommSafetySendContext

+ (id)contextWithComposition:(id)a3 sensitiveMediaObjects:(id)a4 identifiersOfShelvedImages:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CKiOSCommSafetySendContext alloc] initWithComposition:v9 sensitiveMediaObjects:v8 identifiersOfShelvedImages:v7];

  return v10;
}

- (CKiOSCommSafetySendContext)initWithComposition:(id)a3 sensitiveMediaObjects:(id)a4 identifiersOfShelvedImages:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKiOSCommSafetySendContext;
  v12 = [(CKiOSCommSafetySendContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composition, a3);
    objc_storeStrong(&v13->_sensitiveMediaObjects, a4);
    objc_storeStrong(&v13->_identifiersOfShelvedImages, a5);
  }

  return v13;
}

@end
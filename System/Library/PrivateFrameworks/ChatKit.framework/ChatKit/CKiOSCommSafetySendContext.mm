@interface CKiOSCommSafetySendContext
+ (id)contextWithComposition:(id)composition sensitiveMediaObjects:(id)objects identifiersOfShelvedImages:(id)images;
- (CKiOSCommSafetySendContext)initWithComposition:(id)composition sensitiveMediaObjects:(id)objects identifiersOfShelvedImages:(id)images;
@end

@implementation CKiOSCommSafetySendContext

+ (id)contextWithComposition:(id)composition sensitiveMediaObjects:(id)objects identifiersOfShelvedImages:(id)images
{
  imagesCopy = images;
  objectsCopy = objects;
  compositionCopy = composition;
  v10 = [[CKiOSCommSafetySendContext alloc] initWithComposition:compositionCopy sensitiveMediaObjects:objectsCopy identifiersOfShelvedImages:imagesCopy];

  return v10;
}

- (CKiOSCommSafetySendContext)initWithComposition:(id)composition sensitiveMediaObjects:(id)objects identifiersOfShelvedImages:(id)images
{
  compositionCopy = composition;
  objectsCopy = objects;
  imagesCopy = images;
  v15.receiver = self;
  v15.super_class = CKiOSCommSafetySendContext;
  v12 = [(CKiOSCommSafetySendContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_composition, composition);
    objc_storeStrong(&v13->_sensitiveMediaObjects, objects);
    objc_storeStrong(&v13->_identifiersOfShelvedImages, images);
  }

  return v13;
}

@end
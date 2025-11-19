@interface PKGetClassNFFieldNotificationECP2
@end

@implementation PKGetClassNFFieldNotificationECP2

Class __PKGetClassNFFieldNotificationECP2_0_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFFieldNotificationECP2_0");
  qword_1ED6D2180 = result;
  return result;
}

@end
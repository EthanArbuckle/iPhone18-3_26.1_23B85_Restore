@interface PKGetClassNFFieldNotificationECP1
@end

@implementation PKGetClassNFFieldNotificationECP1

Class __PKGetClassNFFieldNotificationECP1_0_block_invoke()
{
  if (PKLoadNearField_loadPredicate != -1)
  {
    dispatch_once(&PKLoadNearField_loadPredicate, &__block_literal_global_218);
  }

  result = objc_getClass("NFFieldNotificationECP1_0");
  qword_1ED6D2170 = result;
  return result;
}

@end
@interface NSSet
@end

@implementation NSSet

id __65__NSSet_FrontBoardServices__fbs_singleLineDescriptionOfBSActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 canSendResponse])
  {
    v3 = [off_1E76BC9B0 succinctDescriptionForObject:v2];
  }

  else
  {
    v4 = objc_opt_class();

    v3 = NSStringFromClass(v4);
  }

  return v3;
}

@end
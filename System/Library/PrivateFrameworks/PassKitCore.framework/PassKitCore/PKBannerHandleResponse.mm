@interface PKBannerHandleResponse
+ (PKBannerHandleResponse)createWithResult:(uint64_t)result;
@end

@implementation PKBannerHandleResponse

+ (PKBannerHandleResponse)createWithResult:(uint64_t)result
{
  objc_opt_self();
  result = [PKBannerHandleResponse alloc];
  if (result)
  {
    v4.receiver = result;
    v4.super_class = PKBannerHandleResponse;
    result = objc_msgSendSuper2(&v4, sel_init);
    if (result)
    {
      result->_result = a2;
    }
  }

  return result;
}

@end
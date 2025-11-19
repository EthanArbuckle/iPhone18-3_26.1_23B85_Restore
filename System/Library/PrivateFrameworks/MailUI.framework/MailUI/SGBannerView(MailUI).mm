@interface SGBannerView(MailUI)
- (uint64_t)mui_disableGlassPlatter;
@end

@implementation SGBannerView(MailUI)

- (uint64_t)mui_disableGlassPlatter
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a1 setDisableGlassPlatter:1];
  }

  return result;
}

@end
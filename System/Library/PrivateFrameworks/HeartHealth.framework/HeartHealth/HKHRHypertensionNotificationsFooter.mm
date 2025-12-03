@interface HKHRHypertensionNotificationsFooter
- (HKHRHypertensionNotificationsFooter)initWithText:(id)text link:(id)link url:(id)url;
@end

@implementation HKHRHypertensionNotificationsFooter

- (HKHRHypertensionNotificationsFooter)initWithText:(id)text link:(id)link url:(id)url
{
  textCopy = text;
  linkCopy = link;
  urlCopy = url;
  v15.receiver = self;
  v15.super_class = HKHRHypertensionNotificationsFooter;
  v12 = [(HKHRHypertensionNotificationsFooter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_footerText, text);
    objc_storeStrong(&v13->_footerLink, link);
    objc_storeStrong(&v13->_linkURL, url);
  }

  return v13;
}

@end
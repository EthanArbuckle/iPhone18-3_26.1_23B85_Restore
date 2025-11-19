@interface HKHRHypertensionNotificationsFooter
- (HKHRHypertensionNotificationsFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5;
@end

@implementation HKHRHypertensionNotificationsFooter

- (HKHRHypertensionNotificationsFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKHRHypertensionNotificationsFooter;
  v12 = [(HKHRHypertensionNotificationsFooter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_footerText, a3);
    objc_storeStrong(&v13->_footerLink, a4);
    objc_storeStrong(&v13->_linkURL, a5);
  }

  return v13;
}

@end
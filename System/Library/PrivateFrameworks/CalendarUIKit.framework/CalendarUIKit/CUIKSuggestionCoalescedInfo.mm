@interface CUIKSuggestionCoalescedInfo
- (CUIKSuggestionCoalescedInfo)initWithTitle:(id)title descriptionText:(id)text earliestSuggestionNotification:(id)notification;
@end

@implementation CUIKSuggestionCoalescedInfo

- (CUIKSuggestionCoalescedInfo)initWithTitle:(id)title descriptionText:(id)text earliestSuggestionNotification:(id)notification
{
  titleCopy = title;
  textCopy = text;
  notificationCopy = notification;
  v16.receiver = self;
  v16.super_class = CUIKSuggestionCoalescedInfo;
  v12 = [(CUIKSuggestionCoalescedInfo *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_descriptionText, text);
    objc_storeStrong(&v13->_earliestSuggestionNotification, notification);
    v14 = v13;
  }

  return v13;
}

@end
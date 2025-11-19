@interface CUIKSuggestionCoalescedInfo
- (CUIKSuggestionCoalescedInfo)initWithTitle:(id)a3 descriptionText:(id)a4 earliestSuggestionNotification:(id)a5;
@end

@implementation CUIKSuggestionCoalescedInfo

- (CUIKSuggestionCoalescedInfo)initWithTitle:(id)a3 descriptionText:(id)a4 earliestSuggestionNotification:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CUIKSuggestionCoalescedInfo;
  v12 = [(CUIKSuggestionCoalescedInfo *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_descriptionText, a4);
    objc_storeStrong(&v13->_earliestSuggestionNotification, a5);
    v14 = v13;
  }

  return v13;
}

@end
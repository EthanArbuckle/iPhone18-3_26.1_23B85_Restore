@interface TextViewCollectionReusableView
- (void)preferredContentSizeCategoryDidChange;
@end

@implementation TextViewCollectionReusableView

- (void)preferredContentSizeCategoryDidChange
{
  selfCopy = self;
  sub_1BA34BED4(&OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_item, &OBJC_IVAR____TtC18HealthExperienceUI30TextViewCollectionReusableView_textView);
}

@end
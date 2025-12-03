@interface DKNotableUserDataAppleCare
- (DKNotableUserDataAppleCare)initWithTitle:(id)title subtitle:(id)subtitle;
@end

@implementation DKNotableUserDataAppleCare

- (DKNotableUserDataAppleCare)initWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v12.receiver = self;
  v12.super_class = DKNotableUserDataAppleCare;
  v9 = [(DKNotableUserDataAppleCare *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_subtitle, subtitle);
  }

  return v10;
}

@end
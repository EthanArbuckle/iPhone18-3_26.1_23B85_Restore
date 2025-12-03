@interface HRSpeedBumpBubble
- (HRSpeedBumpBubble)initWithTitle:(id)title description:(id)description;
@end

@implementation HRSpeedBumpBubble

- (HRSpeedBumpBubble)initWithTitle:(id)title description:(id)description
{
  titleCopy = title;
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = HRSpeedBumpBubble;
  v9 = [(HRSpeedBumpBubble *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_body, description);
  }

  return v10;
}

@end
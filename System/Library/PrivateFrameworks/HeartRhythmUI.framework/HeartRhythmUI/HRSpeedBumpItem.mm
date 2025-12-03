@interface HRSpeedBumpItem
- (HRSpeedBumpItem)initWithTitle:(id)title body:(id)body bubbles:(id)bubbles category:(int64_t)category;
- (id)delegate;
@end

@implementation HRSpeedBumpItem

- (HRSpeedBumpItem)initWithTitle:(id)title body:(id)body bubbles:(id)bubbles category:(int64_t)category
{
  titleCopy = title;
  bodyCopy = body;
  bubblesCopy = bubbles;
  v17.receiver = self;
  v17.super_class = HRSpeedBumpItem;
  v14 = [(HRSpeedBumpItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    objc_storeStrong(&v15->_body, body);
    objc_storeStrong(&v15->_bubbles, bubbles);
    v15->_category = category;
  }

  return v15;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
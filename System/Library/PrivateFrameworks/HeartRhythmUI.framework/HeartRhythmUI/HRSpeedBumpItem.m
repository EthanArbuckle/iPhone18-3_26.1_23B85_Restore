@interface HRSpeedBumpItem
- (HRSpeedBumpItem)initWithTitle:(id)a3 body:(id)a4 bubbles:(id)a5 category:(int64_t)a6;
- (id)delegate;
@end

@implementation HRSpeedBumpItem

- (HRSpeedBumpItem)initWithTitle:(id)a3 body:(id)a4 bubbles:(id)a5 category:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HRSpeedBumpItem;
  v14 = [(HRSpeedBumpItem *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, a3);
    objc_storeStrong(&v15->_body, a4);
    objc_storeStrong(&v15->_bubbles, a5);
    v15->_category = a6;
  }

  return v15;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
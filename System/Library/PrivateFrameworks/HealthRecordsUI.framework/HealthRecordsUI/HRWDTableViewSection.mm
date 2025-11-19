@interface HRWDTableViewSection
- (HRWDTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4;
- (HRWDTableViewSectionDelegate)delegate;
- (void)reloadAnimated:(BOOL)a3;
@end

@implementation HRWDTableViewSection

- (HRWDTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HRWDTableViewSection;
  v7 = [(HRWDTableViewSection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_section = a4;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = v8;
  }

  return v8;
}

- (void)reloadAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSection:self->_section animated:v3];
}

- (HRWDTableViewSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
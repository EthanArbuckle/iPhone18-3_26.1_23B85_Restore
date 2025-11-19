@interface WDTableViewSection
- (WDTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4;
- (WDTableViewSectionDelegate)delegate;
@end

@implementation WDTableViewSection

- (WDTableViewSection)initWithDelegate:(id)a3 atSection:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WDTableViewSection;
  v7 = [(WDTableViewSection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_section = a4;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = v8;
  }

  return v8;
}

- (WDTableViewSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
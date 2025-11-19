@interface HFControlPanelItemSingleControlRule
- (HFControlPanelItemSingleControlRule)initWithFilter:(id)a3 displayResultsGenerator:(id)a4;
- (id)controlPanelItemForControlItems:(id)a3;
@end

@implementation HFControlPanelItemSingleControlRule

- (HFControlPanelItemSingleControlRule)initWithFilter:(id)a3 displayResultsGenerator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HFControlPanelItemSingleControlRule;
  v8 = [(HFControlPanelItemSingleControlRule *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    filter = v8->_filter;
    v8->_filter = v9;

    v11 = [v7 copy];
    displayResultsGenerator = v8->_displayResultsGenerator;
    v8->_displayResultsGenerator = v11;
  }

  return v8;
}

- (id)controlPanelItemForControlItems:(id)a3
{
  v4 = a3;
  v5 = [(HFControlPanelItemSingleControlRule *)self filter];
  v6 = [v4 na_firstObjectPassingTest:v5];

  if (v6)
  {
    v7 = [HFControlPanelItem alloc];
    v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v9 = [(HFControlPanelItemSingleControlRule *)self displayResultsGenerator];
    v10 = (v9)[2](v9, v6);
    v11 = [(HFControlPanelItem *)v7 initWithControlItems:v8 displayResults:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
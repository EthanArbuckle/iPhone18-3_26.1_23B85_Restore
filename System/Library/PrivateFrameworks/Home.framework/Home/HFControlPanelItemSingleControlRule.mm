@interface HFControlPanelItemSingleControlRule
- (HFControlPanelItemSingleControlRule)initWithFilter:(id)filter displayResultsGenerator:(id)generator;
- (id)controlPanelItemForControlItems:(id)items;
@end

@implementation HFControlPanelItemSingleControlRule

- (HFControlPanelItemSingleControlRule)initWithFilter:(id)filter displayResultsGenerator:(id)generator
{
  filterCopy = filter;
  generatorCopy = generator;
  v14.receiver = self;
  v14.super_class = HFControlPanelItemSingleControlRule;
  v8 = [(HFControlPanelItemSingleControlRule *)&v14 init];
  if (v8)
  {
    v9 = [filterCopy copy];
    filter = v8->_filter;
    v8->_filter = v9;

    v11 = [generatorCopy copy];
    displayResultsGenerator = v8->_displayResultsGenerator;
    v8->_displayResultsGenerator = v11;
  }

  return v8;
}

- (id)controlPanelItemForControlItems:(id)items
{
  itemsCopy = items;
  filter = [(HFControlPanelItemSingleControlRule *)self filter];
  v6 = [itemsCopy na_firstObjectPassingTest:filter];

  if (v6)
  {
    v7 = [HFControlPanelItem alloc];
    v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
    displayResultsGenerator = [(HFControlPanelItemSingleControlRule *)self displayResultsGenerator];
    v10 = (displayResultsGenerator)[2](displayResultsGenerator, v6);
    v11 = [(HFControlPanelItem *)v7 initWithControlItems:v8 displayResults:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
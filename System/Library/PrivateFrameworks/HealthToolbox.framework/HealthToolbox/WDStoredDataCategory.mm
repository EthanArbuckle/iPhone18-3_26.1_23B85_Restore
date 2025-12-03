@interface WDStoredDataCategory
- (NSMutableArray)displayTypes;
@end

@implementation WDStoredDataCategory

- (NSMutableArray)displayTypes
{
  displayTypes = self->_displayTypes;
  if (!displayTypes)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_displayTypes;
    self->_displayTypes = array;

    displayTypes = self->_displayTypes;
  }

  return displayTypes;
}

@end
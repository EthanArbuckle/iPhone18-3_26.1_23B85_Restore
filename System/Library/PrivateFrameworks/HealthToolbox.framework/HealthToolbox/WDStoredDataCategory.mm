@interface WDStoredDataCategory
- (NSMutableArray)displayTypes;
@end

@implementation WDStoredDataCategory

- (NSMutableArray)displayTypes
{
  displayTypes = self->_displayTypes;
  if (!displayTypes)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_displayTypes;
    self->_displayTypes = v4;

    displayTypes = self->_displayTypes;
  }

  return displayTypes;
}

@end
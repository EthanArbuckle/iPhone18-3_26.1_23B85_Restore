@interface MUPlaceMapItemActivityProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
@end

@implementation MUPlaceMapItemActivityProvider

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E69CDAB0]] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E69CDA78]))
  {
    v6 = 0;
  }

  else
  {
    dataProvider = [(MUPlaceActivityProvider *)self dataProvider];
    mapItemAsSerializedData = [dataProvider mapItemAsSerializedData];

    v6 = [mapItemAsSerializedData copy];
  }

  return v6;
}

@end
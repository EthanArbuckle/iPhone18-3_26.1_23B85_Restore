@interface MUPlaceMapItemActivityProvider
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
@end

@implementation MUPlaceMapItemActivityProvider

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:*MEMORY[0x1E69CDAB0]] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x1E69CDA78]))
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MUPlaceActivityProvider *)self dataProvider];
    v8 = [v7 mapItemAsSerializedData];

    v6 = [v8 copy];
  }

  return v6;
}

@end
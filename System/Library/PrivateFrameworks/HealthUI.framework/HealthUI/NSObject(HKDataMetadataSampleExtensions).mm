@interface NSObject(HKDataMetadataSampleExtensions)
- (id)hk_localizedStringForAssociatedDistanceQuantity:()HKDataMetadataSampleExtensions displayTypeController:unitController:;
@end

@implementation NSObject(HKDataMetadataSampleExtensions)

- (id)hk_localizedStringForAssociatedDistanceQuantity:()HKDataMetadataSampleExtensions displayTypeController:unitController:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  hk_defaultDistanceQuantityType = [self hk_defaultDistanceQuantityType];
  v12 = [v9 displayTypeForObjectType:hk_defaultDistanceQuantityType];

  v13 = [v8 unitForDisplayType:v12];
  v14 = [v12 hk_numberFormatterForUnit:v13 formattingContext:1];
  v15 = MEMORY[0x1E696AD98];
  [v10 doubleValueForUnit:v13];
  v17 = v16;

  v18 = [v15 numberWithDouble:v17];
  v19 = [v14 stringFromNumber:v18 displayType:v12 unitController:v8];

  return v19;
}

@end
@interface CAFSelectableNotificationEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectableNotificationEntryList)selectableNotificationEntryListValue;
- (id)formattedValue;
- (void)setSelectableNotificationEntryListValue:(id)a3;
@end

@implementation CAFSelectableNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectableNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectableNotificationEntryList)selectableNotificationEntryListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectableNotificationEntryList selectableNotificationEntryListWithArray:v2];

  return v3;
}

- (void)setSelectableNotificationEntryListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectableNotificationEntryListCharacteristic *)self selectableNotificationEntryListValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x000000003700000F";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
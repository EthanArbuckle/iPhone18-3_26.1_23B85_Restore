@interface CAFSelectableNotificationEntryListCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSelectableNotificationEntryList)selectableNotificationEntryListValue;
- (id)formattedValue;
- (void)setSelectableNotificationEntryListValue:(id)value;
@end

@implementation CAFSelectableNotificationEntryListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectableNotificationEntryListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectableNotificationEntryList)selectableNotificationEntryListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSelectableNotificationEntryList selectableNotificationEntryListWithArray:arrayValue];

  return v3;
}

- (void)setSelectableNotificationEntryListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  selectableNotificationEntryListValue = [(CAFSelectableNotificationEntryListCharacteristic *)self selectableNotificationEntryListValue];
  formattedValue = [selectableNotificationEntryListValue formattedValue];

  return formattedValue;
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
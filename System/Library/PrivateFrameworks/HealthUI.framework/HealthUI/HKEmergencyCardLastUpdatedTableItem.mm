@interface HKEmergencyCardLastUpdatedTableItem
- (BOOL)hasPresentableData;
- (id)initInEditMode:(BOOL)mode editable:(BOOL)editable;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
@end

@implementation HKEmergencyCardLastUpdatedTableItem

- (id)initInEditMode:(BOOL)mode editable:(BOOL)editable
{
  modeCopy = mode;
  if (mode)
  {
    [HKEmergencyCardLastUpdatedTableItem initInEditMode:a2 editable:self];
  }

  v8.receiver = self;
  v8.super_class = HKEmergencyCardLastUpdatedTableItem;
  result = [(HKEmergencyCardTableItem *)&v8 initInEditMode:modeCopy];
  if (result)
  {
    *(result + 40) = editable;
  }

  return result;
}

- (BOOL)hasPresentableData
{
  if (+[HKOrganDonationConnectionManager hasStoredRegistrant])
  {
    return 1;
  }

  return +[HKOrganDonationConnectionManager shouldShowStoreDemoOrganDonation];
}

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  v4 = off_1E81B2838;
  if (index)
  {
    v4 = off_1E81B2BC0;
  }

  v5 = *v4;
  viewCopy = view;
  defaultReuseIdentifier = [(__objc2_class *)v5 defaultReuseIdentifier];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:defaultReuseIdentifier];

  return v8;
}

- (void)initInEditMode:(uint64_t)a1 editable:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardLastUpdatedTableItem.m" lineNumber:28 description:@"HKEmergencyCardLastUpdatedTableItem doesn't support edit mode"];
}

@end
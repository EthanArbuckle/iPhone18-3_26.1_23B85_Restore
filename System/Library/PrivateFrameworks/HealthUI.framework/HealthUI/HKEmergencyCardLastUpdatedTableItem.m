@interface HKEmergencyCardLastUpdatedTableItem
- (BOOL)hasPresentableData;
- (id)initInEditMode:(BOOL)a3 editable:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
@end

@implementation HKEmergencyCardLastUpdatedTableItem

- (id)initInEditMode:(BOOL)a3 editable:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    [HKEmergencyCardLastUpdatedTableItem initInEditMode:a2 editable:self];
  }

  v8.receiver = self;
  v8.super_class = HKEmergencyCardLastUpdatedTableItem;
  result = [(HKEmergencyCardTableItem *)&v8 initInEditMode:v5];
  if (result)
  {
    *(result + 40) = a4;
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

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v4 = off_1E81B2838;
  if (a4)
  {
    v4 = off_1E81B2BC0;
  }

  v5 = *v4;
  v6 = a3;
  v7 = [(__objc2_class *)v5 defaultReuseIdentifier];
  v8 = [v6 dequeueReusableCellWithIdentifier:v7];

  return v8;
}

- (void)initInEditMode:(uint64_t)a1 editable:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKEmergencyCardLastUpdatedTableItem.m" lineNumber:28 description:@"HKEmergencyCardLastUpdatedTableItem doesn't support edit mode"];
}

@end
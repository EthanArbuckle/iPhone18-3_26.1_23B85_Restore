@interface HKOrganDonationAddressEntryItem
- (HKOrganDonationAddressEntryItem)initWithRegistrant:(id)a3;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)textFieldDidChangeValue:(id)a3 forCell:(id)a4;
- (void)updateCellDisplay;
@end

@implementation HKOrganDonationAddressEntryItem

- (HKOrganDonationAddressEntryItem)initWithRegistrant:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = HKOrganDonationAddressEntryItem;
  v5 = [(HKOrganDonationAddressEntryItem *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DF20];
    v7 = HKHealthUIFrameworkBundle();
    v8 = [v7 pathForResource:@"USStateAbbreviations" ofType:@"plist"];
    v9 = [v6 dictionaryWithContentsOfFile:v8];
    statesDict = v5->_statesDict;
    v5->_statesDict = v9;

    v11 = [&unk_1F4381048 mutableCopy];
    v12 = [(NSDictionary *)v5->_statesDict allKeys];
    v13 = [v12 sortedArrayUsingSelector:sel_localizedCompare_];
    [(NSArray *)v11 addObjectsFromArray:v13];

    sortedStateKeys = v5->_sortedStateKeys;
    v5->_sortedStateKeys = v11;
    v15 = v11;

    v16 = [v4 address1];
    address1 = v5->_address1;
    v5->_address1 = v16;

    v18 = [v4 address2];
    address2 = v5->_address2;
    v5->_address2 = v18;

    v20 = [v4 city];
    city = v5->_city;
    v5->_city = v20;

    v22 = [v4 state];
    state = v5->_state;
    v5->_state = v22;

    v24 = [v4 zip];
    zipcode = v5->_zipcode;
    v5->_zipcode = v24;
  }

  return v5;
}

- (id)cell
{
  cell = self->_cell;
  if (!cell)
  {
    v4 = [[HKOrganDonationAddressCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_cell;
    self->_cell = v4;

    [(HKOrganDonationAddressCell *)self->_cell setDelegate:self];
    v6 = [(HKOrganDonationAddressCell *)self->_cell streetOneTextField];
    [v6 setText:self->_address1];

    v7 = [(HKOrganDonationAddressCell *)self->_cell streetTwoTextField];
    [v7 setText:self->_address2];

    v8 = [(HKOrganDonationAddressCell *)self->_cell cityTextField];
    [v8 setText:self->_city];

    v9 = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
    [v9 setText:self->_state];

    v10 = [(HKOrganDonationAddressCell *)self->_cell zipCodeTextField];
    [v10 setText:self->_zipcode];

    v11 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    statePicker = self->_statePicker;
    self->_statePicker = v11;

    [(UIPickerView *)self->_statePicker setDataSource:self];
    [(UIPickerView *)self->_statePicker setDelegate:self];
    if (self->_state)
    {
      v13 = [(NSDictionary *)self->_statesDict allKeysForObject:?];
      v14 = [v13 firstObject];

      [(UIPickerView *)self->_statePicker selectRow:[(NSArray *)self->_sortedStateKeys indexOfObject:v14] inComponent:0 animated:0];
    }

    v15 = [HKHostingAreaLayoutView viewHostingView:self->_statePicker];
    v16 = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
    [v16 setInputView:v15];

    cell = self->_cell;
  }

  return cell;
}

- (id)formattedKeyAndValue
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_address1)
  {
    address1 = self->_address1;
  }

  else
  {
    address1 = &stru_1F42FFBE0;
  }

  [v3 setObject:address1 forKey:@"address1"];
  if (self->_address2)
  {
    address2 = self->_address2;
  }

  else
  {
    address2 = &stru_1F42FFBE0;
  }

  [v4 setObject:address2 forKey:@"address2"];
  if (self->_city)
  {
    city = self->_city;
  }

  else
  {
    city = &stru_1F42FFBE0;
  }

  [v4 setObject:city forKey:@"city"];
  if (self->_state)
  {
    state = self->_state;
  }

  else
  {
    state = &stru_1F42FFBE0;
  }

  [v4 setObject:state forKey:@"state"];
  if (self->_zipcode)
  {
    zipcode = self->_zipcode;
  }

  else
  {
    zipcode = &stru_1F42FFBE0;
  }

  [v4 setObject:zipcode forKey:@"zip"];

  return v4;
}

- (void)updateCellDisplay
{
  v3 = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
  [v3 setText:self->_state];
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v6 = [(NSArray *)self->_sortedStateKeys objectAtIndexedSubscript:a4];
  v7 = [(NSDictionary *)self->_statesDict objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v6, v7];
  }

  else
  {
    v8 = &stru_1F42FFBE0;
  }

  return v8;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  statesDict = self->_statesDict;
  v7 = [(NSArray *)self->_sortedStateKeys objectAtIndexedSubscript:a4];
  v8 = [(NSDictionary *)statesDict objectForKey:v7];
  state = self->_state;
  self->_state = v8;

  [(HKOrganDonationAddressEntryItem *)self updateCellDisplay];
  v10 = [(HKSimpleDataEntryItem *)self delegate];
  [v10 dataEntryItemDidUpdateValue:self];
}

- (void)textFieldDidChangeValue:(id)a3 forCell:(id)a4
{
  v15 = a3;
  v5 = [(HKOrganDonationAddressCell *)self->_cell streetOneTextField];

  if (v5 == v15)
  {
    v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__address1;
  }

  else
  {
    v6 = [(HKOrganDonationAddressCell *)self->_cell streetTwoTextField];

    if (v6 == v15)
    {
      v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__address2;
    }

    else
    {
      v7 = [(HKOrganDonationAddressCell *)self->_cell cityTextField];

      if (v7 == v15)
      {
        v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__city;
      }

      else
      {
        v8 = [(HKOrganDonationAddressCell *)self->_cell zipCodeTextField];

        v9 = v15;
        if (v8 != v15)
        {
          goto LABEL_10;
        }

        v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__zipcode;
      }
    }
  }

  v11 = [v15 text];
  v12 = *v10;
  v13 = *(&self->super.super.isa + v12);
  *(&self->super.super.isa + v12) = v11;

  v14 = [(HKSimpleDataEntryItem *)self delegate];
  [v14 dataEntryItemDidUpdateValue:self];

  v9 = v15;
LABEL_10:
}

@end
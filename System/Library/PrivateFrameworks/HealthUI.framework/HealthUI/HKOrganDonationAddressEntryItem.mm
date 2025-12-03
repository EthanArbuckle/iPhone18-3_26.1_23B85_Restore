@interface HKOrganDonationAddressEntryItem
- (HKOrganDonationAddressEntryItem)initWithRegistrant:(id)registrant;
- (id)cell;
- (id)formattedKeyAndValue;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)textFieldDidChangeValue:(id)value forCell:(id)cell;
- (void)updateCellDisplay;
@end

@implementation HKOrganDonationAddressEntryItem

- (HKOrganDonationAddressEntryItem)initWithRegistrant:(id)registrant
{
  registrantCopy = registrant;
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
    allKeys = [(NSDictionary *)v5->_statesDict allKeys];
    v13 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];
    [(NSArray *)v11 addObjectsFromArray:v13];

    sortedStateKeys = v5->_sortedStateKeys;
    v5->_sortedStateKeys = v11;
    v15 = v11;

    address1 = [registrantCopy address1];
    address1 = v5->_address1;
    v5->_address1 = address1;

    address2 = [registrantCopy address2];
    address2 = v5->_address2;
    v5->_address2 = address2;

    city = [registrantCopy city];
    city = v5->_city;
    v5->_city = city;

    state = [registrantCopy state];
    state = v5->_state;
    v5->_state = state;

    v24 = [registrantCopy zip];
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
    streetOneTextField = [(HKOrganDonationAddressCell *)self->_cell streetOneTextField];
    [streetOneTextField setText:self->_address1];

    streetTwoTextField = [(HKOrganDonationAddressCell *)self->_cell streetTwoTextField];
    [streetTwoTextField setText:self->_address2];

    cityTextField = [(HKOrganDonationAddressCell *)self->_cell cityTextField];
    [cityTextField setText:self->_city];

    stateTextField = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
    [stateTextField setText:self->_state];

    zipCodeTextField = [(HKOrganDonationAddressCell *)self->_cell zipCodeTextField];
    [zipCodeTextField setText:self->_zipcode];

    v11 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    statePicker = self->_statePicker;
    self->_statePicker = v11;

    [(UIPickerView *)self->_statePicker setDataSource:self];
    [(UIPickerView *)self->_statePicker setDelegate:self];
    if (self->_state)
    {
      v13 = [(NSDictionary *)self->_statesDict allKeysForObject:?];
      firstObject = [v13 firstObject];

      [(UIPickerView *)self->_statePicker selectRow:[(NSArray *)self->_sortedStateKeys indexOfObject:firstObject] inComponent:0 animated:0];
    }

    v15 = [HKHostingAreaLayoutView viewHostingView:self->_statePicker];
    stateTextField2 = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
    [stateTextField2 setInputView:v15];

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
  stateTextField = [(HKOrganDonationAddressCell *)self->_cell stateTextField];
  [stateTextField setText:self->_state];
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = [(NSArray *)self->_sortedStateKeys objectAtIndexedSubscript:row];
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

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  statesDict = self->_statesDict;
  v7 = [(NSArray *)self->_sortedStateKeys objectAtIndexedSubscript:row];
  v8 = [(NSDictionary *)statesDict objectForKey:v7];
  state = self->_state;
  self->_state = v8;

  [(HKOrganDonationAddressEntryItem *)self updateCellDisplay];
  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];
}

- (void)textFieldDidChangeValue:(id)value forCell:(id)cell
{
  valueCopy = value;
  streetOneTextField = [(HKOrganDonationAddressCell *)self->_cell streetOneTextField];

  if (streetOneTextField == valueCopy)
  {
    v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__address1;
  }

  else
  {
    streetTwoTextField = [(HKOrganDonationAddressCell *)self->_cell streetTwoTextField];

    if (streetTwoTextField == valueCopy)
    {
      v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__address2;
    }

    else
    {
      cityTextField = [(HKOrganDonationAddressCell *)self->_cell cityTextField];

      if (cityTextField == valueCopy)
      {
        v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__city;
      }

      else
      {
        zipCodeTextField = [(HKOrganDonationAddressCell *)self->_cell zipCodeTextField];

        v9 = valueCopy;
        if (zipCodeTextField != valueCopy)
        {
          goto LABEL_10;
        }

        v10 = &OBJC_IVAR___HKOrganDonationAddressEntryItem__zipcode;
      }
    }
  }

  text = [valueCopy text];
  v12 = *v10;
  v13 = *(&self->super.super.isa + v12);
  *(&self->super.super.isa + v12) = text;

  delegate = [(HKSimpleDataEntryItem *)self delegate];
  [delegate dataEntryItemDidUpdateValue:self];

  v9 = valueCopy;
LABEL_10:
}

@end
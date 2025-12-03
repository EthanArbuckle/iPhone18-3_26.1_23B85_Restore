@interface HKMedicalIDEditorEmergencyContactCell
- (HKMedicalIDEditorEmergencyContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)formattedValue;
- (void)_labelTapped:(id)tapped;
- (void)setContact:(id)contact;
@end

@implementation HKMedicalIDEditorEmergencyContactCell

- (HKMedicalIDEditorEmergencyContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = HKMedicalIDEditorEmergencyContactCell;
  v4 = [(HKMedicalIDEditorCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    inputTextField = [(HKMedicalIDEditorCell *)v4 inputTextField];
    [inputTextField setClearButtonMode:0];

    inputTextField2 = [(HKMedicalIDEditorCell *)v5 inputTextField];
    [inputTextField2 setAllowsSelection:1];

    inputTextField3 = [(HKMedicalIDEditorCell *)v5 inputTextField];
    [inputTextField3 setUserInteractionEnabled:0];

    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__labelTapped_];
    labelLabel = [(HKMedicalIDEditorCell *)v5 labelLabel];
    [labelLabel addGestureRecognizer:v9];

    labelLabel2 = [(HKMedicalIDEditorCell *)v5 labelLabel];
    [labelLabel2 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)setContact:(id)contact
{
  objc_storeStrong(&self->_contact, contact);
  contactCopy = contact;
  v6 = MEMORY[0x1E695CEE0];
  relationship = [contactCopy relationship];
  v8 = [v6 localizedStringForLabel:relationship];

  [(HKMedicalIDEditorCell *)self setLabel:v8];

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (id)formattedValue
{
  name = [(_HKEmergencyContact *)self->_contact name];
  v4 = name;
  if (name)
  {
    phoneNumber = name;
  }

  else
  {
    phoneNumber = [(_HKEmergencyContact *)self->_contact phoneNumber];
  }

  v6 = phoneNumber;

  return v6;
}

- (void)_labelTapped:(id)tapped
{
  editDelegate = [(HKMedicalIDEditorCell *)self editDelegate];
  [editDelegate medicalIDEditorCellDidTapLabel:self];
}

@end
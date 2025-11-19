@interface HKMedicalIDEditorEmergencyContactCell
- (HKMedicalIDEditorEmergencyContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)formattedValue;
- (void)_labelTapped:(id)a3;
- (void)setContact:(id)a3;
@end

@implementation HKMedicalIDEditorEmergencyContactCell

- (HKMedicalIDEditorEmergencyContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = HKMedicalIDEditorEmergencyContactCell;
  v4 = [(HKMedicalIDEditorCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HKMedicalIDEditorCell *)v4 inputTextField];
    [v6 setClearButtonMode:0];

    v7 = [(HKMedicalIDEditorCell *)v5 inputTextField];
    [v7 setAllowsSelection:1];

    v8 = [(HKMedicalIDEditorCell *)v5 inputTextField];
    [v8 setUserInteractionEnabled:0];

    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v5 action:sel__labelTapped_];
    v10 = [(HKMedicalIDEditorCell *)v5 labelLabel];
    [v10 addGestureRecognizer:v9];

    v11 = [(HKMedicalIDEditorCell *)v5 labelLabel];
    [v11 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)setContact:(id)a3
{
  objc_storeStrong(&self->_contact, a3);
  v5 = a3;
  v6 = MEMORY[0x1E695CEE0];
  v7 = [v5 relationship];
  v8 = [v6 localizedStringForLabel:v7];

  [(HKMedicalIDEditorCell *)self setLabel:v8];

  [(HKMedicalIDEditorCell *)self updateValueLabel];
}

- (id)formattedValue
{
  v3 = [(_HKEmergencyContact *)self->_contact name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_HKEmergencyContact *)self->_contact phoneNumber];
  }

  v6 = v5;

  return v6;
}

- (void)_labelTapped:(id)a3
{
  v4 = [(HKMedicalIDEditorCell *)self editDelegate];
  [v4 medicalIDEditorCellDidTapLabel:self];
}

@end
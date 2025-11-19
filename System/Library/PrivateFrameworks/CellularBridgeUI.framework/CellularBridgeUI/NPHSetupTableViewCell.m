@interface NPHSetupTableViewCell
- (NPHSetupTableViewCell)initWithTag:(int64_t)a3 delegate:(id)a4;
@end

@implementation NPHSetupTableViewCell

- (NPHSetupTableViewCell)initWithTag:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v33.receiver = self;
  v33.super_class = NPHSetupTableViewCell;
  v7 = [(NPHSetupTableViewCell *)&v33 initWithStyle:1 reuseIdentifier:@"FAUX_INFO_CELL"];
  v8 = v7;
  if (v7)
  {
    [(NPHSetupTableViewCell *)v7 setTag:a3];
    v9 = objc_alloc_init(MEMORY[0x277D75BB8]);
    editableTextField = v8->_editableTextField;
    v8->_editableTextField = v9;

    [(UITextField *)v8->_editableTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextField *)v8->_editableTextField setTag:a3];
    [(UITextField *)v8->_editableTextField setDelegate:v6];
    [(UITextField *)v8->_editableTextField setAutocapitalizationType:0];
    [(UITextField *)v8->_editableTextField setAutocorrectionType:1];
    v11 = [(NPHSetupTableViewCell *)v8 contentView];
    [v11 addSubview:v8->_editableTextField];

    v12 = MEMORY[0x277CCAAD0];
    v13 = v8->_editableTextField;
    v14 = [(NPHSetupTableViewCell *)v8 textLabel];
    v15 = [v12 constraintWithItem:v13 attribute:5 relatedBy:0 toItem:v14 attribute:6 multiplier:1.0 constant:8.0];
    [(NPHSetupTableViewCell *)v8 addConstraint:v15];

    v16 = MEMORY[0x277CCAAD0];
    v17 = v8->_editableTextField;
    v18 = [(NPHSetupTableViewCell *)v8 contentView];
    v19 = [v16 constraintWithItem:v17 attribute:3 relatedBy:0 toItem:v18 attribute:3 multiplier:1.0 constant:8.0];
    [(NPHSetupTableViewCell *)v8 addConstraint:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = v8->_editableTextField;
    v22 = [(NPHSetupTableViewCell *)v8 contentView];
    v23 = [v20 constraintWithItem:v21 attribute:4 relatedBy:0 toItem:v22 attribute:4 multiplier:1.0 constant:-8.0];
    [(NPHSetupTableViewCell *)v8 addConstraint:v23];

    v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v8->_editableTextField attribute:6 relatedBy:0 toItem:v8 attribute:6 multiplier:1.0 constant:-8.0];
    [(NPHSetupTableViewCell *)v8 addConstraint:v24];

    v25 = [(NPHSetupTableViewCell *)v8 textLabel];
    v26 = [v25 font];

    v27 = MEMORY[0x277D74300];
    v28 = [v26 fontDescriptor];
    v29 = [v28 fontDescriptorWithSymbolicTraits:2];
    [v26 pointSize];
    v30 = [v27 fontWithDescriptor:v29 size:?];

    v31 = [(NPHSetupTableViewCell *)v8 textLabel];
    [v31 setFont:v30];
  }

  return v8;
}

@end
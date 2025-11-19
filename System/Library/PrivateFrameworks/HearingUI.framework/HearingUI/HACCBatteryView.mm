@interface HACCBatteryView
- (HACCBatteryView)initWithFrame:(CGRect)a3;
- (void)setValue:(double)a3 forEar:(int)a4;
@end

@implementation HACCBatteryView

- (HACCBatteryView)initWithFrame:(CGRect)a3
{
  v48[1] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = HACCBatteryView;
  v3 = [(HACCBatteryView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    sideLabel = v3->_sideLabel;
    v3->_sideLabel = v4;

    v6 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:32770 options:0];
    v47 = *MEMORY[0x277D74430];
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
    v48[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v9 = [v6 fontDescriptorByAddingAttributes:v8];

    v10 = v3->_sideLabel;
    v11 = MEMORY[0x277D74300];
    [v9 pointSize];
    v12 = [v11 fontWithDescriptor:v9 size:?];
    [(UILabel *)v10 setFont:v12];

    v13 = v3->_sideLabel;
    v14 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v3->_sideLabel setTextAlignment:2];
    [(UILabel *)v3->_sideLabel setClipsToBounds:0];
    [(HACCBatteryView *)v3 addSubview:v3->_sideLabel];
    [(UILabel *)v3->_sideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x277CCAAD0];
    v16 = _NSDictionaryOfVariableBindings(&cfstr_Sidelabel.isa, v3->_sideLabel, 0);
    v17 = [v15 constraintsWithVisualFormat:@"V:|[_sideLabel]|" options:0 metrics:0 views:v16];
    [(HACCBatteryView *)v3 addConstraints:v17];

    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v18;

    v20 = v3->_valueLabel;
    v21 = MEMORY[0x277D74300];
    [v9 pointSize];
    v22 = [v21 fontWithDescriptor:v9 size:?];
    [(UILabel *)v20 setFont:v22];

    v23 = v3->_valueLabel;
    v24 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v23 setTextColor:v24];

    [(UILabel *)v3->_valueLabel setTextAlignment:0];
    [(UILabel *)v3->_valueLabel setClipsToBounds:0];
    [(HACCBatteryView *)v3 addSubview:v3->_valueLabel];
    [(UILabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = MEMORY[0x277CCAAD0];
    v26 = _NSDictionaryOfVariableBindings(&cfstr_Valuelabel.isa, v3->_valueLabel, 0);
    v27 = [v25 constraintsWithVisualFormat:@"V:|[_valueLabel]|" options:0 metrics:0 views:v26];
    [(HACCBatteryView *)v3 addConstraints:v27];

    v28 = [objc_alloc(MEMORY[0x277D75E10]) initWithSizeCategory:0];
    batteryView = v3->_batteryView;
    v3->_batteryView = v28;

    v30 = v3->_batteryView;
    v31 = [MEMORY[0x277D75348] whiteColor];
    [(_UIBatteryView *)v30 setFillColor:v31];

    v32 = v3->_batteryView;
    v33 = [MEMORY[0x277D75348] whiteColor];
    [(_UIBatteryView *)v32 setBodyColor:v33];

    v34 = v3->_batteryView;
    v35 = [MEMORY[0x277D75348] whiteColor];
    [(_UIBatteryView *)v34 setPinColor:v35];

    [(_UIBatteryView *)v3->_batteryView setChargePercent:1.0];
    [(HACCBatteryView *)v3 addSubview:v3->_batteryView];
    [(_UIBatteryView *)v3->_batteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v3->_numberFormatter;
    v3->_numberFormatter = v36;

    [(NSNumberFormatter *)v3->_numberFormatter setNumberStyle:3];
    [(NSNumberFormatter *)v3->_numberFormatter setMaximumFractionDigits:0];
    v38 = v3->_numberFormatter;
    v39 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v40 = [(NSNumberFormatter *)v38 stringFromNumber:v39];
    [(NSNumberFormatter *)v38 setNotANumberSymbol:v40];

    v41 = [MEMORY[0x277CCAAD0] constraintWithItem:v3->_batteryView attribute:10 relatedBy:0 toItem:v3->_valueLabel attribute:10 multiplier:1.0 constant:0.0];
    [(HACCBatteryView *)v3 addConstraint:v41];

    v42 = MEMORY[0x277CCAAD0];
    v43 = _NSDictionaryOfVariableBindings(&cfstr_SidelabelValue.isa, v3->_sideLabel, v3->_valueLabel, v3->_batteryView, 0);
    v44 = [v42 constraintsWithVisualFormat:@"H:|[_sideLabel]-(>=6.0)-[_valueLabel]-(6.0)-[_batteryView]|" options:0 metrics:0 views:v43];
    [(HACCBatteryView *)v3 addConstraints:v44];
  }

  return v3;
}

- (void)setValue:(double)a3 forEar:(int)a4
{
  if (a4 <= 3)
  {
    if (a4)
    {
      if (a4 != 2)
      {
        goto LABEL_10;
      }

      sideLabel = self->_sideLabel;
      goto LABEL_9;
    }

LABEL_7:
    [(UILabel *)self->_sideLabel setText:&stru_28645E540];
    goto LABEL_10;
  }

  if (a4 != 4)
  {
    if (a4 != 6)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  sideLabel = self->_sideLabel;
LABEL_9:
  v7 = hearingLocString();
  [(UILabel *)sideLabel setText:v7];

LABEL_10:
  valueLabel = self->_valueLabel;
  numberFormatter = self->_numberFormatter;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v11 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v10];
  [(UILabel *)valueLabel setText:v11];

  batteryView = self->_batteryView;

  [(_UIBatteryView *)batteryView setChargePercent:a3];
}

@end
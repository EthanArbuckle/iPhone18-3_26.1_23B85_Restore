@interface CertUIKeyDataCell
- (CertUIKeyDataCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)_setupConstraints;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CertUIKeyDataCell

- (CertUIKeyDataCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CertUIKeyDataCell;
  v4 = [(CertUIKeyDataCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CertUIKeyDataCell *)v4 _setup];
  }

  return v5;
}

- (void)_setup
{
  [(CertUIKeyDataCell *)self setSelectionStyle:0];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  keyLabel = self->_keyLabel;
  self->_keyLabel = v8;

  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  valueLabel = self->_valueLabel;
  self->_valueLabel = v10;

  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v13 = self->_keyLabel;
  self->_keyLabel = v12;

  [(UILabel *)self->_keyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_keyLabel setTextAlignment:0];
  v14 = *MEMORY[0x277D76918];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_keyLabel setFont:v15];

  [(UILabel *)self->_keyLabel setNumberOfLines:0];
  v16 = [(CertUIKeyDataCell *)self contentView];
  [v16 addSubview:self->_keyLabel];

  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v18 = self->_valueLabel;
  self->_valueLabel = v17;

  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_valueLabel setTextAlignment:2];
  v19 = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_valueLabel setTextColor:v19];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
  [(UILabel *)self->_valueLabel setFont:v20];

  [(UILabel *)self->_valueLabel setNumberOfLines:0];
  v21 = [(CertUIKeyDataCell *)self contentView];
  [v21 addSubview:self->_valueLabel];

  [(CertUIKeyDataCell *)self _setupConstraints];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(CertUIKeyDataCell *)self keyLabel];
  [v7 setText:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v13 componentsJoinedByString:@"\n"];
    v9 = [(CertUIKeyDataCell *)self valueLabel];
    [v9 setText:v8];

    v10 = [(CertUIKeyDataCell *)self valueLabel];
    [v10 setTextAlignment:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = [v13 CertUIHexString];
    v12 = [(CertUIKeyDataCell *)self valueLabel];
    [v12 setText:v11];

    v8 = [(CertUIKeyDataCell *)self valueLabel];
    [v8 setTextAlignment:0];
  }

LABEL_6:
  [(CertUIKeyDataCell *)self updateConstraintsIfNeeded];
}

- (void)_setupConstraints
{
  v3 = [(CertUIKeyDataCell *)self constraints];

  if (v3)
  {
    v4 = [(CertUIKeyDataCell *)self contentView];
    v5 = [(CertUIKeyDataCell *)self constraints];
    [v4 removeConstraints:v5];

    [(CertUIKeyDataCell *)self setConstraints:0];
  }

  v31 = objc_opt_new();
  v6 = MEMORY[0x277CCAAD0];
  keyLabel = self->_keyLabel;
  v8 = [(CertUIKeyDataCell *)self contentView];
  v9 = [v6 constraintWithItem:keyLabel attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:10.0];
  [v31 addObject:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_valueLabel attribute:3 relatedBy:0 toItem:self->_keyLabel attribute:4 multiplier:1.0 constant:10.0];
  [v31 addObject:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = self->_keyLabel;
  v13 = [(CertUIKeyDataCell *)self contentView];
  v14 = [v11 constraintWithItem:v12 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:10.0];
  [v31 addObject:v14];

  v15 = MEMORY[0x277CCAAD0];
  valueLabel = self->_valueLabel;
  v17 = [(CertUIKeyDataCell *)self contentView];
  v18 = [v15 constraintWithItem:valueLabel attribute:5 relatedBy:0 toItem:v17 attribute:5 multiplier:1.0 constant:10.0];
  [v31 addObject:v18];

  v19 = MEMORY[0x277CCAAD0];
  v20 = self->_keyLabel;
  v21 = [(CertUIKeyDataCell *)self contentView];
  v22 = [v19 constraintWithItem:v20 attribute:6 relatedBy:0 toItem:v21 attribute:6 multiplier:1.0 constant:-10.0];
  [v31 addObject:v22];

  v23 = MEMORY[0x277CCAAD0];
  v24 = self->_valueLabel;
  v25 = [(CertUIKeyDataCell *)self contentView];
  v26 = [v23 constraintWithItem:v24 attribute:6 relatedBy:0 toItem:v25 attribute:6 multiplier:1.0 constant:-10.0];
  [v31 addObject:v26];

  v27 = MEMORY[0x277CCAAD0];
  v28 = [(CertUIKeyDataCell *)self contentView];
  v29 = [v27 constraintWithItem:v28 attribute:4 relatedBy:0 toItem:self->_valueLabel attribute:4 multiplier:1.0 constant:10.0];
  [v31 addObject:v29];

  [(CertUIKeyDataCell *)self setConstraints:v31];
  v30 = [(CertUIKeyDataCell *)self contentView];
  [v30 addConstraints:v31];
}

@end
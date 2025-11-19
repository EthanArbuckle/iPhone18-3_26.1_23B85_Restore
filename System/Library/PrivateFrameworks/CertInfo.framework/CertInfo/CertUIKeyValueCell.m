@interface CertUIKeyValueCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CertUIKeyValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)_setupConstraints;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CertUIKeyValueCell

- (CertUIKeyValueCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CertUIKeyValueCell;
  v4 = [(CertUIKeyValueCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CertUIKeyValueCell *)v4 _setup];
  }

  return v5;
}

- (void)_setup
{
  [(CertUIKeyValueCell *)self setSelectionStyle:0];
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
  v16 = [(CertUIKeyValueCell *)self contentView];
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
  v21 = [(CertUIKeyValueCell *)self contentView];
  [v21 addSubview:self->_valueLabel];

  [(CertUIKeyValueCell *)self _setupConstraints];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(CertUIKeyValueCell *)self keyLabel];
  [v7 setText:v6];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v17 || (isKindOfClass & 1) != 0)
  {
    v16 = [(CertUIKeyValueCell *)self valueLabel];
    [v16 setText:v17];

    v11 = [(CertUIKeyValueCell *)self valueLabel];
    [v11 setTextAlignment:2];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v9 = MEMORY[0x277CCA968];
    v10 = v17;
    v11 = objc_alloc_init(v9);
    [v11 setDateStyle:1];
    [v11 setTimeStyle:2];
    v12 = [MEMORY[0x277CBEAF8] currentLocale];
    [v11 setLocale:v12];

    v13 = [v11 stringFromDate:v10];

    v14 = [(CertUIKeyValueCell *)self valueLabel];
    [v14 setText:v13];

    v15 = [(CertUIKeyValueCell *)self valueLabel];
    [v15 setTextAlignment:2];
  }

LABEL_7:
  [(CertUIKeyValueCell *)self updateConstraintsIfNeeded];
  [(CertUIKeyValueCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(CertUIKeyValueCell *)self valueLabel:a3.width];
  v6 = [v5 text];
  v7 = [v6 length];

  v8 = 130.0;
  if (!v7)
  {
    v8 = 30.0;
  }

  v9 = width - v8;
  v10 = [(CertUIKeyValueCell *)self keyLabel];
  [v10 sizeThatFits:{v9, 3.40282347e38}];
  v12 = v11;
  v14 = v13;

  v15 = [(CertUIKeyValueCell *)self valueLabel];
  [v15 sizeThatFits:{width - (v12 + 30.0), 3.40282347e38}];
  v17 = v16;

  if (v14 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 + 20.0;
  if (v19 >= 44.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 44.0;
  }

  v21 = [MEMORY[0x277D759A0] mainScreen];
  [v21 bounds];
  v23 = v22;

  v24 = v23;
  v25 = v20;
  result.height = v25;
  result.width = v24;
  return result;
}

- (void)_setupConstraints
{
  v3 = [(CertUIKeyValueCell *)self constraints];

  if (v3)
  {
    v4 = [(CertUIKeyValueCell *)self contentView];
    v5 = [(CertUIKeyValueCell *)self constraints];
    [v4 removeConstraints:v5];

    [(CertUIKeyValueCell *)self setConstraints:0];
  }

  v30 = objc_opt_new();
  v6 = MEMORY[0x277CCAAD0];
  valueLabel = self->_valueLabel;
  v8 = [(CertUIKeyValueCell *)self contentView];
  v9 = [v6 constraintWithItem:valueLabel attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:10.0];
  [v30 addObject:v9];

  v10 = MEMORY[0x277CCAAD0];
  v11 = [(CertUIKeyValueCell *)self contentView];
  v12 = [v10 constraintWithItem:v11 attribute:4 relatedBy:1 toItem:self->_valueLabel attribute:4 multiplier:1.0 constant:10.0];
  [v30 addObject:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = [(CertUIKeyValueCell *)self contentView];
  v15 = [v13 constraintWithItem:v14 attribute:4 relatedBy:1 toItem:self->_keyLabel attribute:4 multiplier:1.0 constant:10.0];
  [v30 addObject:v15];

  LODWORD(v16) = 1144766464;
  [(UILabel *)self->_keyLabel setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1144766464;
  [(UILabel *)self->_keyLabel setContentHuggingPriority:0 forAxis:v17];
  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_valueLabel attribute:7 relatedBy:1 toItem:self->_keyLabel attribute:7 multiplier:0.0 constant:100.0];
  [v30 addObject:v18];

  v19 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_keyLabel attribute:12 relatedBy:0 toItem:self->_valueLabel attribute:12 multiplier:1.0 constant:0.0];
  [v30 addObject:v19];

  v20 = MEMORY[0x277CCAAD0];
  keyLabel = self->_keyLabel;
  v22 = [(CertUIKeyValueCell *)self contentView];
  v23 = [v20 constraintWithItem:keyLabel attribute:5 relatedBy:0 toItem:v22 attribute:5 multiplier:1.0 constant:10.0];
  [v30 addObject:v23];

  v24 = MEMORY[0x277CCAAD0];
  v25 = self->_valueLabel;
  v26 = [(CertUIKeyValueCell *)self contentView];
  v27 = [v24 constraintWithItem:v25 attribute:6 relatedBy:0 toItem:v26 attribute:6 multiplier:1.0 constant:-10.0];
  [v30 addObject:v27];

  v28 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_valueLabel attribute:5 relatedBy:0 toItem:self->_keyLabel attribute:6 multiplier:1.0 constant:10.0];
  [v30 addObject:v28];

  [(CertUIKeyValueCell *)self setConstraints:v30];
  v29 = [(CertUIKeyValueCell *)self contentView];
  [v29 addConstraints:v30];
}

@end
@interface HUUnitPickerViewCell
- (CGSize)_estimatedSizeForAttributedString:(id)a3;
- (CGSize)longestValueSize;
- (HUUnitPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSAttributedString)longestValue;
- (id)effectiveUnitText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reloadPickerView;
- (void)setUnitText:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUUnitPickerViewCell

- (HUUnitPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = HUUnitPickerViewCell;
  v4 = [(HUPickerViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->_longestValueSize = *MEMORY[0x277CBF3A8];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUUnitPickerViewCell *)v5 setUnitLabel:v6];

    v7 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    v8 = [(HUUnitPickerViewCell *)v5 unitLabel];
    [v8 setFont:v7];

    v9 = [(HUPickerViewCell *)v5 pickerView];
    v10 = [v9 _textColor];
    v11 = [(HUUnitPickerViewCell *)v5 unitLabel];
    [v11 setTextColor:v10];

    v12 = [(HUUnitPickerViewCell *)v5 contentView];
    v13 = [(HUUnitPickerViewCell *)v5 unitLabel];
    [v12 addSubview:v13];
  }

  return v5;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUUnitPickerViewCell;
  [(HUPickerViewCell *)&v4 prepareForReuse];
  longestValue = self->_longestValue;
  self->_longestValue = 0;

  self->_longestValueSize = *MEMORY[0x277CBF3A8];
}

- (void)reloadPickerView
{
  longestValue = self->_longestValue;
  self->_longestValue = 0;

  self->_longestValueSize = *MEMORY[0x277CBF3A8];
  v4.receiver = self;
  v4.super_class = HUUnitPickerViewCell;
  [(HUPickerViewCell *)&v4 reloadPickerView];
}

- (void)setUnitText:(id)a3
{
  v5 = a3;
  v6 = self->_unitText;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_unitText, a3);
    [(HUUnitPickerViewCell *)self updateUIWithAnimation:1];
  }

LABEL_8:
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = HUUnitPickerViewCell;
  [(HUPickerViewCell *)&v13 updateUIWithAnimation:a3];
  v4 = [(HUUnitPickerViewCell *)self unitLabel];
  v5 = [v4 text];
  v6 = [(HUUnitPickerViewCell *)self effectiveUnitText];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    return;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v10 = [v7 isEqual:v8];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [(HUUnitPickerViewCell *)self effectiveUnitText];
    v12 = [(HUUnitPickerViewCell *)self unitLabel];
    [v12 setText:v11];

    [(HUUnitPickerViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUUnitPickerViewCell;
  [(HUUnitPickerViewCell *)&v18 layoutSubviews];
  v3 = [(HUUnitPickerViewCell *)self unitLabel];
  [v3 sizeToFit];

  v4 = [(HUUnitPickerViewCell *)self unitLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = [(HUPickerViewCell *)self pickerView];
  [v9 center];
  v11 = v10;
  [(HUUnitPickerViewCell *)self longestValueSize];
  v13 = v11 + v12 * 0.5 + 8.0;
  v14 = [(HUPickerViewCell *)self pickerView];
  [v14 center];
  v16 = v15 - v8 * 0.5;

  v17 = [(HUUnitPickerViewCell *)self unitLabel];
  [v17 setFrame:{v13, v16, v6, v8}];
}

- (id)effectiveUnitText
{
  v3 = [(HUUnitPickerViewCell *)self unitText];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HUPickerViewCell *)self item];
    v7 = [v6 latestResults];
    v5 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F78]];
  }

  return v5;
}

- (NSAttributedString)longestValue
{
  longestValue = self->_longestValue;
  if (!longestValue)
  {
    v4 = 0;
    if ([(HUPickerViewCell *)self numberOfValues])
    {
      v5 = 0;
      v6 = 0.0;
      while (1)
      {
        v7 = [(HUPickerViewCell *)self pickerView];
        v8 = [(HUPickerViewCell *)self pickerView:v7 attributedTitleForRow:v5 forComponent:0];

        if (v8)
        {
          break;
        }

        v11 = [(HUPickerViewCell *)self pickerView];
        v12 = [(HUPickerViewCell *)self pickerView:v11 titleForRow:v5 forComponent:0];

        if (v12)
        {
          v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v12];

          if (v8)
          {
            break;
          }
        }

        else
        {
          v8 = 0;
        }

LABEL_11:

        if (++v5 >= [(HUPickerViewCell *)self numberOfValues])
        {
          goto LABEL_12;
        }
      }

      [(HUUnitPickerViewCell *)self _estimatedSizeForAttributedString:v8];
      if (v9 > v6)
      {
        v10 = v9;
        v8 = v8;

        v4 = v8;
        v6 = v10;
      }

      goto LABEL_11;
    }

LABEL_12:
    v13 = self->_longestValue;
    self->_longestValue = v4;

    longestValue = self->_longestValue;
  }

  return longestValue;
}

- (CGSize)longestValueSize
{
  p_longestValueSize = &self->_longestValueSize;
  width = self->_longestValueSize.width;
  height = self->_longestValueSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v7 = [(HUUnitPickerViewCell *)self longestValue];
    [(HUUnitPickerViewCell *)self _estimatedSizeForAttributedString:v7];
    p_longestValueSize->width = v8;
    p_longestValueSize->height = v9;

    width = p_longestValueSize->width;
    height = p_longestValueSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_estimatedSizeForAttributedString:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277D740A8];
  v4 = a3;
  v5 = [(HUUnitPickerViewCell *)self unitLabel];
  v6 = [v5 font];
  v17[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [v4 hf_attributedStringWithDefaultAttributes:v7];

  v9 = [v8 hf_attributedStringScaledByFactor:1.2];

  [v9 size];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end
@interface HUUnitPickerViewCell
- (CGSize)_estimatedSizeForAttributedString:(id)string;
- (CGSize)longestValueSize;
- (HUUnitPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSAttributedString)longestValue;
- (id)effectiveUnitText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)reloadPickerView;
- (void)setUnitText:(id)text;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUUnitPickerViewCell

- (HUUnitPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = HUUnitPickerViewCell;
  v4 = [(HUPickerViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    v4->_longestValueSize = *MEMORY[0x277CBF3A8];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [(HUUnitPickerViewCell *)v5 setUnitLabel:v6];

    v7 = [MEMORY[0x277D74300] systemFontOfSize:20.0];
    unitLabel = [(HUUnitPickerViewCell *)v5 unitLabel];
    [unitLabel setFont:v7];

    pickerView = [(HUPickerViewCell *)v5 pickerView];
    _textColor = [pickerView _textColor];
    unitLabel2 = [(HUUnitPickerViewCell *)v5 unitLabel];
    [unitLabel2 setTextColor:_textColor];

    contentView = [(HUUnitPickerViewCell *)v5 contentView];
    unitLabel3 = [(HUUnitPickerViewCell *)v5 unitLabel];
    [contentView addSubview:unitLabel3];
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

- (void)setUnitText:(id)text
{
  textCopy = text;
  v6 = self->_unitText;
  v7 = textCopy;
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
    objc_storeStrong(&self->_unitText, text);
    [(HUUnitPickerViewCell *)self updateUIWithAnimation:1];
  }

LABEL_8:
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v13.receiver = self;
  v13.super_class = HUUnitPickerViewCell;
  [(HUPickerViewCell *)&v13 updateUIWithAnimation:animation];
  unitLabel = [(HUUnitPickerViewCell *)self unitLabel];
  text = [unitLabel text];
  effectiveUnitText = [(HUUnitPickerViewCell *)self effectiveUnitText];
  v7 = text;
  v8 = effectiveUnitText;
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
    effectiveUnitText2 = [(HUUnitPickerViewCell *)self effectiveUnitText];
    unitLabel2 = [(HUUnitPickerViewCell *)self unitLabel];
    [unitLabel2 setText:effectiveUnitText2];

    [(HUUnitPickerViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUUnitPickerViewCell;
  [(HUUnitPickerViewCell *)&v18 layoutSubviews];
  unitLabel = [(HUUnitPickerViewCell *)self unitLabel];
  [unitLabel sizeToFit];

  unitLabel2 = [(HUUnitPickerViewCell *)self unitLabel];
  [unitLabel2 frame];
  v6 = v5;
  v8 = v7;

  pickerView = [(HUPickerViewCell *)self pickerView];
  [pickerView center];
  v11 = v10;
  [(HUUnitPickerViewCell *)self longestValueSize];
  v13 = v11 + v12 * 0.5 + 8.0;
  pickerView2 = [(HUPickerViewCell *)self pickerView];
  [pickerView2 center];
  v16 = v15 - v8 * 0.5;

  unitLabel3 = [(HUUnitPickerViewCell *)self unitLabel];
  [unitLabel3 setFrame:{v13, v16, v6, v8}];
}

- (id)effectiveUnitText
{
  unitText = [(HUUnitPickerViewCell *)self unitText];
  v4 = unitText;
  if (unitText)
  {
    v5 = unitText;
  }

  else
  {
    item = [(HUPickerViewCell *)self item];
    latestResults = [item latestResults];
    v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F78]];
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
        pickerView = [(HUPickerViewCell *)self pickerView];
        v8 = [(HUPickerViewCell *)self pickerView:pickerView attributedTitleForRow:v5 forComponent:0];

        if (v8)
        {
          break;
        }

        pickerView2 = [(HUPickerViewCell *)self pickerView];
        v12 = [(HUPickerViewCell *)self pickerView:pickerView2 titleForRow:v5 forComponent:0];

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
    longestValue = [(HUUnitPickerViewCell *)self longestValue];
    [(HUUnitPickerViewCell *)self _estimatedSizeForAttributedString:longestValue];
    p_longestValueSize->width = v8;
    p_longestValueSize->height = v9;

    width = p_longestValueSize->width;
    height = p_longestValueSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_estimatedSizeForAttributedString:(id)string
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = *MEMORY[0x277D740A8];
  stringCopy = string;
  unitLabel = [(HUUnitPickerViewCell *)self unitLabel];
  font = [unitLabel font];
  v17[0] = font;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v8 = [stringCopy hf_attributedStringWithDefaultAttributes:v7];

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
@interface HKObjectPickerDetailView
- (HKObjectPickerDetailView)initWithFrame:(CGRect)frame;
- (void)_setUpSubviews;
@end

@implementation HKObjectPickerDetailView

- (HKObjectPickerDetailView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HKObjectPickerDetailView;
  v3 = [(HKObjectPickerDetailView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HKObjectPickerDetailView *)v3 _setUpSubviews];
  }

  return v4;
}

- (void)_setUpSubviews
{
  v40[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v8;

  [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
  v10 = *MEMORY[0x1E69DDCF8];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_primaryLabel setFont:v11];

  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:labelColor];

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKObjectPickerDetailView *)self addSubview:self->_primaryLabel];
  v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v13;

  [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v10];
  [(UILabel *)self->_secondaryLabel setFont:v15];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HKObjectPickerDetailView *)self addSubview:self->_secondaryLabel];
  v30 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_primaryLabel topAnchor];
  topAnchor2 = [(HKObjectPickerDetailView *)self topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[0] = v37;
  leadingAnchor = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor2 = [(HKObjectPickerDetailView *)self leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[1] = v34;
  trailingAnchor = [(HKObjectPickerDetailView *)self trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[2] = v31;
  topAnchor3 = [(UILabel *)self->_secondaryLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_primaryLabel bottomAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v40[3] = v27;
  leadingAnchor3 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[4] = v19;
  trailingAnchor3 = [(HKObjectPickerDetailView *)self trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[5] = v22;
  bottomAnchor2 = [(HKObjectPickerDetailView *)self bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_secondaryLabel bottomAnchor];
  v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v40[6] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:7];
  [v30 activateConstraints:v26];
}

@end
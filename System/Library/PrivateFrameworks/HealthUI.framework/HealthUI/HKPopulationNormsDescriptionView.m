@interface HKPopulationNormsDescriptionView
- (HKPopulationNormsDescriptionView)init;
- (void)updateWithTitle:(id)a3 description:(id)a4;
@end

@implementation HKPopulationNormsDescriptionView

- (HKPopulationNormsDescriptionView)init
{
  v10.receiver = self;
  v10.super_class = HKPopulationNormsDescriptionView;
  v2 = [(HKPopulationNormsDescriptionView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    classificationTitleLabel = v2->_classificationTitleLabel;
    v2->_classificationTitleLabel = v3;

    [(UILabel *)v2->_classificationTitleLabel setNumberOfLines:0];
    v5 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDD40] symbolicTraits:32770];
    [(UILabel *)v2->_classificationTitleLabel setFont:v5];

    [(UILabel *)v2->_classificationTitleLabel setAdjustsFontForContentSizeCategory:1];
    [(HKPopulationNormsDescriptionView *)v2 addSubview:v2->_classificationTitleLabel];
    [(UILabel *)v2->_classificationTitleLabel hk_constrainToSuperviewAlongEdges:&unk_1F43818E8 constant:0.0];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    classificationDescriptionLabel = v2->_classificationDescriptionLabel;
    v2->_classificationDescriptionLabel = v6;

    [(UILabel *)v2->_classificationDescriptionLabel setNumberOfLines:0];
    v8 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v2->_classificationDescriptionLabel setFont:v8];

    [(HKPopulationNormsDescriptionView *)v2 addSubview:v2->_classificationDescriptionLabel];
    [(UILabel *)v2->_classificationDescriptionLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v2->_classificationDescriptionLabel hk_constrainToView:v2->_classificationTitleLabel fromEdge:3 toEdge:4 constant:5.0];
    [(UILabel *)v2->_classificationDescriptionLabel hk_constrainToSuperviewAlongEdges:&unk_1F4381900 constant:0.0];
  }

  return v2;
}

- (void)updateWithTitle:(id)a3 description:(id)a4
{
  v6 = a4;
  [(UILabel *)self->_classificationTitleLabel setText:a3];
  v7 = MEMORY[0x1E69DD250];
  classificationDescriptionLabel = self->_classificationDescriptionLabel;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__HKPopulationNormsDescriptionView_updateWithTitle_description___block_invoke;
  v10[3] = &unk_1E81B5AD0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v7 transitionWithView:classificationDescriptionLabel duration:5242880 options:v10 animations:0 completion:0.2];
}

@end
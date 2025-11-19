@interface HACCStackView
- (void)addArrangedSubview:(id)a3 andSeparator:(BOOL)a4 withIndent:(double)a5 withDarkBackground:(BOOL)a6;
- (void)addArrangedSubview:(id)a3 withPartialSeparator:(BOOL)a4;
- (void)addArrangedSubview:(id)a3 withPartialSeparator:(BOOL)a4 withDarkBackground:(BOOL)a5;
- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 andSeparator:(BOOL)a5 withIndent:(double)a6 withDarkBackground:(BOOL)a7;
- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 withPartialSeparator:(BOOL)a5;
- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 withPartialSeparator:(BOOL)a5 withDarkBackground:(BOOL)a6;
- (void)removeArrangedSubview:(id)a3;
@end

@implementation HACCStackView

- (void)addArrangedSubview:(id)a3 withPartialSeparator:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  CCUILayoutGutter();
  [(HACCStackView *)self addArrangedSubview:v6 andSeparator:v4 withIndent:0 withDarkBackground:?];
}

- (void)addArrangedSubview:(id)a3 withPartialSeparator:(BOOL)a4 withDarkBackground:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  CCUILayoutGutter();
  [(HACCStackView *)self addArrangedSubview:v7 andSeparator:v5 withIndent:1 withDarkBackground:?];
}

- (void)addArrangedSubview:(id)a3 andSeparator:(BOOL)a4 withIndent:(double)a5 withDarkBackground:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = [(HACCStackView *)self arrangedSubviews];
  -[HACCStackView insertArrangedSubview:atIndex:andSeparator:withIndent:withDarkBackground:](self, "insertArrangedSubview:atIndex:andSeparator:withIndent:withDarkBackground:", v10, [v11 count], v8, v6, a5);
}

- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 withPartialSeparator:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  CCUILayoutGutter();
  [(HACCStackView *)self insertArrangedSubview:v8 atIndex:a4 andSeparator:v5 withIndent:0 withDarkBackground:?];
}

- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 withPartialSeparator:(BOOL)a5 withDarkBackground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  CCUILayoutGutter();
  [(HACCStackView *)self insertArrangedSubview:v10 atIndex:a4 andSeparator:v7 withIndent:v6 withDarkBackground:?];
}

- (void)insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4 andSeparator:(BOOL)a5 withIndent:(double)a6 withDarkBackground:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v46[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v45.receiver = self;
  v45.super_class = HACCStackView;
  [(HACCStackView *)&v45 insertArrangedSubview:v12 atIndex:a4];
  if (v9)
  {
    v42 = v12;
    v13 = objc_getAssociatedObject(v12, &HearingUISeparatorViewKey);
    v14 = v13;
    if (v13)
    {
      [v13 removeFromSuperview];
      v44.receiver = self;
      v44.super_class = HACCStackView;
      [(HACCStackView *)&v44 removeArrangedSubview:v14];
    }

    v40 = self;
    v41 = a4;
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);

    [v15 setAutoresizingMask:18];
    if (v7)
    {
      v16 = objc_alloc_init(HACCCapsuleDarkBackground);
      [(HACCCapsuleDarkBackground *)v16 setAutoresizingMask:18];
      [v15 addSubview:v16];
      [(HACCCapsuleDarkBackground *)v16 setupBackgroundVisualStyle];
    }

    v17 = objc_alloc(MEMORY[0x277D75D68]);
    v18 = [MEMORY[0x277D75D00] controlCenterKeyLineOnDarkVibrancyEffect];
    v19 = [v17 initWithEffect:v18];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 addSubview:v19];
    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    v21 = [MEMORY[0x277D75348] whiteColor];
    v39 = v20;
    [v20 setBackgroundColor:v21];

    v22 = [v19 contentView];
    [v22 addSubview:v20];

    [v20 setAutoresizingMask:18];
    v32 = MEMORY[0x277CCAAD0];
    v38 = [v19 leadingAnchor];
    v37 = [v15 leadingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37 constant:a6];
    v46[0] = v36;
    v35 = [v19 trailingAnchor];
    v34 = [v15 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v46[1] = v33;
    v31 = [v19 topAnchor];
    v23 = [v15 topAnchor];
    v24 = [v31 constraintEqualToAnchor:v23];
    v46[2] = v24;
    v25 = [v19 bottomAnchor];
    v26 = [v15 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v46[3] = v27;
    v28 = [v15 heightAnchor];
    +[HACCStackView separatorHeight];
    v29 = [v28 constraintEqualToConstant:?];
    v46[4] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    [v32 activateConstraints:v30];

    v12 = v42;
    [v15 setTag:{objc_msgSend(v42, "tag") - 1}];
    v43.receiver = v40;
    v43.super_class = HACCStackView;
    [(HACCStackView *)&v43 insertArrangedSubview:v15 atIndex:v41];
    objc_setAssociatedObject(v42, &HearingUISeparatorViewKey, v15, 1);
  }
}

- (void)removeArrangedSubview:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, &HearingUISeparatorViewKey);
  v6 = v5;
  if (v5)
  {
    [v5 removeFromSuperview];
    v8.receiver = self;
    v8.super_class = HACCStackView;
    [(HACCStackView *)&v8 removeArrangedSubview:v6];
  }

  [v4 removeFromSuperview];
  v7.receiver = self;
  v7.super_class = HACCStackView;
  [(HACCStackView *)&v7 removeArrangedSubview:v4];
}

@end
@interface HACCStackView
- (void)addArrangedSubview:(id)subview andSeparator:(BOOL)separator withIndent:(double)indent withDarkBackground:(BOOL)background;
- (void)addArrangedSubview:(id)subview withPartialSeparator:(BOOL)separator;
- (void)addArrangedSubview:(id)subview withPartialSeparator:(BOOL)separator withDarkBackground:(BOOL)background;
- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index andSeparator:(BOOL)separator withIndent:(double)indent withDarkBackground:(BOOL)background;
- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index withPartialSeparator:(BOOL)separator;
- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index withPartialSeparator:(BOOL)separator withDarkBackground:(BOOL)background;
- (void)removeArrangedSubview:(id)subview;
@end

@implementation HACCStackView

- (void)addArrangedSubview:(id)subview withPartialSeparator:(BOOL)separator
{
  separatorCopy = separator;
  subviewCopy = subview;
  CCUILayoutGutter();
  [(HACCStackView *)self addArrangedSubview:subviewCopy andSeparator:separatorCopy withIndent:0 withDarkBackground:?];
}

- (void)addArrangedSubview:(id)subview withPartialSeparator:(BOOL)separator withDarkBackground:(BOOL)background
{
  separatorCopy = separator;
  subviewCopy = subview;
  CCUILayoutGutter();
  [(HACCStackView *)self addArrangedSubview:subviewCopy andSeparator:separatorCopy withIndent:1 withDarkBackground:?];
}

- (void)addArrangedSubview:(id)subview andSeparator:(BOOL)separator withIndent:(double)indent withDarkBackground:(BOOL)background
{
  backgroundCopy = background;
  separatorCopy = separator;
  subviewCopy = subview;
  arrangedSubviews = [(HACCStackView *)self arrangedSubviews];
  -[HACCStackView insertArrangedSubview:atIndex:andSeparator:withIndent:withDarkBackground:](self, "insertArrangedSubview:atIndex:andSeparator:withIndent:withDarkBackground:", subviewCopy, [arrangedSubviews count], separatorCopy, backgroundCopy, indent);
}

- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index withPartialSeparator:(BOOL)separator
{
  separatorCopy = separator;
  subviewCopy = subview;
  CCUILayoutGutter();
  [(HACCStackView *)self insertArrangedSubview:subviewCopy atIndex:index andSeparator:separatorCopy withIndent:0 withDarkBackground:?];
}

- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index withPartialSeparator:(BOOL)separator withDarkBackground:(BOOL)background
{
  backgroundCopy = background;
  separatorCopy = separator;
  subviewCopy = subview;
  CCUILayoutGutter();
  [(HACCStackView *)self insertArrangedSubview:subviewCopy atIndex:index andSeparator:separatorCopy withIndent:backgroundCopy withDarkBackground:?];
}

- (void)insertArrangedSubview:(id)subview atIndex:(unint64_t)index andSeparator:(BOOL)separator withIndent:(double)indent withDarkBackground:(BOOL)background
{
  backgroundCopy = background;
  separatorCopy = separator;
  v46[5] = *MEMORY[0x277D85DE8];
  subviewCopy = subview;
  v45.receiver = self;
  v45.super_class = HACCStackView;
  [(HACCStackView *)&v45 insertArrangedSubview:subviewCopy atIndex:index];
  if (separatorCopy)
  {
    v42 = subviewCopy;
    v13 = objc_getAssociatedObject(subviewCopy, &HearingUISeparatorViewKey);
    v14 = v13;
    if (v13)
    {
      [v13 removeFromSuperview];
      v44.receiver = self;
      v44.super_class = HACCStackView;
      [(HACCStackView *)&v44 removeArrangedSubview:v14];
    }

    selfCopy = self;
    indexCopy = index;
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);

    [v15 setAutoresizingMask:18];
    if (backgroundCopy)
    {
      v16 = objc_alloc_init(HACCCapsuleDarkBackground);
      [(HACCCapsuleDarkBackground *)v16 setAutoresizingMask:18];
      [v15 addSubview:v16];
      [(HACCCapsuleDarkBackground *)v16 setupBackgroundVisualStyle];
    }

    v17 = objc_alloc(MEMORY[0x277D75D68]);
    controlCenterKeyLineOnDarkVibrancyEffect = [MEMORY[0x277D75D00] controlCenterKeyLineOnDarkVibrancyEffect];
    v19 = [v17 initWithEffect:controlCenterKeyLineOnDarkVibrancyEffect];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v15 addSubview:v19];
    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v39 = v20;
    [v20 setBackgroundColor:whiteColor];

    contentView = [v19 contentView];
    [contentView addSubview:v20];

    [v20 setAutoresizingMask:18];
    v32 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v19 leadingAnchor];
    leadingAnchor2 = [v15 leadingAnchor];
    v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:indent];
    v46[0] = v36;
    trailingAnchor = [v19 trailingAnchor];
    trailingAnchor2 = [v15 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v46[1] = v33;
    topAnchor = [v19 topAnchor];
    topAnchor2 = [v15 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46[2] = v24;
    bottomAnchor = [v19 bottomAnchor];
    bottomAnchor2 = [v15 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[3] = v27;
    heightAnchor = [v15 heightAnchor];
    +[HACCStackView separatorHeight];
    v29 = [heightAnchor constraintEqualToConstant:?];
    v46[4] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:5];
    [v32 activateConstraints:v30];

    subviewCopy = v42;
    [v15 setTag:{objc_msgSend(v42, "tag") - 1}];
    v43.receiver = selfCopy;
    v43.super_class = HACCStackView;
    [(HACCStackView *)&v43 insertArrangedSubview:v15 atIndex:indexCopy];
    objc_setAssociatedObject(v42, &HearingUISeparatorViewKey, v15, 1);
  }
}

- (void)removeArrangedSubview:(id)subview
{
  subviewCopy = subview;
  v5 = objc_getAssociatedObject(subviewCopy, &HearingUISeparatorViewKey);
  v6 = v5;
  if (v5)
  {
    [v5 removeFromSuperview];
    v8.receiver = self;
    v8.super_class = HACCStackView;
    [(HACCStackView *)&v8 removeArrangedSubview:v6];
  }

  [subviewCopy removeFromSuperview];
  v7.receiver = self;
  v7.super_class = HACCStackView;
  [(HACCStackView *)&v7 removeArrangedSubview:subviewCopy];
}

@end
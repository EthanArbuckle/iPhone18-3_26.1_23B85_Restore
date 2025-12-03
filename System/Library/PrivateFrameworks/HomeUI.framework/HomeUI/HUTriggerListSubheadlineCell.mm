@interface HUTriggerListSubheadlineCell
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (HUTriggerListSubheadlineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUTriggerListSubheadlineCellDelegate)delegate;
- (id)_descriptionTextAttributes;
- (void)prepareForReuse;
- (void)setLayoutOptions:(id)options;
- (void)setRespectLayoutMargins:(BOOL)margins;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
- (void)updateUIWithDescription:(id)description;
- (void)updateUIWithResults:(id)results animation:(BOOL)animation;
@end

@implementation HUTriggerListSubheadlineCell

- (HUTriggerListSubheadlineCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v22.receiver = self;
  v22.super_class = HUTriggerListSubheadlineCell;
  v4 = [(HUTriggerListSubheadlineCell *)&v22 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUTriggerListSubheadlineCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUTriggerListSubheadlineCell *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc(MEMORY[0x277D75C40]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUTriggerListSubheadlineCell *)v5 setDescriptionView:v8];

    descriptionView = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];

    descriptionView2 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView2 setDelegate:v5];

    descriptionView3 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView3 setEditable:0];

    descriptionView4 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView4 _setInteractiveTextSelectionDisabled:1];

    descriptionView5 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView5 setScrollEnabled:0];

    descriptionView6 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    textContainer = [descriptionView6 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    descriptionView7 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView7 setBackgroundColor:clearColor2];

    descriptionView8 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [descriptionView8 setClipsToBounds:0];

    contentView = [(HUTriggerListSubheadlineCell *)v5 contentView];
    descriptionView9 = [(HUTriggerListSubheadlineCell *)v5 descriptionView];
    [contentView addSubview:descriptionView9];

    v5->_respectLayoutMargins = 1;
    [(HUTriggerListSubheadlineCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
    [(HUTriggerListSubheadlineCell *)self setNeedsUpdateConstraints];
  }
}

- (void)prepareForReuse
{
  [(HUTriggerListSubheadlineCell *)self setRespectLayoutMargins:1];
  v3.receiver = self;
  v3.super_class = HUTriggerListSubheadlineCell;
  [(HUTriggerListSubheadlineCell *)&v3 prepareForReuse];
}

- (void)setRespectLayoutMargins:(BOOL)margins
{
  if (self->_respectLayoutMargins != margins)
  {
    self->_respectLayoutMargins = margins;
    [(HUTriggerListSubheadlineCell *)self setNeedsUpdateConstraints];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  item = [(HUTriggerListSubheadlineCell *)self item];
  latestResults = [item latestResults];

  [(HUTriggerListSubheadlineCell *)self updateUIWithResults:latestResults animation:animationCopy];
}

- (void)updateUIWithResults:(id)results animation:(BOOL)animation
{
  v5 = [results objectForKeyedSubscript:{*MEMORY[0x277D13E20], animation}];
  [(HUTriggerListSubheadlineCell *)self updateUIWithDescription:v5];
}

- (void)updateUIWithDescription:(id)description
{
  descriptionCopy = description;
  descriptionView = [(HUTriggerListSubheadlineCell *)self descriptionView];
  [descriptionView setHidden:descriptionCopy == 0];

  if (descriptionCopy)
  {
    _descriptionTextAttributes = [(HUTriggerListSubheadlineCell *)self _descriptionTextAttributes];
    if ([descriptionCopy prefersDynamicString])
    {
      descriptionView2 = [(HUTriggerListSubheadlineCell *)self descriptionView];
      [descriptionView2 bounds];
      v9 = [descriptionCopy dynamicStringForSize:_descriptionTextAttributes attributes:{v7, v8}];
    }

    else
    {
      v9 = [descriptionCopy stringWithAttributes:_descriptionTextAttributes];
    }

    descriptionView3 = [(HUTriggerListSubheadlineCell *)self descriptionView];
    [descriptionView3 setAttributedText:v9];
  }

  [(HUTriggerListSubheadlineCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v40[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  layoutOptions = [(HUTriggerListSubheadlineCell *)self layoutOptions];
  viewSizeSubclass = [layoutOptions viewSizeSubclass];

  v39[0] = &unk_282491AC0;
  v39[1] = &unk_282491AD8;
  v40[0] = &unk_282493500;
  v40[1] = &unk_282493510;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v7 = HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v6);

  LOBYTE(v6) = [(HUTriggerListSubheadlineCell *)self respectLayoutMargins];
  contentView = [(HUTriggerListSubheadlineCell *)self contentView];
  v9 = contentView;
  if (v6)
  {
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor = [layoutMarginsGuide leadingAnchor];
  }

  else
  {
    leadingAnchor = [contentView leadingAnchor];
  }

  respectLayoutMargins = [(HUTriggerListSubheadlineCell *)self respectLayoutMargins];
  contentView2 = [(HUTriggerListSubheadlineCell *)self contentView];
  v14 = contentView2;
  if (respectLayoutMargins)
  {
    layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  }

  else
  {
    trailingAnchor = [contentView2 trailingAnchor];
  }

  descriptionView = [(HUTriggerListSubheadlineCell *)self descriptionView];
  topAnchor = [descriptionView topAnchor];
  contentView3 = [(HUTriggerListSubheadlineCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v21];

  descriptionView2 = [(HUTriggerListSubheadlineCell *)self descriptionView];
  leadingAnchor2 = [descriptionView2 leadingAnchor];
  v24 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:2.0];
  [array addObject:v24];

  descriptionView3 = [(HUTriggerListSubheadlineCell *)self descriptionView];
  trailingAnchor2 = [descriptionView3 trailingAnchor];
  v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor];
  [array addObject:v27];

  descriptionView4 = [(HUTriggerListSubheadlineCell *)self descriptionView];
  lastBaselineAnchor = [descriptionView4 lastBaselineAnchor];
  contentView4 = [(HUTriggerListSubheadlineCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  v32 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v7];
  [array addObject:v32];

  constraints = [(HUTriggerListSubheadlineCell *)self constraints];
  LOBYTE(lastBaselineAnchor) = [array isEqualToArray:constraints];

  if ((lastBaselineAnchor & 1) == 0)
  {
    v34 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUTriggerListSubheadlineCell *)self constraints];
    [v34 deactivateConstraints:constraints2];

    [(HUTriggerListSubheadlineCell *)self setConstraints:array];
    v36 = MEMORY[0x277CCAAD0];
    constraints3 = [(HUTriggerListSubheadlineCell *)self constraints];
    [v36 activateConstraints:constraints3];
  }

  v38.receiver = self;
  v38.super_class = HUTriggerListSubheadlineCell;
  [(HUTriggerListSubheadlineCell *)&v38 updateConstraints];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = lCopy;
    _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  if (!interaction)
  {
    delegate = [(HUTriggerListSubheadlineCell *)self delegate];
    [delegate learnMoreLinkTapped:self];
  }

  return 0;
}

- (id)_descriptionTextAttributes
{
  v17[3] = *MEMORY[0x277D85DE8];
  layoutOptions = [(HUTriggerListSubheadlineCell *)self layoutOptions];
  viewSizeSubclass = [layoutOptions viewSizeSubclass];

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v5 = [defaultParagraphStyle mutableCopy];

  [v5 setAlignment:4];
  v6 = MEMORY[0x277D76920];
  if (viewSizeSubclass)
  {
    v6 = MEMORY[0x277D76918];
  }

  v7 = MEMORY[0x277D74300];
  v8 = *MEMORY[0x277D74420];
  v9 = *v6;
  v10 = [v7 _preferredFontForTextStyle:v9 weight:v8];
  v16[0] = *MEMORY[0x277D740C0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v12 = *MEMORY[0x277D74118];
  v17[0] = labelColor;
  v17[1] = v5;
  v13 = *MEMORY[0x277D740A8];
  v16[1] = v12;
  v16[2] = v13;
  v17[2] = v10;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

- (HUTriggerListSubheadlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
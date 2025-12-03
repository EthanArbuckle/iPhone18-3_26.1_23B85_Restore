@interface HUItemTableSectionHeaderFooterView
+ (id)defaultAttributesForType:(unint64_t)type;
- (BOOL)_updateViewContent;
- (HUItemTableSectionHeaderFooterView)initWithReuseIdentifier:(id)identifier type:(unint64_t)type;
- (UIEdgeInsets)indentationInset;
- (void)prepareForReuse;
- (void)setMessage:(id)message;
- (void)setType:(unint64_t)type;
- (void)updateConstraints;
@end

@implementation HUItemTableSectionHeaderFooterView

- (HUItemTableSectionHeaderFooterView)initWithReuseIdentifier:(id)identifier type:(unint64_t)type
{
  v19.receiver = self;
  v19.super_class = HUItemTableSectionHeaderFooterView;
  v5 = [(HUItemTableSectionHeaderFooterView *)&v19 initWithReuseIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc_init(HUTappableTextView);
    [(HUItemTableSectionHeaderFooterView *)v5 setMessageTextView:v6];

    messageTextView = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [messageTextView setTranslatesAutoresizingMaskIntoConstraints:0];

    messageTextView2 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [messageTextView2 setEditable:0];

    messageTextView3 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [messageTextView3 _setInteractiveTextSelectionDisabled:1];

    messageTextView4 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [messageTextView4 setScrollEnabled:0];

    messageTextView5 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    textContainer = [messageTextView5 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    clearColor = [MEMORY[0x277D75348] clearColor];
    messageTextView6 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [messageTextView6 setBackgroundColor:clearColor];

    tableView = [(HUItemTableSectionHeaderFooterView *)v5 tableView];
    [tableView separatorInset];
    [(HUItemTableSectionHeaderFooterView *)v5 setIndentationInset:?];

    contentView = [(HUItemTableSectionHeaderFooterView *)v5 contentView];
    messageTextView7 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [contentView addSubview:messageTextView7];

    [(HUItemTableSectionHeaderFooterView *)v5 setType:type];
  }

  return v5;
}

- (void)prepareForReuse
{
  [(HUItemTableSectionHeaderFooterView *)self setMessage:0];
  messageTextView = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  [messageTextView setTappableTextViewDelegate:0];

  [(HUItemTableSectionHeaderFooterView *)self setType:0];
  v4.receiver = self;
  v4.super_class = HUItemTableSectionHeaderFooterView;
  [(HUItemTableSectionHeaderFooterView *)&v4 prepareForReuse];
}

- (void)updateConstraints
{
  constraints = [(HUItemTableSectionHeaderFooterView *)self constraints];

  v4 = 0x277CCA000uLL;
  if (constraints)
  {
    v5 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUItemTableSectionHeaderFooterView *)self constraints];
    [v5 deactivateConstraints:constraints2];

    [(HUItemTableSectionHeaderFooterView *)self setConstraints:0];
  }

  v7 = objc_opt_new();
  messageTextView = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  leadingAnchor = [messageTextView leadingAnchor];
  contentView = [(HUItemTableSectionHeaderFooterView *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  [(HUItemTableSectionHeaderFooterView *)self indentationInset];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];

  [v7 addObject:v13];
  messageTextView2 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  trailingAnchor = [messageTextView2 trailingAnchor];
  contentView2 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  [(HUItemTableSectionHeaderFooterView *)self indentationInset];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v18];

  [v7 addObject:v19];
  if ([(HUItemTableSectionHeaderFooterView *)self type])
  {
    v20 = [objc_opt_class() defaultAttributesForType:{-[HUItemTableSectionHeaderFooterView type](self, "type")}];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    messageTextView3 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    firstBaselineAnchor = [messageTextView3 firstBaselineAnchor];
    contentView3 = [(HUItemTableSectionHeaderFooterView *)self contentView];
    topAnchor = [contentView3 topAnchor];
    [v21 _scaledValueForValue:20.0];
    v26 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];

    v4 = 0x277CCA000;
    [v7 addObject:v26];
  }

  else
  {
    contentView4 = [(HUItemTableSectionHeaderFooterView *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    messageTextView4 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    topAnchor3 = [messageTextView4 topAnchor];
    v26 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:0.0];

    [v7 addObject:v26];
  }

  contentView5 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  bottomAnchor = [contentView5 bottomAnchor];
  messageTextView5 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  bottomAnchor2 = [messageTextView5 bottomAnchor];
  v35 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

  [v7 addObject:v35];
  contentView6 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  heightAnchor = [contentView6 heightAnchor];
  messageTextView6 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  heightAnchor2 = [messageTextView6 heightAnchor];
  v40 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2 multiplier:1.0 constant:0.0];

  [v7 addObject:v40];
  [*(v4 + 2768) activateConstraints:v7];
  [(HUItemTableSectionHeaderFooterView *)self setConstraints:v7];
  v41.receiver = self;
  v41.super_class = HUItemTableSectionHeaderFooterView;
  [(HUItemTableSectionHeaderFooterView *)&v41 updateConstraints];
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (([(HFStringGenerator *)self->_message isEqual:?]& 1) == 0)
  {
    v4 = [messageCopy copyWithZone:0];
    message = self->_message;
    self->_message = v4;

    [(HUItemTableSectionHeaderFooterView *)self _updateViewContent];
  }
}

- (void)setType:(unint64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(HUItemTableSectionHeaderFooterView *)self _updateViewContent];

    [(HUItemTableSectionHeaderFooterView *)self setNeedsUpdateConstraints];
  }
}

- (BOOL)_updateViewContent
{
  v3 = [objc_opt_class() defaultAttributesForType:{-[HUItemTableSectionHeaderFooterView type](self, "type")}];
  message = [(HUItemTableSectionHeaderFooterView *)self message];
  v5 = [message stringWithAttributes:v3];

  messageTextView = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  attributedText = [messageTextView attributedText];
  v8 = [v5 isEqual:attributedText];

  if ((v8 & 1) == 0)
  {
    messageTextView2 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    [messageTextView2 setAttributedText:v5];
  }

  return v8 ^ 1;
}

+ (id)defaultAttributesForType:(unint64_t)type
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = type == 0;
  v8[0] = *MEMORY[0x277D740C0];
  v4 = [MEMORY[0x277D75B70] _defaultTextColorForTableViewStyle:1 isSectionHeader:v3];
  v9[0] = v4;
  v8[1] = *MEMORY[0x277D740A8];
  v5 = [MEMORY[0x277D75B70] _defaultFontForTableViewStyle:1 isSectionHeader:v3];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (UIEdgeInsets)indentationInset
{
  top = self->_indentationInset.top;
  left = self->_indentationInset.left;
  bottom = self->_indentationInset.bottom;
  right = self->_indentationInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
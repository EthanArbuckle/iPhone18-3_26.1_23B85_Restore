@interface HUItemTableSectionHeaderFooterView
+ (id)defaultAttributesForType:(unint64_t)a3;
- (BOOL)_updateViewContent;
- (HUItemTableSectionHeaderFooterView)initWithReuseIdentifier:(id)a3 type:(unint64_t)a4;
- (UIEdgeInsets)indentationInset;
- (void)prepareForReuse;
- (void)setMessage:(id)a3;
- (void)setType:(unint64_t)a3;
- (void)updateConstraints;
@end

@implementation HUItemTableSectionHeaderFooterView

- (HUItemTableSectionHeaderFooterView)initWithReuseIdentifier:(id)a3 type:(unint64_t)a4
{
  v19.receiver = self;
  v19.super_class = HUItemTableSectionHeaderFooterView;
  v5 = [(HUItemTableSectionHeaderFooterView *)&v19 initWithReuseIdentifier:a3];
  if (v5)
  {
    v6 = objc_alloc_init(HUTappableTextView);
    [(HUItemTableSectionHeaderFooterView *)v5 setMessageTextView:v6];

    v7 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v8 setEditable:0];

    v9 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v9 _setInteractiveTextSelectionDisabled:1];

    v10 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v10 setScrollEnabled:0];

    v11 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    v12 = [v11 textContainer];
    [v12 setLineFragmentPadding:0.0];

    v13 = [MEMORY[0x277D75348] clearColor];
    v14 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v14 setBackgroundColor:v13];

    v15 = [(HUItemTableSectionHeaderFooterView *)v5 tableView];
    [v15 separatorInset];
    [(HUItemTableSectionHeaderFooterView *)v5 setIndentationInset:?];

    v16 = [(HUItemTableSectionHeaderFooterView *)v5 contentView];
    v17 = [(HUItemTableSectionHeaderFooterView *)v5 messageTextView];
    [v16 addSubview:v17];

    [(HUItemTableSectionHeaderFooterView *)v5 setType:a4];
  }

  return v5;
}

- (void)prepareForReuse
{
  [(HUItemTableSectionHeaderFooterView *)self setMessage:0];
  v3 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  [v3 setTappableTextViewDelegate:0];

  [(HUItemTableSectionHeaderFooterView *)self setType:0];
  v4.receiver = self;
  v4.super_class = HUItemTableSectionHeaderFooterView;
  [(HUItemTableSectionHeaderFooterView *)&v4 prepareForReuse];
}

- (void)updateConstraints
{
  v3 = [(HUItemTableSectionHeaderFooterView *)self constraints];

  v4 = 0x277CCA000uLL;
  if (v3)
  {
    v5 = MEMORY[0x277CCAAD0];
    v6 = [(HUItemTableSectionHeaderFooterView *)self constraints];
    [v5 deactivateConstraints:v6];

    [(HUItemTableSectionHeaderFooterView *)self setConstraints:0];
  }

  v7 = objc_opt_new();
  v8 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  v9 = [v8 leadingAnchor];
  v10 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  v11 = [v10 leadingAnchor];
  [(HUItemTableSectionHeaderFooterView *)self indentationInset];
  v13 = [v9 constraintEqualToAnchor:v11 constant:v12];

  [v7 addObject:v13];
  v14 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  v15 = [v14 trailingAnchor];
  v16 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  v17 = [v16 trailingAnchor];
  [(HUItemTableSectionHeaderFooterView *)self indentationInset];
  v19 = [v15 constraintEqualToAnchor:v17 constant:v18];

  [v7 addObject:v19];
  if ([(HUItemTableSectionHeaderFooterView *)self type])
  {
    v20 = [objc_opt_class() defaultAttributesForType:{-[HUItemTableSectionHeaderFooterView type](self, "type")}];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    v22 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    v23 = [v22 firstBaselineAnchor];
    v24 = [(HUItemTableSectionHeaderFooterView *)self contentView];
    v25 = [v24 topAnchor];
    [v21 _scaledValueForValue:20.0];
    v26 = [v23 constraintEqualToAnchor:v25 constant:?];

    v4 = 0x277CCA000;
    [v7 addObject:v26];
  }

  else
  {
    v27 = [(HUItemTableSectionHeaderFooterView *)self contentView];
    v28 = [v27 topAnchor];
    v29 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    v30 = [v29 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v30 constant:0.0];

    [v7 addObject:v26];
  }

  v31 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  v32 = [v31 bottomAnchor];
  v33 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  v34 = [v33 bottomAnchor];
  v35 = [v32 constraintEqualToAnchor:v34 constant:0.0];

  [v7 addObject:v35];
  v36 = [(HUItemTableSectionHeaderFooterView *)self contentView];
  v37 = [v36 heightAnchor];
  v38 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  v39 = [v38 heightAnchor];
  v40 = [v37 constraintGreaterThanOrEqualToAnchor:v39 multiplier:1.0 constant:0.0];

  [v7 addObject:v40];
  [*(v4 + 2768) activateConstraints:v7];
  [(HUItemTableSectionHeaderFooterView *)self setConstraints:v7];
  v41.receiver = self;
  v41.super_class = HUItemTableSectionHeaderFooterView;
  [(HUItemTableSectionHeaderFooterView *)&v41 updateConstraints];
}

- (void)setMessage:(id)a3
{
  v6 = a3;
  if (([(HFStringGenerator *)self->_message isEqual:?]& 1) == 0)
  {
    v4 = [v6 copyWithZone:0];
    message = self->_message;
    self->_message = v4;

    [(HUItemTableSectionHeaderFooterView *)self _updateViewContent];
  }
}

- (void)setType:(unint64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(HUItemTableSectionHeaderFooterView *)self _updateViewContent];

    [(HUItemTableSectionHeaderFooterView *)self setNeedsUpdateConstraints];
  }
}

- (BOOL)_updateViewContent
{
  v3 = [objc_opt_class() defaultAttributesForType:{-[HUItemTableSectionHeaderFooterView type](self, "type")}];
  v4 = [(HUItemTableSectionHeaderFooterView *)self message];
  v5 = [v4 stringWithAttributes:v3];

  v6 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
  v7 = [v6 attributedText];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(HUItemTableSectionHeaderFooterView *)self messageTextView];
    [v9 setAttributedText:v5];
  }

  return v8 ^ 1;
}

+ (id)defaultAttributesForType:(unint64_t)a3
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a3 == 0;
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
@interface SUUIReportAConcernDetailsCell
- (NSString)text;
- (SUUIReportAConcernDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setPlaceholderText:(id)text;
- (void)updatePlaceholderText:(BOOL)text;
@end

@implementation SUUIReportAConcernDetailsCell

- (SUUIReportAConcernDetailsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = SUUIReportAConcernDetailsCell;
  v4 = [(SUUIReportAConcernDetailsCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    textLabel = [(SUUIReportAConcernDetailsCell *)v4 textLabel];
    font = [textLabel font];
    [(UITextView *)v4->_textView setFont:font];

    contentView = [(SUUIReportAConcernDetailsCell *)v4 contentView];
    [contentView addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SUUIReportAConcernDetailsCell;
  [(SUUIReportAConcernDetailsCell *)&v38 layoutSubviews];
  contentView = [(SUUIReportAConcernDetailsCell *)self contentView];
  readableContentGuide = [contentView readableContentGuide];
  [readableContentGuide layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  textView = [(SUUIReportAConcernDetailsCell *)self textView];
  textContainer = [textView textContainer];
  [textContainer lineFragmentPadding];
  v37 = v15;

  contentView2 = [(SUUIReportAConcernDetailsCell *)self contentView];
  [contentView2 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect_8 = v21;
  v24 = v23;

  textView2 = [(SUUIReportAConcernDetailsCell *)self textView];
  [textView2 setFrame:{v18, v20, v22, v24}];

  v34 = v6;
  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v10;
  v39.size.height = v12;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = rect_8;
  v40.size.height = v24;
  v36 = MinY - CGRectGetMinY(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = rect_8;
  v42.size.height = v24;
  v35 = MinX - CGRectGetMinX(v42) - v37;
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = rect_8;
  v43.size.height = v24;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = v34;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  v29 = MaxY - CGRectGetMaxY(v44);
  v45.origin.x = v18;
  v45.origin.y = v20;
  v45.size.width = rect_8;
  v45.size.height = v24;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = v34;
  v46.origin.y = v8;
  v46.size.width = v10;
  v46.size.height = v12;
  v31 = MaxX - CGRectGetMaxX(v46) - v37;
  textView3 = [(SUUIReportAConcernDetailsCell *)self textView];
  [textView3 setTextContainerInset:{v36, v35, v29, v31}];
}

- (void)setPlaceholderText:(id)text
{
  objc_storeStrong(&self->_placeholderText, text);
  if (text)
  {
    textView = [(SUUIReportAConcernDetailsCell *)self textView];
    [textView setDelegate:self];

    [(SUUIReportAConcernDetailsCell *)self updatePlaceholderText:0];
  }
}

- (NSString)text
{
  textView = [(SUUIReportAConcernDetailsCell *)self textView];
  text = [textView text];
  placeholderText = [(SUUIReportAConcernDetailsCell *)self placeholderText];
  v6 = [text isEqualToString:placeholderText];

  if (v6)
  {
    text2 = 0;
  }

  else
  {
    textView2 = [(SUUIReportAConcernDetailsCell *)self textView];
    text2 = [textView2 text];
  }

  return text2;
}

- (void)updatePlaceholderText:(BOOL)text
{
  textCopy = text;
  textView = [(SUUIReportAConcernDetailsCell *)self textView];
  text = [textView text];
  v7 = text;
  if (textCopy)
  {
    placeholderText = [(SUUIReportAConcernDetailsCell *)self placeholderText];
    v9 = [v7 isEqualToString:placeholderText];

    if (!v9)
    {
      return;
    }

    textView2 = [(SUUIReportAConcernDetailsCell *)self textView];
    [textView2 setText:&stru_286AECDE0];

    textLabel = [(SUUIReportAConcernDetailsCell *)self textLabel];
    textColor = [textLabel textColor];
    textView3 = [(SUUIReportAConcernDetailsCell *)self textView];
    [textView3 setTextColor:textColor];
  }

  else
  {
    v13 = [text length];

    if (v13)
    {
      return;
    }

    placeholderText2 = [(SUUIReportAConcernDetailsCell *)self placeholderText];
    textView4 = [(SUUIReportAConcernDetailsCell *)self textView];
    [textView4 setText:placeholderText2];

    textLabel = [MEMORY[0x277D75348] lightGrayColor];
    textColor = [(SUUIReportAConcernDetailsCell *)self textView];
    [textColor setTextColor:textLabel];
  }
}

@end
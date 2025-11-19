@interface SUUIReportAConcernDetailsCell
- (NSString)text;
- (SUUIReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setPlaceholderText:(id)a3;
- (void)updatePlaceholderText:(BOOL)a3;
@end

@implementation SUUIReportAConcernDetailsCell

- (SUUIReportAConcernDetailsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = SUUIReportAConcernDetailsCell;
  v4 = [(SUUIReportAConcernDetailsCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D75C40]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    textView = v4->_textView;
    v4->_textView = v6;

    v8 = [(SUUIReportAConcernDetailsCell *)v4 textLabel];
    v9 = [v8 font];
    [(UITextView *)v4->_textView setFont:v9];

    v10 = [(SUUIReportAConcernDetailsCell *)v4 contentView];
    [v10 addSubview:v4->_textView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = SUUIReportAConcernDetailsCell;
  [(SUUIReportAConcernDetailsCell *)&v38 layoutSubviews];
  v3 = [(SUUIReportAConcernDetailsCell *)self contentView];
  v4 = [v3 readableContentGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(SUUIReportAConcernDetailsCell *)self textView];
  v14 = [v13 textContainer];
  [v14 lineFragmentPadding];
  v37 = v15;

  v16 = [(SUUIReportAConcernDetailsCell *)self contentView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  rect_8 = v21;
  v24 = v23;

  v25 = [(SUUIReportAConcernDetailsCell *)self textView];
  [v25 setFrame:{v18, v20, v22, v24}];

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
  v32 = [(SUUIReportAConcernDetailsCell *)self textView];
  [v32 setTextContainerInset:{v36, v35, v29, v31}];
}

- (void)setPlaceholderText:(id)a3
{
  objc_storeStrong(&self->_placeholderText, a3);
  if (a3)
  {
    v5 = [(SUUIReportAConcernDetailsCell *)self textView];
    [v5 setDelegate:self];

    [(SUUIReportAConcernDetailsCell *)self updatePlaceholderText:0];
  }
}

- (NSString)text
{
  v3 = [(SUUIReportAConcernDetailsCell *)self textView];
  v4 = [v3 text];
  v5 = [(SUUIReportAConcernDetailsCell *)self placeholderText];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(SUUIReportAConcernDetailsCell *)self textView];
    v7 = [v8 text];
  }

  return v7;
}

- (void)updatePlaceholderText:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIReportAConcernDetailsCell *)self textView];
  v6 = [v5 text];
  v7 = v6;
  if (v3)
  {
    v8 = [(SUUIReportAConcernDetailsCell *)self placeholderText];
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      return;
    }

    v10 = [(SUUIReportAConcernDetailsCell *)self textView];
    [v10 setText:&stru_286AECDE0];

    v16 = [(SUUIReportAConcernDetailsCell *)self textLabel];
    v11 = [v16 textColor];
    v12 = [(SUUIReportAConcernDetailsCell *)self textView];
    [v12 setTextColor:v11];
  }

  else
  {
    v13 = [v6 length];

    if (v13)
    {
      return;
    }

    v14 = [(SUUIReportAConcernDetailsCell *)self placeholderText];
    v15 = [(SUUIReportAConcernDetailsCell *)self textView];
    [v15 setText:v14];

    v16 = [MEMORY[0x277D75348] lightGrayColor];
    v11 = [(SUUIReportAConcernDetailsCell *)self textView];
    [v11 setTextColor:v16];
  }
}

@end
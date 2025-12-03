@interface FindOnPageCompletionTableViewCell
- (void)layoutSubviews;
@end

@implementation FindOnPageCompletionTableViewCell

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = FindOnPageCompletionTableViewCell;
  [(CompletionListTableViewCell *)&v29 layoutSubviews];
  if (_SFDeviceIsPad())
  {
    detailTextLabel = [(FindOnPageCompletionTableViewCell *)self detailTextLabel];
    [detailTextLabel sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v5 = v4;
    [detailTextLabel frame];
    v7 = v6;
    v9 = v8;
    textLabel = [(FindOnPageCompletionTableViewCell *)self textLabel];
    [textLabel frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if ([(FindOnPageCompletionTableViewCell *)self _sf_usesLeftToRightLayout])
    {
      [(FindOnPageCompletionTableViewCell *)self bounds];
      v20 = v19;
      [(FindOnPageCompletionTableViewCell *)self separatorInset];
      v22 = v20 - v21 - v5 + -15.0;
      v30.origin.x = v22;
      v30.origin.y = v7;
      v30.size.width = v5;
      v30.size.height = v9;
      v23 = CGRectGetMinX(v30) + -6.0 - v12;
    }

    else
    {
      [(FindOnPageCompletionTableViewCell *)self separatorInset];
      v22 = v24 + 15.0;
      v31.origin.x = v12;
      v31.origin.y = v14;
      v31.size.width = v16;
      v31.size.height = v18;
      v28 = v18;
      v25 = v14;
      MaxX = CGRectGetMaxX(v31);
      v32.origin.x = v22;
      v32.origin.y = v7;
      v32.size.width = v5;
      v32.size.height = v9;
      v27 = MaxX - CGRectGetMaxX(v32);
      v14 = v25;
      v18 = v28;
      v23 = v27 + -6.0;
      v12 = v12 + v16 - (v27 + -6.0);
    }

    [textLabel setFrame:{v12, v14, v23, v18}];
    [detailTextLabel setFrame:{v22, v7, v5, v9}];
  }
}

@end
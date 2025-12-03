@interface NTKCDetailTableViewCell
- (BOOL)_visibleAtPoint:(CGPoint)point;
- (NTKCDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_fontSizeDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setShowsSeparator:(BOOL)separator;
@end

@implementation NTKCDetailTableViewCell

- (NTKCDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = NTKCDetailTableViewCell;
  v4 = [(NTKCDetailTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = BPSBackgroundColor();
    [(NTKCDetailTableViewCell *)v4 setBackgroundColor:v5];

    tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
    [(NTKCDetailTableViewCell *)v4 setSelectionTintColor:tertiarySystemBackgroundColor];

    [(NTKCDetailTableViewCell *)v4 setSelectionStyle:0];
    defaultTextColor = [objc_opt_class() defaultTextColor];
    textLabel = [(NTKCDetailTableViewCell *)v4 textLabel];
    [textLabel setTextColor:defaultTextColor];

    if (CLKLayoutIsRTL())
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    detailTextLabel = [(NTKCDetailTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setTextAlignment:v9];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCDetailTableViewCell *)v4 _fontSizeDidChange];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v4 dealloc];
}

- (void)setShowsSeparator:(BOOL)separator
{
  if (self->_showsSeparator != separator)
  {
    self->_showsSeparator = separator;
    separatorView = self->_separatorView;
    if (separator)
    {
      if (!separatorView)
      {
        v5 = objc_opt_new();
        [(NTKCDetailTableViewCell *)self setSeparatorView:v5];

        [(NTKCDetailTableViewCell *)self addSubview:self->_separatorView];
        separatorView = self->_separatorView;
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    [(UIView *)separatorView setHidden:v6];
  }
}

- (void)layoutSubviews
{
  v85.receiver = self;
  v85.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v85 layoutSubviews];
  contentView = [(NTKCDetailTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = NTKCScreenEdgeMargin();
  textLabel = [(NTKCDetailTableViewCell *)self textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:28.0];
  v16 = v15;

  IsRTL = CLKLayoutIsRTL();
  textLabel2 = [(NTKCDetailTableViewCell *)self textLabel];
  text = [textLabel2 text];
  if (![text length])
  {

LABEL_17:
    goto LABEL_18;
  }

  v83 = v11;
  rect = v9;
  ignoresRTLCorrection = self->_ignoresRTLCorrection;

  if (!ignoresRTLCorrection)
  {
    v82 = v7;
    textLabel3 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel3 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = v12;
    if (IsRTL)
    {
      v86.origin.x = v5;
      v86.origin.y = v82;
      v86.size.height = v83;
      v86.size.width = rect;
      Width = CGRectGetWidth(v86);
      v87.origin.x = v23;
      v87.origin.y = v25;
      v87.size.width = v27;
      v87.size.height = v29;
      v30 = Width - CGRectGetWidth(v87) - v12;
    }

    textLabel4 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel4 _lastLineBaseline];
    v34 = v16 - v33;

    v88.origin.x = v30;
    v88.origin.y = v34;
    v88.size.width = v27;
    v88.size.height = v29;
    if (CGRectGetMinY(v88) < 0.0)
    {
      v34 = 0.0;
    }

    textLabel5 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel5 setFrame:{v30, v34, v27, v29}];

    detailTextLabel = [(NTKCDetailTableViewCell *)self detailTextLabel];
    text2 = [detailTextLabel text];
    v38 = [text2 length];

    if (v38)
    {
      v89.origin.x = v5;
      v89.origin.y = v82;
      v89.size.height = v83;
      v89.size.width = rect;
      v39 = CGRectGetWidth(v89) + v12 * -2.0;
      v90.origin.x = v30;
      v90.origin.y = v34;
      v90.size.width = v27;
      v90.size.height = v29;
      v40 = v39 - CGRectGetWidth(v90) + -16.0;
      detailTextLabel2 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [detailTextLabel2 frame];
      v43 = v42;
      v45 = v44;
      v47 = v46;

      detailTextLabel3 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [detailTextLabel3 _lastLineBaseline];
      v50 = v16 - v49;

      v91.origin.x = v43;
      v91.origin.y = v50;
      v91.size.width = v45;
      v91.size.height = v47;
      v51 = CGRectGetWidth(v91);
      v52 = 0.0;
      if (v40 >= 0.0)
      {
        v52 = v40;
      }

      if (v51 <= v40)
      {
        v53 = v45;
      }

      else
      {
        v53 = v52;
      }

      if ((IsRTL & 1) == 0)
      {
        v92.origin.x = v5;
        v92.origin.y = v82;
        v92.size.height = v83;
        v92.size.width = rect;
        v54 = CGRectGetWidth(v92) - v12;
        v93.origin.x = v43;
        v93.origin.y = v50;
        v93.size.width = v53;
        v93.size.height = v47;
        v12 = v54 - CGRectGetWidth(v93);
      }

      textLabel2 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [textLabel2 setFrame:{v12, v50, v53, v47}];
      goto LABEL_17;
    }
  }

LABEL_18:
  [(NTKCDetailTableViewCell *)self bringSubviewToFront:self->_separatorView];
  [(UIView *)self->_separatorView frame];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  [(NTKCDetailTableViewCell *)self bounds];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  [(NTKCDetailTableViewCell *)self separatorInset];
  v70 = v64 + v69;
  v73 = v66 - (v71 + v72);
  v94.size.height = v68 - (v69 + v74);
  v94.origin.x = v62 + v71;
  v94.origin.y = v70;
  v94.size.width = v73;
  v75 = CGRectGetWidth(v94);
  if (IsRTL)
  {
    [(NTKCDetailTableViewCell *)self bounds];
    v76 = CGRectGetWidth(v95);
    v96.origin.x = v56;
    v96.origin.y = v58;
    v96.size.width = v75;
    v96.size.height = v60;
    v77 = v76 - CGRectGetWidth(v96);
    [(NTKCDetailTableViewCell *)self separatorInset];
    v79 = v77 - v78;
  }

  else
  {
    [(NTKCDetailTableViewCell *)self separatorInset];
    v79 = v80;
  }

  [(NTKCDetailTableViewCell *)self bounds];
  Height = CGRectGetHeight(v97);
  v98.origin.x = v79;
  v98.origin.y = v58;
  v98.size.width = v75;
  v98.size.height = v60;
  [(UIView *)self->_separatorView setFrame:v79, Height - CGRectGetHeight(v98), v75, v60];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v16 setHighlighted:highlighted animated:animated];
  if ([(NTKCDetailTableViewCell *)self selectionStyle])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subviews = [(NTKCDetailTableViewCell *)self subviews];
    v6 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            [v11 setSelected:{-[NTKCDetailTableViewCell isHighlighted](self, "isHighlighted")}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v10.receiver = self;
  v10.super_class = NTKCDetailTableViewCell;
  v7 = [(NTKCDetailTableViewCell *)&v10 hitTest:event withEvent:?];
  if (v7 && [(NTKCDetailTableViewCell *)self _visibleAtPoint:x, y])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_visibleAtPoint:(CGPoint)point
{
  _tableView = [(NTKCDetailTableViewCell *)self _tableView];
  v5 = [_tableView indexPathForCell:self];
  [_tableView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [_tableView contentInset];
  v15 = v7 + v14;
  v17 = v9 + v16;
  v19 = v11 - (v14 + v18);
  v21 = v13 - (v16 + v20);
  v22 = [_tableView headerViewForSection:{objc_msgSend(v5, "section")}];
  [v22 frame];
  v42.origin.x = v23;
  v42.origin.y = v24;
  v42.size.width = v25;
  v42.size.height = v26;
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  v39 = CGRectIntersection(v38, v42);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  if (!CGRectIsNull(v39))
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v31 = CGRectGetHeight(v40);
    v17 = v17 + v31;
    v21 = v21 - v31;
  }

  [(NTKCDetailTableViewCell *)self convertPoint:_tableView toView:point.x, point.y];
  v37.x = v32;
  v37.y = v33;
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v34 = CGRectContainsPoint(v41, v37);

  return v34;
}

- (void)_fontSizeDidChange
{
  _fontForTextLabel = [(NTKCDetailTableViewCell *)self _fontForTextLabel];
  textLabel = [(NTKCDetailTableViewCell *)self textLabel];
  [textLabel setFont:_fontForTextLabel];

  _fontForDetailTextLabel = [(NTKCDetailTableViewCell *)self _fontForDetailTextLabel];
  detailTextLabel = [(NTKCDetailTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:_fontForDetailTextLabel];

  [(NTKCDetailTableViewCell *)self setNeedsLayout];
}

@end
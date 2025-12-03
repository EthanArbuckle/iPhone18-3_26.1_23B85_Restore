@interface SUUICommentPostBarView
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)sizeThatFits:(CGSize)result;
- (SUUICommentDelegate)delegate;
- (SUUICommentPostBarView)initWithFrame:(CGRect)frame;
- (id)_asLabel;
- (id)_asNameButton;
- (void)_changeCommenter:(id)commenter;
- (void)_post:(id)_post;
- (void)_postComment;
- (void)layoutSubviews;
- (void)setAsText:(id)text;
- (void)setCommenter:(id)commenter;
- (void)setPostButtonVisible:(BOOL)visible;
- (void)tintColorDidChange;
@end

@implementation SUUICommentPostBarView

- (SUUICommentPostBarView)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = SUUICommentPostBarView;
  v3 = [(SUUICommentPostBarView *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    [(SUUICommentPostBarView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277D75348] colorWithRed:0.835294118 green:0.839215686 blue:0.850980392 alpha:1.0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v8 = 1.0 / v7;

    [(SUUICommentPostBarView *)v3 bounds];
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, v9, v8}];
    [v10 setAutoresizingMask:2];
    [v10 setBackgroundColor:v5];
    [(SUUICommentPostBarView *)v3 addSubview:v10];
    v11 = [SUUICommentPostBarTextField alloc];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = [(SUUICommentPostBarTextField *)v11 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
    postTextField = v3->_postTextField;
    v3->_postTextField = v16;

    [(SUUICommentPostBarTextField *)v3->_postTextField setDelegate:v3];
    layer = [(SUUICommentPostBarTextField *)v3->_postTextField layer];
    [layer setBorderWidth:1.0];

    layer2 = [(SUUICommentPostBarTextField *)v3->_postTextField layer];
    [layer2 setCornerRadius:5.0];

    layer3 = [(SUUICommentPostBarTextField *)v3->_postTextField layer];
    [layer3 setBorderColor:{objc_msgSend(v5, "CGColor")}];

    [(SUUICommentPostBarView *)v3 addSubview:v3->_postTextField];
    v21 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v12, v13, v14, v15}];
    postButton = v3->_postButton;
    v3->_postButton = v21;

    titleLabel = [(UIButton *)v3->_postButton titleLabel];
    v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [titleLabel setFont:v24];

    v25 = v3->_postButton;
    tintColor = [(SUUICommentPostBarView *)v3 tintColor];
    [(UIButton *)v25 setTitleColor:tintColor forState:0];

    v27 = v3->_postButton;
    grayColor = [MEMORY[0x277D75348] grayColor];
    [(UIButton *)v27 setTitleColor:grayColor forState:2];

    [(UIButton *)v3->_postButton addTarget:v3 action:sel__post_ forControlEvents:64];
    [(UIButton *)v3->_postButton setEnabled:0];
    [(SUUICommentPostBarView *)v3 addSubview:v3->_postButton];
  }

  return v3;
}

- (void)_post:(id)_post
{
  [(SUUICommentPostBarView *)self _postComment];

  [(SUUICommentPostBarView *)self resignFirstResponder];
}

- (void)_changeCommenter:(id)commenter
{
  commenterCopy = commenter;
  delegate = [(SUUICommentPostBarView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(SUUICommentPostBarView *)self delegate];
    v7 = [delegate2 conformsToProtocol:&unk_286BE7088];

    if (v7)
    {
      delegate3 = [(SUUICommentPostBarView *)self delegate];
      [delegate3 commentPostBarView:self changeCommenter:commenterCopy];
    }
  }
}

- (void)setAsText:(id)text
{
  textCopy = text;
  asText = self->_asText;
  v7 = textCopy;
  v9 = textCopy;
  if (asText != textCopy)
  {
    asText = [(NSString *)asText isEqual:textCopy];
    if ((asText & 1) == 0)
    {
      objc_storeStrong(&self->_asText, text);
    }

    v7 = self->_asText;
    textCopy = v9;
  }

  if (v7)
  {
    _asLabel = [(SUUICommentPostBarView *)self _asLabel];
    [_asLabel setText:self->_asText];

    textCopy = v9;
  }

  MEMORY[0x2821F96F8](asText, textCopy);
}

- (void)setCommenter:(id)commenter
{
  commenterCopy = commenter;
  commenter = self->_commenter;
  if (commenter != commenterCopy)
  {
    v8 = commenterCopy;
    commenter = [commenter isEqual:commenterCopy];
    commenterCopy = v8;
    if ((commenter & 1) == 0)
    {
      objc_storeStrong(&self->_commenter, commenter);
      _asNameButton = [(SUUICommentPostBarView *)self _asNameButton];
      [_asNameButton setTitle:self->_commenter forState:0];

      commenter = [(SUUICommentPostBarView *)self setNeedsLayout];
      commenterCopy = v8;
    }
  }

  MEMORY[0x2821F96F8](commenter, commenterCopy);
}

- (void)setPostButtonVisible:(BOOL)visible
{
  [(UIButton *)self->_postButton setHidden:!visible];

  [(SUUICommentPostBarView *)self setNeedsLayout];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  v11 = [stringCopy isEqualToString:@"\n"];
  if (v11)
  {
    [(SUUICommentPostBarView *)self _postComment];
  }

  else
  {
    text = [fieldCopy text];
    v13 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

    -[UIButton setEnabled:](self->_postButton, "setEnabled:", [v13 length] != 0);
  }

  return v11 ^ 1;
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = SUUICommentPostBarView;
  [(SUUICommentPostBarView *)&v62 layoutSubviews];
  if (self->_commenter)
  {
    v3 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[SUUICommentPostBarView semanticContentAttribute](self, "semanticContentAttribute")}];
    _asLabel = [(SUUICommentPostBarView *)self _asLabel];
    [_asLabel setHidden:0];

    _asNameButton = [(SUUICommentPostBarView *)self _asNameButton];
    [_asNameButton setHidden:0];

    _asLabel2 = [(SUUICommentPostBarView *)self _asLabel];
    [_asLabel2 frame];
    v8 = v7;
    v10 = v9;

    _asLabel3 = [(SUUICommentPostBarView *)self _asLabel];
    [(SUUICommentPostBarView *)self bounds];
    [_asLabel3 sizeThatFits:{v12, v13}];
    v15 = v14;
    v17 = v16;

    if (v3)
    {
      [(SUUICommentPostBarView *)self bounds];
      Width = CGRectGetWidth(v63);
      v64.origin.x = v8;
      v64.origin.y = v10;
      v64.size.width = v15;
      v64.size.height = v17;
      v19 = Width - CGRectGetWidth(v64) + -16.0;
    }

    else
    {
      v19 = 16.0;
    }

    v24 = (30.0 - v17) * 0.5;
    v25 = ceilf(v24) + 2.0;
    _asLabel4 = [(SUUICommentPostBarView *)self _asLabel];
    [_asLabel4 setFrame:{v19, v25, v15, v17}];

    _asNameButton2 = [(SUUICommentPostBarView *)self _asNameButton];
    [_asNameButton2 frame];
    v29 = v28;
    v31 = v30;

    if (v3)
    {
      v65.origin.x = v19;
      v65.origin.y = v25;
      v65.size.width = v15;
      v65.size.height = v17;
      v32 = CGRectGetMinX(v65) + -5.0;
    }

    else
    {
      [(SUUICommentPostBarView *)self bounds];
      v33 = CGRectGetWidth(v66);
      v67.origin.x = v19;
      v67.origin.y = v25;
      v67.size.width = v15;
      v67.size.height = v17;
      v32 = v33 - (CGRectGetMaxX(v67) + 5.0);
    }

    [(UIButton *)self->_asNameButton sizeThatFits:v32, 30.0];
    v35 = v34;
    v37 = v36;
    v38 = v19;
    v39 = v25;
    v40 = v15;
    v41 = v17;
    if (v3)
    {
      MinX = CGRectGetMinX(*&v38);
      v68.origin.x = v29;
      v68.origin.y = v31;
      v68.size.width = v35;
      v68.size.height = v37;
      v43 = MinX - CGRectGetWidth(v68);
      v44 = -6.0;
    }

    else
    {
      v43 = CGRectGetMaxX(*&v38) + 5.0;
      v44 = 1.0;
    }

    v45 = v43 + v44;
    v22 = 30.0;
    v46 = (30.0 - v37) * 0.5;
    v47 = ceilf(v46) + 2.0;
    _asNameButton3 = [(SUUICommentPostBarView *)self _asNameButton];
    [_asNameButton3 setFrame:{v45, v47, v35, v37}];
    v23 = 40.0;
  }

  else
  {
    _asLabel5 = [(SUUICommentPostBarView *)self _asLabel];
    [_asLabel5 setHidden:1];

    _asNameButton3 = [(SUUICommentPostBarView *)self _asNameButton];
    [_asNameButton3 setHidden:1];
    v22 = 1.0;
    v23 = 45.0;
  }

  v48 = 30.0;
  if (([(UIButton *)self->_postButton isHidden]& 1) == 0)
  {
    v49 = *MEMORY[0x277CBF3A0];
    postButton = self->_postButton;
    [(SUUICommentPostBarView *)self bounds];
    [(UIButton *)postButton sizeThatFits:v51, v52];
    v54 = v53;
    v56 = v55;
    *&v53 = (v23 - v55) * 0.5;
    v57 = v22 + floorf(*&v53);
    [(SUUICommentPostBarView *)self bounds];
    v58 = CGRectGetWidth(v69);
    v70.origin.x = v49;
    v70.origin.y = v57;
    v70.size.width = v54;
    v70.size.height = v56;
    v59 = v58 - (CGRectGetWidth(v70) + 15.0);
    [(UIButton *)self->_postButton setFrame:v59, v57, v54, v56];
    v71.origin.x = v59;
    v71.origin.y = v57;
    v71.size.width = v54;
    v71.size.height = v56;
    v48 = CGRectGetWidth(v71) + 15.0 + 30.0;
  }

  v60 = (v23 + -28.0) * 0.5;
  v61 = v22 + floorf(v60);
  [(SUUICommentPostBarView *)self bounds];
  [(SUUICommentPostBarTextField *)self->_postTextField setFrame:15.0, v61, CGRectGetWidth(v72) - v48, 28.0];
}

- (BOOL)resignFirstResponder
{
  postTextField = self->_postTextField;
  if (postTextField)
  {
    [(SUUICommentPostBarTextField *)postTextField resignFirstResponder];
  }

  v5.receiver = self;
  v5.super_class = SUUICommentPostBarView;
  return [(SUUICommentPostBarView *)&v5 resignFirstResponder];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = dbl_259FCAE00[self->_commenter == 0];
  result.height = v3;
  return result;
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = SUUICommentPostBarView;
  [(SUUICommentPostBarView *)&v7 tintColorDidChange];
  asNameButton = self->_asNameButton;
  if (asNameButton)
  {
    tintColor = [(SUUICommentPostBarView *)self tintColor];
    [(UIButton *)asNameButton setTintColor:tintColor];
  }

  postButton = self->_postButton;
  if (postButton)
  {
    tintColor2 = [(SUUICommentPostBarView *)self tintColor];
    [(UIButton *)postButton setTitleColor:tintColor2 forState:0];
  }
}

- (id)_asNameButton
{
  asNameButton = self->_asNameButton;
  if (!asNameButton)
  {
    v4 = objc_alloc(MEMORY[0x277D75220]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_asNameButton;
    self->_asNameButton = v5;

    titleLabel = [(UIButton *)self->_asNameButton titleLabel];
    v8 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [titleLabel setFont:v8];

    v9 = self->_asNameButton;
    tintColor = [(SUUICommentPostBarView *)self tintColor];
    [(UIButton *)v9 setTitleColor:tintColor forState:0];

    [(UIButton *)self->_asNameButton addTarget:self action:sel__changeCommenter_ forControlEvents:64];
    [(SUUICommentPostBarView *)self addSubview:self->_asNameButton];
    [(SUUICommentPostBarView *)self setNeedsLayout];
    asNameButton = self->_asNameButton;
  }

  return asNameButton;
}

- (id)_asLabel
{
  asLabel = self->_asLabel;
  if (!asLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_asLabel;
    self->_asLabel = v5;

    v7 = self->_asLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_asLabel;
    v10 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.670588235 blue:0.670588235 alpha:1.0];
    [(UILabel *)v9 setTextColor:v10];

    [(SUUICommentPostBarView *)self addSubview:self->_asLabel];
    asLabel = self->_asLabel;
  }

  return asLabel;
}

- (void)_postComment
{
  text = [(SUUICommentPostBarTextField *)self->_postTextField text];
  if ([text length])
  {
    delegate = [(SUUICommentPostBarView *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      delegate2 = [(SUUICommentPostBarView *)self delegate];
      v6 = [delegate2 conformsToProtocol:&unk_286BE7088];

      if (v6)
      {
        delegate3 = [(SUUICommentPostBarView *)self delegate];
        [delegate3 commentPostBarView:self text:text as:self->_commenter];
      }
    }
  }
}

- (SUUICommentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
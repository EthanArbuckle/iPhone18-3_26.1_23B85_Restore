@interface CKBrowserPluginCell
- (id)iconView;
- (void)_setImageForPlugin:(id)a3;
- (void)_updateShinyStatus;
- (void)layoutSubviews;
- (void)setPlugin:(id)a3 hideShinyStatus:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
@end

@implementation CKBrowserPluginCell

- (id)iconView
{
  v3 = [(CKBrowserPluginCell *)self browserImage];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKBrowserPluginCell *)self setBrowserImage:v5];
  }

  return [(CKBrowserPluginCell *)self browserImage];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(CKBrowserPluginCell *)self isSelected]!= a3)
  {
    v15.receiver = self;
    v15.super_class = CKBrowserPluginCell;
    [(CKBrowserPluginCell *)&v15 setSelected:v3];
    v5 = 0.0;
    if (v3)
    {
      v5 = 1.0;
      if (!self->_selectionOutline)
      {
        v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v7 = +[CKUIBehavior sharedBehaviors];
        v8 = [v7 theme];
        v9 = [v8 appSelectionOutline];
        v10 = [v6 initWithImage:v9];
        selectionOutline = self->_selectionOutline;
        self->_selectionOutline = v10;

        v12 = +[CKUIBehavior sharedBehaviors];
        v13 = [v12 theme];
        v14 = [v13 appSelectionOutlineColor];
        [(UIImageView *)self->_selectionOutline setTintColor:v14];

        [(CKBrowserPluginCell *)self addSubview:self->_selectionOutline];
        [(CKBrowserPluginCell *)self sendSubviewToBack:self->_selectionOutline];
        [(CKBrowserPluginCell *)self setNeedsLayout];
      }
    }

    [(UIImageView *)self->_selectionOutline setAlpha:v5];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKBrowserPluginCell;
  [(CKBrowserCell *)&v4 layoutSubviews];
  selectionOutline = self->_selectionOutline;
  [(CKBrowserCell *)self selectionFrame];
  [(UIImageView *)selectionOutline setFrame:?];
}

- (void)_setImageForPlugin:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserPluginCell *)self traitCollection];
  v7 = [v4 __ck_browserImageForInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  v6 = [(CKBrowserPluginCell *)self browserImage];
  [v6 setImage:v7];
}

- (void)setPlugin:(id)a3 hideShinyStatus:(BOOL)a4
{
  v23 = a3;
  [(CKBrowserPluginCell *)self _setImageForPlugin:v23];
  v7 = [v23 identifier];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [v7 isEqualToString:v8];

  v10 = [(CKBrowserCell *)self browserLabel];
  if (v9)
  {
    v11 = CKFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"MEMOJI_STICKERS_SHORT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_6:
    v13 = v12;
    [v10 setText:v12];

    goto LABEL_7;
  }

  v11 = [v23 browserShortDisplayName];
  if (!v11)
  {
    v12 = [v23 browserDisplayName];
    goto LABEL_6;
  }

  [v10 setText:v11];
LABEL_7:

  v14 = +[CKBalloonPluginManager sharedInstance];
  v15 = [v23 identifier];
  v16 = [v14 badgeValueForPlugin:v15];

  v17 = [(CKBrowserCell *)self badgeView];
  [v17 setValue:v16];

  v18 = [(CKBrowserCell *)self badgeView];
  [v18 setHidden:v16 == 0];

  objc_storeStrong(&self->_plugin, a3);
  [(CKBrowserPluginCell *)self _updateShinyStatus];
  v19 = [(CKBrowserCell *)self shinyStatusView];
  [v19 removeFromSuperview];

  if (!a4 && ([(CKBrowserCell *)self shinyStatus]|| [(CKBrowserCell *)self shinyStatus]!= 3))
  {
    v20 = [[CKBrowserSelectionLabelAccessoryView alloc] initWithLabelAccessoryType:[(CKBrowserCell *)self shinyStatus]];
    [(CKBrowserCell *)self setShinyStatusView:v20];

    v21 = [(CKBrowserPluginCell *)self contentView];
    v22 = [(CKBrowserCell *)self shinyStatusView];
    [v21 addSubview:v22];
  }

  [(CKBrowserPluginCell *)self setNeedsLayout];
}

- (void)_updateShinyStatus
{
  v3 = [(CKBrowserPluginCell *)self plugin];
  v4 = [v3 isBetaPlugin];

  if (v4)
  {
    v5 = self;
    v6 = 2;
  }

  else
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 launchStatusForPlugin:self->_plugin];

    v5 = self;
    if (v8 == 1)
    {
      v6 = 0;
    }

    else if (v8)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  [(CKBrowserCell *)v5 setShinyStatus:v6];
}

@end
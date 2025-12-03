@interface CKBrowserPluginCell
- (id)iconView;
- (void)_setImageForPlugin:(id)plugin;
- (void)_updateShinyStatus;
- (void)layoutSubviews;
- (void)setPlugin:(id)plugin hideShinyStatus:(BOOL)status;
- (void)setSelected:(BOOL)selected;
@end

@implementation CKBrowserPluginCell

- (id)iconView
{
  browserImage = [(CKBrowserPluginCell *)self browserImage];

  if (!browserImage)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKBrowserPluginCell *)self setBrowserImage:v5];
  }

  return [(CKBrowserPluginCell *)self browserImage];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(CKBrowserPluginCell *)self isSelected]!= selected)
  {
    v15.receiver = self;
    v15.super_class = CKBrowserPluginCell;
    [(CKBrowserPluginCell *)&v15 setSelected:selectedCopy];
    v5 = 0.0;
    if (selectedCopy)
    {
      v5 = 1.0;
      if (!self->_selectionOutline)
      {
        v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v7 = +[CKUIBehavior sharedBehaviors];
        theme = [v7 theme];
        appSelectionOutline = [theme appSelectionOutline];
        v10 = [v6 initWithImage:appSelectionOutline];
        selectionOutline = self->_selectionOutline;
        self->_selectionOutline = v10;

        v12 = +[CKUIBehavior sharedBehaviors];
        theme2 = [v12 theme];
        appSelectionOutlineColor = [theme2 appSelectionOutlineColor];
        [(UIImageView *)self->_selectionOutline setTintColor:appSelectionOutlineColor];

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

- (void)_setImageForPlugin:(id)plugin
{
  pluginCopy = plugin;
  traitCollection = [(CKBrowserPluginCell *)self traitCollection];
  v7 = [pluginCopy __ck_browserImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  browserImage = [(CKBrowserPluginCell *)self browserImage];
  [browserImage setImage:v7];
}

- (void)setPlugin:(id)plugin hideShinyStatus:(BOOL)status
{
  pluginCopy = plugin;
  [(CKBrowserPluginCell *)self _setImageForPlugin:pluginCopy];
  identifier = [pluginCopy identifier];
  v8 = IMBalloonExtensionIDWithSuffix();
  v9 = [identifier isEqualToString:v8];

  browserLabel = [(CKBrowserCell *)self browserLabel];
  if (v9)
  {
    browserShortDisplayName = CKFrameworkBundle();
    browserDisplayName = [browserShortDisplayName localizedStringForKey:@"MEMOJI_STICKERS_SHORT_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_6:
    v13 = browserDisplayName;
    [browserLabel setText:browserDisplayName];

    goto LABEL_7;
  }

  browserShortDisplayName = [pluginCopy browserShortDisplayName];
  if (!browserShortDisplayName)
  {
    browserDisplayName = [pluginCopy browserDisplayName];
    goto LABEL_6;
  }

  [browserLabel setText:browserShortDisplayName];
LABEL_7:

  v14 = +[CKBalloonPluginManager sharedInstance];
  identifier2 = [pluginCopy identifier];
  v16 = [v14 badgeValueForPlugin:identifier2];

  badgeView = [(CKBrowserCell *)self badgeView];
  [badgeView setValue:v16];

  badgeView2 = [(CKBrowserCell *)self badgeView];
  [badgeView2 setHidden:v16 == 0];

  objc_storeStrong(&self->_plugin, plugin);
  [(CKBrowserPluginCell *)self _updateShinyStatus];
  shinyStatusView = [(CKBrowserCell *)self shinyStatusView];
  [shinyStatusView removeFromSuperview];

  if (!status && ([(CKBrowserCell *)self shinyStatus]|| [(CKBrowserCell *)self shinyStatus]!= 3))
  {
    v20 = [[CKBrowserSelectionLabelAccessoryView alloc] initWithLabelAccessoryType:[(CKBrowserCell *)self shinyStatus]];
    [(CKBrowserCell *)self setShinyStatusView:v20];

    contentView = [(CKBrowserPluginCell *)self contentView];
    shinyStatusView2 = [(CKBrowserCell *)self shinyStatusView];
    [contentView addSubview:shinyStatusView2];
  }

  [(CKBrowserPluginCell *)self setNeedsLayout];
}

- (void)_updateShinyStatus
{
  plugin = [(CKBrowserPluginCell *)self plugin];
  isBetaPlugin = [plugin isBetaPlugin];

  if (isBetaPlugin)
  {
    selfCopy2 = self;
    v6 = 2;
  }

  else
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 launchStatusForPlugin:self->_plugin];

    selfCopy2 = self;
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

  [(CKBrowserCell *)selfCopy2 setShinyStatus:v6];
}

@end
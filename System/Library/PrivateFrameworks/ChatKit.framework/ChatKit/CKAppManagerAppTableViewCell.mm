@interface CKAppManagerAppTableViewCell
- (CKAppManagerAppTableViewCell)initWithCoder:(id)coder;
- (CKAppManagerAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKAppManagerAppTableViewCellDelegate)delegate;
- (void)_updateConfigurationWithImage:(id)image text:(id)text;
- (void)appToggleTapped:(id)tapped;
- (void)configureCellFromInitializer;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setToggleVisible:(BOOL)visible editable:(BOOL)editable isOn:(BOOL)on;
- (void)updateCellWithPluginInfo:(id)info;
@end

@implementation CKAppManagerAppTableViewCell

- (CKAppManagerAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKAppManagerAppTableViewCell;
  v4 = [(CKAppManagerAppTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKAppManagerAppTableViewCell *)v4 configureCellFromInitializer];
  }

  return v5;
}

- (CKAppManagerAppTableViewCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CKAppManagerAppTableViewCell;
  v3 = [(CKAppManagerAppTableViewCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CKAppManagerAppTableViewCell *)v3 configureCellFromInitializer];
  }

  return v4;
}

- (void)configureCellFromInitializer
{
  tableCellGroupedBackgroundColor = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [(CKAppManagerAppTableViewCell *)self setBackgroundColor:tableCellGroupedBackgroundColor];

  [(CKAppManagerAppTableViewCell *)self setSelectionStyle:0];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = CKAppManagerAppTableViewCell;
  [(CKAppManagerAppTableViewCell *)&v3 layoutMarginsDidChange];
  [(CKAppManagerAppTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAppManagerAppTableViewCell;
  [(CKAppManagerAppTableViewCell *)&v3 prepareForReuse];
  [(CKAppManagerAppTableViewCell *)self setToggleVisible:0 editable:1 isOn:0];
  [(CKAppManagerAppTableViewCell *)self setShowsReorderControl:0];
}

- (void)setToggleVisible:(BOOL)visible editable:(BOOL)editable isOn:(BOOL)on
{
  if (visible)
  {
    onCopy = on;
    editableCopy = editable;
    appToggle = [(CKAppManagerAppTableViewCell *)self appToggle];
    if (!appToggle)
    {
      appToggle = objc_alloc_init(MEMORY[0x1E69DCFD0]);
      [appToggle addTarget:self action:sel_appToggleTapped_ forEvents:4096];
      [(CKAppManagerAppTableViewCell *)self setAppToggle:appToggle];
    }

    [appToggle setOn:onCopy];
    [appToggle setEnabled:editableCopy];
    accessoryView = [(CKAppManagerAppTableViewCell *)self accessoryView];

    if (!accessoryView)
    {
      [(CKAppManagerAppTableViewCell *)self setAccessoryView:appToggle];
    }
  }

  else
  {
    [(CKAppManagerAppTableViewCell *)self setAccessoryView:0, editable, on];
  }

  [(CKAppManagerAppTableViewCell *)self setSelectionStyle:0];
}

- (void)appToggleTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(CKAppManagerAppTableViewCell *)self delegate];
  isOn = [tappedCopy isOn];

  [delegate appCell:self wasToggledOn:isOn];
}

- (void)updateCellWithPluginInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  [(CKAppManagerAppTableViewCell *)self setCurrentPluginIdentifierForIconLoading:identifier];

  v6 = MEMORY[0x1E69A5AC0];
  traitCollection = [(CKAppManagerAppTableViewCell *)self traitCollection];
  v8 = [v6 __ck_placeholderImageForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  browserDisplayName = [infoCopy browserDisplayName];
  [(CKAppManagerAppTableViewCell *)self _updateConfigurationWithImage:v8 text:browserDisplayName];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__CKAppManagerAppTableViewCell_updateCellWithPluginInfo___block_invoke;
    v12[3] = &unk_1E72EC3C0;
    objc_copyWeak(&v14, &location);
    v13 = infoCopy;
    [v13 __ck_generateStatusImage:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    __ck_badgeImage = [infoCopy __ck_badgeImage];
    browserDisplayName2 = [infoCopy browserDisplayName];
    [(CKAppManagerAppTableViewCell *)self _updateConfigurationWithImage:__ck_badgeImage text:browserDisplayName2];
  }
}

void __57__CKAppManagerAppTableViewCell_updateCellWithPluginInfo___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained currentPluginIdentifierForIconLoading];
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v8 = [*(a1 + 32) browserDisplayName];
      [v4 _updateConfigurationWithImage:v9 text:v8];
    }
  }
}

- (void)_updateConfigurationWithImage:(id)image text:(id)text
{
  textCopy = text;
  imageCopy = image;
  defaultContentConfiguration = [(CKAppManagerAppTableViewCell *)self defaultContentConfiguration];
  [defaultContentConfiguration setImage:imageCopy];

  [defaultContentConfiguration setText:textCopy];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 iMessageAppIconSize];
  v10 = v9;
  v12 = v11;

  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setMaximumSize:{v10, v12}];

  [(CKAppManagerAppTableViewCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (CKAppManagerAppTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
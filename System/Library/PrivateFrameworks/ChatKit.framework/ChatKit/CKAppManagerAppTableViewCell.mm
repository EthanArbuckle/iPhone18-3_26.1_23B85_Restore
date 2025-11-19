@interface CKAppManagerAppTableViewCell
- (CKAppManagerAppTableViewCell)initWithCoder:(id)a3;
- (CKAppManagerAppTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CKAppManagerAppTableViewCellDelegate)delegate;
- (void)_updateConfigurationWithImage:(id)a3 text:(id)a4;
- (void)appToggleTapped:(id)a3;
- (void)configureCellFromInitializer;
- (void)layoutMarginsDidChange;
- (void)prepareForReuse;
- (void)setToggleVisible:(BOOL)a3 editable:(BOOL)a4 isOn:(BOOL)a5;
- (void)updateCellWithPluginInfo:(id)a3;
@end

@implementation CKAppManagerAppTableViewCell

- (CKAppManagerAppTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKAppManagerAppTableViewCell;
  v4 = [(CKAppManagerAppTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKAppManagerAppTableViewCell *)v4 configureCellFromInitializer];
  }

  return v5;
}

- (CKAppManagerAppTableViewCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKAppManagerAppTableViewCell;
  v3 = [(CKAppManagerAppTableViewCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CKAppManagerAppTableViewCell *)v3 configureCellFromInitializer];
  }

  return v4;
}

- (void)configureCellFromInitializer
{
  v3 = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  [(CKAppManagerAppTableViewCell *)self setBackgroundColor:v3];

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

- (void)setToggleVisible:(BOOL)a3 editable:(BOOL)a4 isOn:(BOOL)a5
{
  if (a3)
  {
    v6 = a5;
    v7 = a4;
    v8 = [(CKAppManagerAppTableViewCell *)self appToggle];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
      [v8 addTarget:self action:sel_appToggleTapped_ forEvents:4096];
      [(CKAppManagerAppTableViewCell *)self setAppToggle:v8];
    }

    [v8 setOn:v6];
    [v8 setEnabled:v7];
    v9 = [(CKAppManagerAppTableViewCell *)self accessoryView];

    if (!v9)
    {
      [(CKAppManagerAppTableViewCell *)self setAccessoryView:v8];
    }
  }

  else
  {
    [(CKAppManagerAppTableViewCell *)self setAccessoryView:0, a4, a5];
  }

  [(CKAppManagerAppTableViewCell *)self setSelectionStyle:0];
}

- (void)appToggleTapped:(id)a3
{
  v4 = a3;
  v6 = [(CKAppManagerAppTableViewCell *)self delegate];
  v5 = [v4 isOn];

  [v6 appCell:self wasToggledOn:v5];
}

- (void)updateCellWithPluginInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(CKAppManagerAppTableViewCell *)self setCurrentPluginIdentifierForIconLoading:v5];

  v6 = MEMORY[0x1E69A5AC0];
  v7 = [(CKAppManagerAppTableViewCell *)self traitCollection];
  v8 = [v6 __ck_placeholderImageForInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];
  v9 = [v4 browserDisplayName];
  [(CKAppManagerAppTableViewCell *)self _updateConfigurationWithImage:v8 text:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__CKAppManagerAppTableViewCell_updateCellWithPluginInfo___block_invoke;
    v12[3] = &unk_1E72EC3C0;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    [v13 __ck_generateStatusImage:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [v4 __ck_badgeImage];
    v11 = [v4 browserDisplayName];
    [(CKAppManagerAppTableViewCell *)self _updateConfigurationWithImage:v10 text:v11];
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

- (void)_updateConfigurationWithImage:(id)a3 text:(id)a4
{
  v6 = a4;
  v7 = a3;
  v14 = [(CKAppManagerAppTableViewCell *)self defaultContentConfiguration];
  [v14 setImage:v7];

  [v14 setText:v6];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 iMessageAppIconSize];
  v10 = v9;
  v12 = v11;

  v13 = [v14 imageProperties];
  [v13 setMaximumSize:{v10, v12}];

  [(CKAppManagerAppTableViewCell *)self setContentConfiguration:v14];
}

- (CKAppManagerAppTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface HUMultiUserTokenFixTableView
- (HUMediaAccountDelegate)mediaAccountDelegate;
- (HUMultiUserTokenFixTableView)initWithFrame:(CGRect)frame mediaAccount:(id)account home:(id)home delegate:(id)delegate;
- (double)_buttonTitleTextHeight;
- (double)_descriptionHeight;
- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)width;
- (double)_titleHeight;
- (double)tableViewHeightForWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUMultiUserTokenFixTableView

- (HUMultiUserTokenFixTableView)initWithFrame:(CGRect)frame mediaAccount:(id)account home:(id)home delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  accountCopy = account;
  homeCopy = home;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = HUMultiUserTokenFixTableView;
  height = [(HUMultiUserTokenFixTableView *)&v25 initWithFrame:2 style:x, y, width, height];
  if (height)
  {
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(HUMultiUserTokenFixTableView *)height registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [(HUMultiUserTokenFixTableView *)height registerClass:v21 forCellReuseIdentifier:v23];

    objc_storeStrong(&height->_mediaAccount, account);
    objc_storeStrong(&height->_home, home);
    objc_storeWeak(&height->_mediaAccountDelegate, delegateCopy);
    [(HUMultiUserTokenFixTableView *)height setDataSource:height];
    [(HUMultiUserTokenFixTableView *)height setDelegate:height];
    [(HUMultiUserTokenFixTableView *)height setScrollEnabled:0];
    [(HUMultiUserTokenFixTableView *)height reloadData];
  }

  return height;
}

- (double)_descriptionHeight
{
  _descriptionFont = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  [_descriptionFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_titleHeight
{
  _titleFont = [(HUMultiUserTokenFixTableView *)self _titleFont];
  [_titleFont _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTitleTextHeight
{
  _buttonTitleTextFont = [(HUMultiUserTokenFixTableView *)self _buttonTitleTextFont];
  [_buttonTitleTextFont _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)width
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_Title", @"HUMultiUserTokenFix_Title", 1);
  v37 = *MEMORY[0x277D740A8];
  v6 = v37;
  _titleFont = [(HUMultiUserTokenFixTableView *)self _titleFont];
  v38[0] = _titleFont;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{width, 3.40282347e38}];
  v10 = v9;

  _titleFont2 = [(HUMultiUserTokenFixTableView *)self _titleFont];
  [_titleFont2 lineHeight];
  v13 = v12;

  [(HUMultiUserTokenFixTableView *)self _titleHeight];
  v15 = v14;
  mediaAccount = [(HUMultiUserTokenFixTableView *)self mediaAccount];
  username = [mediaAccount username];
  v24 = HULocalizedStringWithFormat(@"HUMultiUserTokenFix_Description", @"%@", v18, v19, v20, v21, v22, v23, username);

  v35 = v6;
  _descriptionFont = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  v36 = _descriptionFont;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v24 boundingRectWithSize:1 options:v26 attributes:0 context:{width, 3.40282347e38}];
  v28 = v27;

  _descriptionFont2 = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  [_descriptionFont2 lineHeight];
  v31 = v30;

  [(HUMultiUserTokenFixTableView *)self _descriptionHeight];
  v33 = v32;

  return v15 * ceil(v10 / v13) + 10.0 + 4.0 + v33 * ceil(v28 / v31) + 10.0;
}

- (double)tableViewHeightForWidth:(double)width
{
  [(HUMultiUserTokenFixTableView *)self _buttonTitleTextHeight];
  v6 = v5 + 20.0 + 20.0;
  [(HUMultiUserTokenFixTableView *)self _maxTitleAndDescriptionCellHeightForWidth:width];
  return v7 + 2.0 + v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy row])
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

    v11 = [pathCopy row];
    if (v11 != 1)
    {
      goto LABEL_6;
    }

    v12 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_SignIn", @"HUMultiUserTokenFix_SignIn", 1);
    textLabel = [v10 textLabel];
    [textLabel setText:v12];
  }

  else
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    v16 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_Title", @"HUMultiUserTokenFix_Title", 1);
    [v10 setTitleText:v16];

    v17 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [v10 setTitleFont:v17];

    [v10 setMaxNumberOfTitleLines:0];
    mediaAccount = [(HUMultiUserTokenFixTableView *)self mediaAccount];
    username = [mediaAccount username];
    v12 = HULocalizedStringWithFormat(@"HUMultiUserTokenFix_Description", @"%@", v20, v21, v22, v23, v24, v25, username);

    [v10 setDescriptionText:v12];
    v26 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76968] traits:0x8000];
    [v10 setDescriptionFont:v26];

    [v10 setMaxNumberOfDescriptionLines:0];
    [v10 setHideIcon:1];
    [v10 setSelectionStyle:0];
  }

LABEL_6:

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] == 1)
  {
    mediaAccountDelegate = [(HUMultiUserTokenFixTableView *)self mediaAccountDelegate];
    mediaAccount = [(HUMultiUserTokenFixTableView *)self mediaAccount];
    home = [(HUMultiUserTokenFixTableView *)self home];
    [mediaAccountDelegate signIniTunesAccount:mediaAccount forHome:home];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (HUMediaAccountDelegate)mediaAccountDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaAccountDelegate);

  return WeakRetained;
}

@end
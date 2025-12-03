@interface HUSplitAccountHeaderTableView
- (HUMediaAccountDelegate)splitAccountDelegate;
- (HUSplitAccountHeaderTableView)initWithFrame:(CGRect)frame mediaAccount:(id)account home:(id)home delegate:(id)delegate;
- (double)_buttonTitleTextHeight;
- (double)_descriptionHeight;
- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)width;
- (double)_titleHeight;
- (double)tableViewHeightForWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation HUSplitAccountHeaderTableView

- (HUSplitAccountHeaderTableView)initWithFrame:(CGRect)frame mediaAccount:(id)account home:(id)home delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  accountCopy = account;
  homeCopy = home;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = HUSplitAccountHeaderTableView;
  height = [(HUSplitAccountHeaderTableView *)&v25 initWithFrame:2 style:x, y, width, height];
  if (height)
  {
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(HUSplitAccountHeaderTableView *)height registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [(HUSplitAccountHeaderTableView *)height registerClass:v21 forCellReuseIdentifier:v23];

    objc_storeStrong(&height->_mediaAccount, account);
    objc_storeStrong(&height->_home, home);
    objc_storeWeak(&height->_splitAccountDelegate, delegateCopy);
    [(HUSplitAccountHeaderTableView *)height setDataSource:height];
    [(HUSplitAccountHeaderTableView *)height setDelegate:height];
    [(HUSplitAccountHeaderTableView *)height setScrollEnabled:0];
    [(HUSplitAccountHeaderTableView *)height reloadData];
  }

  return height;
}

- (double)_descriptionHeight
{
  _descriptionFont = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  [_descriptionFont _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_titleHeight
{
  _titleFont = [(HUSplitAccountHeaderTableView *)self _titleFont];
  [_titleFont _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTitleTextHeight
{
  _buttonTitleTextFont = [(HUSplitAccountHeaderTableView *)self _buttonTitleTextFont];
  [_buttonTitleTextFont _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)width
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUSplitAccount_Title", @"HUSplitAccount_Title", 1);
  v37 = *MEMORY[0x277D740A8];
  v6 = v37;
  _titleFont = [(HUSplitAccountHeaderTableView *)self _titleFont];
  v38[0] = _titleFont;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{width, 3.40282347e38}];
  v10 = v9;

  _titleFont2 = [(HUSplitAccountHeaderTableView *)self _titleFont];
  [_titleFont2 lineHeight];
  v13 = v12;

  [(HUSplitAccountHeaderTableView *)self _titleHeight];
  v15 = v14;
  mediaAccount = [(HUSplitAccountHeaderTableView *)self mediaAccount];
  username = [mediaAccount username];
  v24 = HULocalizedStringWithFormat(@"HUSplitAccount_Description", @"%@", v18, v19, v20, v21, v22, v23, username);

  v35 = v6;
  _descriptionFont = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  v36 = _descriptionFont;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v24 boundingRectWithSize:1 options:v26 attributes:0 context:{width, 3.40282347e38}];
  v28 = v27;

  _descriptionFont2 = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  [_descriptionFont2 lineHeight];
  v31 = v30;

  [(HUSplitAccountHeaderTableView *)self _descriptionHeight];
  v33 = v32;

  return v15 * ceil(v10 / v13) + 10.0 + 4.0 + v33 * ceil(v28 / v31) + 10.0;
}

- (double)tableViewHeightForWidth:(double)width
{
  [(HUSplitAccountHeaderTableView *)self _buttonTitleTextHeight];
  v6 = v5 * 3.0 + 20.0 + 20.0;
  [(HUSplitAccountHeaderTableView *)self _maxTitleAndDescriptionCellHeightForWidth:width];
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

    mediaAccount = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    username = [mediaAccount username];
    v20 = HULocalizedStringWithFormat(@"HUSplitAccount_UseMediaAccount_Button_Title", @"%@", v14, v15, v16, v17, v18, v19, username);

    textLabel = [v10 textLabel];
    [textLabel setText:v20];
  }

  else
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v10 = [viewCopy dequeueReusableCellWithIdentifier:v23 forIndexPath:pathCopy];

    v24 = _HULocalizedStringWithDefaultValue(@"HUSplitAccount_Title", @"HUSplitAccount_Title", 1);
    [v10 setTitleText:v24];

    v25 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [v10 setTitleFont:v25];

    [v10 setMaxNumberOfTitleLines:0];
    mediaAccount2 = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    username2 = [mediaAccount2 username];
    v20 = HULocalizedStringWithFormat(@"HUSplitAccount_Description", @"%@", v28, v29, v30, v31, v32, v33, username2);

    [v10 setDescriptionText:v20];
    v34 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76968] traits:0x8000];
    [v10 setDescriptionFont:v34];

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
    splitAccountDelegate = [(HUSplitAccountHeaderTableView *)self splitAccountDelegate];
    mediaAccount = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    home = [(HUSplitAccountHeaderTableView *)self home];
    [splitAccountDelegate setAMSiTunesAccount:mediaAccount forHome:home];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (HUMediaAccountDelegate)splitAccountDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitAccountDelegate);

  return WeakRetained;
}

@end
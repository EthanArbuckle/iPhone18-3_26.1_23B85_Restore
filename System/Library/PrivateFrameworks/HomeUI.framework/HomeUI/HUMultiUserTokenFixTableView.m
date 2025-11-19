@interface HUMultiUserTokenFixTableView
- (HUMediaAccountDelegate)mediaAccountDelegate;
- (HUMultiUserTokenFixTableView)initWithFrame:(CGRect)a3 mediaAccount:(id)a4 home:(id)a5 delegate:(id)a6;
- (double)_buttonTitleTextHeight;
- (double)_descriptionHeight;
- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)a3;
- (double)_titleHeight;
- (double)tableViewHeightForWidth:(double)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUMultiUserTokenFixTableView

- (HUMultiUserTokenFixTableView)initWithFrame:(CGRect)a3 mediaAccount:(id)a4 home:(id)a5 delegate:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v25.receiver = self;
  v25.super_class = HUMultiUserTokenFixTableView;
  v17 = [(HUMultiUserTokenFixTableView *)&v25 initWithFrame:2 style:x, y, width, height];
  if (v17)
  {
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(HUMultiUserTokenFixTableView *)v17 registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [(HUMultiUserTokenFixTableView *)v17 registerClass:v21 forCellReuseIdentifier:v23];

    objc_storeStrong(&v17->_mediaAccount, a4);
    objc_storeStrong(&v17->_home, a5);
    objc_storeWeak(&v17->_mediaAccountDelegate, v16);
    [(HUMultiUserTokenFixTableView *)v17 setDataSource:v17];
    [(HUMultiUserTokenFixTableView *)v17 setDelegate:v17];
    [(HUMultiUserTokenFixTableView *)v17 setScrollEnabled:0];
    [(HUMultiUserTokenFixTableView *)v17 reloadData];
  }

  return v17;
}

- (double)_descriptionHeight
{
  v2 = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_titleHeight
{
  v2 = [(HUMultiUserTokenFixTableView *)self _titleFont];
  [v2 _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTitleTextHeight
{
  v2 = [(HUMultiUserTokenFixTableView *)self _buttonTitleTextFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_Title", @"HUMultiUserTokenFix_Title", 1);
  v37 = *MEMORY[0x277D740A8];
  v6 = v37;
  v7 = [(HUMultiUserTokenFixTableView *)self _titleFont];
  v38[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{a3, 3.40282347e38}];
  v10 = v9;

  v11 = [(HUMultiUserTokenFixTableView *)self _titleFont];
  [v11 lineHeight];
  v13 = v12;

  [(HUMultiUserTokenFixTableView *)self _titleHeight];
  v15 = v14;
  v16 = [(HUMultiUserTokenFixTableView *)self mediaAccount];
  v17 = [v16 username];
  v24 = HULocalizedStringWithFormat(@"HUMultiUserTokenFix_Description", @"%@", v18, v19, v20, v21, v22, v23, v17);

  v35 = v6;
  v25 = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  v36 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v24 boundingRectWithSize:1 options:v26 attributes:0 context:{a3, 3.40282347e38}];
  v28 = v27;

  v29 = [(HUMultiUserTokenFixTableView *)self _descriptionFont];
  [v29 lineHeight];
  v31 = v30;

  [(HUMultiUserTokenFixTableView *)self _descriptionHeight];
  v33 = v32;

  return v15 * ceil(v10 / v13) + 10.0 + 4.0 + v33 * ceil(v28 / v31) + 10.0;
}

- (double)tableViewHeightForWidth:(double)a3
{
  [(HUMultiUserTokenFixTableView *)self _buttonTitleTextHeight];
  v6 = v5 + 20.0 + 20.0;
  [(HUMultiUserTokenFixTableView *)self _maxTitleAndDescriptionCellHeightForWidth:a3];
  return v7 + 2.0 + v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 row])
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

    v11 = [v6 row];
    if (v11 != 1)
    {
      goto LABEL_6;
    }

    v12 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_SignIn", @"HUMultiUserTokenFix_SignIn", 1);
    v13 = [v10 textLabel];
    [v13 setText:v12];
  }

  else
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v10 = [v7 dequeueReusableCellWithIdentifier:v15 forIndexPath:v6];

    v16 = _HULocalizedStringWithDefaultValue(@"HUMultiUserTokenFix_Title", @"HUMultiUserTokenFix_Title", 1);
    [v10 setTitleText:v16];

    v17 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [v10 setTitleFont:v17];

    [v10 setMaxNumberOfTitleLines:0];
    v18 = [(HUMultiUserTokenFixTableView *)self mediaAccount];
    v19 = [v18 username];
    v12 = HULocalizedStringWithFormat(@"HUMultiUserTokenFix_Description", @"%@", v20, v21, v22, v23, v24, v25, v19);

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v6 row] == 1)
  {
    v7 = [(HUMultiUserTokenFixTableView *)self mediaAccountDelegate];
    v8 = [(HUMultiUserTokenFixTableView *)self mediaAccount];
    v9 = [(HUMultiUserTokenFixTableView *)self home];
    [v7 signIniTunesAccount:v8 forHome:v9];
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (HUMediaAccountDelegate)mediaAccountDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaAccountDelegate);

  return WeakRetained;
}

@end
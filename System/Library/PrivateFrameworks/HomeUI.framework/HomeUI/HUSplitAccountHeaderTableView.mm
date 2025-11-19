@interface HUSplitAccountHeaderTableView
- (HUMediaAccountDelegate)splitAccountDelegate;
- (HUSplitAccountHeaderTableView)initWithFrame:(CGRect)a3 mediaAccount:(id)a4 home:(id)a5 delegate:(id)a6;
- (double)_buttonTitleTextHeight;
- (double)_descriptionHeight;
- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)a3;
- (double)_titleHeight;
- (double)tableViewHeightForWidth:(double)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation HUSplitAccountHeaderTableView

- (HUSplitAccountHeaderTableView)initWithFrame:(CGRect)a3 mediaAccount:(id)a4 home:(id)a5 delegate:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v25.receiver = self;
  v25.super_class = HUSplitAccountHeaderTableView;
  v17 = [(HUSplitAccountHeaderTableView *)&v25 initWithFrame:2 style:x, y, width, height];
  if (v17)
  {
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [(HUSplitAccountHeaderTableView *)v17 registerClass:v18 forCellReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [(HUSplitAccountHeaderTableView *)v17 registerClass:v21 forCellReuseIdentifier:v23];

    objc_storeStrong(&v17->_mediaAccount, a4);
    objc_storeStrong(&v17->_home, a5);
    objc_storeWeak(&v17->_splitAccountDelegate, v16);
    [(HUSplitAccountHeaderTableView *)v17 setDataSource:v17];
    [(HUSplitAccountHeaderTableView *)v17 setDelegate:v17];
    [(HUSplitAccountHeaderTableView *)v17 setScrollEnabled:0];
    [(HUSplitAccountHeaderTableView *)v17 reloadData];
  }

  return v17;
}

- (double)_descriptionHeight
{
  v2 = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

- (double)_titleHeight
{
  v2 = [(HUSplitAccountHeaderTableView *)self _titleFont];
  [v2 _scaledValueForValue:32.0];
  v4 = v3;

  return v4;
}

- (double)_buttonTitleTextHeight
{
  v2 = [(HUSplitAccountHeaderTableView *)self _buttonTitleTextFont];
  [v2 _scaledValueForValue:28.0];
  v4 = v3;

  return v4;
}

- (double)_maxTitleAndDescriptionCellHeightForWidth:(double)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = _HULocalizedStringWithDefaultValue(@"HUSplitAccount_Title", @"HUSplitAccount_Title", 1);
  v37 = *MEMORY[0x277D740A8];
  v6 = v37;
  v7 = [(HUSplitAccountHeaderTableView *)self _titleFont];
  v38[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{a3, 3.40282347e38}];
  v10 = v9;

  v11 = [(HUSplitAccountHeaderTableView *)self _titleFont];
  [v11 lineHeight];
  v13 = v12;

  [(HUSplitAccountHeaderTableView *)self _titleHeight];
  v15 = v14;
  v16 = [(HUSplitAccountHeaderTableView *)self mediaAccount];
  v17 = [v16 username];
  v24 = HULocalizedStringWithFormat(@"HUSplitAccount_Description", @"%@", v18, v19, v20, v21, v22, v23, v17);

  v35 = v6;
  v25 = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  v36 = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  [v24 boundingRectWithSize:1 options:v26 attributes:0 context:{a3, 3.40282347e38}];
  v28 = v27;

  v29 = [(HUSplitAccountHeaderTableView *)self _descriptionFont];
  [v29 lineHeight];
  v31 = v30;

  [(HUSplitAccountHeaderTableView *)self _descriptionHeight];
  v33 = v32;

  return v15 * ceil(v10 / v13) + 10.0 + 4.0 + v33 * ceil(v28 / v31) + 10.0;
}

- (double)tableViewHeightForWidth:(double)a3
{
  [(HUSplitAccountHeaderTableView *)self _buttonTitleTextHeight];
  v6 = v5 * 3.0 + 20.0 + 20.0;
  [(HUSplitAccountHeaderTableView *)self _maxTitleAndDescriptionCellHeightForWidth:a3];
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

    v12 = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    v13 = [v12 username];
    v20 = HULocalizedStringWithFormat(@"HUSplitAccount_UseMediaAccount_Button_Title", @"%@", v14, v15, v16, v17, v18, v19, v13);

    v21 = [v10 textLabel];
    [v21 setText:v20];
  }

  else
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v10 = [v7 dequeueReusableCellWithIdentifier:v23 forIndexPath:v6];

    v24 = _HULocalizedStringWithDefaultValue(@"HUSplitAccount_Title", @"HUSplitAccount_Title", 1);
    [v10 setTitleText:v24];

    v25 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:32770];
    [v10 setTitleFont:v25];

    [v10 setMaxNumberOfTitleLines:0];
    v26 = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    v27 = [v26 username];
    v20 = HULocalizedStringWithFormat(@"HUSplitAccount_Description", @"%@", v28, v29, v30, v31, v32, v33, v27);

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v6 row] == 1)
  {
    v7 = [(HUSplitAccountHeaderTableView *)self splitAccountDelegate];
    v8 = [(HUSplitAccountHeaderTableView *)self mediaAccount];
    v9 = [(HUSplitAccountHeaderTableView *)self home];
    [v7 setAMSiTunesAccount:v8 forHome:v9];
  }

  [v10 deselectRowAtIndexPath:v6 animated:1];
}

- (HUMediaAccountDelegate)splitAccountDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitAccountDelegate);

  return WeakRetained;
}

@end
@interface HKVerifiableClinicalRecordDetailViewController
- (HKVerifiableClinicalRecordDetailViewController)initWithSignedRecord:(id)a3 medicalRecords:(id)a4;
- (id)configureSubtitleCellForItem:(id)a3 tableView:(id)a4;
- (id)configureValueCellForItem:(id)a3 tableView:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setUpTableView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation HKVerifiableClinicalRecordDetailViewController

- (HKVerifiableClinicalRecordDetailViewController)initWithSignedRecord:(id)a3 medicalRecords:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordDetailViewController;
  v8 = [(HKTableViewController *)&v12 initWithUsingInsetStyling:1];
  if (v8)
  {
    v9 = [[HKVerifiableClinicalRecordDetailDataProvider alloc] initWithSignedRecord:v6 medicalRecords:v7];
    dataProvider = v8->_dataProvider;
    v8->_dataProvider = v9;
  }

  return v8;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HKVerifiableClinicalRecordDetailViewController;
  [(HKTableViewController *)&v5 viewDidLoad];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"DETAIL_VIEW_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Pasadena"];
  [(HKVerifiableClinicalRecordDetailViewController *)self setTitle:v4];

  [(HKVerifiableClinicalRecordDetailViewController *)self setModalInPresentation:1];
  [(HKVerifiableClinicalRecordDetailViewController *)self _setUpTableView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HKVerifiableClinicalRecordDetailViewController;
  [(HKVerifiableClinicalRecordDetailViewController *)&v8 viewWillAppear:?];
  v5 = [(HKVerifiableClinicalRecordDetailViewController *)self navigationController];
  v6 = [v5 isNavigationBarHidden];

  if (v6)
  {
    v7 = [(HKVerifiableClinicalRecordDetailViewController *)self navigationController];
    [v7 setNavigationBarHidden:0 animated:v3];
  }
}

- (void)_setUpTableView
{
  v3 = *MEMORY[0x1E69DE3D0];
  v4 = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [v4 setRowHeight:v3];

  v5 = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"SubtitleCell"];

  v6 = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"ValueCell"];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  dataProvider = self->_dataProvider;
  v8 = a4;
  v9 = [v8 section];
  v10 = [v8 row];

  v11 = [(HKVerifiableClinicalRecordDetailDataProvider *)dataProvider displayItemForSection:v9 row:v10];
  v12 = [v11 type];
  if (v12 == 1)
  {
    v13 = [(HKVerifiableClinicalRecordDetailViewController *)self configureValueCellForItem:v11 tableView:v6];
    goto LABEL_5;
  }

  if (!v12)
  {
    v13 = [(HKVerifiableClinicalRecordDetailViewController *)self configureSubtitleCellForItem:v11 tableView:v6];
LABEL_5:
    v14 = v13;
    goto LABEL_7;
  }

  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v14 = HKErrorTableViewCell(v16);

LABEL_7:

  return v14;
}

- (id)configureSubtitleCellForItem:(id)a3 tableView:(id)a4
{
  v5 = a3;
  v6 = [a4 dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  [v6 setSelectionStyle:0];
  v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = [v5 titleText];
  [v7 setText:v8];

  v9 = [v5 detailText];
  [v7 setSecondaryText:v9];

  [v7 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [v7 setTextToSecondaryTextVerticalPadding:5.0];
  v10 = [v5 subtitleStyle];

  if (v10 == 1)
  {
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [v7 textProperties];
    [v18 setColor:v17];

    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v20 = [v7 textProperties];
    [v20 setFont:v19];

    v15 = [MEMORY[0x1E69DC888] labelColor];
    v16 = MEMORY[0x1E69DDCF8];
  }

  else
  {
    if (v10)
    {
      goto LABEL_6;
    }

    v11 = [MEMORY[0x1E69DC888] labelColor];
    v12 = [v7 textProperties];
    [v12 setColor:v11];

    v13 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
    v14 = [v7 textProperties];
    [v14 setFont:v13];

    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v16 = MEMORY[0x1E69DDD80];
  }

  v21 = [v7 secondaryTextProperties];
  [v21 setColor:v15];

  v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v16];
  v23 = [v7 secondaryTextProperties];
  [v23 setFont:v22];

LABEL_6:
  [v6 setContentConfiguration:v7];

  return v6;
}

- (id)configureValueCellForItem:(id)a3 tableView:(id)a4
{
  v5 = a3;
  v6 = [a4 dequeueReusableCellWithIdentifier:@"ValueCell"];
  [v6 setSelectionStyle:0];
  v7 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [v7 setTextToSecondaryTextHorizontalPadding:10.0];
  v8 = [v5 titleText];
  [v7 setText:v8];

  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v10 = [v7 textProperties];
  [v10 setColor:v9];

  v11 = *MEMORY[0x1E69DDCF8];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v13 = [v7 textProperties];
  [v13 setFont:v12];

  v14 = [v5 detailText];
  [v7 setSecondaryText:v14];

  v15 = [v5 attributedDetailText];

  [v7 setSecondaryAttributedText:v15];
  v16 = [MEMORY[0x1E69DC888] labelColor];
  v17 = [v7 secondaryTextProperties];
  [v17 setColor:v16];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  v19 = [v7 secondaryTextProperties];
  [v19 setFont:v18];

  [v6 setContentConfiguration:v7];

  return v6;
}

@end
@interface HKVerifiableClinicalRecordDetailViewController
- (HKVerifiableClinicalRecordDetailViewController)initWithSignedRecord:(id)record medicalRecords:(id)records;
- (id)configureSubtitleCellForItem:(id)item tableView:(id)view;
- (id)configureValueCellForItem:(id)item tableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setUpTableView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HKVerifiableClinicalRecordDetailViewController

- (HKVerifiableClinicalRecordDetailViewController)initWithSignedRecord:(id)record medicalRecords:(id)records
{
  recordCopy = record;
  recordsCopy = records;
  v12.receiver = self;
  v12.super_class = HKVerifiableClinicalRecordDetailViewController;
  v8 = [(HKTableViewController *)&v12 initWithUsingInsetStyling:1];
  if (v8)
  {
    v9 = [[HKVerifiableClinicalRecordDetailDataProvider alloc] initWithSignedRecord:recordCopy medicalRecords:recordsCopy];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = HKVerifiableClinicalRecordDetailViewController;
  [(HKVerifiableClinicalRecordDetailViewController *)&v8 viewWillAppear:?];
  navigationController = [(HKVerifiableClinicalRecordDetailViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  if (isNavigationBarHidden)
  {
    navigationController2 = [(HKVerifiableClinicalRecordDetailViewController *)self navigationController];
    [navigationController2 setNavigationBarHidden:0 animated:appearCopy];
  }
}

- (void)_setUpTableView
{
  v3 = *MEMORY[0x1E69DE3D0];
  tableView = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [tableView setRowHeight:v3];

  tableView2 = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"SubtitleCell"];

  tableView3 = [(HKVerifiableClinicalRecordDetailViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"ValueCell"];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  dataProvider = self->_dataProvider;
  pathCopy = path;
  section = [pathCopy section];
  v10 = [pathCopy row];

  v11 = [(HKVerifiableClinicalRecordDetailDataProvider *)dataProvider displayItemForSection:section row:v10];
  type = [v11 type];
  if (type == 1)
  {
    v13 = [(HKVerifiableClinicalRecordDetailViewController *)self configureValueCellForItem:v11 tableView:viewCopy];
    goto LABEL_5;
  }

  if (!type)
  {
    v13 = [(HKVerifiableClinicalRecordDetailViewController *)self configureSubtitleCellForItem:v11 tableView:viewCopy];
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

- (id)configureSubtitleCellForItem:(id)item tableView:(id)view
{
  itemCopy = item;
  v6 = [view dequeueReusableCellWithIdentifier:@"SubtitleCell"];
  [v6 setSelectionStyle:0];
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  titleText = [itemCopy titleText];
  [subtitleCellConfiguration setText:titleText];

  detailText = [itemCopy detailText];
  [subtitleCellConfiguration setSecondaryText:detailText];

  [subtitleCellConfiguration setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  [subtitleCellConfiguration setTextToSecondaryTextVerticalPadding:5.0];
  subtitleStyle = [itemCopy subtitleStyle];

  if (subtitleStyle == 1)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textProperties = [subtitleCellConfiguration textProperties];
    [textProperties setColor:secondaryLabelColor];

    v19 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    textProperties2 = [subtitleCellConfiguration textProperties];
    [textProperties2 setFont:v19];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v16 = MEMORY[0x1E69DDCF8];
  }

  else
  {
    if (subtitleStyle)
    {
      goto LABEL_6;
    }

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    textProperties3 = [subtitleCellConfiguration textProperties];
    [textProperties3 setColor:labelColor2];

    v13 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
    textProperties4 = [subtitleCellConfiguration textProperties];
    [textProperties4 setFont:v13];

    labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v16 = MEMORY[0x1E69DDD80];
  }

  secondaryTextProperties = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:labelColor];

  v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v16];
  secondaryTextProperties2 = [subtitleCellConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setFont:v22];

LABEL_6:
  [v6 setContentConfiguration:subtitleCellConfiguration];

  return v6;
}

- (id)configureValueCellForItem:(id)item tableView:(id)view
{
  itemCopy = item;
  v6 = [view dequeueReusableCellWithIdentifier:@"ValueCell"];
  [v6 setSelectionStyle:0];
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  [valueCellConfiguration setTextToSecondaryTextHorizontalPadding:10.0];
  titleText = [itemCopy titleText];
  [valueCellConfiguration setText:titleText];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  textProperties = [valueCellConfiguration textProperties];
  [textProperties setColor:secondaryLabelColor];

  v11 = *MEMORY[0x1E69DDCF8];
  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  textProperties2 = [valueCellConfiguration textProperties];
  [textProperties2 setFont:v12];

  detailText = [itemCopy detailText];
  [valueCellConfiguration setSecondaryText:detailText];

  attributedDetailText = [itemCopy attributedDetailText];

  [valueCellConfiguration setSecondaryAttributedText:attributedDetailText];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  secondaryTextProperties = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:labelColor];

  v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v11];
  secondaryTextProperties2 = [valueCellConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setFont:v18];

  [v6 setContentConfiguration:valueCellConfiguration];

  return v6;
}

@end
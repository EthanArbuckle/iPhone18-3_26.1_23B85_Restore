@interface NTKCFaceDetailMonogramEditCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailMonogramEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_monogramChanged;
- (void)dealloc;
@end

@implementation NTKCFaceDetailMonogramEditCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailMonogramEditCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailMonogramEditCell;
  v5 = [(NTKCFaceDetailRowActionCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v5)
  {
    v6 = NTKCCustomizationLocalizedString(@"MONOGRAM_EDIT", @"Edit Monogram", v4);
    textLabel = [(NTKCFaceDetailMonogramEditCell *)v5 textLabel];
    [textLabel setText:v6];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__monogramChanged name:@"NTKCustomMonogramChangedNotification" object:0];

    [(NTKCFaceDetailMonogramEditCell *)v5 _monogramChanged];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"NTKCustomMonogramChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = NTKCFaceDetailMonogramEditCell;
  [(NTKCDetailTableViewCell *)&v4 dealloc];
}

- (void)_monogramChanged
{
  v3 = +[NTKMonogram monogram];
  detailTextLabel = [(NTKCFaceDetailMonogramEditCell *)self detailTextLabel];
  [detailTextLabel setText:v3];

  [(NTKCFaceDetailMonogramEditCell *)self setNeedsLayout];
}

@end
@interface NTKCFaceDetailMonogramEditCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailMonogramEditCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_monogramChanged;
- (void)dealloc;
@end

@implementation NTKCFaceDetailMonogramEditCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailMonogramEditCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailMonogramEditCell;
  v5 = [(NTKCFaceDetailRowActionCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v5)
  {
    v6 = NTKCCustomizationLocalizedString(@"MONOGRAM_EDIT", @"Edit Monogram", v4);
    v7 = [(NTKCFaceDetailMonogramEditCell *)v5 textLabel];
    [v7 setText:v6];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v5 selector:sel__monogramChanged name:@"NTKCustomMonogramChangedNotification" object:0];

    [(NTKCFaceDetailMonogramEditCell *)v5 _monogramChanged];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"NTKCustomMonogramChangedNotification" object:0];

  v4.receiver = self;
  v4.super_class = NTKCFaceDetailMonogramEditCell;
  [(NTKCDetailTableViewCell *)&v4 dealloc];
}

- (void)_monogramChanged
{
  v3 = +[NTKMonogram monogram];
  v4 = [(NTKCFaceDetailMonogramEditCell *)self detailTextLabel];
  [v4 setText:v3];

  [(NTKCFaceDetailMonogramEditCell *)self setNeedsLayout];
}

@end
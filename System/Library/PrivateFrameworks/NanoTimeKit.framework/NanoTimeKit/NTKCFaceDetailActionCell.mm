@interface NTKCFaceDetailActionCell
- (NTKCFaceDetailActionCell)initWithAction:(int64_t)action;
@end

@implementation NTKCFaceDetailActionCell

- (NTKCFaceDetailActionCell)initWithAction:(int64_t)action
{
  v14.receiver = self;
  v14.super_class = NTKCFaceDetailActionCell;
  v4 = [(NTKCDetailTableViewCell *)&v14 init];
  v5 = v4;
  if (v4)
  {
    [(NTKCFaceDetailActionCell *)v4 setSelectionStyle:3];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(NTKCFaceDetailActionCell *)v5 setBackgroundColor:secondarySystemBackgroundColor];

    if (action == 1)
    {
      v8 = NTKCCustomizationLocalizedString(@"ACTION_REMOVE", @"Remove", v7);
      v9 = NTKCRemoveColor();
    }

    else
    {
      if (action)
      {
        v8 = 0;
        v10 = 0;
        goto LABEL_8;
      }

      v8 = NTKCCustomizationLocalizedString(@"ACTION_SET_CURRENT", @"Select", v7);
      v9 = NTKCActionColor();
    }

    v10 = v9;
LABEL_8:
    textLabel = [(NTKCFaceDetailActionCell *)v5 textLabel];
    [textLabel setText:v8];

    textLabel2 = [(NTKCFaceDetailActionCell *)v5 textLabel];
    [textLabel2 setTextColor:v10];
  }

  return v5;
}

@end
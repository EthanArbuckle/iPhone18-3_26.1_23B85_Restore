@interface CDStackedImagesComplicationAccentImageView
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation CDStackedImagesComplicationAccentImageView

- (int64_t)_backgroundFilterStyle
{
  filterProvider = [(CDStackedImagesComplicationImageView *)self filterProvider];
  device = [filterProvider device];
  v4 = CDShowGossamerUI(device);

  if (v4)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_foregroundFilterStyle
{
  filterProvider = [(CDStackedImagesComplicationImageView *)self filterProvider];
  device = [filterProvider device];
  v4 = CDShowGossamerUI(device);

  if (v4)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

@end
@interface CDStackedImagesComplicationAccentImageView
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
@end

@implementation CDStackedImagesComplicationAccentImageView

- (int64_t)_backgroundFilterStyle
{
  v2 = [(CDStackedImagesComplicationImageView *)self filterProvider];
  v3 = [v2 device];
  v4 = CDShowGossamerUI(v3);

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
  v2 = [(CDStackedImagesComplicationImageView *)self filterProvider];
  v3 = [v2 device];
  v4 = CDShowGossamerUI(v3);

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
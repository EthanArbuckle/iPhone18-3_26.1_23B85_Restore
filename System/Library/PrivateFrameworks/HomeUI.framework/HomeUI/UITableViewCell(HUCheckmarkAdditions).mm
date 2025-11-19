@interface UITableViewCell(HUCheckmarkAdditions)
+ (id)hu_emptyCheckmarkPlaceholderImage;
- (void)hu_configureCheckmarkForImageView:()HUCheckmarkAdditions checked:;
@end

@implementation UITableViewCell(HUCheckmarkAdditions)

+ (id)hu_emptyCheckmarkPlaceholderImage
{
  if (qword_281120DA8 != -1)
  {
    dispatch_once(&qword_281120DA8, &__block_literal_global_188);
  }

  v1 = _MergedGlobals_1_4;

  return v1;
}

- (void)hu_configureCheckmarkForImageView:()HUCheckmarkAdditions checked:
{
  if (a4)
  {
    v4 = MEMORY[0x277D755B8];
    v5 = a3;
    v6 = [v4 hu_cellCheckmarkImage];
    [v5 setImage:v6];

    v8 = [MEMORY[0x277D755B8] hu_cellCheckmarkImage];
    [v5 setHighlightedImage:?];
  }

  else
  {
    v8 = a3;
    v7 = [objc_opt_class() hu_emptyCheckmarkPlaceholderImage];
    [v8 setImage:v7];

    [v8 setHighlightedImage:0];
  }
}

@end
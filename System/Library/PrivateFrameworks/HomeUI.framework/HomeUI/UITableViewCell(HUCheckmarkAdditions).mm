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
    hu_cellCheckmarkImage = [v4 hu_cellCheckmarkImage];
    [v5 setImage:hu_cellCheckmarkImage];

    hu_cellCheckmarkImage2 = [MEMORY[0x277D755B8] hu_cellCheckmarkImage];
    [v5 setHighlightedImage:?];
  }

  else
  {
    hu_cellCheckmarkImage2 = a3;
    hu_emptyCheckmarkPlaceholderImage = [objc_opt_class() hu_emptyCheckmarkPlaceholderImage];
    [hu_cellCheckmarkImage2 setImage:hu_emptyCheckmarkPlaceholderImage];

    [hu_cellCheckmarkImage2 setHighlightedImage:0];
  }
}

@end
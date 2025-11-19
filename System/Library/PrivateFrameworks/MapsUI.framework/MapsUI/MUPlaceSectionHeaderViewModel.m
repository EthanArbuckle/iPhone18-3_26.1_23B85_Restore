@interface MUPlaceSectionHeaderViewModel
+ (id)viewModelForTitle:(id)a3 attribution:(id)a4 target:(id)a5 action:(SEL)a6;
- (MUPlaceSectionHeaderViewModel)initWithTitleString:(id)a3 subtitleString:(id)a4 showSeeMore:(BOOL)a5;
- (id)target;
@end

@implementation MUPlaceSectionHeaderViewModel

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (MUPlaceSectionHeaderViewModel)initWithTitleString:(id)a3 subtitleString:(id)a4 showSeeMore:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MUPlaceSectionHeaderViewModel;
  v11 = [(MUPlaceSectionHeaderViewModel *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_titleString, a3);
    objc_storeStrong(&v12->_subtitleString, a4);
    if (v5)
    {
      v13 = _MULocalizedStringFromThisBundle(@"More [Placecard Section Header]");
      seeMoreButtonText = v12->_seeMoreButtonText;
      v12->_seeMoreButtonText = v13;
    }
  }

  return v12;
}

+ (id)viewModelForTitle:(id)a3 attribution:(id)a4 target:(id)a5 action:(SEL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 attributionURLs];
  if ([v12 count])
  {
    v13 = [v10 providerName];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:v9];
      v16 = MEMORY[0x1E696AEC0];
      v17 = _MULocalizedStringFromThisBundle(@"Open <provider> [Placecard]");
      v18 = [v10 providerName];
      v19 = [v16 stringWithFormat:v17, v18];
      [(MUPlaceSectionHeaderViewModel *)v15 setSeeMoreButtonText:v19];

      [(MUPlaceSectionHeaderViewModel *)v15 setTarget:v11 selector:a6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:v9 showSeeMore:0];
LABEL_6:

  return v15;
}

@end
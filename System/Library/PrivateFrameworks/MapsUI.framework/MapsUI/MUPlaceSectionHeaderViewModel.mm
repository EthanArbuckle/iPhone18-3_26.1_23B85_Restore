@interface MUPlaceSectionHeaderViewModel
+ (id)viewModelForTitle:(id)title attribution:(id)attribution target:(id)target action:(SEL)action;
- (MUPlaceSectionHeaderViewModel)initWithTitleString:(id)string subtitleString:(id)subtitleString showSeeMore:(BOOL)more;
- (id)target;
@end

@implementation MUPlaceSectionHeaderViewModel

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (MUPlaceSectionHeaderViewModel)initWithTitleString:(id)string subtitleString:(id)subtitleString showSeeMore:(BOOL)more
{
  moreCopy = more;
  stringCopy = string;
  subtitleStringCopy = subtitleString;
  v16.receiver = self;
  v16.super_class = MUPlaceSectionHeaderViewModel;
  v11 = [(MUPlaceSectionHeaderViewModel *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_titleString, string);
    objc_storeStrong(&v12->_subtitleString, subtitleString);
    if (moreCopy)
    {
      v13 = _MULocalizedStringFromThisBundle(@"More [Placecard Section Header]");
      seeMoreButtonText = v12->_seeMoreButtonText;
      v12->_seeMoreButtonText = v13;
    }
  }

  return v12;
}

+ (id)viewModelForTitle:(id)title attribution:(id)attribution target:(id)target action:(SEL)action
{
  titleCopy = title;
  attributionCopy = attribution;
  targetCopy = target;
  attributionURLs = [attributionCopy attributionURLs];
  if ([attributionURLs count])
  {
    providerName = [attributionCopy providerName];
    v14 = [providerName length];

    if (v14)
    {
      v15 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:titleCopy];
      v16 = MEMORY[0x1E696AEC0];
      v17 = _MULocalizedStringFromThisBundle(@"Open <provider> [Placecard]");
      providerName2 = [attributionCopy providerName];
      v19 = [v16 stringWithFormat:v17, providerName2];
      [(MUPlaceSectionHeaderViewModel *)v15 setSeeMoreButtonText:v19];

      [(MUPlaceSectionHeaderViewModel *)v15 setTarget:targetCopy selector:action];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = [[MUPlaceSectionHeaderViewModel alloc] initWithTitleString:titleCopy showSeeMore:0];
LABEL_6:

  return v15;
}

@end
@interface FCSubscribedTags
- (FCSubscribedTags)initWithSubscribedTags:(id)tags mutedTags:(id)mutedTags autoFavoriteTags:(id)favoriteTags groupableTags:(id)groupableTags;
@end

@implementation FCSubscribedTags

- (FCSubscribedTags)initWithSubscribedTags:(id)tags mutedTags:(id)mutedTags autoFavoriteTags:(id)favoriteTags groupableTags:(id)groupableTags
{
  tagsCopy = tags;
  mutedTagsCopy = mutedTags;
  favoriteTagsCopy = favoriteTags;
  groupableTagsCopy = groupableTags;
  v22.receiver = self;
  v22.super_class = FCSubscribedTags;
  v14 = [(FCSubscribedTags *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x1E695E0F0];
    if (tagsCopy)
    {
      v17 = tagsCopy;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    [(FCSubscribedTags *)v14 setSubscribedTags:v17];
    if (mutedTagsCopy)
    {
      v18 = mutedTagsCopy;
    }

    else
    {
      v18 = v16;
    }

    [(FCSubscribedTags *)v15 setMutedTags:v18];
    if (favoriteTagsCopy)
    {
      v19 = favoriteTagsCopy;
    }

    else
    {
      v19 = v16;
    }

    [(FCSubscribedTags *)v15 setAutoFavoriteTags:v19];
    if (groupableTagsCopy)
    {
      v20 = groupableTagsCopy;
    }

    else
    {
      v20 = v16;
    }

    [(FCSubscribedTags *)v15 setGroupableTags:v20];
  }

  return v15;
}

@end
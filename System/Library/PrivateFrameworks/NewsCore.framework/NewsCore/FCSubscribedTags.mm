@interface FCSubscribedTags
- (FCSubscribedTags)initWithSubscribedTags:(id)a3 mutedTags:(id)a4 autoFavoriteTags:(id)a5 groupableTags:(id)a6;
@end

@implementation FCSubscribedTags

- (FCSubscribedTags)initWithSubscribedTags:(id)a3 mutedTags:(id)a4 autoFavoriteTags:(id)a5 groupableTags:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = FCSubscribedTags;
  v14 = [(FCSubscribedTags *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v16 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    [(FCSubscribedTags *)v14 setSubscribedTags:v17];
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v16;
    }

    [(FCSubscribedTags *)v15 setMutedTags:v18];
    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = v16;
    }

    [(FCSubscribedTags *)v15 setAutoFavoriteTags:v19];
    if (v13)
    {
      v20 = v13;
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
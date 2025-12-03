@interface SUUIReviewsFacebookView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIReviewsFacebookView)initWithClientContext:(id)context;
- (UIEdgeInsets)contentInsets;
- (id)_composedStringForNames:(id)names userLiked:(BOOL)liked;
- (void)_reloadFriendNamesLabel;
- (void)_reloadLikeButtonState;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setFriendNames:(id)names;
- (void)setUserLiked:(BOOL)liked;
@end

@implementation SUUIReviewsFacebookView

- (SUUIReviewsFacebookView)initWithClientContext:(id)context
{
  contextCopy = context;
  v40.receiver = self;
  v40.super_class = SUUIReviewsFacebookView;
  v6 = [(SUUIReviewsFacebookView *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = v7->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    v12 = v7->_titleLabel;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v13 = ;
    [(UILabel *)v12 setText:v13];

    v14 = v7->_titleLabel;
    secondaryTextColor = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)v14 setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v14 setTextColor:blackColor];
    }

    [(SUUIReviewsFacebookView *)v7 addSubview:v7->_titleLabel];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    friendsLabel = v7->_friendsLabel;
    v7->_friendsLabel = v17;

    [(UILabel *)v7->_friendsLabel setNumberOfLines:5];
    v19 = v7->_friendsLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19 setBackgroundColor:clearColor];

    [(SUUIReviewsFacebookView *)v7 addSubview:v7->_friendsLabel];
    [(SUUIReviewsFacebookView *)v7 _reloadFriendNamesLabel];
    v21 = objc_alloc_init(MEMORY[0x277D75220]);
    likeButton = v7->_likeButton;
    v7->_likeButton = v21;

    v23 = v7->_likeButton;
    secondaryTextColor2 = [(SUUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UIButton *)v23 setTitleColor:secondaryTextColor2 forState:0];
    }

    else
    {
      tintColor = [(SUUIReviewsFacebookView *)v7 tintColor];
      [(UIButton *)v23 setTitleColor:tintColor forState:0];
    }

    [(UIButton *)v7->_likeButton setShowsTouchWhenHighlighted:1];
    titleLabel = [(UIButton *)v7->_likeButton titleLabel];
    v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v27];

    [(SUUIReviewsFacebookView *)v7 addSubview:v7->_likeButton];
    [(SUUIReviewsFacebookView *)v7 _reloadLikeButtonState];
    v28 = objc_alloc(MEMORY[0x277D755E8]);
    v29 = MEMORY[0x277D755B8];
    v30 = SUUIBundle();
    v31 = [v29 imageNamed:@"ProductViewReviewsFacebookIcon" inBundle:v30];
    v32 = [v28 initWithImage:v31];
    logoImageView = v7->_logoImageView;
    v7->_logoImageView = v32;

    [(SUUIReviewsFacebookView *)v7 addSubview:v7->_logoImageView];
    v34 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v34;

    v36 = v7->_separatorView;
    primaryTextColor = [(SUUIColorScheme *)v7->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)v36 setBackgroundColor:primaryTextColor];
    }

    else
    {
      v38 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)v36 setBackgroundColor:v38];
    }

    [(SUUIReviewsFacebookView *)v7 addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v15 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    titleLabel = self->_titleLabel;
    secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    separatorView = self->_separatorView;
    primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)separatorView setBackgroundColor:primaryTextColor];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)separatorView setBackgroundColor:v11];
    }

    likeButton = self->_likeButton;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UIButton *)likeButton setTitleColor:secondaryTextColor2 forState:0];
    }

    else
    {
      tintColor = [(SUUIReviewsFacebookView *)self tintColor];
      [(UIButton *)likeButton setTitleColor:tintColor forState:0];
    }

    [(SUUIReviewsFacebookView *)self _reloadFriendNamesLabel];
    schemeCopy = v15;
  }
}

- (void)setFriendNames:(id)names
{
  if (self->_friendNames != names)
  {
    v4 = [names copy];
    friendNames = self->_friendNames;
    self->_friendNames = v4;

    [(SUUIReviewsFacebookView *)self _reloadFriendNamesLabel];
  }
}

- (void)setUserLiked:(BOOL)liked
{
  if (self->_userLiked != liked)
  {
    self->_userLiked = liked;
    [(SUUIReviewsFacebookView *)self _reloadLikeButtonState];
    [(SUUIReviewsFacebookView *)self _reloadFriendNamesLabel];

    [(SUUIReviewsFacebookView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIReviewsFacebookView *)self bounds];
  v44 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(UIImageView *)self->_logoImageView frame];
  v42 = v10;
  titleLabel = self->_titleLabel;
  v12 = 15.0;
  v13 = 15.0;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeToFit];
    [(UILabel *)self->_titleLabel frame];
    v15 = v14;
    [(UILabel *)self->_titleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 11.0, v7 + -30.0, v14, v44, v5, v7, v9)];
    v46.origin.x = 15.0;
    v46.origin.y = 11.0;
    v46.size.width = v7 + -30.0;
    v46.size.height = v15;
    v13 = CGRectGetMaxY(v46) + -4.0 + 10.0;
  }

  logoImageView = self->_logoImageView;
  if (logoImageView)
  {
    [(UIImageView *)logoImageView frame];
    v18 = v17;
    v20 = v19;
    [(UIImageView *)self->_logoImageView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v13, v17, v19, v44, v5, v7, v9)];
    v47.origin.x = 15.0;
    v47.origin.y = v13;
    v47.size.width = v18;
    v47.size.height = v20;
    v12 = CGRectGetMaxX(v47) + 10.0;
  }

  v21 = v7 + -15.0;
  likeButton = self->_likeButton;
  v23 = v7 + -15.0;
  if (likeButton)
  {
    v24 = [(UIButton *)likeButton imageForState:0];
    [(UIButton *)self->_likeButton sizeToFit];
    [(UIButton *)self->_likeButton frame];
    v43 = v9;
    v25 = v5;
    v27 = v26;
    titleLabel = [(UIButton *)self->_likeButton titleLabel];
    [titleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v30 = v29;
    [v24 size];
    v32 = v30 + v31 + 6.0;

    v33 = (v42 - v27) * 0.5;
    v34 = v13 + roundf(v33);
    [(UIButton *)self->_likeButton setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v21 - v32, v34, v32, v27, v44, v25, v7, v43)];
    v48.origin.x = v21 - v32;
    v48.origin.y = v34;
    v48.size.width = v32;
    v48.size.height = v27;
    v5 = v25;
    v9 = v43;
    v23 = CGRectGetMinX(v48) + -7.0;
  }

  if (self->_friendsLabel)
  {
    [(SUUIReviewsFacebookView *)self bringSubviewToFront:?];
    [(UILabel *)self->_friendsLabel frame];
    [(UILabel *)self->_friendsLabel sizeThatFits:v23 - v12, 1.79769313e308];
    [(UILabel *)self->_friendsLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12, v13 + -5.0, v35, v9 - v13 + -15.0 + 5.0 + 3.0, v44, v5, v7, v9)];
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v39 = 1.0 / v38;

    v40 = self->_separatorView;
    v41 = SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v9 - v39, v21, v39, v44, v5, v7, v9);

    [(UIView *)v40 setFrame:v41];
  }
}

- (void)setBackgroundColor:(id)color
{
  likeButton = self->_likeButton;
  colorCopy = color;
  [(UIButton *)likeButton setBackgroundColor:colorCopy];
  [(UIImageView *)self->_logoImageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIReviewsFacebookView;
  [(SUUIReviewsFacebookView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:fits.width, fits.height];
    v8 = v7 + -4.0 + -4.0 + 10.0 + 30.0;
  }

  else
  {
    v8 = 30.0;
  }

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  logoImageView = self->_logoImageView;
  v12 = v9;
  v13 = *MEMORY[0x277CBF3A8];
  if (logoImageView)
  {
    [(UIImageView *)logoImageView frame];
    v13 = v14;
    v12 = v15 + 2.0;
  }

  likeButton = self->_likeButton;
  if (likeButton)
  {
    titleLabel = [(UIButton *)likeButton titleLabel];
    [titleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v19 = v18;
    v9 = v20;

    v21 = [(UIButton *)self->_likeButton imageForState:0];
    [v21 size];
    v10 = v19 + v22 + 6.0;
  }

  friendsLabel = self->_friendsLabel;
  if (friendsLabel)
  {
    [(UILabel *)friendsLabel sizeThatFits:width + -30.0 - v13 + -10.0 + -7.0 - v10, height];
    v25 = v24 + -5.0 + -3.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (v12 >= v25)
  {
    v25 = v12;
  }

  if (v25 < v9)
  {
    v25 = v9;
  }

  v26 = v8 + v25;
  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (id)_composedStringForNames:(id)names userLiked:(BOOL)liked
{
  likedCopy = liked;
  namesCopy = names;
  v7 = [namesCopy count];
  v8 = v7;
  if (!likedCopy)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        clientContext = self->_clientContext;
        if (clientContext)
        {
          [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v25 = MEMORY[0x277CCACA8];
        firstObject = [namesCopy objectAtIndex:0];
        goto LABEL_50;
      }

      if (v7 == 3)
      {
        v12 = self->_clientContext;
        if (v12)
        {
          [(SUUIClientContext *)v12 localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v34 = MEMORY[0x277CCACA8];
        v17 = [namesCopy objectAtIndex:0];
        v28 = [namesCopy objectAtIndex:1];
        firstObject2 = [namesCopy objectAtIndex:2];
        [v34 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@%@" error:0, v17, v28, firstObject2];
        v33 = LABEL_43:;
LABEL_44:

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if (!v7)
      {
        v9 = self->_clientContext;
        if (v9)
        {
          v10 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
          goto LABEL_26;
        }

        v27 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
LABEL_46:
        v21 = [SUUIClientContext localizedStringForKey:v27 inBundles:0 inTable:@"ProductPage"];
        goto LABEL_47;
      }

      if (v7 == 1)
      {
        v11 = self->_clientContext;
        if (v11)
        {
          [(SUUIClientContext *)v11 localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inTable:@"ProductPage"];
        }

        else
        {
          [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v23 = MEMORY[0x277CCACA8];
        firstObject3 = [namesCopy objectAtIndex:0];
        goto LABEL_40;
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 2];
    v17 = [v15 stringFromNumber:v19];

    v20 = self->_clientContext;
    if (v20)
    {
      [(SUUIClientContext *)v20 localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v31 = MEMORY[0x277CCACA8];
    firstObject2 = [namesCopy objectAtIndex:0];
    v32 = [namesCopy objectAtIndex:1];
    v33 = [v31 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@%@" error:0, firstObject2, v32, v17];

    goto LABEL_44;
  }

  if (v7 == 2)
  {
    v14 = self->_clientContext;
    if (v14)
    {
      [(SUUIClientContext *)v14 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v15 = ;
    v25 = MEMORY[0x277CCACA8];
    firstObject = [namesCopy firstObject];
LABEL_50:
    v17 = firstObject;
    v28 = [namesCopy objectAtIndex:1];
    v33 = [v25 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v17, v28];
    goto LABEL_51;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = self->_clientContext;
      if (v9)
      {
        v10 = @"REVIEWS_FACEBOOK_YOU_LIKE";
LABEL_26:
        v21 = [(SUUIClientContext *)v9 localizedStringForKey:v10 inTable:@"ProductPage"];
LABEL_47:
        v33 = v21;
        goto LABEL_53;
      }

      v27 = @"REVIEWS_FACEBOOK_YOU_LIKE";
      goto LABEL_46;
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 1];
    v17 = [v15 stringFromNumber:v16];

    v18 = self->_clientContext;
    if (v18)
    {
      [(SUUIClientContext *)v18 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v29 = MEMORY[0x277CCACA8];
    firstObject2 = [namesCopy firstObject];
    [v29 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@" error:0, firstObject2, v17, v36];
    goto LABEL_43;
  }

  v13 = self->_clientContext;
  if (v13)
  {
    [(SUUIClientContext *)v13 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inTable:@"ProductPage"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inBundles:0 inTable:@"ProductPage"];
  }
  v15 = ;
  v23 = MEMORY[0x277CCACA8];
  firstObject3 = [namesCopy firstObject];
LABEL_40:
  v17 = firstObject3;
  v33 = [v23 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, firstObject3];
LABEL_52:

LABEL_53:

  return v33;
}

- (void)_reloadFriendNamesLabel
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setMaximumLineHeight:16.0];
  [v3 setMinimumLineHeight:16.0];
  [v3 setLineBreakMode:4];
  v13[0] = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v5 = *MEMORY[0x277D74118];
  v14[0] = v4;
  v14[1] = v3;
  v6 = *MEMORY[0x277D740C0];
  v13[1] = v5;
  v13[2] = v6;
  primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
  v8 = primaryTextColor;
  if (!primaryTextColor)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
  }

  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!primaryTextColor)
  {
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(SUUIReviewsFacebookView *)self _composedStringForNames:self->_friendNames userLiked:self->_userLiked];
  v12 = [v10 initWithString:v11 attributes:v9];

  [(UILabel *)self->_friendsLabel setAttributedText:v12];
  [(SUUIReviewsFacebookView *)self setNeedsLayout];
}

- (void)_reloadLikeButtonState
{
  likeButton = self->_likeButton;
  if (self->_userLiked)
  {
    [(UIButton *)self->_likeButton setImage:0 forState:0];
    v4 = self->_likeButton;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v11 = ;
    [(UIButton *)v4 setTitle:v11 forState:0];

    v12 = self->_likeButton;
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = SUUIBundle();
    v8 = [v6 imageNamed:@"ProductViewReviewsFacebookLikeIcon" inBundle:v7];
    [(UIButton *)likeButton setImage:v8 forState:0];

    v9 = self->_likeButton;
    v10 = self->_clientContext;
    if (v10)
    {
      [(SUUIClientContext *)v10 localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v17 = ;
    [(UIButton *)v9 setTitle:v17 forState:0];

    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
    v13 = 0.0;
    v14 = 6.0;
    if (ShouldReverseLayoutDirection)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 0.0;
    }

    if (ShouldReverseLayoutDirection)
    {
      v14 = 0.0;
    }

    v12 = self->_likeButton;
    v15 = 0.0;
  }

  [(UIButton *)v12 setTitleEdgeInsets:v13, v14, v15, v16];

  [(SUUIReviewsFacebookView *)self setNeedsLayout];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
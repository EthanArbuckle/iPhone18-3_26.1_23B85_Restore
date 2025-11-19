@interface MSTrackListLinkCellConfiguration
- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
@end

@implementation MSTrackListLinkCellConfiguration

- (id)colorForLabelAtIndex:(unint64_t)a3 withModifiers:(unint64_t)a4
{
  if ((a4 & 2) != 0)
  {
    return [MEMORY[0x277D75348] grayColor];
  }

  if (a4)
  {
    return [MEMORY[0x277D75348] whiteColor];
  }

  return [MEMORY[0x277D75348] blackColor];
}

- (void)reloadImages
{
  v3 = *MEMORY[0x277D7FEF0];
  if ([*(&self->super.super.super.super.super.isa + v3) itemDisplayType] == 10000 && (v4 = objc_msgSend(*(&self->super.super.super.super.super.isa + v3), "reviewStatistics"), objc_msgSend(v4, "numberOfUserRatings") >= 1))
  {
    v5 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEE0]);
    [v4 averageUserRating];
    v6 = [v5 ratingImageForRating:1 style:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D7FEC0];

  **(&self->super.super.super.super.super.isa + v7) = v6;
}

- (void)reloadLayoutInformation
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEE8]) + -5.0;
  v4 = **(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEC0]);
  v5 = MEMORY[0x277D7FEB8];
  if (v4)
  {
    v6 = *MEMORY[0x277D7FEB8];
    v7 = *(&self->super.super.super.super.super.isa + v6);
    [v4 size];
    *(v7 + 16) = v8;
    *(v7 + 24) = v9;
    v3 = v3 - ((*(&self->super.super.super.super.super.isa + v6))[2] + 6.0);
  }

  [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FEE0]) sizeForString:**(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FED8]) font:-[MSTrackListLinkCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 0), v3 + -48.0, 18.0}];
  v14.size.width = v10;
  v14.size.height = v11;
  v12 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D7FED0]);
  *v12 = xmmword_25ADD2090;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = *(&self->super.super.super.super.super.isa + *v5);
  v14.origin.x = 48.0;
  v14.origin.y = 13.0;
  *v13 = CGRectGetMaxX(v14) + 6.0;
  *(v13 + 8) = 0x402C000000000000;
}

- (void)reloadStrings
{
  v3 = *MEMORY[0x277D7FEF0];
  v4 = [*(&self->super.super.super.super.super.isa + v3) itemDisplayType];
  v5 = *(&self->super.super.super.super.super.isa + v3);
  if (v4 == 10000)
  {
    v6 = [v5 reviewStatistics];
    v7 = [v6 numberOfUserRatingsString];
    if ([v7 length])
    {
      goto LABEL_6;
    }

    [v6 numberOfUserRatings];
    v8 = SUCopyLocalizedReviewsStringForCount();
  }

  else
  {
    v8 = [v5 title];
  }

  v7 = v8;
LABEL_6:
  v9 = *MEMORY[0x277D7FED8];

  v10 = [v7 length];
  if (v10)
  {
    v10 = v7;
  }

  **(&self->super.super.super.super.super.isa + v9) = v10;
}

@end
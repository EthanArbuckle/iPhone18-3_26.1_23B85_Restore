@interface MSTrackListCellConfiguration
- ($3CC19D079FD0B010EE84973AA846B91B)position;
- (BOOL)showContentRating;
- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers;
- (id)fontForLabelAtIndex:(unint64_t)index;
- (void)drawBackgroundWithModifiers:(unint64_t)modifiers;
- (void)reloadImages;
- (void)reloadLayoutInformation;
- (void)reloadStrings;
- (void)setPosition:(id *)position;
@end

@implementation MSTrackListCellConfiguration

- (void)setPosition:(id *)position
{
  p_position = &self->_position;
  position = self->_position;
  v7 = *position;
  if ((SUPositionEqualToPosition() & 1) == 0)
  {
    v6 = *&position->var2;
    *&p_position->localIndex = *&position->var0;
    *&p_position->globalIndex = v6;
    [(SUCellConfiguration *)self setNeedsDisplay:1, *&v7.var0, *&v7.var2, *&position.localIndex, *&position.globalIndex];
  }
}

- (id)colorForLabelAtIndex:(unint64_t)index withModifiers:(unint64_t)modifiers
{
  modifiersCopy = modifiers;
  if ((modifiers & 2) != 0)
  {
    v7 = MEMORY[0x277D75348];
LABEL_8:

    return [v7 grayColor];
  }

  if (index == 4)
  {
    if ([(SUCellConfigurationView *)[(SUCellConfiguration *)self view] highlightsOnlyContentView])
    {
      result = [MEMORY[0x277D75348] blackColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    else
    {
      result = [MEMORY[0x277D75348] whiteColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    v8 = MEMORY[0x277D75348];
    goto LABEL_22;
  }

  if (index == 3)
  {
    if ([(SUCellConfigurationView *)[(SUCellConfiguration *)self view] highlightsOnlyContentView])
    {
      result = SUTableCellGetHighlightedTextColor();
      if (modifiersCopy)
      {
        return result;
      }
    }

    else
    {
      result = [MEMORY[0x277D75348] whiteColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    v8 = MEMORY[0x277D75348];
LABEL_22:

    return [v8 blackColor];
  }

  if (index - 1 <= 1)
  {
    if ([(SUCellConfigurationView *)[(SUCellConfiguration *)self view] highlightsOnlyContentView])
    {
      result = [MEMORY[0x277D75348] grayColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    else
    {
      result = [MEMORY[0x277D75348] whiteColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    v7 = MEMORY[0x277D75348];
    goto LABEL_8;
  }

  v9 = [objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEF0]) "contentRating")];
  highlightsOnlyContentView = [(SUCellConfigurationView *)[(SUCellConfiguration *)self view] highlightsOnlyContentView];
  if (v9)
  {
    if (highlightsOnlyContentView)
    {
      result = SUTableCellGetExplicitColor();
      if (modifiersCopy)
      {
        return result;
      }
    }

    else
    {
      result = [MEMORY[0x277D75348] whiteColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    return SUTableCellGetExplicitColor();
  }

  else
  {
    if (highlightsOnlyContentView)
    {
      result = SUTableCellGetCleanColor();
      if (modifiersCopy)
      {
        return result;
      }
    }

    else
    {
      result = [MEMORY[0x277D75348] whiteColor];
      if (modifiersCopy)
      {
        return result;
      }
    }

    return SUTableCellGetCleanColor();
  }
}

- (void)drawBackgroundWithModifiers:(unint64_t)modifiers
{
  [objc_msgSend(MEMORY[0x277D75348] colorWithWhite:0.899999976 alpha:{1.0), "set"}];
  *&v6.size.height = *(&self->super.super.super.super.super._context + *MEMORY[0x277D7FEE8]);
  v6.origin.x = 41.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  UIRectFill(v6);
  v5.receiver = self;
  v5.super_class = MSTrackListCellConfiguration;
  [(SUCellConfiguration *)&v5 drawBackgroundWithModifiers:modifiers];
}

- (id)fontForLabelAtIndex:(unint64_t)index
{
  if (index - 1 < 2)
  {
    v8 = MEMORY[0x277D74300];

    return [v8 systemFontOfSize:14.0];
  }

  else
  {
    if (index == 3)
    {
      v5 = MEMORY[0x277D74300];
      v6 = 14.0;

      return [v5 boldSystemFontOfSize:v6];
    }

    if (index == 4)
    {
      v5 = MEMORY[0x277D74300];
      v6 = 16.0;

      return [v5 boldSystemFontOfSize:v6];
    }

    v10 = v3;
    v11 = v4;
    v9.receiver = self;
    v9.super_class = MSTrackListCellConfiguration;
    return [(SUMediaItemCellConfiguration *)&v9 fontForLabelAtIndex:?];
  }
}

- (void)reloadImages
{
  v4.receiver = self;
  v4.super_class = MSTrackListCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v4 reloadImages];
  v3 = *MEMORY[0x277D7FEC8];

  (*(&self->super.super.super.super.super.super.isa + v3))[1] = 0;
}

- (void)reloadLayoutInformation
{
  v57.receiver = self;
  v57.super_class = MSTrackListCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v57 reloadLayoutInformation];
  v3 = *MEMORY[0x277D7FED8];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  v5 = v4[4];
  v6 = MEMORY[0x277D7FED0];
  if (v5)
  {
    [v5 _legacy_sizeWithFont:-[MSTrackListCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 4), 41.0, 19.0}];
    v7 = *(&self->super.super.super.super.super.super.isa + *v6);
    *(v7 + 128) = floor((41.0 - v8) * 0.5);
    *(v7 + 136) = 0x4026000000000000;
    *(v7 + 144) = v8;
    *(v7 + 152) = v9;
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v10 = v4[1];
  v11 = MEMORY[0x277D7FEE8];
  if (v10)
  {
    [v10 _legacy_sizeWithFont:-[MSTrackListCellConfiguration fontForLabelAtIndex:](self constrainedToSize:{"fontForLabelAtIndex:", 1), *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEE8]), 17.0}];
    v12 = *(&self->super.super.super.super.super.super.isa + *v6);
    *(v12 + 48) = v13;
    *(v12 + 56) = v14;
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v15 = v4[3];
  if (v15)
  {
    v16 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEE0]);
    v17 = [(MSTrackListCellConfiguration *)self fontForLabelAtIndex:3];
    v18 = *v11;
    [v16 sizeForString:v15 font:v17 constrainedToSize:{*(&self->super.super.super.super.super.super.isa + v18), 18.0}];
    v20 = v19;
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  else
  {
    v20 = *MEMORY[0x277CBF3A8];
    v18 = *v11;
  }

  v21 = *(&self->super.super.super.super.super.super.isa + v18);
  v22 = v21 + -5.0;
  if (v4[2])
  {
    v23 = *v6;
    v24 = v21 + -5.0;
    if (v4[1])
    {
      v25 = *(&self->super.super.super.super.super.super.isa + v23);
      v26 = *(v25 + 48);
      v27 = *(v25 + 56);
      v28 = v22 - v26;
      if (v20 + 48.0 + 2.0 < v22 - v26)
      {
        v28 = v20 + 48.0 + 2.0;
      }

      *(v25 + 32) = v28;
      *(v25 + 40) = 0x4014000000000000;
      v29 = 5.0;
      v24 = CGRectGetMinX(*&v28) + -2.0;
      v4 = *(&self->super.super.super.super.super.super.isa + v3);
    }

    v30 = self + v23;
    v31 = *v30;
    *(v31 + 96) = xmmword_25ADD2080;
    *(v31 + 112) = v24 + -48.0;
    *(v31 + 120) = 0x4032000000000000;
    if (*v4)
    {
      v58.size.width = *(v31 + 16);
      v58.origin.x = v22 - v58.size.width;
      v58.origin.y = *(v31 + 8) + 25.0;
      *v31 = v22 - v58.size.width;
      *(v31 + 8) = v58.origin.y;
      v58.size.height = *(v31 + 24);
      v22 = CGRectGetMinX(v58) + -6.0;
    }

    v32 = (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEC0]))[1];
    v33 = 21.0;
    if (v32)
    {
      v34 = *MEMORY[0x277D7FEB8];
      v35 = *(&self->super.super.super.super.super.super.isa + v34);
      [v32 size];
      *(v35 + 48) = v36;
      *(v35 + 56) = v37;
      v38 = *(&self->super.super.super.super.super.super.isa + v34);
      v59.size.width = *(v38 + 48);
      v59.size.height = *(v38 + 56);
      v59.origin.x = v22 - v59.size.width;
      *(v38 + 32) = v22 - v59.size.width;
      *(v38 + 40) = 0x4038000000000000;
      v59.origin.y = 24.0;
      v22 = CGRectGetMinX(v59) + -5.0;
    }

    v39 = 88;
    v40 = 80;
    v41 = 72;
    v42 = 64;
  }

  else
  {
    if (*v4)
    {
      v43 = *(&self->super.super.super.super.super.super.isa + *v6);
      v60.size.width = v43[2];
      v60.origin.x = v22 - v60.size.width;
      v60.origin.y = v43[1] + 17.0;
      *v43 = v22 - v60.size.width;
      v43[1] = v60.origin.y;
      v60.size.height = v43[3];
      v22 = CGRectGetMinX(v60) + -6.0;
    }

    v44 = (*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEC0]))[1];
    if (v44)
    {
      v45 = *MEMORY[0x277D7FEB8];
      v46 = *(&self->super.super.super.super.super.super.isa + v45);
      [v44 size];
      *(v46 + 48) = v47;
      *(v46 + 56) = v48;
      v49 = *(&self->super.super.super.super.super.super.isa + v45);
      v61.size.width = *(v49 + 48);
      v61.size.height = *(v49 + 56);
      v61.origin.x = v22 - v61.size.width;
      *(v49 + 32) = v22 - v61.size.width;
      *(v49 + 40) = 0x4030000000000000;
      v61.origin.y = 16.0;
      v22 = CGRectGetMinX(v61) + -5.0;
    }

    v50 = *v6;
    if ((*(&self->super.super.super.super.super.super.isa + v3))[1])
    {
      v51 = *(&self->super.super.super.super.super.super.isa + v50);
      v52 = *(v51 + 48);
      v53 = *(v51 + 56);
      v54 = v22 - v52;
      if (v20 + 48.0 + 2.0 < v22 - v52)
      {
        v54 = v20 + 48.0 + 2.0;
      }

      *(v51 + 32) = v54;
      *(v51 + 40) = 0x402A000000000000;
      v55 = 13.0;
      v22 = CGRectGetMinX(*&v54) + -2.0;
    }

    v30 = self + v50;
    v33 = 13.0;
    v39 = 120;
    v40 = 112;
    v41 = 104;
    v42 = 96;
  }

  v56 = *v30;
  *(v56 + v42) = 0x4048000000000000;
  *(v56 + v41) = v33;
  *(v56 + v40) = v22 + -48.0;
  *(v56 + v39) = 0x4032000000000000;
}

- (void)reloadStrings
{
  v20.receiver = self;
  v20.super_class = MSTrackListCellConfiguration;
  [(SUMediaItemCellConfiguration *)&v20 reloadStrings];
  v3 = *MEMORY[0x277D7FEF0];
  title = [*(&self->super.super.super.super.super.super.isa + v3) title];
  v5 = *MEMORY[0x277D7FED8];

  v6 = [title length];
  if (v6)
  {
    v6 = title;
  }

  (*(&self->super.super.super.super.super.super.isa + v5))[3] = v6;
  if (![*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEE0]) showSubtitle])
  {
    v9 = 0;
    goto LABEL_13;
  }

  itemType = [*(&self->super.super.super.super.super.super.isa + v3) itemType];
  if (itemType == 11)
  {
    goto LABEL_7;
  }

  if (itemType == 1009)
  {
    humanReadableDescription = [*(&self->super.super.super.super.super.super.isa + v3) humanReadableDescription];
LABEL_11:
    v8 = humanReadableDescription;
    goto LABEL_12;
  }

  if (itemType != 1007)
  {
    humanReadableDescription = [*(&self->super.super.super.super.super.super.isa + v3) artistName];
    goto LABEL_11;
  }

LABEL_7:
  v8 = [*(&self->super.super.super.super.super.super.isa + v3) copyReleaseDateStringWithStyle:3];
LABEL_12:
  v9 = v8;
LABEL_13:

  v11 = [v9 length];
  if (v11)
  {
    v11 = v9;
  }

  (*(&self->super.super.super.super.super.super.isa + v5))[2] = v11;

  defaultStoreOffer = [*(&self->super.super.super.super.super.super.isa + v3) defaultStoreOffer];
  v13 = defaultStoreOffer;
  if (defaultStoreOffer)
  {
    if ([objc_msgSend(defaultStoreOffer "offerMedia")] < 1)
    {
      v13 = 0;
    }

    else
    {
      [objc_msgSend(v13 "offerMedia")];
      v14 = SUCopyProgressStringForSeconds();
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v14];
    }
  }

  v15 = [v13 length];
  if (v15)
  {
    v15 = v13;
  }

  (*(&self->super.super.super.super.super.super.isa + v5))[1] = v15;
  v16 = *(&self->super.super.super.super.super.super.isa + v3);
  if (v16)
  {
    v17 = [v16 integerValueForProperty:@"track-number"];
    if (!v17)
    {
      v17 = self->_position.localIndex + 1;
    }

    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 length];
  if (v19)
  {
    v19 = v18;
  }

  (*(&self->super.super.super.super.super.super.isa + v5))[4] = v19;
}

- (BOOL)showContentRating
{
  v5.receiver = self;
  v5.super_class = MSTrackListCellConfiguration;
  showContentRating = [(SUMediaItemCellConfiguration *)&v5 showContentRating];
  if (showContentRating)
  {
    LOBYTE(showContentRating) = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D7FEE0]) shouldHideContentRating] ^ 1;
  }

  return showContentRating;
}

- ($3CC19D079FD0B010EE84973AA846B91B)position
{
  v3 = *&self[4].var3;
  *&retstr->var0 = *&self[4].var1;
  *&retstr->var2 = v3;
  return self;
}

@end
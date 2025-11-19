@interface _ExpandedMessageListCellLayoutValues
- (double)_heightWithNumberOfSummaryLines:(int64_t)a3 isAvatarHidden:(BOOL)a4;
- (double)defaultRowHeight;
- (double)topPadding;
- (id)addressFont;
- (id)backgroundColorForSelectedState:(unint64_t)a3 disclosureEnabled:(BOOL)a4;
- (id)subjectFont;
- (int64_t)linesOfSummaryForCompactHeight:(BOOL)a3;
@end

@implementation _ExpandedMessageListCellLayoutValues

- (double)topPadding
{
  result = self->super._topPadding;
  if (result == 2.22507386e-308)
  {
    if (MUISolariumFeatureEnabled())
    {
      self->super._topPadding = 12.0;
      return 12.0;
    }

    else
    {
      v4 = [(_ExpandedMessageListCellLayoutValues *)self addressFont];
      [v4 _bodyLeading];
      v6 = v5;
      [(MessageListCellLayoutValues *)self addressCapHeight];
      self->super._topPadding = round(v6 - v7);

      return self->super._topPadding;
    }
  }

  return result;
}

- (id)subjectFont
{
  subjectFont = self->super._subjectFont;
  if (!subjectFont)
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    v5 = self->super._subjectFont;
    self->super._subjectFont = v4;

    subjectFont = self->super._subjectFont;
  }

  return subjectFont;
}

- (id)addressFont
{
  addressFont = self->super._addressFont;
  if (!addressFont)
  {
    v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v5 = self->super._addressFont;
    self->super._addressFont = v4;

    addressFont = self->super._addressFont;
  }

  return addressFont;
}

- (id)backgroundColorForSelectedState:(unint64_t)a3 disclosureEnabled:(BOOL)a4
{
  if (a3 == 1)
  {
    [MEMORY[0x277D75348] mailCellSelectionStateColorForInterfaceLevel:{-[UITraitCollection userInterfaceLevel](self->super._traitCollection, "userInterfaceLevel", 1, a4)}];
  }

  else
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }
  v4 = ;

  return v4;
}

- (double)_heightWithNumberOfSummaryLines:(int64_t)a3 isAvatarHidden:(BOOL)a4
{
  if (MUISolariumFeatureEnabled())
  {
    [(_ExpandedMessageListCellLayoutValues *)self topPadding];
    [(MessageListCellLayoutValues *)self addressCapHeight];
    v7 = [(MessageListCellLayoutValues *)self summaryFont];
    [v7 lineHeight];

    if (a3 >= 2)
    {
      v8 = [(MessageListCellLayoutValues *)self summaryFont];
      [v8 _bodyLeading];
    }

    [(MessageListCellLayoutValues *)self bottomPadding];
    UIRoundToViewScale();
    v10 = v9;
    if (!a4)
    {
      [(_ExpandedMessageListCellLayoutValues *)self topPadding];
      [(MessageListCellLayoutValues *)self avatarSize];
      [(MessageListCellLayoutValues *)self bottomPadding];
      UIRoundToViewScale();
      if (v10 < v11)
      {
        return v11;
      }
    }

    return v10;
  }

  else
  {
    v13 = [(_ExpandedMessageListCellLayoutValues *)self addressFont];
    [v13 _bodyLeading];

    v14 = [(MessageListCellLayoutValues *)self summaryFont];
    [v14 _bodyLeading];

    UIRoundToViewScale();
  }

  return result;
}

- (double)defaultRowHeight
{
  result = self->super._defaultRowHeight;
  if (result == 2.22507386e-308)
  {
    v4 = [(_ExpandedMessageListCellLayoutValues *)self linesOfSummaryForCompactHeight:0];
    v5 = [MEMORY[0x277CBEBD0] em_userDefaults];
    -[_ExpandedMessageListCellLayoutValues _heightWithNumberOfSummaryLines:isAvatarHidden:](self, "_heightWithNumberOfSummaryLines:isAvatarHidden:", v4, [v5 BOOLForKey:*MEMORY[0x277D06C88]]);
    self->super._defaultRowHeight = v6;

    return self->super._defaultRowHeight;
  }

  return result;
}

- (int64_t)linesOfSummaryForCompactHeight:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  v6 = [MEMORY[0x277CBEBD0] em_linesOfPreview];
  v7 = 2;
  if (v6 > 2)
  {
    v7 = v6;
  }

  return v7 - 1;
}

@end
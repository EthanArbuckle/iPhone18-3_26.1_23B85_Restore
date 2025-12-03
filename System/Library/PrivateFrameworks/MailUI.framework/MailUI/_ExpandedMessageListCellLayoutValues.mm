@interface _ExpandedMessageListCellLayoutValues
- (double)_heightWithNumberOfSummaryLines:(int64_t)lines isAvatarHidden:(BOOL)hidden;
- (double)defaultRowHeight;
- (double)topPadding;
- (id)addressFont;
- (id)backgroundColorForSelectedState:(unint64_t)state disclosureEnabled:(BOOL)enabled;
- (id)subjectFont;
- (int64_t)linesOfSummaryForCompactHeight:(BOOL)height;
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
      addressFont = [(_ExpandedMessageListCellLayoutValues *)self addressFont];
      [addressFont _bodyLeading];
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

- (id)backgroundColorForSelectedState:(unint64_t)state disclosureEnabled:(BOOL)enabled
{
  if (state == 1)
  {
    [MEMORY[0x277D75348] mailCellSelectionStateColorForInterfaceLevel:{-[UITraitCollection userInterfaceLevel](self->super._traitCollection, "userInterfaceLevel", 1, enabled)}];
  }

  else
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }
  v4 = ;

  return v4;
}

- (double)_heightWithNumberOfSummaryLines:(int64_t)lines isAvatarHidden:(BOOL)hidden
{
  if (MUISolariumFeatureEnabled())
  {
    [(_ExpandedMessageListCellLayoutValues *)self topPadding];
    [(MessageListCellLayoutValues *)self addressCapHeight];
    summaryFont = [(MessageListCellLayoutValues *)self summaryFont];
    [summaryFont lineHeight];

    if (lines >= 2)
    {
      summaryFont2 = [(MessageListCellLayoutValues *)self summaryFont];
      [summaryFont2 _bodyLeading];
    }

    [(MessageListCellLayoutValues *)self bottomPadding];
    UIRoundToViewScale();
    v10 = v9;
    if (!hidden)
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
    addressFont = [(_ExpandedMessageListCellLayoutValues *)self addressFont];
    [addressFont _bodyLeading];

    summaryFont3 = [(MessageListCellLayoutValues *)self summaryFont];
    [summaryFont3 _bodyLeading];

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
    em_userDefaults = [MEMORY[0x277CBEBD0] em_userDefaults];
    -[_ExpandedMessageListCellLayoutValues _heightWithNumberOfSummaryLines:isAvatarHidden:](self, "_heightWithNumberOfSummaryLines:isAvatarHidden:", v4, [em_userDefaults BOOLForKey:*MEMORY[0x277D06C88]]);
    self->super._defaultRowHeight = v6;

    return self->super._defaultRowHeight;
  }

  return result;
}

- (int64_t)linesOfSummaryForCompactHeight:(BOOL)height
{
  if (height)
  {
    return 1;
  }

  em_linesOfPreview = [MEMORY[0x277CBEBD0] em_linesOfPreview];
  v7 = 2;
  if (em_linesOfPreview > 2)
  {
    v7 = em_linesOfPreview;
  }

  return v7 - 1;
}

@end
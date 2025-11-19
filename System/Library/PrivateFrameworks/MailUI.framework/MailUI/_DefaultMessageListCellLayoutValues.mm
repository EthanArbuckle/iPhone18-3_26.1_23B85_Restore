@interface _DefaultMessageListCellLayoutValues
- (double)compactRowHeight;
- (double)defaultRowHeight;
- (double)topPadding;
- (id)addressFont;
- (id)backgroundColorForSelectedState:(unint64_t)a3 disclosureEnabled:(BOOL)a4;
- (id)subjectFont;
- (int64_t)linesOfSummaryForCompactHeight:(BOOL)a3;
@end

@implementation _DefaultMessageListCellLayoutValues

- (id)addressFont
{
  addressFont = self->super._addressFont;
  if (!addressFont)
  {
    v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:2 options:0];
    v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
    v6 = self->super._addressFont;
    self->super._addressFont = v5;

    addressFont = self->super._addressFont;
  }

  return addressFont;
}

- (id)subjectFont
{
  subjectFont = self->super._subjectFont;
  if (!subjectFont)
  {
    v4 = *MEMORY[0x277D769D8];
    v5 = [(_DefaultMessageListCellLayoutValues *)self linesOfSummaryForCompactHeight:0];
    v6 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    if (!v5 && (([*MEMORY[0x277D76858] isEqualToString:v6] & 1) != 0 || objc_msgSend(*MEMORY[0x277D76830], "isEqualToString:", v6)))
    {
      v7 = *MEMORY[0x277D769E0];

      v4 = v7;
    }

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:v4];
    v9 = self->super._subjectFont;
    self->super._subjectFont = v8;

    subjectFont = self->super._subjectFont;
  }

  return subjectFont;
}

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
      v4 = [(MessageListCellLayoutValues *)self summaryFont];
      [v4 _bodyLeading];
      UIRoundToViewScale();
      self->super._topPadding = v5;

      return self->super._topPadding;
    }
  }

  return result;
}

- (double)defaultRowHeight
{
  result = self->super._defaultRowHeight;
  if (result == 2.22507386e-308)
  {
    [(MessageListCellLayoutValues *)self heightWithNumberOfSummaryLines:[(_DefaultMessageListCellLayoutValues *)self linesOfSummaryForCompactHeight:0] isAvatarHidden:[(MessageListCellLayoutValues *)self isAvatarHidden]];
    self->super._defaultRowHeight = result;
  }

  return result;
}

- (id)backgroundColorForSelectedState:(unint64_t)a3 disclosureEnabled:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277D75348];
    if (a3 != 1)
    {
      v5 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
LABEL_12:
      a2 = v5;
      goto LABEL_13;
    }

LABEL_10:
    v5 = [v4 mailCellSelectionStateColorForInterfaceLevel:{-[UITraitCollection userInterfaceLevel](self->super._traitCollection, "userInterfaceLevel")}];
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v5 = [MEMORY[0x277D75348] quaternaryLabelColor];
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x277D75348];
    goto LABEL_10;
  }

  if (a3)
  {
    goto LABEL_13;
  }

  if ([(MessageListCellLayoutValues *)self supportsPopover])
  {
    v5 = [MEMORY[0x277D75348] mailPopoverBackgroundCellColor];
    goto LABEL_12;
  }

  a2 = 0;
LABEL_13:

  return a2;
}

- (double)compactRowHeight
{
  result = self->super._compactRowHeight;
  if (result == 2.22507386e-308)
  {
    [(MessageListCellLayoutValues *)self heightWithNumberOfSummaryLines:0 isAvatarHidden:[(MessageListCellLayoutValues *)self isAvatarHidden]];
    self->super._compactRowHeight = result;
  }

  return result;
}

- (int64_t)linesOfSummaryForCompactHeight:(BOOL)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [MEMORY[0x277CBEBD0] em_linesOfPreview];
  }
}

@end
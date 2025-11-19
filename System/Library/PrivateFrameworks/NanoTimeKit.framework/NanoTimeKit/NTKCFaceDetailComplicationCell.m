@interface NTKCFaceDetailComplicationCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailComplicationCell)initWithSlot:(id)a3 dateSlot:(BOOL)a4 isRichSlot:(BOOL)a5 inFace:(id)a6;
- (id)_traitCollectionAdjustedIfNeeded;
- (void)_updateDetailText;
- (void)_updateLabelFonts;
- (void)_updateState;
- (void)setActive:(BOOL)a3;
- (void)setComplication:(id)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation NTKCFaceDetailComplicationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailComplicationCell)initWithSlot:(id)a3 dateSlot:(BOOL)a4 isRichSlot:(BOOL)a5 inFace:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailComplicationCell;
  v12 = [(NTKCDetailTableViewCell *)&v18 initWithStyle:1];
  if (v12)
  {
    v13 = [v10 copy];
    slot = v12->_slot;
    v12->_slot = v13;

    v12->_dateSlot = a4;
    v12->_isRichSlot = a5;
    [(NTKCFaceDetailComplicationCell *)v12 setEnabled:1];
    v15 = [v11 displayNameForComplicationSlot:v12->_slot];
    v16 = [(NTKCFaceDetailComplicationCell *)v12 textLabel];
    [v16 setText:v15];

    [(NTKCDetailTableViewCell *)v12 setShowsSeparator:1];
    [(NTKCDetailTableViewCell *)v12 setIgnoresRTLCorrection:1];
    [(NTKCFaceDetailComplicationCell *)v12 setAccessoryType:1];
    [(NTKCFaceDetailComplicationCell *)v12 _updateLabelFonts];
  }

  return v12;
}

- (void)_updateLabelFonts
{
  v9 = [(NTKCFaceDetailComplicationCell *)self _traitCollectionAdjustedIfNeeded];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:v9];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v9];
  v5 = [(NTKCFaceDetailComplicationCell *)self textLabel];
  [v5 setFont:v3];

  v6 = [(NTKCFaceDetailComplicationCell *)self textLabel];
  [v6 sizeToFit];

  v7 = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [v7 setFont:v4];

  v8 = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [v8 sizeToFit];
}

- (id)_traitCollectionAdjustedIfNeeded
{
  v3 = [(NTKCFaceDetailComplicationCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    [(NTKCFaceDetailComplicationCell *)self traitCollection];
  }
  v6 = ;

  return v6;
}

- (void)setComplication:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_complication] & 1) == 0)
  {
    objc_storeStrong(&self->_complication, a3);
    [(NTKCFaceDetailComplicationCell *)self _updateDetailText];
  }
}

- (void)_updateDetailText
{
  if (self->_dateSlot && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [NTKDateComplicationController textForDateStyle:[(NTKComplication *)self->_complication dateStyle]];
  }

  else
  {
    v3 = [(NTKComplication *)self->_complication ntk_localizedNameWithOptions:1 forRichComplicationSlot:[(NTKCFaceDetailComplicationCell *)self isRichSlot]];
  }

  v5 = v3;
  v4 = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [v4 setText:v5];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(NTKCFaceDetailComplicationCell *)self _updateState];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v9 = v3;
    self->_enabled = a3;
    self->_active = 0;
    if (self->_enabled)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    [(NTKCFaceDetailComplicationCell *)self setSelectionStyle:v8, v4, v9, v5];

    [(NTKCFaceDetailComplicationCell *)self _updateState];
  }
}

- (void)_updateState
{
  if (self->_enabled)
  {
    v3 = [objc_opt_class() defaultTextColor];
    v4 = [(NTKCFaceDetailComplicationCell *)self textLabel];
    [v4 setTextColor:v3];

    if (self->_active)
    {
      [(NTKCFaceDetailComplicationCell *)self _activeColor];
    }

    else
    {
      [(NTKCFaceDetailComplicationCell *)self _inactiveColor];
    }
    v5 = ;
  }

  else
  {
    v6 = [(NTKCFaceDetailComplicationCell *)self _disabledColor];
    v7 = [(NTKCFaceDetailComplicationCell *)self textLabel];
    [v7 setTextColor:v6];

    v5 = [(NTKCFaceDetailComplicationCell *)self _disabledColor];
  }

  v9 = v5;
  v8 = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [v8 setTextColor:v9];
}

@end
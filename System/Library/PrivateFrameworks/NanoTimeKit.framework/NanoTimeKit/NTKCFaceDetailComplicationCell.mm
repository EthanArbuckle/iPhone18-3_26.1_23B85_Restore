@interface NTKCFaceDetailComplicationCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailComplicationCell)initWithSlot:(id)slot dateSlot:(BOOL)dateSlot isRichSlot:(BOOL)richSlot inFace:(id)face;
- (id)_traitCollectionAdjustedIfNeeded;
- (void)_updateDetailText;
- (void)_updateLabelFonts;
- (void)_updateState;
- (void)setActive:(BOOL)active;
- (void)setComplication:(id)complication;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation NTKCFaceDetailComplicationCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailComplicationCell)initWithSlot:(id)slot dateSlot:(BOOL)dateSlot isRichSlot:(BOOL)richSlot inFace:(id)face
{
  slotCopy = slot;
  faceCopy = face;
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailComplicationCell;
  v12 = [(NTKCDetailTableViewCell *)&v18 initWithStyle:1];
  if (v12)
  {
    v13 = [slotCopy copy];
    slot = v12->_slot;
    v12->_slot = v13;

    v12->_dateSlot = dateSlot;
    v12->_isRichSlot = richSlot;
    [(NTKCFaceDetailComplicationCell *)v12 setEnabled:1];
    v15 = [faceCopy displayNameForComplicationSlot:v12->_slot];
    textLabel = [(NTKCFaceDetailComplicationCell *)v12 textLabel];
    [textLabel setText:v15];

    [(NTKCDetailTableViewCell *)v12 setShowsSeparator:1];
    [(NTKCDetailTableViewCell *)v12 setIgnoresRTLCorrection:1];
    [(NTKCFaceDetailComplicationCell *)v12 setAccessoryType:1];
    [(NTKCFaceDetailComplicationCell *)v12 _updateLabelFonts];
  }

  return v12;
}

- (void)_updateLabelFonts
{
  _traitCollectionAdjustedIfNeeded = [(NTKCFaceDetailComplicationCell *)self _traitCollectionAdjustedIfNeeded];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
  textLabel = [(NTKCFaceDetailComplicationCell *)self textLabel];
  [textLabel setFont:v3];

  textLabel2 = [(NTKCFaceDetailComplicationCell *)self textLabel];
  [textLabel2 sizeToFit];

  detailTextLabel = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [detailTextLabel setFont:v4];

  detailTextLabel2 = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [detailTextLabel2 sizeToFit];
}

- (id)_traitCollectionAdjustedIfNeeded
{
  traitCollection = [(NTKCFaceDetailComplicationCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending)
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

- (void)setComplication:(id)complication
{
  complicationCopy = complication;
  if (([complicationCopy isEqual:self->_complication] & 1) == 0)
  {
    objc_storeStrong(&self->_complication, complication);
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
  detailTextLabel = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [detailTextLabel setText:v5];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(NTKCFaceDetailComplicationCell *)self _updateState];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v9 = v3;
    self->_enabled = enabled;
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
    defaultTextColor = [objc_opt_class() defaultTextColor];
    textLabel = [(NTKCFaceDetailComplicationCell *)self textLabel];
    [textLabel setTextColor:defaultTextColor];

    if (self->_active)
    {
      [(NTKCFaceDetailComplicationCell *)self _activeColor];
    }

    else
    {
      [(NTKCFaceDetailComplicationCell *)self _inactiveColor];
    }
    _disabledColor2 = ;
  }

  else
  {
    _disabledColor = [(NTKCFaceDetailComplicationCell *)self _disabledColor];
    textLabel2 = [(NTKCFaceDetailComplicationCell *)self textLabel];
    [textLabel2 setTextColor:_disabledColor];

    _disabledColor2 = [(NTKCFaceDetailComplicationCell *)self _disabledColor];
  }

  v9 = _disabledColor2;
  detailTextLabel = [(NTKCFaceDetailComplicationCell *)self detailTextLabel];
  [detailTextLabel setTextColor:v9];
}

@end
@interface CKMessageEntrySolidBlurBackgroundView
- (CKMessageEntrySolidBlurBackgroundView)init;
- (id)inputAccessoryViewBackdropColor;
- (id)inputAccessoryViewBackdropEffects;
- (void)_updateBackgroundView;
- (void)setBackdropGroupName:(id)name;
- (void)setEntryViewTraitCollection:(id)collection;
- (void)setStyle:(int64_t)style;
@end

@implementation CKMessageEntrySolidBlurBackgroundView

- (CKMessageEntrySolidBlurBackgroundView)init
{
  v3 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v6.receiver = self;
  v6.super_class = CKMessageEntrySolidBlurBackgroundView;
  v4 = [(CKMessageEntrySolidBlurBackgroundView *)&v6 initWithEffect:v3];

  return v4;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(CKMessageEntrySolidBlurBackgroundView *)self _updateBackgroundView];
  }
}

- (void)setEntryViewTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (([(UITraitCollection *)self->_entryViewTraitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_entryViewTraitCollection, collection);
    [(CKMessageEntrySolidBlurBackgroundView *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  v8 = +[CKUIBehavior sharedBehaviors];
  style = [(CKMessageEntrySolidBlurBackgroundView *)self style];
  contentView = [(CKMessageEntrySolidBlurBackgroundView *)self contentView];
  entryViewTraitCollection = [(CKMessageEntrySolidBlurBackgroundView *)self entryViewTraitCollection];
  if (CKMessageEntryViewStyleIsForDarkFullscreenMoment(style))
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v6 = ;
  v7 = [v6 resolvedColorForTraitCollection:entryViewTraitCollection];
  [contentView setBackgroundColor:v7];
  if (CKMessageEntryViewStyleIsForReply(style))
  {
    [v8 replyEntryViewBackagroundAlpha];
  }

  else
  {
    [v8 entryViewBackgroundAlpha];
  }

  [contentView setAlpha:?];
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_backdropGroupName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    [(CKMessageEntrySolidBlurBackgroundView *)self _setGroupName:nameCopy];
  }
}

- (id)inputAccessoryViewBackdropColor
{
  contentView = [(CKMessageEntrySolidBlurBackgroundView *)self contentView];
  backgroundColor = [contentView backgroundColor];
  [contentView alpha];
  v4 = [backgroundColor colorWithAlphaComponent:?];

  return v4;
}

- (id)inputAccessoryViewBackdropEffects
{
  backgroundEffects = [(CKMessageEntrySolidBlurBackgroundView *)self backgroundEffects];
  v3 = backgroundEffects;
  if (backgroundEffects)
  {
    v4 = backgroundEffects;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

@end
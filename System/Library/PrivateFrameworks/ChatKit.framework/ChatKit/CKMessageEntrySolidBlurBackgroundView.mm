@interface CKMessageEntrySolidBlurBackgroundView
- (CKMessageEntrySolidBlurBackgroundView)init;
- (id)inputAccessoryViewBackdropColor;
- (id)inputAccessoryViewBackdropEffects;
- (void)_updateBackgroundView;
- (void)setBackdropGroupName:(id)a3;
- (void)setEntryViewTraitCollection:(id)a3;
- (void)setStyle:(int64_t)a3;
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

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(CKMessageEntrySolidBlurBackgroundView *)self _updateBackgroundView];
  }
}

- (void)setEntryViewTraitCollection:(id)a3
{
  v5 = a3;
  if (([(UITraitCollection *)self->_entryViewTraitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_entryViewTraitCollection, a3);
    [(CKMessageEntrySolidBlurBackgroundView *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  v8 = +[CKUIBehavior sharedBehaviors];
  v3 = [(CKMessageEntrySolidBlurBackgroundView *)self style];
  v4 = [(CKMessageEntrySolidBlurBackgroundView *)self contentView];
  v5 = [(CKMessageEntrySolidBlurBackgroundView *)self entryViewTraitCollection];
  if (CKMessageEntryViewStyleIsForDarkFullscreenMoment(v3))
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v6 = ;
  v7 = [v6 resolvedColorForTraitCollection:v5];
  [v4 setBackgroundColor:v7];
  if (CKMessageEntryViewStyleIsForReply(v3))
  {
    [v8 replyEntryViewBackagroundAlpha];
  }

  else
  {
    [v8 entryViewBackgroundAlpha];
  }

  [v4 setAlpha:?];
}

- (void)setBackdropGroupName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_backdropGroupName isEqualToString:?])
  {
    v4 = [v6 copy];
    backdropGroupName = self->_backdropGroupName;
    self->_backdropGroupName = v4;

    [(CKMessageEntrySolidBlurBackgroundView *)self _setGroupName:v6];
  }
}

- (id)inputAccessoryViewBackdropColor
{
  v2 = [(CKMessageEntrySolidBlurBackgroundView *)self contentView];
  v3 = [v2 backgroundColor];
  [v2 alpha];
  v4 = [v3 colorWithAlphaComponent:?];

  return v4;
}

- (id)inputAccessoryViewBackdropEffects
{
  v2 = [(CKMessageEntrySolidBlurBackgroundView *)self backgroundEffects];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

@end
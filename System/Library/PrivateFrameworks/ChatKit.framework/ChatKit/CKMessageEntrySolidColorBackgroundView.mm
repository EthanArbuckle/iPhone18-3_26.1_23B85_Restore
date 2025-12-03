@interface CKMessageEntrySolidColorBackgroundView
- (void)_updateBackgroundView;
- (void)setEntryViewTraitCollection:(id)collection;
- (void)setStyle:(int64_t)style;
@end

@implementation CKMessageEntrySolidColorBackgroundView

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(CKMessageEntrySolidColorBackgroundView *)self _updateBackgroundView];
  }
}

- (void)setEntryViewTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (([(UITraitCollection *)self->_entryViewTraitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_entryViewTraitCollection, collection);
    [(CKMessageEntrySolidColorBackgroundView *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  style = [(CKMessageEntrySolidColorBackgroundView *)self style];
  entryViewTraitCollection = [(CKMessageEntrySolidColorBackgroundView *)self entryViewTraitCollection];
  if (CKMessageEntryViewStyleIsForDarkFullscreenMoment(style))
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v4 = ;
  v5 = [v4 resolvedColorForTraitCollection:entryViewTraitCollection];

  [(CKMessageEntrySolidColorBackgroundView *)self setBackgroundColor:v5];
}

@end
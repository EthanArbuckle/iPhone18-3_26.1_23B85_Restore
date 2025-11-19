@interface CKMessageEntrySolidColorBackgroundView
- (void)_updateBackgroundView;
- (void)setEntryViewTraitCollection:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation CKMessageEntrySolidColorBackgroundView

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(CKMessageEntrySolidColorBackgroundView *)self _updateBackgroundView];
  }
}

- (void)setEntryViewTraitCollection:(id)a3
{
  v5 = a3;
  if (([(UITraitCollection *)self->_entryViewTraitCollection isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_entryViewTraitCollection, a3);
    [(CKMessageEntrySolidColorBackgroundView *)self _updateBackgroundView];
  }
}

- (void)_updateBackgroundView
{
  v3 = [(CKMessageEntrySolidColorBackgroundView *)self style];
  v6 = [(CKMessageEntrySolidColorBackgroundView *)self entryViewTraitCollection];
  if (CKMessageEntryViewStyleIsForDarkFullscreenMoment(v3))
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v4 = ;
  v5 = [v4 resolvedColorForTraitCollection:v6];

  [(CKMessageEntrySolidColorBackgroundView *)self setBackgroundColor:v5];
}

@end
@interface ICDocCamExtractedThumbnailContainerView
- (BOOL)isAccessibilityElement;
- (BOOL)orderNextForAccessibility:(id)a3;
- (BOOL)orderPreviousForAccessibility:(id)a3;
- (ICDocCamExtractedThumbnailContainerViewDelegate)delegate;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation ICDocCamExtractedThumbnailContainerView

- (BOOL)isAccessibilityElement
{
  v2 = self;
  v3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  LOBYTE(v2) = [v3 thumbnailContainerViewIsVisible:v2];

  return v2;
}

- (id)accessibilityHint
{
  v2 = self;
  v3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  LODWORD(v2) = [v3 thumbnailContainerViewSupportsReordering:v2];

  if (v2)
  {
    v4 = [DCLocalization localizedStringForKey:@"Double-tap and drag to reorder current scan" value:@"Double-tap and drag to reorder current scan" table:@"Localizable"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v4 = [v3 thumbnailContainerViewCurrentIndex:self];

  v5 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v6 = [v5 thumbnailContainerViewNumberOfItems:self];

  v7 = [DCLocalization localizedStringForKey:@"Scan %lu of %lu" value:@"Scan %lu of %lu" table:@"Localizable"];
  v8 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v7, v4 + 1, v6];

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ICDocCamExtractedThumbnailContainerView;
  return *MEMORY[0x277D76538] | [(ICDocCamExtractedThumbnailContainerView *)&v3 accessibilityTraits];
}

- (void)accessibilityIncrement
{
  v3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  [v3 thumbnailContainerViewIncrementCurrentIndex:self];
}

- (void)accessibilityDecrement
{
  v3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  [v3 thumbnailContainerViewDecrementCurrentIndex:self];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [v4 thumbnailContainerViewSupportsReordering:self];

  if (v5)
  {
    v6 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    v7 = [v6 thumbnailContainerViewCurrentIndex:self];

    v8 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    v9 = [v8 thumbnailContainerViewNumberOfItems:self];

    if (v7 < v9 - 1)
    {
      v10 = [DCLocalization localizedStringForKey:@"Order Next" value:@"Order Next" table:@"Localizable"];
      v11 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v10 target:self selector:sel_orderNextForAccessibility_];
      [v3 addObject:v11];
    }

    if (v7)
    {
      v12 = [DCLocalization localizedStringForKey:@"Order Previous" value:@"Order Previous" table:@"Localizable"];
      v13 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v12 target:self selector:sel_orderPreviousForAccessibility_];
      [v3 addObject:v13];
    }
  }

  v14 = [v3 copy];

  return v14;
}

- (BOOL)orderPreviousForAccessibility:(id)a3
{
  v4 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [v4 thumbnailContainerViewCurrentIndex:self];

  if (v5)
  {
    v6 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    [v6 thumbnailContainerView:self moveItemFromIndex:v5 toIndex:v5 - 1];
  }

  return v5 != 0;
}

- (BOOL)orderNextForAccessibility:(id)a3
{
  v4 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [v4 thumbnailContainerViewCurrentIndex:self];

  v6 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v7 = [v6 thumbnailContainerViewNumberOfItems:self];

  v8 = v7 - 1;
  if (v5 < v8)
  {
    v9 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    [v9 thumbnailContainerView:self moveItemFromIndex:v5 toIndex:v5 + 1];
  }

  return v5 < v8;
}

- (ICDocCamExtractedThumbnailContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
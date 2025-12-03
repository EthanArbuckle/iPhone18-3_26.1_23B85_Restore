@interface ICDocCamExtractedThumbnailContainerView
- (BOOL)isAccessibilityElement;
- (BOOL)orderNextForAccessibility:(id)accessibility;
- (BOOL)orderPreviousForAccessibility:(id)accessibility;
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
  selfCopy = self;
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  LOBYTE(selfCopy) = [delegate thumbnailContainerViewIsVisible:selfCopy];

  return selfCopy;
}

- (id)accessibilityHint
{
  selfCopy = self;
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  LODWORD(selfCopy) = [delegate thumbnailContainerViewSupportsReordering:selfCopy];

  if (selfCopy)
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
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v4 = [delegate thumbnailContainerViewCurrentIndex:self];

  delegate2 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v6 = [delegate2 thumbnailContainerViewNumberOfItems:self];

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
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  [delegate thumbnailContainerViewIncrementCurrentIndex:self];
}

- (void)accessibilityDecrement
{
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  [delegate thumbnailContainerViewDecrementCurrentIndex:self];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x277CBEB18] array];
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [delegate thumbnailContainerViewSupportsReordering:self];

  if (v5)
  {
    delegate2 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    v7 = [delegate2 thumbnailContainerViewCurrentIndex:self];

    delegate3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    v9 = [delegate3 thumbnailContainerViewNumberOfItems:self];

    if (v7 < v9 - 1)
    {
      v10 = [DCLocalization localizedStringForKey:@"Order Next" value:@"Order Next" table:@"Localizable"];
      v11 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v10 target:self selector:sel_orderNextForAccessibility_];
      [array addObject:v11];
    }

    if (v7)
    {
      v12 = [DCLocalization localizedStringForKey:@"Order Previous" value:@"Order Previous" table:@"Localizable"];
      v13 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v12 target:self selector:sel_orderPreviousForAccessibility_];
      [array addObject:v13];
    }
  }

  v14 = [array copy];

  return v14;
}

- (BOOL)orderPreviousForAccessibility:(id)accessibility
{
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [delegate thumbnailContainerViewCurrentIndex:self];

  if (v5)
  {
    delegate2 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    [delegate2 thumbnailContainerView:self moveItemFromIndex:v5 toIndex:v5 - 1];
  }

  return v5 != 0;
}

- (BOOL)orderNextForAccessibility:(id)accessibility
{
  delegate = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v5 = [delegate thumbnailContainerViewCurrentIndex:self];

  delegate2 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
  v7 = [delegate2 thumbnailContainerViewNumberOfItems:self];

  v8 = v7 - 1;
  if (v5 < v8)
  {
    delegate3 = [(ICDocCamExtractedThumbnailContainerView *)self delegate];
    [delegate3 thumbnailContainerView:self moveItemFromIndex:v5 toIndex:v5 + 1];
  }

  return v5 < v8;
}

- (ICDocCamExtractedThumbnailContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
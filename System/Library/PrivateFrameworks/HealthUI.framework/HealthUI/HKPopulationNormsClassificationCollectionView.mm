@interface HKPopulationNormsClassificationCollectionView
- (CGSize)intrinsicContentSize;
- (void)intrinsicContentSize;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKPopulationNormsClassificationCollectionView

- (CGSize)intrinsicContentSize
{
  v3 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v4 = [(HKPopulationNormsClassificationCollectionView *)self cellForItemAtIndexPath:v3];
  if (!v4)
  {
    _HKInitializeLogging();
    v5 = HKLogDefaultCategory();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogDefaultCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(HKPopulationNormsClassificationCollectionView *)self intrinsicContentSize];
      }
    }

    v8 = [HKPopulationNormsClassificationCollectionViewCell alloc];
    v4 = [(HKPopulationNormsClassificationCollectionViewCell *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(HKPopulationNormsClassificationCollectionViewCell *)v4 setTitle:@"X" classificationIdentifier:0 highlighted:0];
  }

  [(HKPopulationNormsClassificationCollectionViewCell *)v4 systemLayoutSizeFittingSize:1.79769313e308, 28.0];
  v10 = v9;
  v11 = *MEMORY[0x1E69DE788];

  v12 = v11;
  v13 = v10;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = HKPopulationNormsClassificationCollectionView;
  [(HKPopulationNormsClassificationCollectionView *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKPopulationNormsClassificationCollectionView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      collectionViewLayout = [(HKPopulationNormsClassificationCollectionView *)self collectionViewLayout];
      [collectionViewLayout invalidateLayout];

      [(HKPopulationNormsClassificationCollectionView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (void)intrinsicContentSize
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: first cell unavailable; creating sizing cell for intrinsicContentSize measurement", &v2, 0xCu);
}

@end
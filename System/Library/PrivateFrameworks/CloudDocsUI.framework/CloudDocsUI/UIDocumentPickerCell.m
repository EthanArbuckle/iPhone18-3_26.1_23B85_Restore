@interface UIDocumentPickerCell
@end

@implementation UIDocumentPickerCell

id __47___UIDocumentPickerCell__updateSelectionState___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v4 = [*(a1 + 32) traitCollection];
  v5 = [v2 imageNamed:@"UITintedCircularButtonCheckmark" inBundle:v3 compatibleWithTraitCollection:v4];

  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v8 = [*(a1 + 32) traitCollection];
  v9 = [v6 imageNamed:@"DocumentSelectionCheckmarkBackground" inBundle:v7 compatibleWithTraitCollection:v8];

  [v5 size];
  [v5 scale];
  v18 = v5;
  v10 = v5;
  v11 = _UIGraphicsDrawIntoImageContextWithOptions();
  [v9 size];
  [v10 scale];
  v16 = v9;
  v17 = v11;
  v12 = v11;
  v13 = v9;
  v14 = _UIGraphicsDrawIntoImageContextWithOptions();

  return v14;
}

void __47___UIDocumentPickerCell__updateSelectionState___block_invoke_5(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = *MEMORY[0x277CBF348];
  v4 = *(MEMORY[0x277CBF348] + 8);
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x277CBF348], v4}];
  CGContextSetCompositeOperation();
  v5 = [*(a1 + 40) tintColor];
  CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);

  [*(a1 + 32) size];
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v4;

  CGContextFillRect(CurrentContext, *&v10);
}

uint64_t __47___UIDocumentPickerCell__updateSelectionState___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [*(a1 + 40) size];
  [*(a1 + 32) size];
  UIRectCenteredIntegralRect();
  v2 = *(a1 + 40);

  return [v2 drawAtPoint:?];
}

uint64_t __47___UIDocumentPickerCell_updateForEditingState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSeparatorInset];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __41___UIDocumentPickerCell_availableActions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = [*(a1 + 32) collectionView];
  v6 = [v10 serviceViewController];
  if ([v6 shouldShowAction:a2])
  {
    v7 = [*(a1 + 32) item];
    v8 = [v7 isActionApplicableForItem:a2];

    if (!v8)
    {
      return;
    }

    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) actions];
    v6 = [v10 objectAtIndex:a3];
    [v9 addObject:v6];
  }
}

@end
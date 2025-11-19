@interface SUUISegmentedControlCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUISegmentedControlCollectionViewCell

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  [a5 sizeForViewElement:a4 width:?];
  v7 = a3;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(SUUISegmentedControlViewElementController *)self->_elementController viewElement];

  if (v9 == v7)
  {
    [(SUUISegmentedControlViewElementController *)self->_elementController reloadAfterDocumentUpdate];
  }

  else
  {
    bottomDividerView = self->_bottomDividerView;
    self->_bottomDividerView = 0;

    elementController = self->_elementController;
    self->_elementController = 0;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__SUUISegmentedControlCollectionViewCell_reloadWithViewElement_width_context___block_invoke;
    v12[3] = &unk_2798F7950;
    v13 = v7;
    v14 = v8;
    v15 = self;
    [(SUUIViewReuseCollectionViewCell *)self modifyUsingBlock:v12];
  }
}

void __78__SUUISegmentedControlCollectionViewCell_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 addReusableViewWithReuseIdentifier:0x286AF9A00];
  v4 = [*(a1 + 32) style];
  v5 = [*(a1 + 40) tintColor];
  v6 = SUUIViewElementPlainColorWithStyle(v4, v5);

  if (!v6)
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.588235294 alpha:1.0];
  }

  [v3 setTintColor:v6];
  v7 = [[SUUISegmentedControlViewElementController alloc] initWithViewElement:*(a1 + 32) segmentedControl:v3];
  v8 = *(a1 + 48);
  v9 = *(v8 + 832);
  *(v8 + 832) = v7;

  v10 = *(*(a1 + 48) + 832);
  v11 = [*(a1 + 40) clientContext];
  [v10 setClientContext:v11];

  v12 = *(*(a1 + 48) + 832);
  v13 = [*(a1 + 40) parentViewController];
  [v12 setParentViewController:v13];

  v14 = [*(a1 + 32) bottomDivider];
  if (v14)
  {
    v15 = [v18 addDividerWithElement:v14 context:*(a1 + 40)];
    v16 = *(a1 + 48);
    v17 = *(v16 + 824);
    *(v16 + 824) = v15;

    [*(*(a1 + 48) + 824) setDividerOrientation:0];
    [*(*(a1 + 48) + 824) setDividerSize:0.0];
  }
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SUUISegmentedControlCollectionViewCell;
  [(SUUICollectionViewCell *)&v28 layoutSubviews];
  v3 = [(SUUISegmentedControlCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SUUIViewReuseCollectionViewCell *)self contentInset];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);
  v20 = [(SUUISegmentedControlViewElementController *)self->_elementController segmentedControlView];
  [v20 sizeThatFits:{v17, v19}];
  v22 = v21;
  v24 = v23;
  *&v21 = v13 + (v17 - v21) * 0.5;
  *&v23 = v15 + (v19 - v23) * 0.5;
  [v20 setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(floorf(*&v21), floorf(*&v23), v22, v24, v5, v7, v9, v11)}];
  if (self->_bottomDividerView)
  {
    v25 = [MEMORY[0x277D759A0] mainScreen];
    [v25 scale];
    v27 = 1.0 / v26;

    [(SUUIDividerView *)self->_bottomDividerView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, v11 - v27, v9, v27, v5, v7, v9, v11)];
  }
}

@end
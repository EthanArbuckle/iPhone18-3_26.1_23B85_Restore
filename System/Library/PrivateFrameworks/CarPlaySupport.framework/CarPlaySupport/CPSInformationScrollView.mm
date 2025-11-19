@interface CPSInformationScrollView
- (CPSInformationScrollViewDelegate)scrollviewDelegate;
- (void)setContentSize:(CGSize)a3;
@end

@implementation CPSInformationScrollView

- (void)setContentSize:(CGSize)a3
{
  v16 = a3;
  v15 = self;
  v14[3] = a2;
  [(CPSInformationScrollView *)self contentSize];
  v14[1] = v3;
  v14[2] = v4;
  if (!__CGSizeEqualToSize_0(v16.width, v16.height, *&v3, *&v4))
  {
    v6 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    queue = v6;
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __43__CPSInformationScrollView_setContentSize___block_invoke;
    v13 = &unk_278D913E8;
    v14[0] = MEMORY[0x277D82BE0](v15);
    dispatch_async(queue, &v9);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v14, 0);
  }

  v8.receiver = v15;
  v8.super_class = CPSInformationScrollView;
  [(CPSInformationScrollView *)&v8 setContentSize:v16.width, v16.height];
}

double __43__CPSInformationScrollView_setContentSize___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) scrollviewDelegate];
  [v3 scrollViewContentSizeChanged:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (CPSInformationScrollViewDelegate)scrollviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollviewDelegate);

  return WeakRetained;
}

@end
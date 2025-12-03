@interface NWKUIAQISegmentedView
- (CGSize)intrinsicContentSize;
- (NWKUIAQISegmentedView)initWithModel:(id)model constraints:(id)constraints;
- (void)_addSubviewsFromModel:(id)model;
- (void)layoutSubviews;
- (void)updateModel:(id)model;
@end

@implementation NWKUIAQISegmentedView

- (NWKUIAQISegmentedView)initWithModel:(id)model constraints:(id)constraints
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = NWKUIAQISegmentedView;
  v8 = [(NWKUIAQISegmentedView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_constraints.width = constraints.var0;
    objc_storeStrong(&v8->_model, model);
    [(NWKUIAQISegmentedView *)v9 _addSubviewsFromModel:modelCopy];
  }

  return v9;
}

- (CGSize)intrinsicContentSize
{
  width = self->_constraints.width;
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  width = self->_constraints.width;
  [(NWKUIAQISegmentedView *)self bounds];
  Height = CGRectGetHeight(v8);
  if (Height != self->_lastLayoutHeight)
  {
    self->_lastLayoutHeight = Height;
    v5 = [(NSArray *)self->_segmentViews count];
    v7[1] = 3221225472;
    v7[0] = MEMORY[0x277D85DD0];
    v7[2] = __39__NWKUIAQISegmentedView_layoutSubviews__block_invoke;
    v7[3] = &__block_descriptor_56_e36_v32__0__NWKUIAQISegmentView_8Q16_B24l;
    *&v7[4] = Height;
    *&v7[5] = (Height + (v5 - 1) * -1.5) / v5;
    *&v7[6] = width;
    v6 = MEMORY[0x25F86D760](v7);
    [(NSArray *)self->_segmentViews enumerateObjectsUsingBlock:v6];
  }
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  if (self->_model != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_model, model);
    [(NWKUIAQISegmentedView *)self _addSubviewsFromModel:v6];
    self->_lastLayoutHeight = 0.0;
    [(NWKUIAQISegmentedView *)self setNeedsLayout];
    modelCopy = v6;
  }
}

- (void)_addSubviewsFromModel:(id)model
{
  modelCopy = model;
  subviews = [(NWKUIAQISegmentedView *)self subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  segments = [modelCopy segments];

  v7 = [segments count];
  v8 = v7 - 1;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__NWKUIAQISegmentedView__addSubviewsFromModel___block_invoke;
  v14[3] = &unk_279963378;
  v15 = v9;
  v16 = v8;
  v14[4] = self;
  v10 = v9;
  v11 = MEMORY[0x25F86D760](v14);
  [segments enumerateObjectsUsingBlock:v11];
  v12 = [v10 copy];
  segmentViews = self->_segmentViews;
  self->_segmentViews = v12;
}

void __47__NWKUIAQISegmentedView__addSubviewsFromModel___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 48) != a3;
  }

  else
  {
    v4 = 2;
  }

  v5 = a2;
  v6 = [NWKUIAQISegmentView alloc];
  v7 = [v5 color];
  v8 = [v5 isActive];

  v9 = [(NWKUIAQISegmentView *)v6 initWithColor:v7 active:v8 mode:v4];
  [*(a1 + 32) addSubview:v9];
  [*(a1 + 40) addObject:v9];
}

@end
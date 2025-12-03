@interface NTKVictoryTimeLabel
- (NTKVictoryTimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device additionalPaddingInsets:(double)insets;
- (id)_newUnderlyingLabel:(BOOL)label;
- (void)setOutlineAlpha:(double)alpha;
- (void)setOutlineColor:(id)color;
@end

@implementation NTKVictoryTimeLabel

- (NTKVictoryTimeLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device additionalPaddingInsets:(double)insets
{
  self->_additionalPaddingInsets = insets;
  v6.receiver = self;
  v6.super_class = NTKVictoryTimeLabel;
  return [(NTKDigitalTimeLabel *)&v6 initWithTimeLabelOptions:options forDevice:device];
}

- (id)_newUnderlyingLabel:(BOOL)label
{
  v4 = [NTKVictoryLabel alloc];
  v5 = [(CLKUIColoringLabel *)v4 initWithFrame:1 options:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NTKVictoryLabel *)v5 setOutlineColor:self->_outlineColor];
  [(NTKVictoryLabel *)v5 setOutlineAlpha:self->_outlineAlpha];
  [(NTKVictoryLabel *)v5 setAdditionalPaddingInsets:self->_additionalPaddingInsets];
  labels = self->_labels;
  if (!labels)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_labels;
    self->_labels = weakObjectsHashTable;

    labels = self->_labels;
  }

  [(NSHashTable *)labels addObject:v5];
  return v5;
}

- (void)setOutlineColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_outlineColor, color);
  allObjects = [(NSHashTable *)self->_labels allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__NTKVictoryTimeLabel_setOutlineColor___block_invoke;
  v8[3] = &unk_278781450;
  v9 = colorCopy;
  v7 = colorCopy;
  [allObjects enumerateObjectsUsingBlock:v8];
}

- (void)setOutlineAlpha:(double)alpha
{
  self->_outlineAlpha = alpha;
  allObjects = [(NSHashTable *)self->_labels allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__NTKVictoryTimeLabel_setOutlineAlpha___block_invoke;
  v5[3] = &__block_descriptor_40_e32_v32__0__NTKVictoryLabel_8Q16_B24l;
  *&v5[4] = alpha;
  [allObjects enumerateObjectsUsingBlock:v5];
}

@end
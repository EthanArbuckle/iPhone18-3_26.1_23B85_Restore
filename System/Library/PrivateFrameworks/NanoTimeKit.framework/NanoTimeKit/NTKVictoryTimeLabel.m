@interface NTKVictoryTimeLabel
- (NTKVictoryTimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 additionalPaddingInsets:(double)a5;
- (id)_newUnderlyingLabel:(BOOL)a3;
- (void)setOutlineAlpha:(double)a3;
- (void)setOutlineColor:(id)a3;
@end

@implementation NTKVictoryTimeLabel

- (NTKVictoryTimeLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 additionalPaddingInsets:(double)a5
{
  self->_additionalPaddingInsets = a5;
  v6.receiver = self;
  v6.super_class = NTKVictoryTimeLabel;
  return [(NTKDigitalTimeLabel *)&v6 initWithTimeLabelOptions:a3 forDevice:a4];
}

- (id)_newUnderlyingLabel:(BOOL)a3
{
  v4 = [NTKVictoryLabel alloc];
  v5 = [(CLKUIColoringLabel *)v4 initWithFrame:1 options:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NTKVictoryLabel *)v5 setOutlineColor:self->_outlineColor];
  [(NTKVictoryLabel *)v5 setOutlineAlpha:self->_outlineAlpha];
  [(NTKVictoryLabel *)v5 setAdditionalPaddingInsets:self->_additionalPaddingInsets];
  labels = self->_labels;
  if (!labels)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_labels;
    self->_labels = v7;

    labels = self->_labels;
  }

  [(NSHashTable *)labels addObject:v5];
  return v5;
}

- (void)setOutlineColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_outlineColor, a3);
  v6 = [(NSHashTable *)self->_labels allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__NTKVictoryTimeLabel_setOutlineColor___block_invoke;
  v8[3] = &unk_278781450;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)setOutlineAlpha:(double)a3
{
  self->_outlineAlpha = a3;
  v4 = [(NSHashTable *)self->_labels allObjects];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__NTKVictoryTimeLabel_setOutlineAlpha___block_invoke;
  v5[3] = &__block_descriptor_40_e32_v32__0__NTKVictoryLabel_8Q16_B24l;
  *&v5[4] = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

@end
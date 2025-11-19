@interface CertInfoDescriptionCellContentView
- (void)_recalculateIdealHeight;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLabelsAndValues:(id)a3;
@end

@implementation CertInfoDescriptionCellContentView

- (void)dealloc
{
  sizes = self->_sizes;
  if (sizes)
  {
    free(sizes);
  }

  v4.receiver = self;
  v4.super_class = CertInfoDescriptionCellContentView;
  [(CertInfoDescriptionCellContentView *)&v4 dealloc];
}

- (void)_recalculateIdealHeight
{
  sizesCount = [(NSArray *)self->_labelsAndValues count]/ 2;
  self->_sizesCount = sizesCount;
  sizes = self->_sizes;
  if (sizes)
  {
    free(sizes);
    self->_sizes = 0;
    sizesCount = self->_sizesCount;
  }

  v5 = malloc_type_malloc(16 * sizesCount, 0x1000040451B5BE8uLL);
  self->_sizes = v5;
  if (v5)
  {
    self->_idealHeight = 20.0;
    v23 = [(CertInfoDescriptionCellContentView *)self _valueFont];
    [(CertInfoDescriptionCellContentView *)self bounds];
    v7 = v6 + -106.0 + -10.0;
    [@"test" _legacy_sizeWithFont:v23 forWidth:4 lineBreakMode:v7];
    if (self->_sizesCount)
    {
      v10 = v8;
      v11 = v9;
      v12 = 0;
      v13 = 0;
      v14 = v9 * 10.0;
      do
      {
        v15 = [(NSArray *)self->_labelsAndValues objectAtIndex:v12 * 2 + 1];
        v16 = [v15 length];
        v17 = v10;
        v18 = v11;
        if (v16)
        {
          [v15 _legacy_sizeWithFont:v23 constrainedToSize:4 lineBreakMode:{v7, v14}];
        }

        v19 = &self->_sizes[v12];
        v19->width = v17;
        v19->height = v18;
        self->_idealHeight = v18 + self->_idealHeight;

        ++v13;
        v20 = self->_sizesCount;
        ++v12;
      }

      while (v13 < v20);
      v21 = (v20 - 1);
    }

    else
    {
      v21 = -1.0;
    }

    v22 = self->_idealHeight + v21 * 8.0;
    self->_idealHeight = rintf(v22) + 2.0;
  }
}

- (void)setLabelsAndValues:(id)a3
{
  v5 = a3;
  if (self->_labelsAndValues != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_labelsAndValues, a3);
    [(CertInfoDescriptionCellContentView *)self _recalculateIdealHeight];
    [(CertInfoDescriptionCellContentView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)drawRect:(CGRect)a3
{
  v29 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [(CertInfoDescriptionCellContentView *)self _labelFont];
  v6 = [(CertInfoDescriptionCellContentView *)self _valueFont];
  v7 = [(NSArray *)self->_labelsAndValues count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v23 = unk_2433CA350;
    v24 = xmmword_2433CA340;
    v10 = 8.0;
    do
    {
      v11 = [(NSArray *)self->_labelsAndValues objectAtIndex:v9, v23, v24];
      v12 = [(NSArray *)self->_labelsAndValues objectAtIndex:v9 + 1];
      [v11 _legacy_sizeWithFont:v5];
      v15 = v14;
      if (v13 <= 86.0)
      {
        v16 = v13;
      }

      else
      {
        v16 = 86.0;
      }

      *components = xmmword_2433CA320;
      v28 = unk_2433CA330;
      CGContextSetFillColor(CurrentContext, components);
      [v11 _legacy_drawInRect:v5 withFont:4 lineBreakMode:{96.0 - v16, v10, v16, v15}];
      v17 = &self->_sizes[v9 / 2];
      width = v17->width;
      height = v17->height;
      v30.origin.x = 96.0 - v16;
      v30.origin.y = v10;
      v30.size.width = v16;
      v30.size.height = v15;
      v20 = CGRectGetMaxX(v30) + 10.0;
      *v25 = v24;
      v26 = v23;
      CGContextSetFillColor(CurrentContext, v25);
      [v12 _legacy_drawInRect:v6 withFont:4 lineBreakMode:{v20, v10, width, height}];
      if (v15 >= height)
      {
        v21 = v15;
      }

      else
      {
        v21 = height;
      }

      v10 = v10 + v21 + 8.0;

      v9 += 2;
    }

    while (v9 < v8);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CertInfoDescriptionCellContentView;
  [(CertInfoDescriptionCellContentView *)&v3 layoutSubviews];
  [(CertInfoDescriptionCellContentView *)self setNeedsDisplay];
}

@end
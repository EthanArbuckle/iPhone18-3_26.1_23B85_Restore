@interface DTSColorPicker
- (DTSColorPicker)initWithFrame:(CGRect)frame;
- (DTSColorPickerDelegate)delegate;
- (double)colorCircleDiameter;
- (double)colorCircleHorizontalSpacing;
- (void)createPaletteCirclesWithParentView:(id)view;
- (void)didReceiveLongPress:(id)press;
- (void)paletteCircleTapped:(id)tapped;
- (void)selectCircle:(id)circle completion:(id)completion;
- (void)setColorCircleSize:(unint64_t)size;
@end

@implementation DTSColorPicker

- (DTSColorPicker)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = DTSColorPicker;
  v3 = [(DTSColorPicker *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v3 action:sel_didReceiveLongPress_];
    longPressRecognizer = v3->_longPressRecognizer;
    v3->_longPressRecognizer = v4;

    [(DTSColorPicker *)v3 addGestureRecognizer:v3->_longPressRecognizer];
  }

  return v3;
}

- (double)colorCircleHorizontalSpacing
{
  colorCircleSize = self->_colorCircleSize;
  result = 6.0;
  if (colorCircleSize == 1)
  {
    result = 24.0;
  }

  if (colorCircleSize == 2)
  {
    return 36.0;
  }

  return result;
}

- (double)colorCircleDiameter
{
  colorCircleSize = self->_colorCircleSize;
  if (colorCircleSize == 2)
  {
    return 36.0;
  }

  if (colorCircleSize == 1)
  {
    return 30.0;
  }

  result = 20.0;
  if (!colorCircleSize)
  {
    +[ETPaletteCircleView paletteCircleDiameter];
  }

  return result;
}

- (void)setColorCircleSize:(unint64_t)size
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_colorCircleSize != size)
  {
    self->_colorCircleSize = size;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = self->_paletteCircles;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          [v9 frame];
          v11 = v10;
          v13 = v12;
          [(DTSColorPicker *)self colorCircleDiameter];
          v15 = v14;
          [v9 center];
          v17 = v16;
          v19 = v18;
          [v9 setFrame:{v11, v13, v15, v15}];
          [v9 setCenter:{v17, v19}];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    [(ETPaletteCircleView *)self->_selectedCircle setNeedsLayout];
    [(DTSColorPicker *)self setNeedsLayout];
  }
}

- (void)createPaletteCirclesWithParentView:(id)view
{
  viewCopy = view;
  +[ETPaletteCircleView paletteCircleDiameter];
  v5 = v4;
  v6 = +[ETColorStore defaultStore];
  colors = [v6 colors];

  v8 = [colors count];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [[ETPaletteCircleView alloc] initWithFrame:0.0, 0.0, v5, v5];
      v12 = [colors objectAtIndexedSubscript:i];
      [(ETPaletteCircleView *)v11 setBackgroundColor:v12];

      v13 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_paletteCircleTapped_];
      [v13 requireGestureRecognizerToFail:self->_longPressRecognizer];
      [(ETPaletteCircleView *)v11 addGestureRecognizer:v13];
      [(NSArray *)v9 addObject:v11];
      [viewCopy addSubview:v11];
    }
  }

  paletteCircles = self->_paletteCircles;
  self->_paletteCircles = v9;
  v15 = v9;

  v16 = self->_paletteCircles;
  v17 = +[ETColorStore defaultStore];
  v18 = -[NSArray objectAtIndex:](v16, "objectAtIndex:", [v17 selectedColorIndex]);
  selectedCircle = self->_selectedCircle;
  self->_selectedCircle = v18;

  [(ETPaletteCircleView *)self->_selectedCircle setSelected:1];
}

- (void)selectCircle:(id)circle completion:(id)completion
{
  circleCopy = circle;
  completionCopy = completion;
  [(ETPaletteCircleView *)self->_selectedCircle setSelected:0 animated:1 completion:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__DTSColorPicker_selectCircle_completion___block_invoke;
  v12[3] = &unk_278F79EA8;
  v13 = completionCopy;
  v8 = completionCopy;
  [(ETPaletteCircleView *)circleCopy setSelected:1 animated:1 completion:v12];
  selectedCircle = self->_selectedCircle;
  self->_selectedCircle = circleCopy;
  v10 = circleCopy;

  v11 = +[ETColorStore defaultStore];
  [v11 setSelectedColorIndex:{-[NSArray indexOfObject:](self->_paletteCircles, "indexOfObject:", self->_selectedCircle)}];
}

uint64_t __42__DTSColorPicker_selectCircle_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)paletteCircleTapped:(id)tapped
{
  view = [tapped view];
  selectedCircle = [(DTSColorPicker *)self selectedCircle];

  if (selectedCircle != view)
  {
    [(DTSColorPicker *)self selectCircle:view completion:0];
    delegate = [(DTSColorPicker *)self delegate];
    [delegate colorPickerSelectedColorDidChange:self];
  }

  delegate2 = [(DTSColorPicker *)self delegate];
  [delegate2 colorPickerTapped:self];
}

- (void)didReceiveLongPress:(id)press
{
  v24 = *MEMORY[0x277D85DE8];
  pressCopy = press;
  if ([pressCopy state] == 1)
  {
    [pressCopy locationInView:self];
    v6 = v5;
    v8 = v7;
    [(DTSColorPicker *)self paletteCircles];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          [v14 frame];
          v25.x = v6;
          v25.y = v8;
          if (CGRectContainsPoint(v26, v25))
          {
            v15 = v14;

            if (v15)
            {
              lastObject = [v9 lastObject];

              if (v15 != lastObject)
              {
                selectedCircle = [(DTSColorPicker *)self selectedCircle];

                if (v15 == selectedCircle)
                {
                  [(DTSColorPicker *)self showColorWheel];
                }

                else
                {
                  v18[0] = MEMORY[0x277D85DD0];
                  v18[1] = 3221225472;
                  v18[2] = __38__DTSColorPicker_didReceiveLongPress___block_invoke;
                  v18[3] = &unk_278F79ED0;
                  v18[4] = self;
                  [(DTSColorPicker *)self selectCircle:v15 completion:v18];
                }
              }
            }

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_16:
  }
}

- (DTSColorPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
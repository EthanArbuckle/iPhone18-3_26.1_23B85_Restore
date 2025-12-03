@interface HKElectrocardiogramWaveformView
- (CGRect)lastPathBounds;
- (CGRect)pathBounds;
- (CGSize)intrinsicContentSize;
- (HKElectrocardiogramWaveformView)initWithFrame:(CGRect)frame;
- (id)createShapeLayerWithPath:(id)path;
- (void)setLineColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setPaths:(id)paths;
- (void)tintColorDidChange;
@end

@implementation HKElectrocardiogramWaveformView

- (HKElectrocardiogramWaveformView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HKElectrocardiogramWaveformView;
  result = [(HKElectrocardiogramWaveformView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_lineWidth = 1.5;
    v5 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 16);
    result->_pathBounds.origin = *MEMORY[0x1E695F058];
    result->_pathBounds.size = v4;
    result->_lastPathBounds.origin = v5;
    result->_lastPathBounds.size = v4;
  }

  return result;
}

- (id)createShapeLayerWithPath:(id)path
{
  v4 = MEMORY[0x1E69794A0];
  pathCopy = path;
  v6 = objc_alloc_init(v4);
  [v6 setFillColor:0];
  [(HKElectrocardiogramWaveformView *)self lineWidth];
  [v6 setLineWidth:?];
  lineColor = [(HKElectrocardiogramWaveformView *)self lineColor];
  cGColor = [lineColor CGColor];
  if (cGColor)
  {
    [v6 setStrokeColor:cGColor];
  }

  else
  {
    tintColor = [(HKElectrocardiogramWaveformView *)self tintColor];
    [v6 setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];
  }

  [v6 setLineJoin:*MEMORY[0x1E6979E98]];
  cGPath = [pathCopy CGPath];

  [v6 setPath:cGPath];
  layer = [(HKElectrocardiogramWaveformView *)self layer];
  [layer addSublayer:v6];

  return v6;
}

- (void)setPaths:(id)paths
{
  v36 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  shapeLayers = [(HKElectrocardiogramWaveformView *)self shapeLayers];
  v6 = [shapeLayers countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(shapeLayers);
        }

        [*(*(&v30 + 1) + 8 * i) removeFromSuperlayer];
      }

      v7 = [shapeLayers countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  width = *(MEMORY[0x1E695F058] + 16);
  height = *(MEMORY[0x1E695F058] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = pathsCopy;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * j);
        v21 = [(HKElectrocardiogramWaveformView *)self createShapeLayerWithPath:v20, v26];
        [v10 addObject:v21];

        [v20 bounds];
        v39.origin.x = v22;
        v39.origin.y = v23;
        v39.size.width = v24;
        v39.size.height = v25;
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v38 = CGRectUnion(v37, v39);
        x = v38.origin.x;
        y = v38.origin.y;
        width = v38.size.width;
        height = v38.size.height;
        [v20 bounds];
        [(HKElectrocardiogramWaveformView *)self setLastPathBounds:?];
      }

      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  [(HKElectrocardiogramWaveformView *)self setPathBounds:x, y, width, height];
  [(HKElectrocardiogramWaveformView *)self setShapeLayers:v10];
  [(HKElectrocardiogramWaveformView *)self invalidateIntrinsicContentSize];
}

- (void)setLineWidth:(double)width
{
  v14 = *MEMORY[0x1E69E9840];
  self->_lineWidth = width;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  shapeLayers = [(HKElectrocardiogramWaveformView *)self shapeLayers];
  v5 = [shapeLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(shapeLayers);
        }

        [*(*(&v9 + 1) + 8 * v8++) setLineWidth:width];
      }

      while (v6 != v8);
      v6 = [shapeLayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setLineColor:(id)color
{
  v19 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_lineColor, color);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  shapeLayers = [(HKElectrocardiogramWaveformView *)self shapeLayers];
  v7 = [shapeLayers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(shapeLayers);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        cGColor = [colorCopy CGColor];
        if (cGColor)
        {
          [v11 setStrokeColor:cGColor];
        }

        else
        {
          tintColor = [(HKElectrocardiogramWaveformView *)self tintColor];
          [v11 setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [shapeLayers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (CGSize)intrinsicContentSize
{
  [(HKElectrocardiogramWaveformView *)self pathBounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  v17 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramWaveformView;
  [(HKElectrocardiogramWaveformView *)&v15 tintColorDidChange];
  lineColor = [(HKElectrocardiogramWaveformView *)self lineColor];

  if (!lineColor)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    shapeLayers = [(HKElectrocardiogramWaveformView *)self shapeLayers];
    v5 = [shapeLayers countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(shapeLayers);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          tintColor = [(HKElectrocardiogramWaveformView *)self tintColor];
          [v9 setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

          ++v8;
        }

        while (v6 != v8);
        v6 = [shapeLayers countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (CGRect)pathBounds
{
  x = self->_pathBounds.origin.x;
  y = self->_pathBounds.origin.y;
  width = self->_pathBounds.size.width;
  height = self->_pathBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastPathBounds
{
  x = self->_lastPathBounds.origin.x;
  y = self->_lastPathBounds.origin.y;
  width = self->_lastPathBounds.size.width;
  height = self->_lastPathBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
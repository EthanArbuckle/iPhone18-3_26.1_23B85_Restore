@interface CTDPSDPreviewRef
- (BOOL)hasGradient;
- (BOOL)hasRegularSliceGrid;
- (CTDPSDPreviewRef)initWithPath:(id)path;
- (int64_t)indexOfDrawingLayerType:(int64_t)type;
- (int64_t)numberOfGradientLayers;
- (void)dealloc;
- (void)evaluateSliceGrid;
@end

@implementation CTDPSDPreviewRef

- (CTDPSDPreviewRef)initWithPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CTDPSDPreviewRef;
  v3 = [(CUIPSDImageRef *)&v6 initWithPath:path];
  v4 = v3;
  if (v3)
  {
    [(CTDPSDPreviewRef *)v3 evaluateSliceGrid];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CTDPSDPreviewRef;
  [(CUIPSDImageRef *)&v3 dealloc];
}

- (void)evaluateSliceGrid
{
  p_imageInfo = &self->_imageInfo;
  if (self)
  {
    [(CUIPSDImageRef *)self imageInfo];
  }

  else
  {
    v26 = 0uLL;
    v27 = 0;
  }

  *&p_imageInfo->width = v26;
  p_imageInfo->isDrawable = v27;
  numberOfSlices = [(CUIPSDImageRef *)self numberOfSlices];
  if (numberOfSlices <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = numberOfSlices;
  }

  self->_sliceCount = v5;
  self->_layerCount = [(CUIPSDImageRef *)self numberOfLayers];
  height = p_imageInfo->height;
  self->_columnWidth = p_imageInfo->width + 10;
  self->_rowHeight = height + 20;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_sliceCount - 1];
  if (self->_sliceCount >= 2)
  {
    v8 = 0;
    v9 = -1;
    v10 = 1;
    do
    {
      [(CUIPSDImageRef *)self boundsForSlice:v10];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [objc_msgSend(v7 "lastObject")];
      if (v10 >= 2)
      {
        v20 = v19;
        v21 = [v7 count];
        v22 = v10 - 1;
        if (v9 >= 0)
        {
          v22 = v9;
        }

        if (v14 == v20)
        {
          v23 = v8;
        }

        else
        {
          v23 = v8 + 1;
        }

        if (v14 == v20)
        {
          v22 = v9;
        }

        if (v21)
        {
          v8 = v23;
          v9 = v22;
        }
      }

      if (v9 >= 1)
      {
        [objc_msgSend(v7 objectAtIndex:{(v10 - 1) % v9), "rectValue"}];
        if (v12 != v24)
        {
          v8 = -1;
          goto LABEL_25;
        }
      }

      [v7 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v12, v14, v16, v18)}];
      ++v10;
    }

    while (v10 < self->_sliceCount);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  v9 = [v7 count];
  v8 = 0;
LABEL_25:
  if ([v7 count] && !(objc_msgSend(v7, "count") % v9))
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      self->_columnWidth += v9 + 1;
      v25 = v8 + self->_rowHeight;
      ++v8;
      self->_rowHeight = v25 + 2;
    }
  }

  else
  {
    v8 = -1;
  }

  self->_sliceRowCount = v8;
  self->_sliceColumnCount = v9;

  self->_sliceRects = [v7 copy];
}

- (BOOL)hasRegularSliceGrid
{
  sliceRowCount = self->_sliceRowCount;
  if (!sliceRowCount)
  {
    [(CTDPSDPreviewRef *)self evaluateSliceGrid];
    sliceRowCount = self->_sliceRowCount;
  }

  return sliceRowCount > 0;
}

- (BOOL)hasGradient
{
  if (![(CUIPSDImageRef *)self numberOfLayers])
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = [(CUIPSDImageRef *)self gradientAtLayer:0];
    v5 = v4 != 0;
    if (v4)
    {
      break;
    }

    ++v3;
  }

  while (v3 < [(CUIPSDImageRef *)self numberOfLayers]);
  return v5;
}

- (int64_t)numberOfGradientLayers
{
  if (![(CUIPSDImageRef *)self numberOfLayers])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ([(CUIPSDImageRef *)self gradientAtLayer:0])
    {
      ++v4;
    }

    ++v3;
  }

  while (v3 < [(CUIPSDImageRef *)self numberOfLayers]);
  return v4;
}

- (int64_t)indexOfDrawingLayerType:(int64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  layerNames = [(CUIPSDImageRef *)self layerNames];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [layerNames countByEnumeratingWithState:&v13 objects:v17 count:16];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(layerNames);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 rangeOfString:indexOfDrawingLayerType__drawingLayerNames[type]] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = [layerNames indexOfObject:v10];
          goto LABEL_11;
        }
      }

      v7 = [layerNames countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

@end
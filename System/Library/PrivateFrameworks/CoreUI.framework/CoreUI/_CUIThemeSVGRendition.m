@interface _CUIThemeSVGRendition
- ($01BB1521EC52D44A8E7628F5261DCEC8)vectorGlyphAlignmentRectInsets;
- (CGSVGDocument)svgDocument;
- (CGSize)canvasSize;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)rawData;
- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4;
- (void)dealloc;
@end

@implementation _CUIThemeSVGRendition

- (CGSVGDocument)svgDocument
{
  svgDocument = self->_svgDocument;
  if (svgDocument)
  {
    goto LABEL_2;
  }

  if ([(_CUIThemeSVGRendition *)self rawData])
  {
    self->_svgDocument = CGSVGDocumentCreateFromData();
    if (self->_baseline == 0.0 && !self->_standardPointSize)
    {
      v5 = [(CUIThemeRendition *)self colorSpaceID];
      if (v5 == 1 || v5 == 4 || v5 == 3)
      {
        CGSVGDocumentSetPreferredColorSpace();
      }
    }

    if (!self->_svgDocument || (self->_fileData, self->_fileData = 0, (svgDocument = self->_svgDocument) == 0))
    {
      [(CUIThemeRendition *)self name];
      _CUILog(4, "CoreUI: %s '%@' couldn't create SVGDocument (%f) from data", v12, v13, v14, v15, v16, v17, "[_CUIThemeSVGRendition svgDocument]");
      return self->_svgDocument;
    }

LABEL_2:
    CFRetain(svgDocument);
    CFAutorelease(self->_svgDocument);
    return self->_svgDocument;
  }

  [(CUIThemeRendition *)self name];
  _CUILog(4, "CoreUI: %s '%@' couldn't create SVGDocument from null data", v6, v7, v8, v9, v10, v11, "[_CUIThemeSVGRendition svgDocument]");
  return 0;
}

- (id)rawData
{
  if ((*[(CUIThemeRendition *)self renditionFlags]& 0x3C) == 0x10)
  {
    fileData = self->_fileData;
    self->_fileData = CUIUncompressDataWithLZFSE(fileData);
    v4 = fileData;
    v5 = [(CUIThemeRendition *)self renditionFlags];
    *v5 &= 0xFFFFFFC3;
  }

  v6 = self->_fileData;

  return v6;
}

- (CGSize)canvasSize
{
  p_canvasSize = &self->_canvasSize;
  width = self->_canvasSize.width;
  if (width == 0.0 || (height = self->_canvasSize.height, height == 0.0))
  {
    [(_CUIThemeSVGRendition *)self svgDocument];
    CGSVGDocumentGetCanvasSize();
    p_canvasSize->width = width;
    p_canvasSize->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)vectorGlyphAlignmentRectInsets
{
  if (self->_isAlignmentRect)
  {
    [(_CUIThemeSVGRendition *)self canvasSize];
    right = (self->_alignmentRectInsets.right - v3) * 0.5;
    bottom = (self->_alignmentRectInsets.top - v5) * 0.5;
    left = right;
    top = bottom;
  }

  else
  {
    top = self->_alignmentRectInsets.top;
    left = self->_alignmentRectInsets.left;
    bottom = self->_alignmentRectInsets.bottom;
    right = self->_alignmentRectInsets.right;
  }

  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (void)dealloc
{
  if (self->_svgDocument)
  {
    CGSVGDocumentRelease();
    self->_svgDocument = 0;
  }

  v3.receiver = self;
  v3.super_class = _CUIThemeSVGRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v17.receiver = self;
  v17.super_class = _CUIThemeSVGRendition;
  v5 = [(CUIThemeRendition *)&v17 _initWithCSIHeader:a3 version:*&a4];
  v6 = v5;
  v5[85] = 0;
  v7 = &a3->var0 + 4 * a3->var11.var0 + a3->var10;
  v9 = *(v7 + 45);
  v8 = v7 + 180;
  v10 = *(v8 + 2);
  v11 = bswap32(v10);
  if (v9 == 1146569042)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = v8 - [objc_msgSend(v5 "srcData")];
  v14 = *(v8 + 1) != 0;
  v15 = [v6 renditionFlags];
  *v15 = *v15 & 0xFFFFFFC3 | (16 * v14);
  v6[28] = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v6 srcData], v13 + 12, v12);
  return v6;
}

- (void)_initalizeMetadataFromCSIData:(const _csiheader *)a3 version:(unsigned int)a4
{
  v25.receiver = self;
  v25.super_class = _CUIThemeSVGRendition;
  [CUIThemeRendition _initalizeMetadataFromCSIData:sel__initalizeMetadataFromCSIData_version_ version:?];
  var10 = a3->var10;
  var0 = a3->var11.var0;
  self->_containsMulticolorLayers = -1;
  self->_containsHierarchicalLayers = -1;
  if (var10)
  {
    v8 = &a3->var11.var1[var0];
    v9 = v8 + var10 + 4;
    v10 = v8 + 1;
    do
    {
      v11 = v10[1];
      if (*v10 == 1019)
      {
        v17 = v10[2];
        self->_renderingMode = v10[3];
        if (v17)
        {
          self->_containsMulticolorLayers = v10[4] & 1;
          v18 = (*(v10 + 8) >> 1) & 1;
        }

        else
        {
          LOWORD(v18) = -1;
          self->_containsMulticolorLayers = -1;
        }

        self->_containsHierarchicalLayers = v18;
        if (a4 < 0x34F)
        {
          v11 = 12;
        }
      }

      else if (*v10 == 1018)
      {
        self->_standardPointSize = v10[3];
        v12 = *(v10 + 5);
        self->_baseline = *(v10 + 4);
        self->_capline = v12;
        *&self->_alignmentRectInsets.left = vcvtq_f64_f32(*(v10 + 7));
        v13 = *(v10 + 10);
        self->_alignmentRectInsets.right = *(v10 + 9);
        self->_alignmentRectInsets.top = v13;
        self->_isAlignmentRect = (v10[2] & 1) == 0;
        v14 = objc_alloc_init(NSMutableArray);
        v15 = v10[2];
        if ((v15 & 0x12) != 0)
        {
          v16 = *(v10 + 6);
          self->_templateVersion = v16;
          if (v16 >= 3.0)
          {
            self->_isInterpolatable = (v15 & 4) != 0;
          }
        }

        else
        {
          self->_templateVersion = 1.0;
        }

        if (v10[11])
        {
          v19 = 0;
          v20 = v10 + 13;
          do
          {
            v21 = [NSNumber alloc];
            v22 = *v20;
            v20 += 2;
            v23 = [v21 initWithInt:v22];
            [(NSArray *)v14 addObject:v23];

            ++v19;
          }

          while (v19 < v10[11]);
        }

        self->_vectorSizes = v14;
      }

      v10 = (v10 + v11 + 8);
    }

    while (v10 < v9);
  }
}

@end
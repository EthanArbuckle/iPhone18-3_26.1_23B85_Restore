@interface CUIVectorGlyphLayer
+ (BOOL)_classesContainRenderModeClass:(id)class;
+ (BOOL)_indexFromStyleSuffix:(id)suffix integer:(unint64_t *)integer;
+ (CGColor)_fillColorFromStyle:(CGSVGAttributeMap *)style;
+ (CGColor)_strokeColorFromStyle:(CGSVGAttributeMap *)style;
+ (double)_strokeWidthForNode:(CGSVGNode *)node;
+ (double)_strokeWidthFromStyle:(CGSVGAttributeMap *)style;
+ (id)_colorNameForRenderingStyle:(id)style;
+ (id)_createLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate;
+ (id)_createPathFromStyle:(CGSVGAttributeMap *)style subpaths:(id)subpaths;
+ (id)_createShapeLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index shapes:(id)shapes delegate:(id)delegate;
+ (id)_createSimpleLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate;
+ (id)_createTreeWithLayerTreeNode:(CGSVGNode *)node modePrefix:(id)prefix layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate;
+ (id)_layerHierarchyStyleNames;
+ (id)_suffixForNamedStyleWithPrefix:(id)prefix styles:(id)styles;
+ (id)createLayerGroupWithLayerNames:(id)names delegate:(id)delegate;
+ (id)createLayerGroupWithLayerTree:(CGSVGNode *)tree layerNames:(id)names shapes:(id)shapes delegate:(id)delegate;
+ (int)_lineCapFromStyle:(CGSVGAttributeMap *)style;
+ (int)_lineJoinFromStyle:(CGSVGAttributeMap *)style;
+ (unsigned)_alwaysBreathesAtom;
+ (unsigned)_alwaysPulsesAtom;
+ (unsigned)_alwaysRotatesAtom;
+ (unsigned)_clearBehindAtom;
+ (unsigned)_drawAttachmentsAtom;
+ (unsigned)_fillActionAtom;
+ (unsigned)_gradientSizeToLayerAtom;
+ (unsigned)_gradientTypeAtom;
+ (unsigned)_layerTagsAtom;
+ (unsigned)_motionGroupAtom;
+ (unsigned)_subpathClipStrokeIndicesAtom;
+ (unsigned)_subpathIndicesAtom;
+ (unsigned)_variableDrawAtom;
+ (unsigned)_variableThresholdAtom;
- (BOOL)_anyLayerAlwaysPulses;
- (BOOL)_anyLayerAlwaysRotates;
- (BOOL)anyLayerNeedsWideGamutColor;
- (BOOL)participatesInVariableDraw;
- (CGColor)_colorForVariableThreshold:(double)threshold variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor;
- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor;
- (CGImage)createSublayerMaskUsingScaleFactor:(double)factor targetSize:(CGSize)size maskColor:(CGColor *)color;
- (CGPath)_visibleCompoundShape:(CGAffineTransform *)shape;
- (CGPath)copyClipShape;
- (CGPath)copyClipShapeWithStartProgress:(double)progress endProgress:(double)endProgress;
- (CGPath)shape;
- (CGPath)shapeAtScale:(double)scale;
- (id)__initGroupWithName:(id)name index:(unint64_t)index sublayers:(id)sublayers attributes:(CGSVGAttributeMap *)attributes style:(CGSVGAttributeMap *)style passthrough:(BOOL)passthrough delegate:(id)delegate;
- (id)_initWithName:(id)name index:(unint64_t)index shape:(id)shape strokeWidth:(double)width attributes:(CGSVGAttributeMap *)attributes style:(CGSVGAttributeMap *)style delegate:(id)delegate;
- (id)debugDescriptionWithIndentLevel:(unint64_t)level;
- (id)path;
- (id)pathAtScale:(double)scale;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes;
- (void)_setAllLayersAlwaysPulse:(BOOL)pulse;
- (void)_setAllLayersAlwaysRotate:(BOOL)rotate;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor;
@end

@implementation CUIVectorGlyphLayer

- (CGPath)copyClipShape
{
  referenceShape = [(CUIVectorGlyphLayer *)self referenceShape];
  if (referenceShape)
  {
    v4 = referenceShape;
    [(CUIVectorGlyphLayer *)self strokeWidth];
    if (v5 > 0.0 && [(CUIVectorGlyphLayer *)self isEraserLayer])
    {
      [(CUIVectorGlyphLayer *)self strokeWidth];
      v7 = v6;
      lineCap = [(CUIVectorGlyphLayer *)self lineCap];
      lineJoin = [(CUIVectorGlyphLayer *)self lineJoin];

      return CGPathCreateCopyByStrokingPath(v4, 0, v7, lineCap, lineJoin, 0.0);
    }

    else
    {

      return CGPathRetain(v4);
    }
  }

  clipPathFromSublayers = self->_clipPathFromSublayers;
  if (clipPathFromSublayers)
  {
    goto LABEL_33;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  sublayers = self->_sublayers;
  v13 = [(NSArray *)sublayers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v13)
  {
    clipPathFromSublayers = 0;
    goto LABEL_32;
  }

  v14 = v13;
  clipPathFromSublayers = 0;
  v15 = *v25;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v25 != v15)
      {
        objc_enumerationMutation(sublayers);
      }

      v17 = *(*(&v24 + 1) + 8 * i);
      if (![v17 isEraserLayer] || (objc_msgSend(v17, "opacity"), v18 >= 2.22044605e-16))
      {
        copyClipShape = [v17 copyClipShape];
        if (!copyClipShape)
        {
          continue;
        }

        v20 = copyClipShape;
        if (clipPathFromSublayers)
        {
          CopyByUnioningPath = CGPathCreateCopyByUnioningPath(clipPathFromSublayers, copyClipShape, 0);
          goto LABEL_25;
        }

        clipPathFromSublayers = MEMORY[0x193AC5C10](copyClipShape);
LABEL_27:
        CGPathRelease(v20);
        continue;
      }

      if (clipPathFromSublayers)
      {
        copyClipShape2 = [v17 copyClipShape];
        if (copyClipShape2)
        {
          v20 = copyClipShape2;
          CopyByUnioningPath = CGPathCreateCopyBySubtractingPath(clipPathFromSublayers, copyClipShape2, 0);
          if (!CopyByUnioningPath)
          {
            goto LABEL_27;
          }

LABEL_25:
          v23 = CopyByUnioningPath;
          CGPathRelease(clipPathFromSublayers);
          clipPathFromSublayers = v23;
          goto LABEL_27;
        }
      }
    }

    v14 = [(NSArray *)sublayers countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v14);
LABEL_32:
  self->_clipPathFromSublayers = clipPathFromSublayers;
LABEL_33:
  CGPathRetain(clipPathFromSublayers);
  return clipPathFromSublayers;
}

uint64_t __40__CUIVectorGlyphLayer__gradientTypeAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _gradientTypeAtom_gradientTypeAtom = result;
  return result;
}

+ (unsigned)_gradientSizeToLayerAtom
{
  if (_gradientSizeToLayerAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _gradientSizeToLayerAtom];
  }

  return _gradientSizeToLayerAtom_gradientSizeToLayerAtom;
}

uint64_t __47__CUIVectorGlyphLayer__gradientSizeToLayerAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _gradientSizeToLayerAtom_gradientSizeToLayerAtom = result;
  return result;
}

+ (unsigned)_clearBehindAtom
{
  if (_clearBehindAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _clearBehindAtom];
  }

  return _clearBehindAtom_clearBehindAtom;
}

+ (unsigned)_alwaysPulsesAtom
{
  if (_alwaysPulsesAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _alwaysPulsesAtom];
  }

  return _alwaysPulsesAtom_alwaysPulsesAtom;
}

uint64_t __41__CUIVectorGlyphLayer__alwaysRotatesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _alwaysRotatesAtom_alwaysRotatesAtom = result;
  return result;
}

uint64_t __39__CUIVectorGlyphLayer__clearBehindAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _clearBehindAtom_clearBehindAtom = result;
  return result;
}

+ (unsigned)_variableThresholdAtom
{
  if (_variableThresholdAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _variableThresholdAtom];
  }

  return _variableThresholdAtom_variableThresholdAtom;
}

uint64_t __45__CUIVectorGlyphLayer__variableThresholdAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _variableThresholdAtom_variableThresholdAtom = result;
  return result;
}

+ (unsigned)_fillActionAtom
{
  if (_fillActionAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _fillActionAtom];
  }

  return _fillActionAtom_fillActionAtom;
}

uint64_t __38__CUIVectorGlyphLayer__fillActionAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _fillActionAtom_fillActionAtom = result;
  return result;
}

+ (unsigned)_motionGroupAtom
{
  if (_motionGroupAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _motionGroupAtom];
  }

  return _motionGroupAtom_motionGroupAtom;
}

uint64_t __39__CUIVectorGlyphLayer__motionGroupAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _motionGroupAtom_motionGroupAtom = result;
  return result;
}

uint64_t __40__CUIVectorGlyphLayer__alwaysPulsesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _alwaysPulsesAtom_alwaysPulsesAtom = result;
  return result;
}

+ (unsigned)_alwaysRotatesAtom
{
  if (_alwaysRotatesAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _alwaysRotatesAtom];
  }

  return _alwaysRotatesAtom_alwaysRotatesAtom;
}

+ (unsigned)_alwaysBreathesAtom
{
  if (_alwaysBreathesAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _alwaysBreathesAtom];
  }

  return _alwaysBreathesAtom_alwaysBreathesAtom;
}

uint64_t __42__CUIVectorGlyphLayer__alwaysBreathesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _alwaysBreathesAtom_alwaysBreathesAtom = result;
  return result;
}

+ (unsigned)_layerTagsAtom
{
  if (_layerTagsAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _layerTagsAtom];
  }

  return _layerTagsAtom_layerTagsAtom;
}

uint64_t __37__CUIVectorGlyphLayer__layerTagsAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _layerTagsAtom_layerTagsAtom = result;
  return result;
}

- (BOOL)participatesInVariableDraw
{
  encodedClipStrokeKeyframes = [(CUIVectorGlyphPath *)[(CUIVectorGlyphLayer *)self referencePath] encodedClipStrokeKeyframes];
  if (encodedClipStrokeKeyframes)
  {
    LOBYTE(encodedClipStrokeKeyframes) = self->_variableDrawOffset != INFINITY && (variableDrawLength = self->_variableDrawLength, variableDrawLength != INFINITY) && variableDrawLength > 2.22044605e-16;
  }

  return encodedClipStrokeKeyframes;
}

+ (unsigned)_variableDrawAtom
{
  if (_variableDrawAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _variableDrawAtom];
  }

  return _variableDrawAtom_variableDrawAtom;
}

uint64_t __40__CUIVectorGlyphLayer__variableDrawAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _variableDrawAtom_variableDrawAtom = result;
  return result;
}

+ (unsigned)_drawAttachmentsAtom
{
  if (_drawAttachmentsAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _drawAttachmentsAtom];
  }

  return _drawAttachmentsAtom_drawAttachmentsAtom;
}

uint64_t __43__CUIVectorGlyphLayer__drawAttachmentsAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _drawAttachmentsAtom_drawAttachmentsAtom = result;
  return result;
}

+ (unsigned)_gradientTypeAtom
{
  if (_gradientTypeAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _gradientTypeAtom];
  }

  return _gradientTypeAtom_gradientTypeAtom;
}

+ (id)_layerHierarchyStyleNames
{
  if (_layerHierarchyStyleNames_onceToken_0 != -1)
  {
    +[CUIVectorGlyphLayer _layerHierarchyStyleNames];
  }

  return _layerHierarchyStyleNames_layerHierarchyStyleNames_0;
}

void *__48__CUIVectorGlyphLayer__layerHierarchyStyleNames__block_invoke()
{
  result = &unk_1F00F7F78;
  _layerHierarchyStyleNames_layerHierarchyStyleNames_0 = result;
  return result;
}

- (void)dealloc
{
  referencePath = self->_referencePath;
  if (referencePath)
  {

    self->_referencePath = 0;
  }

  clipPathFromSublayers = self->_clipPathFromSublayers;
  if (clipPathFromSublayers)
  {
    CGPathRelease(clipPathFromSublayers);
    self->_clipPathFromSublayers = 0;
  }

  drawAttachments = self->_drawAttachments;
  if (drawAttachments)
  {

    self->_drawAttachments = 0;
  }

  objc_storeWeak(&self->_delegate, 0);
  v6.receiver = self;
  v6.super_class = CUIVectorGlyphLayer;
  [(CUIVectorGlyphLayer *)&v6 dealloc];
}

+ (double)_strokeWidthForNode:(CGSVGNode *)node
{
  if (node && CGSVGNodeGetAttributeMap() && CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetFloat();
  }

  return 0.0;
}

+ (unsigned)_subpathIndicesAtom
{
  if (_subpathIndicesAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _subpathIndicesAtom];
  }

  return _subpathIndicesAtom_subpathIndicesAtom;
}

uint64_t __42__CUIVectorGlyphLayer__subpathIndicesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _subpathIndicesAtom_subpathIndicesAtom = result;
  return result;
}

+ (unsigned)_subpathClipStrokeIndicesAtom
{
  if (_subpathClipStrokeIndicesAtom_onceToken != -1)
  {
    +[CUIVectorGlyphLayer _subpathClipStrokeIndicesAtom];
  }

  return _subpathClipStrokeIndicesAtom_subpathClipStrokeIndicesAtom;
}

uint64_t __52__CUIVectorGlyphLayer__subpathClipStrokeIndicesAtom__block_invoke()
{
  result = CGSVGAtomFromString();
  _subpathClipStrokeIndicesAtom_subpathClipStrokeIndicesAtom = result;
  return result;
}

+ (BOOL)_classesContainRenderModeClass:(id)class
{
  if ([class containsString:@"monochrome-"] & 1) != 0 || (objc_msgSend(class, "containsString:", @"monochrome-"))
  {
    return 1;
  }

  return [class containsString:@"hierarchical-"];
}

+ (id)_suffixForNamedStyleWithPrefix:(id)prefix styles:(id)styles
{
  v5 = [styles componentsSeparatedByString:@" "];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 hasPrefix:prefix])
        {
          v11 = [v10 rangeOfString:prefix];
          return [v10 stringByReplacingCharactersInRange:v11 withString:{v12, &stru_1F00D74D0}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

+ (BOOL)_indexFromStyleSuffix:(id)suffix integer:(unint64_t *)integer
{
  if (suffix && integer)
  {
    suffixCopy = suffix;
    v6 = [suffix rangeOfString:@":"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 1 && (suffixCopy = [suffixCopy substringToIndex:v6]) != 0)
    {
      v9 = 0;
      if ([[NSScanner scannerWithString:?], "scanInteger:", &v9])
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          *integer = v9;
          return 1;
        }
      }
    }

    goto LABEL_10;
  }

  if (integer)
  {
LABEL_10:
    result = 0;
    *integer = 0;
    return result;
  }

  return 0;
}

+ (id)_createPathFromStyle:(CGSVGAttributeMap *)style subpaths:(id)subpaths
{
  [self _subpathIndicesAtom];
  result = CGSVGAttributeMapGetAttribute();
  if (result)
  {
    v7 = CGSVGAttributeCopyString();
    v8 = [v7 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F00D74D0];

    v9 = [v8 componentsSeparatedByString:@" "];
    [self _subpathClipStrokeIndicesAtom];
    if (CGSVGAttributeMapGetAttribute())
    {
      v10 = CGSVGAttributeCopyString();
      v11 = [v10 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F00D74D0];

      v12 = [v11 componentsSeparatedByString:@" "];
    }

    else
    {
      v12 = 0;
    }

    return [CUIVectorGlyphPath createFromSubpaths:subpaths indices:v9 clipStrokeIndices:v12];
  }

  return result;
}

+ (id)_createTreeWithLayerTreeNode:(CGSVGNode *)node modePrefix:(id)prefix layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate
{
  if (!node)
  {
    return 0;
  }

  ChildCount = CGSVGNodeGetChildCount();
  v29 = [[NSMutableArray alloc] initWithCapacity:ChildCount];
  if (ChildCount)
  {
    v12 = 0;
    while (1)
    {
      ChildAtIndex = CGSVGNodeGetChildAtIndex();
      if (!CGSVGNodeFindAttribute())
      {
        break;
      }

      v14 = CGSVGAttributeCopyString();
      v15 = [CUIVectorGlyphLayer _classesContainRenderModeClass:v14];
      v16 = v14;
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      v17 = [self _suffixForNamedStyleWithPrefix:prefix styles:v14];
      if (v17)
      {
        v18 = v17;
        v31 = 0;
        if ([self _indexFromStyleSuffix:v17 integer:&v31])
        {
          v19 = [NSString stringWithFormat:@"%@%@", prefix, v18];
          v20 = [self _createLayerWithLayerTreeNode:ChildAtIndex layerName:v19 index:v31 subpaths:subpaths delegate:delegate];
          [v29 addObject:v20];
        }
      }

LABEL_15:
      if (ChildCount == ++v12)
      {
        goto LABEL_16;
      }
    }

    v14 = 0;
LABEL_10:
    v21 = [self _suffixForNamedStyleWithPrefix:@"group-" styles:v14];
    v31 = 0;
    if ([self _indexFromStyleSuffix:v21 integer:&v31])
    {
      v22 = [NSString stringWithFormat:@"%@%@", @"group-", v21];
      v23 = [self _createTreeWithLayerTreeNode:ChildAtIndex modePrefix:prefix layerName:v22 index:v31 subpaths:subpaths delegate:delegate];
      [v29 addObject:v23];
    }

    else
    {
      v24 = [NSString stringWithFormat:@"%@0", @"anonymousGroup-"];
      v23 = [self _createTreeWithLayerTreeNode:ChildAtIndex modePrefix:prefix layerName:v24 index:v31 subpaths:subpaths delegate:delegate];
      if ([v23 sublayers])
      {
        [v29 addObjectsFromArray:{objc_msgSend(v23, "sublayers")}];
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v25 = [[self alloc] __initTreeWithName:name index:index sublayers:v29 attributes:0 style:objc_msgSend(delegate delegate:{"styleForLayerName:", name), delegate}];

  return v25;
}

+ (id)_createLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate
{
  if (CGSVGNodeGetChildCount())
  {

    return [self _createShapeLayerWithLayerTreeNode:node layerName:name index:index shapes:subpaths delegate:delegate];
  }

  else
  {

    return [self _createSimpleLayerWithLayerTreeNode:node layerName:name index:index subpaths:subpaths delegate:delegate];
  }
}

+ (id)_createSimpleLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index subpaths:(id)subpaths delegate:(id)delegate
{
  if (!node)
  {
    return 0;
  }

  AttributeMap = CGSVGNodeGetAttributeMap();
  v14 = [delegate styleForLayerName:name];
  v15 = [self _createPathFromStyle:v14 subpaths:subpaths];
  [self _strokeWidthForNode:node];
  v17 = [[self alloc] _initWithName:name index:index shape:v15 strokeWidth:AttributeMap attributes:v14 style:delegate delegate:v16];
  if (v15)
  {
  }

  return v17;
}

+ (id)_createShapeLayerWithLayerTreeNode:(CGSVGNode *)node layerName:(id)name index:(unint64_t)index shapes:(id)shapes delegate:(id)delegate
{
  if (!node)
  {
    return 0;
  }

  ChildCount = CGSVGNodeGetChildCount();
  AttributeMap = CGSVGNodeGetAttributeMap();
  v11 = [[NSMutableArray alloc] initWithCapacity:ChildCount];
  if (ChildCount)
  {
    v12 = 0;
    shapesCopy = shapes;
    do
    {
      ChildAtIndex = CGSVGNodeGetChildAtIndex();
      if (CGSVGNodeFindAttribute())
      {
        v14 = CGSVGAttributeCopyString();
        if ([v14 hasPrefix:@"shapeGroupLayer-"])
        {
          v15 = [delegate styleForLayerName:v14];
          v16 = v14;
          if (v15)
          {
            if (CGSVGNodeGetChildCount())
            {
              v17 = [self _createShapeLayerWithLayerTreeNode:ChildAtIndex layerName:v14 index:v12 shapes:shapes delegate:delegate];
              [v11 addObject:v17];
            }

            else
            {
              v19 = [self _createPathFromStyle:v15 subpaths:shapes];
              if (v19)
              {
                [self _strokeWidthForNode:ChildAtIndex];
                v21 = [[self alloc] _initWithName:v14 index:v12 shape:v19 strokeWidth:AttributeMap attributes:v15 style:delegate delegate:v20];
                [v11 addObject:v21];
              }

              shapes = shapesCopy;
            }
          }
        }

        else
        {
          v18 = v14;
        }
      }

      ++v12;
    }

    while (ChildCount != v12);
  }

  v22 = [[self alloc] _initWithName:name index:index sublayers:v11 attributes:0 style:objc_msgSend(delegate delegate:{"styleForLayerName:", name, AttributeMap), delegate}];

  return v22;
}

+ (id)createLayerGroupWithLayerTree:(CGSVGNode *)tree layerNames:(id)names shapes:(id)shapes delegate:(id)delegate
{
  if (!tree)
  {
    return 0;
  }

  v7 = [names count];
  v26 = [[NSMutableArray alloc] initWithCapacity:v7];
  ChildCount = CGSVGNodeGetChildCount();
  if (v7)
  {
    v9 = ChildCount;
    for (i = 0; i != v7; ++i)
    {
      v11 = [names objectAtIndex:i];
      if (v9)
      {
        v12 = v11;
        v13 = 0;
        while (1)
        {
          ChildAtIndex = CGSVGNodeGetChildAtIndex();
          if (CGSVGNodeFindAttribute())
          {
            v15 = CGSVGAttributeCopyString();
            v16 = [v15 containsString:v12];

            if (ChildAtIndex)
            {
              if (v16)
              {
                break;
              }
            }
          }

          if (v9 == ++v13)
          {
            goto LABEL_15;
          }
        }

        if (CGSVGNodeGetChildCount())
        {
          v17 = [self _createShapeLayerWithLayerTreeNode:ChildAtIndex layerName:v12 index:i shapes:shapes delegate:delegate];
          [v26 addObject:v17];
        }

        else
        {
          AttributeMap = CGSVGNodeGetAttributeMap();
          v18 = [delegate styleForLayerName:v12];
          v19 = [self _createPathFromStyle:v18 subpaths:shapes];
          [delegate strokeWidthForLayerNamed:v12];
          v21 = [[self alloc] _initWithName:v12 index:i shape:v19 strokeWidth:AttributeMap attributes:v18 style:delegate delegate:v20];
          [v26 addObject:v21];

          if (v19)
          {
          }
        }
      }

LABEL_15:
      ;
    }
  }

  v22 = [[self alloc] _initWithName:@"root" index:0 sublayers:v26 attributes:0 style:0 delegate:delegate];

  return v22;
}

+ (id)createLayerGroupWithLayerNames:(id)names delegate:(id)delegate
{
  if (!names)
  {
    return 0;
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(names, "count")}];
  v8 = [names count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [names objectAtIndex:i];
      v12 = [delegate styleForLayerName:v11];
      v13 = [delegate attributesForLayerNamed:v11];
      v14 = [delegate pathForLayerNamed:v11];
      [delegate strokeWidthForLayerNamed:v11];
      v16 = [[self alloc] _initWithName:v11 index:i shape:v14 strokeWidth:v13 attributes:v12 style:delegate delegate:v15];
      [v7 addObject:v16];
    }
  }

  v17 = [[self alloc] _initWithName:@"root" index:0 sublayers:v7 attributes:0 style:0 delegate:delegate];

  return v17;
}

- (void)_readCSSAttributes:(CGSVGAttributeMap *)attributes styleAttributes:(CGSVGAttributeMap *)styleAttributes
{
  [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] templateVersion];
  if (styleAttributes)
  {
    v8 = v7;
    if (CGSVGAttributeMapGetAttribute())
    {
      if (CGSVGAttributeGetFloat())
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 1.0;
      }
    }

    else
    {
      v9 = 1.0;
    }

    +[CUIVectorGlyphLayer _clearBehindAtom];
    Attribute = CGSVGAttributeMapGetAttribute();
    if (Attribute)
    {
      Boolean = CUISVGAttributeGetBoolean(Attribute);
    }

    else
    {
      Boolean = 0;
    }

    if (v8 >= 4.0)
    {
      +[CUIVectorGlyphLayer _variableThresholdAtom];
      if (CGSVGAttributeMapGetAttribute())
      {
        CGSVGAttributeGetFloat();
      }
    }

    if (v8 >= 5.0)
    {
      +[CUIVectorGlyphLayer _fillActionAtom];
      if (CGSVGAttributeMapGetAttribute())
      {
        v18 = CGSVGAttributeCopyString();
        v19 = [v18 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F00D74D0];

        if ([@"erase" caseInsensitiveCompare:v19])
        {
          v20 = [@"draw" caseInsensitiveCompare:v19];
          v51 = 0;
          v52 = 0;
          v13 = 0;
          Boolean = 0;
          if (v20)
          {
            v9 = 0.0;
          }

          else
          {
            v9 = 1.0;
          }
        }

        else
        {
          v51 = 0;
          v52 = 0;
          v13 = 0;
          v9 = 0.0;
          Boolean = 1;
        }
      }

      else
      {
        +[CUIVectorGlyphLayer _motionGroupAtom];
        if (CGSVGAttributeMapGetAttribute())
        {
          Float = CGSVGAttributeGetFloat();
          v22 = 0.0;
          if (!Float)
          {
            v22 = 0;
          }

          v52 = v22;
        }

        else
        {
          v52 = 0;
        }

        +[CUIVectorGlyphLayer _alwaysPulsesAtom];
        if (CGSVGAttributeMapGetAttribute() && CGSVGAttributeGetAtom())
        {
          v23 = CGSVGAtomCopyString();
          BYTE4(v51) = [v23 BOOLValue];
        }

        else
        {
          BYTE4(v51) = 0;
        }

        +[CUIVectorGlyphLayer _alwaysRotatesAtom];
        if (CGSVGAttributeMapGetAttribute() && CGSVGAttributeGetAtom())
        {
          v24 = CGSVGAtomCopyString();
          bOOLValue = [v24 BOOLValue];

          v13 = bOOLValue;
        }

        else
        {
          v13 = 0;
        }

        +[CUIVectorGlyphLayer _alwaysBreathesAtom];
        if (CGSVGAttributeMapGetAttribute() && CGSVGAttributeGetAtom())
        {
          v26 = CGSVGAtomCopyString();
          LOBYTE(v51) = [v26 BOOLValue];
        }

        else
        {
          LOBYTE(v51) = 0;
        }
      }
    }

    else
    {
      v51 = 0;
      v52 = 0;
      v13 = 0;
    }

    if (v8 >= 6.0 && (+[CUIVectorGlyphLayer _layerTagsAtom], CGSVGAttributeMapGetAttribute()))
    {
      v14 = Boolean;
      v27 = CGSVGAttributeCopyString();
      v28 = [v27 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F00D74D0];

      v11 = [v28 componentsSeparatedByString:@" "];
    }

    else
    {
      v14 = Boolean;
      v11 = 0;
    }

    if (v8 >= 7.0)
    {
      +[CUIVectorGlyphLayer _variableDrawAtom];
      v31 = CGSVGAttributeMapGetAttribute();
      +[CUIVectorGlyphLayer _drawAttachmentsAtom];
      v10 = CGSVGAttributeMapGetAttribute();
      if (v31 && CGSVGAttributeGetFloatCount() == 2 && CGSVGAttributeGetFloats())
      {
        __asm { FMOV            V2.2D, #1.0 }

        v37 = vbslq_s8(vandq_s8(vcgezq_f64(xmmword_18E0222E0), vcgeq_f64(_Q2, xmmword_18E0222E0)), xmmword_18E0222E0, vdupq_n_s64(0x7FF0000000000000uLL));
      }

      else
      {
        v37 = vdupq_n_s64(0x7FF0000000000000uLL);
      }

      v50 = v37;
      if (v10)
      {
        [(CUIVectorGlyphLayer *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v38 = CGSVGAttributeCopyString();
          unsafeDrawAttachmentData = [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] unsafeDrawAttachmentData];
          v10 = [[CUIVectorGlyphLayerDrawAttachmentStore alloc] initFromSVGString:v38 attachmentData:unsafeDrawAttachmentData];
        }

        else
        {
          v10 = 0;
        }
      }

      +[CUIVectorGlyphLayer _gradientTypeAtom];
      if (CGSVGAttributeMapGetAttribute() && (v40 = CGSVGAttributeCopyString(), v41 = [v40 stringByReplacingOccurrencesOfString:@" withString:&stru_1F00D74D0], v40, objc_msgSend(@"auto", "caseInsensitiveCompare:"", v41)))
      {
        if ([@"none" caseInsensitiveCompare:v41])
        {
          _CUILog(4, "CoreUI: Symbol SVG contains an unexpected gradient type: %@", v42, v43, v44, v45, v46, v47, v41);
        }

        LOBYTE(styleAttributes) = 0;
        v12 = 1;
      }

      else
      {
        +[CUIVectorGlyphLayer _gradientSizeToLayerAtom];
        if (CGSVGAttributeMapGetAttribute())
        {
          if (CGSVGAttributeGetAtom())
          {
            v48 = CGSVGAtomCopyString();
            LOBYTE(styleAttributes) = [v48 BOOLValue];
          }

          else
          {
            LOBYTE(styleAttributes) = 0;
          }
        }

        else
        {
          LOBYTE(styleAttributes) = 0;
        }

        v12 = 0;
      }

      v15 = v50;
      if (attributes)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0;
      LOBYTE(styleAttributes) = 0;
      v12 = 0;
      v15 = vdupq_n_s64(0x7FF0000000000000uLL);
      if (attributes)
      {
        goto LABEL_46;
      }
    }

LABEL_68:
    v30 = 0;
    v29 = 1;
    goto LABEL_69;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v51 = 0;
  v52 = 0;
  v13 = 0;
  v14 = 0;
  v15 = vdupq_n_s64(0x7FF0000000000000uLL);
  v9 = 1.0;
  if (!attributes)
  {
    goto LABEL_68;
  }

LABEL_46:
  v49 = v15;
  v29 = [objc_opt_class() _lineCapFromStyle:attributes];
  v30 = [objc_opt_class() _lineJoinFromStyle:attributes];
  v15 = v49;
LABEL_69:
  self->_lineCap = v29;
  self->_lineJoin = v30;
  self->_isEraserLayer = v14;
  self->_opacity = v9;
  self->_valueThreshold = INFINITY;
  self->_motionGroup = v52;
  self->_alwaysPulses = BYTE4(v51);
  self->_alwaysRotates = v13;
  self->_alwaysBreathes = v51;
  *&self->_variableDrawOffset = v15;
  self->_gradientType = v12;
  self->_gradientAlignsToLayer = styleAttributes;
  self->_drawAttachments = v10;
  self->_tags = v11;
}

- (id)_initWithName:(id)name index:(unint64_t)index shape:(id)shape strokeWidth:(double)width attributes:(CGSVGAttributeMap *)attributes style:(CGSVGAttributeMap *)style delegate:(id)delegate
{
  v18.receiver = self;
  v18.super_class = CUIVectorGlyphLayer;
  v16 = [(CUIVectorGlyphLayer *)&v18 init];
  if (v16)
  {
    *(v16 + 5) = [name copy];
    *(v16 + 6) = index;
    objc_storeWeak(v16 + 17, delegate);
    *(v16 + 29) = 257;
    if (shape)
    {
      *(v16 + 16) = [shape copy];
    }

    [v16 _readCSSAttributes:attributes styleAttributes:style];
    *(v16 + 14) = width;
  }

  return v16;
}

- (id)__initGroupWithName:(id)name index:(unint64_t)index sublayers:(id)sublayers attributes:(CGSVGAttributeMap *)attributes style:(CGSVGAttributeMap *)style passthrough:(BOOL)passthrough delegate:(id)delegate
{
  v39.receiver = self;
  v39.super_class = CUIVectorGlyphLayer;
  v15 = [(CUIVectorGlyphLayer *)&v39 init];
  if (v15)
  {
    v15->_name = [name copy];
    v15->_index = index;
    objc_storeWeak(&v15->_delegate, delegate);
    v15->_isPassthrough = passthrough;
    v15->_supportsVariableDraw = 1;
    v15->_sublayers = sublayers;
    [(CUIVectorGlyphLayer *)v15 _readCSSAttributes:attributes styleAttributes:style];
    if ([name isEqualToString:@"root"])
    {
      if (![sublayers count])
      {
        goto LABEL_29;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = [sublayers objectAtIndexedSubscript:v17];
        if ([v18 participatesInVariableDraw])
        {
          if ([v18 drawAttachments])
          {
            v19 = [objc_msgSend(objc_msgSend(v18 "referencePath")];
            v20 = [objc_msgSend(v18 "drawAttachments")];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              while (1)
              {
                v23 = *([objc_msgSend(v18 drawAttachments] + v22);
                v24 = v23[1];
                v36 = *v23;
                v37 = v24;
                v38 = *(v23 + 4);
                if (v22 < DWORD1(v24))
                {
                  break;
                }

                v16 = 1;
                if (v15->_supportsVariableDraw && ++v22 < v21)
                {
                  continue;
                }

                goto LABEL_18;
              }

              v25 = 40;
              do
              {
                v26 = [NSNumber alloc];
                *&v27 = *(&v36 + v25);
                v28 = [v26 initWithFloat:{v27, v36, v37, v38}];
                if ([v19 containsObject:v28])
                {
                  v15->_supportsVariableDraw = 0;
                }

                v25 += 4;
              }

              while (v15->_supportsVariableDraw);
            }
          }

          v16 = 1;
        }

LABEL_18:
        if ([v18 drawAttachments])
        {
          v29 = [sublayers count];
          v30 = [objc_msgSend(v18 "drawAttachments")];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            while (1)
            {
              v33 = *([objc_msgSend(v18 "drawAttachments")] + v32);
              v34 = *(v33 + 12);
              if (v29 > v34 && (([objc_msgSend(sublayers objectAtIndexedSubscript:{*(v33 + 12)), "participatesInVariableDraw"}] & 1) != 0 || v17 < v34))
              {
                break;
              }

              if (v31 == ++v32)
              {
                goto LABEL_27;
              }
            }

            v15->_supportsVariableDraw = 0;
          }
        }

LABEL_27:
        ++v17;
      }

      while (v17 < [sublayers count]);
      if ((v16 & 1) == 0)
      {
LABEL_29:
        v15->_supportsVariableDraw = 0;
      }
    }

    v15->_strokeWidth = 0.0;
  }

  return v15;
}

- (id)debugDescriptionWithIndentLevel:(unint64_t)level
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  name = [(CUIVectorGlyphLayer *)self name];
  index = [(CUIVectorGlyphLayer *)self index];
  referenceShape = [(CUIVectorGlyphLayer *)self referenceShape];
  [(CUIVectorGlyphLayer *)self opacity];
  v11 = v10;
  if ([(CUIVectorGlyphLayer *)self isEraserLayer])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [(CUIVectorGlyphLayer *)self valueThreshold];
  if (v13 == INFINITY)
  {
    v14 = @"<unspecified>";
  }

  else
  {
    [(CUIVectorGlyphLayer *)self valueThreshold];
    v14 = [NSNumber numberWithDouble:?];
  }

  motionGroup = [(CUIVectorGlyphLayer *)self motionGroup];
  alwaysPulses = [(CUIVectorGlyphLayer *)self alwaysPulses];
  v17 = @"YES";
  if (!alwaysPulses)
  {
    v17 = @"NO";
  }

  v18 = [NSString stringWithFormat:@"<%@: %p, %@, layerIndex=%lu, shape=%p, opacity=%.2f, eraser=%@, value=%@, motionGroup=%lu, alwaysPulses=%@", v6, self, name, index, referenceShape, v11, v12, v14, motionGroup, v17];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  sublayers = self->_sublayers;
  v20 = [(NSArray *)sublayers countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(sublayers);
        }

        v24 = [*(*(&v28 + 1) + 8 * i) debugDescriptionWithIndentLevel:level + 1];
        if (level)
        {
          levelCopy = level;
          v26 = @"\n";
          do
          {
            v26 = [(__CFString *)v26 stringByAppendingString:@"\t"];
            --levelCopy;
          }

          while (levelCopy);
        }

        else
        {
          v26 = @"\n";
        }

        v18 = [(NSString *)v18 stringByAppendingString:[(__CFString *)v26 stringByAppendingString:v24]];
      }

      v21 = [(NSArray *)sublayers countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  return v18;
}

- (CGPath)shape
{
  if (objc_loadWeak(&self->_delegate))
  {
    [objc_loadWeak(&self->_delegate) scale];
  }

  else
  {
    v3 = 1.0;
  }

  return [(CUIVectorGlyphLayer *)self shapeAtScale:v3];
}

- (CGPath)shapeAtScale:(double)scale
{
  v3 = [(CUIVectorGlyphLayer *)self pathAtScale:scale];
  if (!v3)
  {
    return 0;
  }

  path = [v3 path];
  CGPathRetain(path);
  CFAutorelease(path);
  return path;
}

- (id)path
{
  if (objc_loadWeak(&self->_delegate))
  {
    [objc_loadWeak(&self->_delegate) scale];
  }

  else
  {
    v3 = 1.0;
  }

  return [(CUIVectorGlyphLayer *)self pathAtScale:v3];
}

- (id)pathAtScale:(double)scale
{
  if (!self->_referencePath || !objc_loadWeak(&self->_delegate))
  {
    return 0;
  }

  [objc_loadWeak(&self->_delegate) _requestedPointSizeRatio];
  v6 = v5 * scale;
  if (fabs(v6 + -1.0) >= 2.22044605e-16)
  {
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v6, v6);
    referencePath = self->_referencePath;
    v12 = v13;
    v7 = [(CUIVectorGlyphPath *)referencePath createCopyApplyingTransform:&v12];
  }

  else
  {
    v7 = self->_referencePath;
  }

  v8 = v7;
  v10 = v7;
  return v8;
}

- (CGPath)_visibleCompoundShape:(CGAffineTransform *)shape
{
  shape = [(CUIVectorGlyphLayer *)self shape];
  if (shape)
  {
    if (shape)
    {

      JUMPOUT(0x193AC5C50);
    }

    return CGPathRetain(shape);
  }

  else
  {
    isPassthrough = [(CUIVectorGlyphLayer *)self isPassthrough];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    sublayers = [(CUIVectorGlyphLayer *)self sublayers];
    v8 = [(NSArray *)sublayers countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v8)
    {
      return 0;
    }

    v9 = v8;
    Mutable = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(sublayers);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isEraserLayer])
        {
          [v13 opacity];
          v15 = v14 > 2.22044605e-16 ? 1 : isPassthrough;
          if (v15 != 1)
          {
            continue;
          }
        }

        v16 = [v13 _visibleCompoundShape:shape];
        if (v16)
        {
          v17 = v16;
          if (!Mutable)
          {
            Mutable = CGPathCreateMutable();
          }

          CGPathAddPath(Mutable, 0, v17);
          CGPathRelease(v17);
        }
      }

      v9 = [(NSArray *)sublayers countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
    return Mutable;
  }
}

- (BOOL)_anyLayerAlwaysPulses
{
  if (self->_alwaysPulses)
  {
LABEL_2:
    LOBYTE(v2) = 1;
    return v2;
  }

  v2 = [(NSArray *)self->_sublayers count];
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    sublayers = self->_sublayers;
    v2 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v5 = v2;
      v6 = *v10;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(sublayers);
        }

        if ([*(*(&v9 + 1) + 8 * v7) _anyLayerAlwaysPulses])
        {
          goto LABEL_2;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
          LOBYTE(v2) = 0;
          if (v5)
          {
            goto LABEL_6;
          }

          return v2;
        }
      }
    }
  }

  return v2;
}

- (void)_setAllLayersAlwaysPulse:(BOOL)pulse
{
  if (self->_opacity != 0.0)
  {
    pulseCopy = pulse;
    self->_alwaysPulses = pulse;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    sublayers = self->_sublayers;
    v5 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(sublayers);
          }

          [*(*(&v9 + 1) + 8 * i) _setAllLayersAlwaysPulse:pulseCopy];
        }

        v6 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (BOOL)_anyLayerAlwaysRotates
{
  if (self->_alwaysRotates)
  {
LABEL_2:
    LOBYTE(v2) = 1;
    return v2;
  }

  v2 = [(NSArray *)self->_sublayers count];
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    sublayers = self->_sublayers;
    v2 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v2)
    {
      v5 = v2;
      v6 = *v10;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(sublayers);
        }

        if ([*(*(&v9 + 1) + 8 * v7) _anyLayerAlwaysRotates])
        {
          goto LABEL_2;
        }

        if (v5 == ++v7)
        {
          v5 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
          LOBYTE(v2) = 0;
          if (v5)
          {
            goto LABEL_6;
          }

          return v2;
        }
      }
    }
  }

  return v2;
}

- (void)_setAllLayersAlwaysRotate:(BOOL)rotate
{
  rotateCopy = rotate;
  self->_alwaysRotates = rotate;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  sublayers = self->_sublayers;
  v5 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v9 + 1) + 8 * i) _setAllLayersAlwaysRotate:rotateCopy];
      }

      v6 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)anyLayerNeedsWideGamutColor
{
  if ([(NSArray *)self->_sublayers count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    sublayers = self->_sublayers;
    v4 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(sublayers);
          }

          if ([*(*(&v9 + 1) + 8 * i) needsWideGamut])
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v5 = [(NSArray *)sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
        LOBYTE(v4) = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else if (self->_referencePath)
  {

    LOBYTE(v4) = [(CUIVectorGlyphLayer *)self needsWideGamut];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (CGColor)_colorForVariableThreshold:(double)threshold variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor
{
  if (threshold == INFINITY || color == 0)
  {
    return color;
  }

  CopyWithAlpha = fillColor;
  v10 = threshold <= maxValue;
  if (threshold <= 0.0)
  {
    v10 = threshold < maxValue;
  }

  if (maxValue == INFINITY)
  {
    v10 = 1;
  }

  v11 = threshold >= value || value == INFINITY;
  if (v11 && v10)
  {
    return color;
  }

  if (!fillColor)
  {
    Alpha = CGColorGetAlpha(color);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(color, Alpha * 0.3);
    CFAutorelease(CopyWithAlpha);
  }

  return CopyWithAlpha;
}

- (void)drawInContext:(CGContext *)context scaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor
{
  height = size.height;
  width = size.width;
  [objc_loadWeak(&self->_delegate) referenceCanvasSize];
  v19 = v18;
  v21 = v20;
  resolvedVariableMode = [objc_loadWeak(&self->_delegate) resolvedVariableMode];
  v23 = [objc_loadWeak(&self->_delegate) resolvedFillStyle] == 2 && -[CUIVectorGlyphLayer gradientType](self, "gradientType") == 0;
  if (resolvedVariableMode)
  {
    valueCopy = value;
  }

  else
  {
    maxValue = INFINITY;
    valueCopy = INFINITY;
  }

  CGContextSaveGState(context);
  isEraserLayer = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v27 = v26;
  if (isEraserLayer)
  {
    v28 = kCGBlendModeCopy;
  }

  else
  {
    v28 = kCGBlendModeNormal;
  }

  SRGBClear = color;
  if (v26 < 1.0)
  {
    Alpha = CGColorGetAlpha(color);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(color, v27 * Alpha);
    SRGBClear = CFAutorelease(CopyWithAlpha);
  }

  v32 = valueCopy == INFINITY && maxValue == INFINITY;
  endPoint_8 = v21;
  if (v32)
  {
    participatesInVariableDraw = 0;
    goto LABEL_32;
  }

  [(CUIVectorGlyphLayer *)self valueThreshold];
  v34 = v33;
  if (resolvedVariableMode == 1)
  {
    participatesInVariableDraw = 0;
    v36 = v33 != INFINITY;
    if (v33 != INFINITY)
    {
      goto LABEL_22;
    }
  }

  else
  {
    participatesInVariableDraw = [(CUIVectorGlyphLayer *)self participatesInVariableDraw];
    v36 = 0;
  }

  if (participatesInVariableDraw)
  {
LABEL_22:
    if (!fillColor)
    {
      v37 = isEraserLayer ^ 1;
      if (v27 >= 2.22044605e-16)
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = CGColorGetAlpha(SRGBClear);
        fillColor = CGColorCreateCopyWithAlpha(SRGBClear, v38 * 0.3);
      }

      else
      {
        SRGBClear = _CUIColorGetSRGBClear();
        fillColor = CGColorCreateCopyWithAlpha(SRGBClear, 0.7);
        v28 = kCGBlendModeDestinationIn;
      }

      CFAutorelease(fillColor);
    }

    if (v36)
    {
      SRGBClear = [(CUIVectorGlyphLayer *)self _colorForVariableThreshold:SRGBClear variableMinValue:fillColor variableMaxValue:v34 onFillColor:valueCopy offFillColor:maxValue];
    }
  }

  v21 = endPoint_8;
LABEL_32:
  copyClipShape = [(CUIVectorGlyphLayer *)self copyClipShape];
  if (copyClipShape)
  {
    v40 = copyClipShape;
    CGContextScaleCTM(context, width * factor / v19, height * factor / v21);
    CGContextScaleCTM(context, 1.0, -1.0);
    MidX = 0.0;
    CGContextTranslateCTM(context, 0.0, -v21);
    CGContextSetBlendMode(context, v28);
    if (v23)
    {
      if ([(CUIVectorGlyphLayer *)self gradientAlignsToLayer])
      {
        PathBoundingBox = CGPathGetPathBoundingBox(v40);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        v19 = PathBoundingBox.size.width;
        v21 = PathBoundingBox.size.height;
      }

      else
      {
        x = 0.0;
        y = 0.0;
      }

      v79.origin.x = x;
      v79.origin.y = y;
      v79.size.width = v19;
      v79.size.height = v21;
      MidX = CGRectGetMidX(v79);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = v19;
      v80.size.height = v21;
      MaxY = CGRectGetMaxY(v80);
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = v19;
      v81.size.height = v21;
      MinY = CGRectGetMinY(v81);
      if (participatesInVariableDraw)
      {
        v45 = MaxY;
        endPoint = MidX;
        goto LABEL_42;
      }

      v69 = SRGBClear;
      v63 = [CUINamedVectorGlyph _createAxialGradientWithColors:[NSArray arrayWithObjects:&v69 count:1] useSCurve:0 height:endPoint_8];
      CGContextAddPath(context, v40);
      CGContextClip(context);
      v73.x = MidX;
      v73.y = MaxY;
      v76.x = MidX;
      v76.y = MinY;
      CGContextDrawLinearGradient(context, v63, v73, v76, 3u);
      CGGradientRelease(v63);
    }

    else
    {
      if (participatesInVariableDraw)
      {
        MinY = CGPointZero.y;
        endPoint = CGPointZero.x;
        v45 = 0.0;
LABEL_42:
        if (valueCopy == INFINITY)
        {
          v47 = 0.0;
        }

        else
        {
          v47 = valueCopy;
        }

        if (maxValue == INFINITY)
        {
          maxValueCopy = 1.0;
        }

        else
        {
          maxValueCopy = maxValue;
        }

        [(CUIVectorGlyphLayer *)self variableDrawOffset];
        v50 = v47 - v49;
        [(CUIVectorGlyphLayer *)self variableDrawLength];
        v52 = v51;
        [(CUIVectorGlyphLayer *)self variableDrawOffset];
        v54 = maxValueCopy - v53;
        [(CUIVectorGlyphLayer *)self variableDrawLength];
        v56 = v55;
        if ((isEraserLayer & 1) == 0)
        {
          CGContextBeginTransparencyLayer(context, 0);
          CGContextSetBlendMode(context, kCGBlendModeCopy);
        }

        v57 = v50 / v52;
        v58 = v54 / v56;
        if (v23)
        {
          fillColorCopy = fillColor;
          v59 = endPoint_8;
          v60 = [CUINamedVectorGlyph _createAxialGradientWithColors:[NSArray arrayWithObjects:&fillColorCopy count:1] useSCurve:0 height:endPoint_8];
          CGContextAddPath(context, v40);
          CGContextClip(context);
          v72.x = MidX;
          v72.y = v45;
          v75.x = endPointa;
          v75.y = MinY;
          CGContextDrawLinearGradient(context, v60, v72, v75, 3u);
          CGGradientRelease(v60);
        }

        else
        {
          CGContextSetFillColorWithColor(context, fillColor);
          CGContextAddPath(context, v40);
          CGContextFillPath(context);
          CGContextAddPath(context, v40);
          CGContextClip(context);
          v59 = endPoint_8;
        }

        if (v58 - v57 > 2.22044605e-16)
        {
          v64 = [(CUIVectorGlyphLayer *)self copyClipShapeWithStartProgress:v57 endProgress:v58];
          if (!CGPathIsEmpty(v64))
          {
            if (v23)
            {
              v70 = SRGBClear;
              v65 = [CUINamedVectorGlyph _createAxialGradientWithColors:[NSArray arrayWithObjects:&v70 count:1] useSCurve:0 height:v59];
              CGContextAddPath(context, v64);
              CGContextClip(context);
              v74.x = MidX;
              v74.y = v45;
              v77.x = endPointa;
              v77.y = MinY;
              CGContextDrawLinearGradient(context, v65, v74, v77, 3u);
              CGGradientRelease(v65);
            }

            else
            {
              CGContextSetFillColorWithColor(context, SRGBClear);
              CGContextAddPath(context, v64);
              CGContextFillPath(context);
            }
          }

          CGPathRelease(v64);
        }

        if ((isEraserLayer & 1) == 0)
        {
          CGContextEndTransparencyLayer(context);
        }

        goto LABEL_65;
      }

      CGContextSetFillColorWithColor(context, SRGBClear);
      CGContextSetStrokeColorWithColor(context, SRGBClear);
      CGContextAddPath(context, v40);
      [(CUIVectorGlyphLayer *)self strokeWidth];
      if (v61 <= 0.0)
      {
        CGContextFillPath(context);
      }

      else
      {
        v62 = v61;
        CGContextSetLineCap(context, [(CUIVectorGlyphLayer *)self lineCap]);
        CGContextSetLineJoin(context, [(CUIVectorGlyphLayer *)self lineJoin]);
        CGContextSetLineWidth(context, v62);
        CGContextStrokePath(context);
      }
    }

LABEL_65:
    CGPathRelease(v40);
    goto LABEL_66;
  }

  [objc_loadWeak(&self->_delegate) _legacy_drawMonochromeLayerNamed:-[CUIVectorGlyphLayer name](self inContext:"name") scaleFactor:context targetSize:color onFillColor:fillColor offFillColor:{factor, width, height}];
LABEL_66:
  CGContextRestoreGState(context);
}

- (CGImage)createImageUsingScaleFactor:(double)factor targetSize:(CGSize)size variableMinValue:(double)value variableMaxValue:(double)maxValue onFillColor:(CGColor *)color offFillColor:(CGColor *)fillColor
{
  height = size.height;
  width = size.width;
  v16 = size.width * factor;
  v17 = size.height * factor;
  SRGB = _CUIColorSpaceGetSRGB();
  v21 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v16), vcvtpd_u64_f64(v17), 8uLL, 0, SRGB, 8193, v19, v20);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v23 = [(NSArray *)sublayers countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      v26 = 0;
      do
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v29 + 1) + 8 * v26) drawInContext:v21 scaleFactor:color targetSize:fillColor variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{value, maxValue}];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSArray *)sublayers countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }

  Image = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return Image;
}

- (CGImage)createSublayerMaskUsingScaleFactor:(double)factor targetSize:(CGSize)size maskColor:(CGColor *)color
{
  SRGBBlack = color;
  height = size.height;
  width = size.width;
  v10 = size.width * factor;
  v11 = size.height * factor;
  if (!color)
  {
    SRGBBlack = _CUIColorGetSRGBBlack();
  }

  SRGB = _CUIColorSpaceGetSRGB();
  v15 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v10), vcvtpd_u64_f64(v11), 8uLL, 0, SRGB, 8193, v13, v14);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  sublayers = [(CUIVectorGlyphLayer *)self sublayers];
  v17 = [(NSArray *)sublayers countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v23 + 1) + 8 * v20) drawInContext:v15 scaleFactor:SRGBBlack targetSize:0 variableMinValue:factor variableMaxValue:width onFillColor:height offFillColor:{INFINITY, INFINITY}];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSArray *)sublayers countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

- (CGPath)copyClipShapeWithStartProgress:(double)progress endProgress:(double)endProgress
{
  if (endProgress == INFINITY)
  {
    endProgressCopy = 1.0;
  }

  else
  {
    endProgressCopy = endProgress;
  }

  v7 = (progress == INFINITY || (*&progress & 0x7FFFFFFFFFFFFFFFLL) == 0) && endProgressCopy == 1.0;
  if (!v7 && (v8 = [(CUIVectorGlyphLayer *)self referencePath]) != 0 && (v9 = v8, [(CUIVectorGlyphPath *)v8 encodedClipStrokeKeyframes]))
  {
    [(CUIVectorGlyphLayer *)self strokeWidth];
    if (v10 > 0.0 && [(CUIVectorGlyphLayer *)self isEraserLayer])
    {
      path = [(CUIVectorGlyphPath *)v9 path];
      [(CUIVectorGlyphLayer *)self strokeWidth];
      v13 = v12;
      lineCap = [(CUIVectorGlyphLayer *)self lineCap];
      lineJoin = [(CUIVectorGlyphLayer *)self lineJoin];

      return CGPathCreateCopyByStrokingPath(path, 0, v13, lineCap, lineJoin, 0.0);
    }

    else
    {
      v17 = [(NSData *)[(CUIVectorGlyphPath *)v9 encodedClipStrokeKeyframes] containsCompoundKeyframesAtIndex:0];
      clipStrokeKeyframes = [(CUIVectorGlyphPath *)v9 clipStrokeKeyframes];
      v19 = clipStrokeKeyframes;
      if (v17)
      {
        v20 = [(NSData *)clipStrokeKeyframes mutableCopy];
        v27 = [v20 length] >> 4;
        v21 = CGPathCreateJoinedStrokePath(-[CUIVectorGlyphPath path](v9, "path"), [v20 bytes], &v27, 1, 0);
        bytes = [v20 bytes];
        ClippedStrokePath = CGPathCreateClippedStrokePath(v21, bytes, v27, 1, 0, endProgressCopy);
        CGPathRelease(v21);

        return ClippedStrokePath;
      }

      else
      {
        v24 = [(NSData *)clipStrokeKeyframes length]>> 4;
        path2 = [(CUIVectorGlyphPath *)v9 path];
        bytes2 = [(NSData *)v19 bytes];

        return CGPathCreateClippedStrokePath(path2, bytes2, v24, 1, 0, endProgressCopy);
      }
    }
  }

  else
  {

    return [(CUIVectorGlyphLayer *)self copyClipShape];
  }
}

+ (CGColor)_fillColorFromStyle:(CGSVGAttributeMap *)style
{
  if (!style || !CGSVGAttributeMapGetAttribute())
  {
    return 0;
  }

  v3 = 0;
  if (CGSVGAttributeGetPaint())
  {
    CGSVGPaintGetColor();
    CGColor = CGSVGColorCreateCGColor();
    v3 = CGColor;
    if (CGColor)
    {
      CFAutorelease(CGColor);
    }
  }

  return v3;
}

+ (CGColor)_strokeColorFromStyle:(CGSVGAttributeMap *)style
{
  if (!style || !CGSVGAttributeMapGetAttribute())
  {
    return 0;
  }

  v3 = 0;
  if (CGSVGAttributeGetPaint())
  {
    CGSVGPaintGetColor();
    CGColor = CGSVGColorCreateCGColor();
    v3 = CGColor;
    if (CGColor)
    {
      CFAutorelease(CGColor);
    }
  }

  return v3;
}

+ (double)_strokeWidthFromStyle:(CGSVGAttributeMap *)style
{
  if (style && CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetFloat();
  }

  return 0.0;
}

+ (int)_lineCapFromStyle:(CGSVGAttributeMap *)style
{
  if (style && CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetAtom();
  }

  return 1;
}

+ (int)_lineJoinFromStyle:(CGSVGAttributeMap *)style
{
  if (style)
  {
    Attribute = CGSVGAttributeMapGetAttribute();
    if (Attribute)
    {
      if (CGSVGAttributeGetAtom())
      {
        LODWORD(Attribute) = 0;
      }

      else
      {
        LODWORD(Attribute) = 0;
      }
    }
  }

  else
  {
    LODWORD(Attribute) = 0;
  }

  return Attribute;
}

+ (id)_colorNameForRenderingStyle:(id)style
{
  v4 = [style rangeOfString:@":"];
  if (v5 != 1)
  {
    return &stru_1F00D74D0;
  }

  v6 = v4 + 1;
  if (v4 + 1 >= [style length] - 1)
  {
    return &stru_1F00D74D0;
  }

  return [style substringFromIndex:v6];
}

@end
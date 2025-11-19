@interface CUIVectorGlyphLayer
+ (BOOL)_classesContainRenderModeClass:(id)a3;
+ (BOOL)_indexFromStyleSuffix:(id)a3 integer:(unint64_t *)a4;
+ (CGColor)_fillColorFromStyle:(CGSVGAttributeMap *)a3;
+ (CGColor)_strokeColorFromStyle:(CGSVGAttributeMap *)a3;
+ (double)_strokeWidthForNode:(CGSVGNode *)a3;
+ (double)_strokeWidthFromStyle:(CGSVGAttributeMap *)a3;
+ (id)_colorNameForRenderingStyle:(id)a3;
+ (id)_createLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 subpaths:(id)a6 delegate:(id)a7;
+ (id)_createPathFromStyle:(CGSVGAttributeMap *)a3 subpaths:(id)a4;
+ (id)_createShapeLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 shapes:(id)a6 delegate:(id)a7;
+ (id)_createSimpleLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 subpaths:(id)a6 delegate:(id)a7;
+ (id)_createTreeWithLayerTreeNode:(CGSVGNode *)a3 modePrefix:(id)a4 layerName:(id)a5 index:(unint64_t)a6 subpaths:(id)a7 delegate:(id)a8;
+ (id)_layerHierarchyStyleNames;
+ (id)_suffixForNamedStyleWithPrefix:(id)a3 styles:(id)a4;
+ (id)createLayerGroupWithLayerNames:(id)a3 delegate:(id)a4;
+ (id)createLayerGroupWithLayerTree:(CGSVGNode *)a3 layerNames:(id)a4 shapes:(id)a5 delegate:(id)a6;
+ (int)_lineCapFromStyle:(CGSVGAttributeMap *)a3;
+ (int)_lineJoinFromStyle:(CGSVGAttributeMap *)a3;
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
- (CGColor)_colorForVariableThreshold:(double)a3 variableMinValue:(double)a4 variableMaxValue:(double)a5 onFillColor:(CGColor *)a6 offFillColor:(CGColor *)a7;
- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 onFillColor:(CGColor *)a7 offFillColor:(CGColor *)a8;
- (CGImage)createSublayerMaskUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 maskColor:(CGColor *)a5;
- (CGPath)_visibleCompoundShape:(CGAffineTransform *)a3;
- (CGPath)copyClipShape;
- (CGPath)copyClipShapeWithStartProgress:(double)a3 endProgress:(double)a4;
- (CGPath)shape;
- (CGPath)shapeAtScale:(double)a3;
- (id)__initGroupWithName:(id)a3 index:(unint64_t)a4 sublayers:(id)a5 attributes:(CGSVGAttributeMap *)a6 style:(CGSVGAttributeMap *)a7 passthrough:(BOOL)a8 delegate:(id)a9;
- (id)_initWithName:(id)a3 index:(unint64_t)a4 shape:(id)a5 strokeWidth:(double)a6 attributes:(CGSVGAttributeMap *)a7 style:(CGSVGAttributeMap *)a8 delegate:(id)a9;
- (id)debugDescriptionWithIndentLevel:(unint64_t)a3;
- (id)path;
- (id)pathAtScale:(double)a3;
- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4;
- (void)_setAllLayersAlwaysPulse:(BOOL)a3;
- (void)_setAllLayersAlwaysRotate:(BOOL)a3;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 onFillColor:(CGColor *)a8 offFillColor:(CGColor *)a9;
@end

@implementation CUIVectorGlyphLayer

- (CGPath)copyClipShape
{
  v3 = [(CUIVectorGlyphLayer *)self referenceShape];
  if (v3)
  {
    v4 = v3;
    [(CUIVectorGlyphLayer *)self strokeWidth];
    if (v5 > 0.0 && [(CUIVectorGlyphLayer *)self isEraserLayer])
    {
      [(CUIVectorGlyphLayer *)self strokeWidth];
      v7 = v6;
      v8 = [(CUIVectorGlyphLayer *)self lineCap];
      v9 = [(CUIVectorGlyphLayer *)self lineJoin];

      return CGPathCreateCopyByStrokingPath(v4, 0, v7, v8, v9, 0.0);
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
        v22 = [v17 copyClipShape];
        if (!v22)
        {
          continue;
        }

        v20 = v22;
        if (clipPathFromSublayers)
        {
          CopyByUnioningPath = CGPathCreateCopyByUnioningPath(clipPathFromSublayers, v22, 0);
          goto LABEL_25;
        }

        clipPathFromSublayers = MEMORY[0x193AC5C10](v22);
LABEL_27:
        CGPathRelease(v20);
        continue;
      }

      if (clipPathFromSublayers)
      {
        v19 = [v17 copyClipShape];
        if (v19)
        {
          v20 = v19;
          CopyByUnioningPath = CGPathCreateCopyBySubtractingPath(clipPathFromSublayers, v19, 0);
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
  v3 = [(CUIVectorGlyphPath *)[(CUIVectorGlyphLayer *)self referencePath] encodedClipStrokeKeyframes];
  if (v3)
  {
    LOBYTE(v3) = self->_variableDrawOffset != INFINITY && (variableDrawLength = self->_variableDrawLength, variableDrawLength != INFINITY) && variableDrawLength > 2.22044605e-16;
  }

  return v3;
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

+ (double)_strokeWidthForNode:(CGSVGNode *)a3
{
  if (a3 && CGSVGNodeGetAttributeMap() && CGSVGAttributeMapGetAttribute())
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

+ (BOOL)_classesContainRenderModeClass:(id)a3
{
  if ([a3 containsString:@"monochrome-"] & 1) != 0 || (objc_msgSend(a3, "containsString:", @"monochrome-"))
  {
    return 1;
  }

  return [a3 containsString:@"hierarchical-"];
}

+ (id)_suffixForNamedStyleWithPrefix:(id)a3 styles:(id)a4
{
  v5 = [a4 componentsSeparatedByString:@" "];
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
        if ([v10 hasPrefix:a3])
        {
          v11 = [v10 rangeOfString:a3];
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

+ (BOOL)_indexFromStyleSuffix:(id)a3 integer:(unint64_t *)a4
{
  if (a3 && a4)
  {
    v5 = a3;
    v6 = [a3 rangeOfString:@":"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 1 && (v5 = [v5 substringToIndex:v6]) != 0)
    {
      v9 = 0;
      if ([[NSScanner scannerWithString:?], "scanInteger:", &v9])
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          *a4 = v9;
          return 1;
        }
      }
    }

    goto LABEL_10;
  }

  if (a4)
  {
LABEL_10:
    result = 0;
    *a4 = 0;
    return result;
  }

  return 0;
}

+ (id)_createPathFromStyle:(CGSVGAttributeMap *)a3 subpaths:(id)a4
{
  [a1 _subpathIndicesAtom];
  result = CGSVGAttributeMapGetAttribute();
  if (result)
  {
    v7 = CGSVGAttributeCopyString();
    v8 = [v7 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F00D74D0];

    v9 = [v8 componentsSeparatedByString:@" "];
    [a1 _subpathClipStrokeIndicesAtom];
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

    return [CUIVectorGlyphPath createFromSubpaths:a4 indices:v9 clipStrokeIndices:v12];
  }

  return result;
}

+ (id)_createTreeWithLayerTreeNode:(CGSVGNode *)a3 modePrefix:(id)a4 layerName:(id)a5 index:(unint64_t)a6 subpaths:(id)a7 delegate:(id)a8
{
  if (!a3)
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

      v17 = [a1 _suffixForNamedStyleWithPrefix:a4 styles:v14];
      if (v17)
      {
        v18 = v17;
        v31 = 0;
        if ([a1 _indexFromStyleSuffix:v17 integer:&v31])
        {
          v19 = [NSString stringWithFormat:@"%@%@", a4, v18];
          v20 = [a1 _createLayerWithLayerTreeNode:ChildAtIndex layerName:v19 index:v31 subpaths:a7 delegate:a8];
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
    v21 = [a1 _suffixForNamedStyleWithPrefix:@"group-" styles:v14];
    v31 = 0;
    if ([a1 _indexFromStyleSuffix:v21 integer:&v31])
    {
      v22 = [NSString stringWithFormat:@"%@%@", @"group-", v21];
      v23 = [a1 _createTreeWithLayerTreeNode:ChildAtIndex modePrefix:a4 layerName:v22 index:v31 subpaths:a7 delegate:a8];
      [v29 addObject:v23];
    }

    else
    {
      v24 = [NSString stringWithFormat:@"%@0", @"anonymousGroup-"];
      v23 = [a1 _createTreeWithLayerTreeNode:ChildAtIndex modePrefix:a4 layerName:v24 index:v31 subpaths:a7 delegate:a8];
      if ([v23 sublayers])
      {
        [v29 addObjectsFromArray:{objc_msgSend(v23, "sublayers")}];
      }
    }

    goto LABEL_15;
  }

LABEL_16:
  v25 = [[a1 alloc] __initTreeWithName:a5 index:a6 sublayers:v29 attributes:0 style:objc_msgSend(a8 delegate:{"styleForLayerName:", a5), a8}];

  return v25;
}

+ (id)_createLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 subpaths:(id)a6 delegate:(id)a7
{
  if (CGSVGNodeGetChildCount())
  {

    return [a1 _createShapeLayerWithLayerTreeNode:a3 layerName:a4 index:a5 shapes:a6 delegate:a7];
  }

  else
  {

    return [a1 _createSimpleLayerWithLayerTreeNode:a3 layerName:a4 index:a5 subpaths:a6 delegate:a7];
  }
}

+ (id)_createSimpleLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 subpaths:(id)a6 delegate:(id)a7
{
  if (!a3)
  {
    return 0;
  }

  AttributeMap = CGSVGNodeGetAttributeMap();
  v14 = [a7 styleForLayerName:a4];
  v15 = [a1 _createPathFromStyle:v14 subpaths:a6];
  [a1 _strokeWidthForNode:a3];
  v17 = [[a1 alloc] _initWithName:a4 index:a5 shape:v15 strokeWidth:AttributeMap attributes:v14 style:a7 delegate:v16];
  if (v15)
  {
  }

  return v17;
}

+ (id)_createShapeLayerWithLayerTreeNode:(CGSVGNode *)a3 layerName:(id)a4 index:(unint64_t)a5 shapes:(id)a6 delegate:(id)a7
{
  if (!a3)
  {
    return 0;
  }

  ChildCount = CGSVGNodeGetChildCount();
  AttributeMap = CGSVGNodeGetAttributeMap();
  v11 = [[NSMutableArray alloc] initWithCapacity:ChildCount];
  if (ChildCount)
  {
    v12 = 0;
    v27 = a6;
    do
    {
      ChildAtIndex = CGSVGNodeGetChildAtIndex();
      if (CGSVGNodeFindAttribute())
      {
        v14 = CGSVGAttributeCopyString();
        if ([v14 hasPrefix:@"shapeGroupLayer-"])
        {
          v15 = [a7 styleForLayerName:v14];
          v16 = v14;
          if (v15)
          {
            if (CGSVGNodeGetChildCount())
            {
              v17 = [a1 _createShapeLayerWithLayerTreeNode:ChildAtIndex layerName:v14 index:v12 shapes:a6 delegate:a7];
              [v11 addObject:v17];
            }

            else
            {
              v19 = [a1 _createPathFromStyle:v15 subpaths:a6];
              if (v19)
              {
                [a1 _strokeWidthForNode:ChildAtIndex];
                v21 = [[a1 alloc] _initWithName:v14 index:v12 shape:v19 strokeWidth:AttributeMap attributes:v15 style:a7 delegate:v20];
                [v11 addObject:v21];
              }

              a6 = v27;
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

  v22 = [[a1 alloc] _initWithName:a4 index:a5 sublayers:v11 attributes:0 style:objc_msgSend(a7 delegate:{"styleForLayerName:", a4, AttributeMap), a7}];

  return v22;
}

+ (id)createLayerGroupWithLayerTree:(CGSVGNode *)a3 layerNames:(id)a4 shapes:(id)a5 delegate:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  v7 = [a4 count];
  v26 = [[NSMutableArray alloc] initWithCapacity:v7];
  ChildCount = CGSVGNodeGetChildCount();
  if (v7)
  {
    v9 = ChildCount;
    for (i = 0; i != v7; ++i)
    {
      v11 = [a4 objectAtIndex:i];
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
          v17 = [a1 _createShapeLayerWithLayerTreeNode:ChildAtIndex layerName:v12 index:i shapes:a5 delegate:a6];
          [v26 addObject:v17];
        }

        else
        {
          AttributeMap = CGSVGNodeGetAttributeMap();
          v18 = [a6 styleForLayerName:v12];
          v19 = [a1 _createPathFromStyle:v18 subpaths:a5];
          [a6 strokeWidthForLayerNamed:v12];
          v21 = [[a1 alloc] _initWithName:v12 index:i shape:v19 strokeWidth:AttributeMap attributes:v18 style:a6 delegate:v20];
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

  v22 = [[a1 alloc] _initWithName:@"root" index:0 sublayers:v26 attributes:0 style:0 delegate:a6];

  return v22;
}

+ (id)createLayerGroupWithLayerNames:(id)a3 delegate:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a3, "count")}];
  v8 = [a3 count];
  if (v8)
  {
    v9 = v8;
    for (i = 0; i != v9; ++i)
    {
      v11 = [a3 objectAtIndex:i];
      v12 = [a4 styleForLayerName:v11];
      v13 = [a4 attributesForLayerNamed:v11];
      v14 = [a4 pathForLayerNamed:v11];
      [a4 strokeWidthForLayerNamed:v11];
      v16 = [[a1 alloc] _initWithName:v11 index:i shape:v14 strokeWidth:v13 attributes:v12 style:a4 delegate:v15];
      [v7 addObject:v16];
    }
  }

  v17 = [[a1 alloc] _initWithName:@"root" index:0 sublayers:v7 attributes:0 style:0 delegate:a4];

  return v17;
}

- (void)_readCSSAttributes:(CGSVGAttributeMap *)a3 styleAttributes:(CGSVGAttributeMap *)a4
{
  [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] templateVersion];
  if (a4)
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
          v25 = [v24 BOOLValue];

          v13 = v25;
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
          v39 = [(CUIVectorGlyhLayerDelegate *)[(CUIVectorGlyphLayer *)self delegate] unsafeDrawAttachmentData];
          v10 = [[CUIVectorGlyphLayerDrawAttachmentStore alloc] initFromSVGString:v38 attachmentData:v39];
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

        LOBYTE(a4) = 0;
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
            LOBYTE(a4) = [v48 BOOLValue];
          }

          else
          {
            LOBYTE(a4) = 0;
          }
        }

        else
        {
          LOBYTE(a4) = 0;
        }

        v12 = 0;
      }

      v15 = v50;
      if (a3)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v10 = 0;
      LOBYTE(a4) = 0;
      v12 = 0;
      v15 = vdupq_n_s64(0x7FF0000000000000uLL);
      if (a3)
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
  if (!a3)
  {
    goto LABEL_68;
  }

LABEL_46:
  v49 = v15;
  v29 = [objc_opt_class() _lineCapFromStyle:a3];
  v30 = [objc_opt_class() _lineJoinFromStyle:a3];
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
  self->_gradientAlignsToLayer = a4;
  self->_drawAttachments = v10;
  self->_tags = v11;
}

- (id)_initWithName:(id)a3 index:(unint64_t)a4 shape:(id)a5 strokeWidth:(double)a6 attributes:(CGSVGAttributeMap *)a7 style:(CGSVGAttributeMap *)a8 delegate:(id)a9
{
  v18.receiver = self;
  v18.super_class = CUIVectorGlyphLayer;
  v16 = [(CUIVectorGlyphLayer *)&v18 init];
  if (v16)
  {
    *(v16 + 5) = [a3 copy];
    *(v16 + 6) = a4;
    objc_storeWeak(v16 + 17, a9);
    *(v16 + 29) = 257;
    if (a5)
    {
      *(v16 + 16) = [a5 copy];
    }

    [v16 _readCSSAttributes:a7 styleAttributes:a8];
    *(v16 + 14) = a6;
  }

  return v16;
}

- (id)__initGroupWithName:(id)a3 index:(unint64_t)a4 sublayers:(id)a5 attributes:(CGSVGAttributeMap *)a6 style:(CGSVGAttributeMap *)a7 passthrough:(BOOL)a8 delegate:(id)a9
{
  v39.receiver = self;
  v39.super_class = CUIVectorGlyphLayer;
  v15 = [(CUIVectorGlyphLayer *)&v39 init];
  if (v15)
  {
    v15->_name = [a3 copy];
    v15->_index = a4;
    objc_storeWeak(&v15->_delegate, a9);
    v15->_isPassthrough = a8;
    v15->_supportsVariableDraw = 1;
    v15->_sublayers = a5;
    [(CUIVectorGlyphLayer *)v15 _readCSSAttributes:a6 styleAttributes:a7];
    if ([a3 isEqualToString:@"root"])
    {
      if (![a5 count])
      {
        goto LABEL_29;
      }

      v16 = 0;
      v17 = 0;
      do
      {
        v18 = [a5 objectAtIndexedSubscript:v17];
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
          v29 = [a5 count];
          v30 = [objc_msgSend(v18 "drawAttachments")];
          if (v30)
          {
            v31 = v30;
            v32 = 0;
            while (1)
            {
              v33 = *([objc_msgSend(v18 "drawAttachments")] + v32);
              v34 = *(v33 + 12);
              if (v29 > v34 && (([objc_msgSend(a5 objectAtIndexedSubscript:{*(v33 + 12)), "participatesInVariableDraw"}] & 1) != 0 || v17 < v34))
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

      while (v17 < [a5 count]);
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

- (id)debugDescriptionWithIndentLevel:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(CUIVectorGlyphLayer *)self name];
  v8 = [(CUIVectorGlyphLayer *)self index];
  v9 = [(CUIVectorGlyphLayer *)self referenceShape];
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

  v15 = [(CUIVectorGlyphLayer *)self motionGroup];
  v16 = [(CUIVectorGlyphLayer *)self alwaysPulses];
  v17 = @"YES";
  if (!v16)
  {
    v17 = @"NO";
  }

  v18 = [NSString stringWithFormat:@"<%@: %p, %@, layerIndex=%lu, shape=%p, opacity=%.2f, eraser=%@, value=%@, motionGroup=%lu, alwaysPulses=%@", v6, self, v7, v8, v9, v11, v12, v14, v15, v17];
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

        v24 = [*(*(&v28 + 1) + 8 * i) debugDescriptionWithIndentLevel:a3 + 1];
        if (a3)
        {
          v25 = a3;
          v26 = @"\n";
          do
          {
            v26 = [(__CFString *)v26 stringByAppendingString:@"\t"];
            --v25;
          }

          while (v25);
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

- (CGPath)shapeAtScale:(double)a3
{
  v3 = [(CUIVectorGlyphLayer *)self pathAtScale:a3];
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 path];
  CGPathRetain(v4);
  CFAutorelease(v4);
  return v4;
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

- (id)pathAtScale:(double)a3
{
  if (!self->_referencePath || !objc_loadWeak(&self->_delegate))
  {
    return 0;
  }

  [objc_loadWeak(&self->_delegate) _requestedPointSizeRatio];
  v6 = v5 * a3;
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

- (CGPath)_visibleCompoundShape:(CGAffineTransform *)a3
{
  v5 = [(CUIVectorGlyphLayer *)self shape];
  if (v5)
  {
    if (a3)
    {

      JUMPOUT(0x193AC5C50);
    }

    return CGPathRetain(v5);
  }

  else
  {
    v6 = [(CUIVectorGlyphLayer *)self isPassthrough];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(CUIVectorGlyphLayer *)self sublayers];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isEraserLayer])
        {
          [v13 opacity];
          v15 = v14 > 2.22044605e-16 ? 1 : v6;
          if (v15 != 1)
          {
            continue;
          }
        }

        v16 = [v13 _visibleCompoundShape:a3];
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

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (void)_setAllLayersAlwaysPulse:(BOOL)a3
{
  if (self->_opacity != 0.0)
  {
    v3 = a3;
    self->_alwaysPulses = a3;
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

          [*(*(&v9 + 1) + 8 * i) _setAllLayersAlwaysPulse:v3];
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

- (void)_setAllLayersAlwaysRotate:(BOOL)a3
{
  v3 = a3;
  self->_alwaysRotates = a3;
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

        [*(*(&v9 + 1) + 8 * i) _setAllLayersAlwaysRotate:v3];
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

- (CGColor)_colorForVariableThreshold:(double)a3 variableMinValue:(double)a4 variableMaxValue:(double)a5 onFillColor:(CGColor *)a6 offFillColor:(CGColor *)a7
{
  if (a3 == INFINITY || a6 == 0)
  {
    return a6;
  }

  CopyWithAlpha = a7;
  v10 = a3 <= a5;
  if (a3 <= 0.0)
  {
    v10 = a3 < a5;
  }

  if (a5 == INFINITY)
  {
    v10 = 1;
  }

  v11 = a3 >= a4 || a4 == INFINITY;
  if (v11 && v10)
  {
    return a6;
  }

  if (!a7)
  {
    Alpha = CGColorGetAlpha(a6);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(a6, Alpha * 0.3);
    CFAutorelease(CopyWithAlpha);
  }

  return CopyWithAlpha;
}

- (void)drawInContext:(CGContext *)a3 scaleFactor:(double)a4 targetSize:(CGSize)a5 variableMinValue:(double)a6 variableMaxValue:(double)a7 onFillColor:(CGColor *)a8 offFillColor:(CGColor *)a9
{
  height = a5.height;
  width = a5.width;
  [objc_loadWeak(&self->_delegate) referenceCanvasSize];
  v19 = v18;
  v21 = v20;
  v22 = [objc_loadWeak(&self->_delegate) resolvedVariableMode];
  v23 = [objc_loadWeak(&self->_delegate) resolvedFillStyle] == 2 && -[CUIVectorGlyphLayer gradientType](self, "gradientType") == 0;
  if (v22)
  {
    v24 = a6;
  }

  else
  {
    a7 = INFINITY;
    v24 = INFINITY;
  }

  CGContextSaveGState(a3);
  v25 = [(CUIVectorGlyphLayer *)self isEraserLayer];
  [(CUIVectorGlyphLayer *)self opacity];
  v27 = v26;
  if (v25)
  {
    v28 = kCGBlendModeCopy;
  }

  else
  {
    v28 = kCGBlendModeNormal;
  }

  SRGBClear = a8;
  if (v26 < 1.0)
  {
    Alpha = CGColorGetAlpha(a8);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(a8, v27 * Alpha);
    SRGBClear = CFAutorelease(CopyWithAlpha);
  }

  v32 = v24 == INFINITY && a7 == INFINITY;
  endPoint_8 = v21;
  if (v32)
  {
    v35 = 0;
    goto LABEL_32;
  }

  [(CUIVectorGlyphLayer *)self valueThreshold];
  v34 = v33;
  if (v22 == 1)
  {
    v35 = 0;
    v36 = v33 != INFINITY;
    if (v33 != INFINITY)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v35 = [(CUIVectorGlyphLayer *)self participatesInVariableDraw];
    v36 = 0;
  }

  if (v35)
  {
LABEL_22:
    if (!a9)
    {
      v37 = v25 ^ 1;
      if (v27 >= 2.22044605e-16)
      {
        v37 = 1;
      }

      if (v37)
      {
        v38 = CGColorGetAlpha(SRGBClear);
        a9 = CGColorCreateCopyWithAlpha(SRGBClear, v38 * 0.3);
      }

      else
      {
        SRGBClear = _CUIColorGetSRGBClear();
        a9 = CGColorCreateCopyWithAlpha(SRGBClear, 0.7);
        v28 = kCGBlendModeDestinationIn;
      }

      CFAutorelease(a9);
    }

    if (v36)
    {
      SRGBClear = [(CUIVectorGlyphLayer *)self _colorForVariableThreshold:SRGBClear variableMinValue:a9 variableMaxValue:v34 onFillColor:v24 offFillColor:a7];
    }
  }

  v21 = endPoint_8;
LABEL_32:
  v39 = [(CUIVectorGlyphLayer *)self copyClipShape];
  if (v39)
  {
    v40 = v39;
    CGContextScaleCTM(a3, width * a4 / v19, height * a4 / v21);
    CGContextScaleCTM(a3, 1.0, -1.0);
    MidX = 0.0;
    CGContextTranslateCTM(a3, 0.0, -v21);
    CGContextSetBlendMode(a3, v28);
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
      if (v35)
      {
        v45 = MaxY;
        endPoint = MidX;
        goto LABEL_42;
      }

      v69 = SRGBClear;
      v63 = [CUINamedVectorGlyph _createAxialGradientWithColors:[NSArray arrayWithObjects:&v69 count:1] useSCurve:0 height:endPoint_8];
      CGContextAddPath(a3, v40);
      CGContextClip(a3);
      v73.x = MidX;
      v73.y = MaxY;
      v76.x = MidX;
      v76.y = MinY;
      CGContextDrawLinearGradient(a3, v63, v73, v76, 3u);
      CGGradientRelease(v63);
    }

    else
    {
      if (v35)
      {
        MinY = CGPointZero.y;
        endPoint = CGPointZero.x;
        v45 = 0.0;
LABEL_42:
        if (v24 == INFINITY)
        {
          v47 = 0.0;
        }

        else
        {
          v47 = v24;
        }

        if (a7 == INFINITY)
        {
          v48 = 1.0;
        }

        else
        {
          v48 = a7;
        }

        [(CUIVectorGlyphLayer *)self variableDrawOffset];
        v50 = v47 - v49;
        [(CUIVectorGlyphLayer *)self variableDrawLength];
        v52 = v51;
        [(CUIVectorGlyphLayer *)self variableDrawOffset];
        v54 = v48 - v53;
        [(CUIVectorGlyphLayer *)self variableDrawLength];
        v56 = v55;
        if ((v25 & 1) == 0)
        {
          CGContextBeginTransparencyLayer(a3, 0);
          CGContextSetBlendMode(a3, kCGBlendModeCopy);
        }

        v57 = v50 / v52;
        v58 = v54 / v56;
        if (v23)
        {
          v71 = a9;
          v59 = endPoint_8;
          v60 = [CUINamedVectorGlyph _createAxialGradientWithColors:[NSArray arrayWithObjects:&v71 count:1] useSCurve:0 height:endPoint_8];
          CGContextAddPath(a3, v40);
          CGContextClip(a3);
          v72.x = MidX;
          v72.y = v45;
          v75.x = endPointa;
          v75.y = MinY;
          CGContextDrawLinearGradient(a3, v60, v72, v75, 3u);
          CGGradientRelease(v60);
        }

        else
        {
          CGContextSetFillColorWithColor(a3, a9);
          CGContextAddPath(a3, v40);
          CGContextFillPath(a3);
          CGContextAddPath(a3, v40);
          CGContextClip(a3);
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
              CGContextAddPath(a3, v64);
              CGContextClip(a3);
              v74.x = MidX;
              v74.y = v45;
              v77.x = endPointa;
              v77.y = MinY;
              CGContextDrawLinearGradient(a3, v65, v74, v77, 3u);
              CGGradientRelease(v65);
            }

            else
            {
              CGContextSetFillColorWithColor(a3, SRGBClear);
              CGContextAddPath(a3, v64);
              CGContextFillPath(a3);
            }
          }

          CGPathRelease(v64);
        }

        if ((v25 & 1) == 0)
        {
          CGContextEndTransparencyLayer(a3);
        }

        goto LABEL_65;
      }

      CGContextSetFillColorWithColor(a3, SRGBClear);
      CGContextSetStrokeColorWithColor(a3, SRGBClear);
      CGContextAddPath(a3, v40);
      [(CUIVectorGlyphLayer *)self strokeWidth];
      if (v61 <= 0.0)
      {
        CGContextFillPath(a3);
      }

      else
      {
        v62 = v61;
        CGContextSetLineCap(a3, [(CUIVectorGlyphLayer *)self lineCap]);
        CGContextSetLineJoin(a3, [(CUIVectorGlyphLayer *)self lineJoin]);
        CGContextSetLineWidth(a3, v62);
        CGContextStrokePath(a3);
      }
    }

LABEL_65:
    CGPathRelease(v40);
    goto LABEL_66;
  }

  [objc_loadWeak(&self->_delegate) _legacy_drawMonochromeLayerNamed:-[CUIVectorGlyphLayer name](self inContext:"name") scaleFactor:a3 targetSize:a8 onFillColor:a9 offFillColor:{a4, width, height}];
LABEL_66:
  CGContextRestoreGState(a3);
}

- (CGImage)createImageUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 variableMinValue:(double)a5 variableMaxValue:(double)a6 onFillColor:(CGColor *)a7 offFillColor:(CGColor *)a8
{
  height = a4.height;
  width = a4.width;
  v16 = a4.width * a3;
  v17 = a4.height * a3;
  SRGB = _CUIColorSpaceGetSRGB();
  v21 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v16), vcvtpd_u64_f64(v17), 8uLL, 0, SRGB, 8193, v19, v20);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [(CUIVectorGlyphLayer *)self sublayers];
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v22);
        }

        [*(*(&v29 + 1) + 8 * v26) drawInContext:v21 scaleFactor:a7 targetSize:a8 variableMinValue:a3 variableMaxValue:width onFillColor:height offFillColor:{a5, a6}];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v24);
  }

  Image = CGBitmapContextCreateImage(v21);
  CGContextRelease(v21);
  return Image;
}

- (CGImage)createSublayerMaskUsingScaleFactor:(double)a3 targetSize:(CGSize)a4 maskColor:(CGColor *)a5
{
  SRGBBlack = a5;
  height = a4.height;
  width = a4.width;
  v10 = a4.width * a3;
  v11 = a4.height * a3;
  if (!a5)
  {
    SRGBBlack = _CUIColorGetSRGBBlack();
  }

  SRGB = _CUIColorSpaceGetSRGB();
  v15 = CUICGBitmapContextCreate(vcvtpd_u64_f64(v10), vcvtpd_u64_f64(v11), 8uLL, 0, SRGB, 8193, v13, v14);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [(CUIVectorGlyphLayer *)self sublayers];
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v16);
        }

        [*(*(&v23 + 1) + 8 * v20) drawInContext:v15 scaleFactor:SRGBBlack targetSize:0 variableMinValue:a3 variableMaxValue:width onFillColor:height offFillColor:{INFINITY, INFINITY}];
        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  Image = CGBitmapContextCreateImage(v15);
  CGContextRelease(v15);
  return Image;
}

- (CGPath)copyClipShapeWithStartProgress:(double)a3 endProgress:(double)a4
{
  if (a4 == INFINITY)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = a4;
  }

  v7 = (a3 == INFINITY || (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0) && v5 == 1.0;
  if (!v7 && (v8 = [(CUIVectorGlyphLayer *)self referencePath]) != 0 && (v9 = v8, [(CUIVectorGlyphPath *)v8 encodedClipStrokeKeyframes]))
  {
    [(CUIVectorGlyphLayer *)self strokeWidth];
    if (v10 > 0.0 && [(CUIVectorGlyphLayer *)self isEraserLayer])
    {
      v11 = [(CUIVectorGlyphPath *)v9 path];
      [(CUIVectorGlyphLayer *)self strokeWidth];
      v13 = v12;
      v14 = [(CUIVectorGlyphLayer *)self lineCap];
      v15 = [(CUIVectorGlyphLayer *)self lineJoin];

      return CGPathCreateCopyByStrokingPath(v11, 0, v13, v14, v15, 0.0);
    }

    else
    {
      v17 = [(NSData *)[(CUIVectorGlyphPath *)v9 encodedClipStrokeKeyframes] containsCompoundKeyframesAtIndex:0];
      v18 = [(CUIVectorGlyphPath *)v9 clipStrokeKeyframes];
      v19 = v18;
      if (v17)
      {
        v20 = [(NSData *)v18 mutableCopy];
        v27 = [v20 length] >> 4;
        v21 = CGPathCreateJoinedStrokePath(-[CUIVectorGlyphPath path](v9, "path"), [v20 bytes], &v27, 1, 0);
        v22 = [v20 bytes];
        ClippedStrokePath = CGPathCreateClippedStrokePath(v21, v22, v27, 1, 0, v5);
        CGPathRelease(v21);

        return ClippedStrokePath;
      }

      else
      {
        v24 = [(NSData *)v18 length]>> 4;
        v25 = [(CUIVectorGlyphPath *)v9 path];
        v26 = [(NSData *)v19 bytes];

        return CGPathCreateClippedStrokePath(v25, v26, v24, 1, 0, v5);
      }
    }
  }

  else
  {

    return [(CUIVectorGlyphLayer *)self copyClipShape];
  }
}

+ (CGColor)_fillColorFromStyle:(CGSVGAttributeMap *)a3
{
  if (!a3 || !CGSVGAttributeMapGetAttribute())
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

+ (CGColor)_strokeColorFromStyle:(CGSVGAttributeMap *)a3
{
  if (!a3 || !CGSVGAttributeMapGetAttribute())
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

+ (double)_strokeWidthFromStyle:(CGSVGAttributeMap *)a3
{
  if (a3 && CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetFloat();
  }

  return 0.0;
}

+ (int)_lineCapFromStyle:(CGSVGAttributeMap *)a3
{
  if (a3 && CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetAtom();
  }

  return 1;
}

+ (int)_lineJoinFromStyle:(CGSVGAttributeMap *)a3
{
  if (a3)
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

+ (id)_colorNameForRenderingStyle:(id)a3
{
  v4 = [a3 rangeOfString:@":"];
  if (v5 != 1)
  {
    return &stru_1F00D74D0;
  }

  v6 = v4 + 1;
  if (v4 + 1 >= [a3 length] - 1)
  {
    return &stru_1F00D74D0;
  }

  return [a3 substringFromIndex:v6];
}

@end
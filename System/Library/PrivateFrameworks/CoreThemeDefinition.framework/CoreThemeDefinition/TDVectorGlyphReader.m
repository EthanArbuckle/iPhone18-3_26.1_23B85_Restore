@interface TDVectorGlyphReader
+ (CGPoint)_anchorInOutlineCoordinateSpaceForAnchor:(CGSVGNode *)a3 glyph:(CGSVGNode *)a4;
+ (CGPoint)_anchorInOutlineCoordinateSpaceForAnchorPoint:(CGPoint)a3 glyph:(CGSVGNode *)a4;
+ (id)vectorGlyphReaderWithURL:(id)a3 error:(id *)a4;
+ (id)vectorGlyphReaderWithURL:(id)a3 platform:(int64_t)a4 error:(id *)a5;
+ (void)clearInstanceCache;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_fixedAlignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4 foundExactMargins:(BOOL *)a5;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_interpolatedAlignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4;
- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4;
- (BOOL)_commonInitWithData:(id)a3 platform:(int64_t)a4 error:(id *)a5;
- (BOOL)_readSVGNodesError:(id *)a3;
- (BOOL)_validateVectorGlyphsWithError:(id *)a3;
- (BOOL)canDrawWithWeight:(int64_t)a3 size:(int64_t)a4;
- (BOOL)containsWideGamutContent;
- (BOOL)interpolatedRotateAnchorForWeight:(int64_t)a3 size:(int64_t)a4 scaleFactor:(double)a5 point:(CGPoint *)a6;
- (BOOL)isInterpolatableForWeight:(int64_t)a3 size:(int64_t)a4;
- (BOOL)vectorGlyphExistsWithWeight:(int64_t)a3 size:(int64_t)a4 error:(id *)a5;
- (CGSVGAttributeMap)attributesForLayerNamed:(id)a3;
- (CGSVGAttributeMap)styleForLayerName:(id)a3;
- (CGSVGDocument)vectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4 error:(id *)a5;
- (CGSVGNode)_createAnchorNodeFromPoint:(CGPoint)a3 withIdentifier:(__CFString *)a4;
- (CGSVGNode)interpolatedSymbolForWeight:(int64_t)a3 size:(int64_t)a4;
- (CGSize)canvasSizeForWeight:(int64_t)a3 size:(int64_t)a4;
- (CGSize)referenceCanvasSize;
- (TDVectorGlyphReader)initWithData:(id)a3 error:(id *)a4;
- (TDVectorGlyphReader)initWithData:(id)a3 platform:(int64_t)a4 error:(id *)a5;
- (TDVectorGlyphReader)initWithURL:(id)a3 error:(id *)a4;
- (TDVectorGlyphReader)initWithURL:(id)a3 platform:(int64_t)a4 error:(id *)a5;
- (double)_requestedPointSizeRatio;
- (double)baselineForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4;
- (double)capHeightForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4;
- (double)strokeWidthForLayerNamed:(id)a3;
- (id)_baselineNodeIDForGlyphSize:(int64_t)a3;
- (id)_caplineNodeIDForGlyphSize:(int64_t)a3;
- (id)_glyphNodeIDForWeight:(int64_t)a3 size:(int64_t)a4;
- (id)_layerNamesForRenderingMode:(id)a3;
- (id)_marginNodeIDForWeight:(int64_t)a3 size:(int64_t)a4 direction:(int64_t)a5;
- (id)_pathForLayerNamed:(id)a3 inDocument:(CGSVGDocument *)a4;
- (id)createInterpolatedDrawAttachmentDataForWeight:(int64_t)a3 size:(int64_t)a4 scaleFactor:(double)a5;
- (id)createMonochromeLayerGroupForSymbol:(CGSVGDocument *)a3 layerNames:(id)a4;
- (id)pathForLayerNamed:(id)a3;
- (id)unsafeDrawAttachmentAnchors;
- (id)unsafeDrawAttachmentData;
- (unint64_t)numberOfVectorGlyphs;
- (void)_calcInterpolatability;
- (void)_legacy_drawMonochromeLayerNamed:(id)a3 inContext:(CGContext *)a4 scaleFactor:(double)a5 targetSize:(CGSize)a6 onFillColor:(CGColor *)a7 offFillColor:(CGColor *)a8;
- (void)_writeDrawAttachmentDataToRootNode:(CGSVGNode *)a3 forWeight:(int64_t)a4 size:(int64_t)a5 glyphNode:(CGSVGNode *)a6 scaleFactor:(double)a7 transform:(CGAffineTransform *)a8;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 atPointSize:(double)a4 scaleFactor:(double)a5 weight:(int64_t)a6 size:(int64_t)a7;
@end

@implementation TDVectorGlyphReader

- (void)dealloc
{
  if (self->_svgDocument)
  {
    CGSVGDocumentRelease();
    self->_svgDocument = 0;
  }

  if (self->_drawingSymbol)
  {
    CGSVGDocumentRelease();
    self->_drawingSymbol = 0;
  }

  if (self->_layerTreeNode)
  {
    CGSVGNodeRelease();
    self->_layerTreeNode = 0;
  }

  v3.receiver = self;
  v3.super_class = TDVectorGlyphReader;
  [(TDVectorGlyphReader *)&v3 dealloc];
}

- (TDVectorGlyphReader)initWithURL:(id)a3 error:(id *)a4
{
  v7 = CUICurrentPlatform();

  return [(TDVectorGlyphReader *)self initWithURL:a3 platform:v7 error:a4];
}

- (TDVectorGlyphReader)initWithURL:(id)a3 platform:(int64_t)a4 error:(id *)a5
{
  v13.receiver = self;
  v13.super_class = TDVectorGlyphReader;
  v8 = [(TDVectorGlyphReader *)&v13 init];
  if (v8)
  {
    v8->_fileURL = a3;
    v8->_platform = a4;
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:a3 options:8 error:a5];
    if (!v9 || (v10 = v9, v11 = [(TDVectorGlyphReader *)v8 _commonInitWithData:v9 platform:a4 error:a5], v10, !v11))
    {

      return 0;
    }
  }

  return v8;
}

- (TDVectorGlyphReader)initWithData:(id)a3 error:(id *)a4
{
  v7 = CUICurrentPlatform();

  return [(TDVectorGlyphReader *)self initWithData:a3 platform:v7 error:a4];
}

- (TDVectorGlyphReader)initWithData:(id)a3 platform:(int64_t)a4 error:(id *)a5
{
  v6 = self;
  if (!a3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"NULL data received by -[TDVectorGlyphReader initWithData:error:]", a4];
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1010 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v10, *MEMORY[0x277CCA450], 0)}];
    }

    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = TDVectorGlyphReader;
  v9 = [(TDVectorGlyphReader *)&v12 init];
  v6 = v9;
  if (v9 && ![(TDVectorGlyphReader *)v9 _commonInitWithData:a3 platform:a4 error:a5])
  {
LABEL_7:

    return 0;
  }

  return v6;
}

- (BOOL)_commonInitWithData:(id)a3 platform:(int64_t)a4 error:(id *)a5
{
  self->_lock._os_unfair_lock_opaque = 0;
  v7 = 0.0;
  if (a4 <= 5)
  {
    v7 = dbl_247A492E0[a4];
  }

  self->_defaultPointSize = v7;
  if (!a3)
  {
    if (self->_svgDocument)
    {
      goto LABEL_5;
    }

LABEL_17:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to parse SVG Data from %@", self->_fileURL];
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1011 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v16, *MEMORY[0x277CCA450], 0)}];
    }

    NSLog(&stru_28599C078.isa, v16);
    return 0;
  }

  v8 = CGSVGDocumentCreateFromData();
  self->_svgDocument = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_5:
  [(TDVectorGlyphReader *)self _readSVGNodesError:a5];
  if (!a5 || !*a5)
  {
    v9 = [(NSDictionary *)self->_guideNodes objectForKey:@"Baseline-M"];
    v10 = [(NSDictionary *)self->_guideNodes objectForKey:@"Capline-M"];
    if (v9)
    {
      if (v10)
      {
        if (CGSVGNodeGetType() == 2 && CGSVGNodeGetType() == 2)
        {
          CGSVGNodeGetBoundingBoxWithOptions();
          v12 = v11;
          v13 = v11;
          CGSVGNodeGetBoundingBoxWithOptions();
          if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            self->_sourcePointSize = round((v12 - v14) / 0.704589844);
          }
        }
      }
    }

    if (self->_sourcePointSize >= 0.00000011920929)
    {
      return 1;
    }

    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1012 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Symbol image file has too small a point size", *MEMORY[0x277CCA450], 0)}];
    }

    NSLog(&stru_28599C078.isa, @"Symbol image file has too small a point size");
  }

  return 0;
}

- (BOOL)_readSVGNodesError:(id *)a3
{
  v53 = *MEMORY[0x277D85DE8];
  if (self->_vectorGlyphNodes && self->_vectorGlyphRotateAnchorNodes && self->_vectorGlyphDrawAttachmentDataNodes)
  {
    goto LABEL_62;
  }

  v4 = objc_alloc(MEMORY[0x277CBEB38]);
  if (__CUIVectorGlyphNodeIDs_onceToken != -1)
  {
    [TDVectorGlyphReader _readSVGNodesError:];
  }

  v5 = [v4 initWithCapacity:{objc_msgSend(__CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs, "count", a3)}];
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  if (__CUIVectorGlyphNodeIDs_onceToken != -1)
  {
    [TDVectorGlyphReader _readSVGNodesError:];
  }

  v38 = [v6 initWithCapacity:{objc_msgSend(__CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs, "count")}];
  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  if (__CUIVectorGlyphNodeIDs_onceToken != -1)
  {
    [TDVectorGlyphReader _readSVGNodesError:];
  }

  v37 = [v7 initWithCapacity:{objc_msgSend(__CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs, "count")}];
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  if (CUIVectorGlyphGuideIDs_onceToken != -1)
  {
    [TDVectorGlyphReader _readSVGNodesError:];
  }

  v9 = [v8 initWithCapacity:{objc_msgSend(CUIVectorGlyphGuideIDs__CUIVectorGlyphGuideIDs, "count")}];
  if (self->_svgDocument)
  {
    CGSVGDocumentGetRootNode();
    if (CGSVGNodeFindChildWithStringIdentifier() && CGSVGNodeGetType() == 2 && CGSVGShapeNodeGetPrimitive() == 10001)
    {
      v10 = CGSVGShapeNodeCopyText();
      v11 = [v10 rangeOfString:@"Template v."];
      if (v12)
      {
        v13 = [v10 substringFromIndex:v11 + v12];

        v10 = v13;
      }

      [v10 floatValue];
      if (((LODWORD(v14) & 0x7FFFFFFFu) - 0x800000) >> 24 <= 0x7E)
      {
        self->_templateVersion = v14;
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    if (__CUIVectorGlyphNodeIDs_onceToken != -1)
    {
      [TDVectorGlyphReader _readSVGNodesError:];
    }

    v15 = __CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs;
    v16 = [__CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v16)
    {
      v17 = *v48;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v48 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v47 + 1) + 8 * i);
          ChildWithStringIdentifier = CGSVGNodeFindChildWithStringIdentifier();
          if (ChildWithStringIdentifier)
          {
            [(NSDictionary *)v5 setObject:ChildWithStringIdentifier forKey:v19];
            templateVersion = self->_templateVersion;
            if (templateVersion >= 6.0)
            {
              [v19 stringByAppendingString:@"-rotate-anchor"];
              v22 = CGSVGNodeFindChildWithStringIdentifier();
              if (v22)
              {
                [(NSDictionary *)v38 setObject:v22 forKey:v19];
              }

              templateVersion = self->_templateVersion;
            }

            if (templateVersion >= 7.0)
            {
              [v19 stringByAppendingString:@"-draw-attachment-data"];
              v23 = CGSVGNodeFindChildWithStringIdentifier();
              if (v23)
              {
                [(NSDictionary *)v37 setObject:v23 forKey:v19];
              }
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v16);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    if (CUIVectorGlyphGuideIDs_onceToken != -1)
    {
      [TDVectorGlyphReader _readSVGNodesError:];
    }

    v24 = CUIVectorGlyphGuideIDs__CUIVectorGlyphGuideIDs;
    v25 = [CUIVectorGlyphGuideIDs__CUIVectorGlyphGuideIDs countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v25)
    {
      v26 = *v44;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v43 + 1) + 8 * j);
          v29 = CGSVGNodeFindChildWithStringIdentifier();
          if (v29)
          {
            [(NSDictionary *)v9 setObject:v29 forKey:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v25);
    }

    if (self->_templateVersion >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
    {
      ChildCount = CGSVGNodeGetChildCount();
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v31 = CGSVGNodeGetType() != 1 || ChildCount == 0;
      v32 = !v31;
      v42 = v32;
      if (!v31)
      {
        CGSVGNodeEnumerate();
        if (v40[3])
        {
          self->_layerTreeNode = CGSVGNodeRetain();
        }
      }

      _Block_object_dispose(&v39, 8);
    }
  }

  self->_vectorGlyphRotateAnchorNodes = v38;
  self->_vectorGlyphDrawAttachmentDataNodes = v37;
  self->_guideNodes = v9;
  self->_vectorGlyphNodes = v5;
  [(TDVectorGlyphReader *)self _calcInterpolatability];
  if ([(TDVectorGlyphReader *)self _validateVectorGlyphsWithError:v36])
  {
LABEL_62:
    result = 1;
  }

  else
  {
    [(NSDictionary *)v5 removeAllObjects];
    [(NSDictionary *)v38 removeAllObjects];
    [(NSDictionary *)v37 removeAllObjects];
    [(NSDictionary *)v9 removeAllObjects];
    result = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __42__TDVectorGlyphReader__readSVGNodesError___block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = result;
    result = CGSVGNodeGetType();
    if (result != 1)
    {
      *(*(*(v5 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)_validateVectorGlyphsWithError:(id *)a3
{
  v71 = 0;
  v72 = &v71;
  v73 = 0x3052000000;
  v74 = __Block_byref_object_copy_;
  v75 = __Block_byref_object_dispose_;
  v76 = 0;
  templateVersion = self->_templateVersion;
  if (templateVersion <= 7.0)
  {
    v5 = 1;
    while (1)
    {
      v6 = [(TDVectorGlyphReader *)self _caplineNodeIDForGlyphSize:v5];
      v7 = [(TDVectorGlyphReader *)self _baselineNodeIDForGlyphSize:v5];
      v8 = [(NSDictionary *)self->_guideNodes objectForKey:v7];
      v9 = [(NSDictionary *)self->_guideNodes objectForKey:v6];
      if (!v8)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' is missing a baseline guide for %@ ", self->_fileURL, v7];
        v14 = objc_alloc(MEMORY[0x277CCA9B8]);
        v15 = [v14 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1016 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v13, *MEMORY[0x277CCA450])}];
        goto LABEL_10;
      }

      if (!v9)
      {
        break;
      }

      if (++v5 == 4)
      {
        goto LABEL_11;
      }
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' is missing a capline guide for %@ ", self->_fileURL, v6];
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v15 = [v17 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1017 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v16, *MEMORY[0x277CCA450])}];
LABEL_10:
    v72[5] = v15;
LABEL_11:
    guideNodes = self->_guideNodes;
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __54__TDVectorGlyphReader__validateVectorGlyphsWithError___block_invoke;
    v70[3] = &unk_278EBAC68;
    v70[4] = self;
    v70[5] = &v71;
    [(NSDictionary *)guideNodes enumerateKeysAndObjectsUsingBlock:v70];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Template format %.1f is newer than the version that this software supports (%.1f)", templateVersion, 0x401C000000000000];
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = [v11 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1015 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v10, *MEMORY[0x277CCA450])}];
    v72[5] = v12;
  }

  if (self->_templateVersion < 3.0)
  {
    goto LABEL_79;
  }

  v19 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:1 size:1 direction:4];
  v20 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:1 size:1 direction:5];
  v21 = [(NSDictionary *)self->_guideNodes objectForKey:v19];
  v67 = [(NSDictionary *)self->_guideNodes objectForKey:v20];
  v22 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:1 direction:4];
  v23 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:1 direction:5];
  v24 = [(NSDictionary *)self->_guideNodes objectForKey:v22];
  v25 = [(NSDictionary *)self->_guideNodes objectForKey:v23];
  v26 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:9 size:1 direction:4];
  v27 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:9 size:1 direction:5];
  v28 = [(NSDictionary *)self->_guideNodes objectForKey:v26];
  v29 = [(NSDictionary *)self->_guideNodes objectForKey:v27];
  v30 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:2 direction:4];
  v31 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:2 direction:5];
  v66 = [(NSDictionary *)self->_guideNodes objectForKey:v30];
  v65 = [(NSDictionary *)self->_guideNodes objectForKey:v31];
  v64 = [(NSDictionary *)self->_guideNodes objectForKey:@"left-margin"];
  v63 = [(NSDictionary *)self->_guideNodes objectForKey:@"right-margin"];
  if (self->_isInterpolatable)
  {
    if (v21 && v67 && v24 && v25 && v28 && v29)
    {
      v32 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1]];
      v33 = v32 != 0;
      v34 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]];
      v35 = v34 != 0;
      v36 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1]];
      v37 = v21;
      v38 = v36 != 0;
      if (v32 && v34 && v36)
      {
        goto LABEL_79;
      }

      goto LABEL_33;
    }

    if (!v21 && !v67 && v24 && v25 && !v28 && !v29)
    {
      if ([(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]])
      {
        goto LABEL_79;
      }

      v37 = 0;
      v35 = 0;
      v33 = 1;
      goto LABEL_32;
    }

    if (v66 && v65 || v64 && v63)
    {
      v40 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:2]];
      goto LABEL_30;
    }

LABEL_69:
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' is missing margin guides: interpolatable margins on Ultralight-S, Regular-S, and Black-S, or fixed margins on Regular-M or Regular-S are required.", self->_fileURL];
    v45 = objc_alloc(MEMORY[0x277CCA9B8]);
    v46 = [v45 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1019 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v44, *MEMORY[0x277CCA450])}];
LABEL_78:
    v72[5] = v46;
    goto LABEL_79;
  }

  if (v66 && v65 || v64 && v63)
  {
    v39 = 2;
  }

  else
  {
    if (!v24 || !v25)
    {
      goto LABEL_69;
    }

    v39 = 1;
  }

  v40 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:v39]];
LABEL_30:
  if (v40)
  {
    goto LABEL_79;
  }

  v37 = v21;
  v33 = 1;
  v35 = 1;
LABEL_32:
  v38 = 1;
LABEL_33:
  if (v37 && v67 && v24 && v25 && v28 && v29)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' has interpolatable margin guides for missing glyphs: margins on Ultralight-S, Regular-S, and Black-S but", self->_fileURL];
    if (!v33)
    {
      v41 = [v41 stringByAppendingString:@" Ultralight-S"];
    }

    if (!v35)
    {
      v41 = [v41 stringByAppendingString:@" Regular-S"];
    }

    if (!v38)
    {
      v41 = [v41 stringByAppendingString:@" Black-S"];
    }

    v42 = [v41 stringByAppendingString:@" glyphs are missing."];
    goto LABEL_76;
  }

  if (!v37 && !v67 && v24 && v25 && !v28 && !v29)
  {
    v43 = @"Symbol image file '%@' has fixed margin guides for a glyph which is absent: fixed margins found for Regular-S but no corresponding glyph exists.";
LABEL_75:
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:v43, self->_fileURL];
LABEL_76:
    v47 = v42;
    if (!v42)
    {
      goto LABEL_79;
    }

    v48 = objc_alloc(MEMORY[0x277CCA9B8]);
    v46 = [v48 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1019 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v47, *MEMORY[0x277CCA450])}];
    goto LABEL_78;
  }

  if (v66 && v65 || v64 && v63)
  {
    v43 = @"Symbol image file '%@' has fixed margin guides for a glyph which is absent: fixed margins found for Regular-M but no corresponding glyph exists.";
    goto LABEL_75;
  }

LABEL_79:
  if (templateVersion <= 7.0)
  {
    vectorGlyphNodes = self->_vectorGlyphNodes;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __54__TDVectorGlyphReader__validateVectorGlyphsWithError___block_invoke_2;
    v69[3] = &unk_278EBAC68;
    v69[4] = self;
    v69[5] = &v71;
    [(NSDictionary *)vectorGlyphNodes enumerateKeysAndObjectsUsingBlock:v69];
  }

  v50 = templateVersion <= 7.0;
  if (![(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:2]])
  {
    [(TDVectorGlyphReader *)self templateVersion];
    if (v51 < 3.0 || (v60 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1]], v61 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]], v62 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1]], !v60) || !v61 || !v62 || !CUISVGNodeCanBeRepresentedAsPath() || !CUISVGNodeCanBeRepresentedAsPath() || (CUISVGNodeCanBeRepresentedAsPath() & 1) == 0)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' must have a glyph for Regular weight Medium size", self->_fileURL];
      v53 = objc_alloc(MEMORY[0x277CCA9B8]);
      v54 = [v53 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1023 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v52, *MEMORY[0x277CCA450])}];
      v72[5] = v54;
    }
  }

  v55 = v72;
  v56 = v72[5];
  if (v56)
  {
    if (a3)
    {
      *a3 = v56;
      v56 = v55[5];
    }

    v57 = [v56 userInfo];
    NSLog(&stru_28599C078.isa, [v57 objectForKey:*MEMORY[0x277CCA450]]);
    v58 = v72[5];
    v50 = 0;
  }

  _Block_object_dispose(&v71, 8);
  return v50;
}

uint64_t __54__TDVectorGlyphReader__validateVectorGlyphsWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = CGSVGNodeGetType();
  if (result != 2)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' has guide object %@ of the wrong type, it must be a shape", *(*(a1 + 32) + 24), a2];
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    result = [v9 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1018 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v8, *MEMORY[0x277CCA450])}];
    *(*(*(a1 + 40) + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

uint64_t __54__TDVectorGlyphReader__validateVectorGlyphsWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  Type = CGSVGNodeGetType();
  if (Type != 1)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' has glyph node %@ that is not a group got type:'%d' expected:'%d'", *(*(a1 + 32) + 24), a2, Type, 1];
    v13 = 1020;
LABEL_10:
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    result = [v14 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:v13 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", v12, *MEMORY[0x277CCA450])}];
    *(*(*(a1 + 40) + 8) + 40) = result;
    goto LABEL_11;
  }

  if (!CGSVGNodeGetChildCount())
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' has glyph node %@ that contains no content", *(*(a1 + 32) + 24), a2];
    v13 = 1022;
    goto LABEL_10;
  }

  CGSVGNodeGetBoundingBoxWithOptions();
  if (v10 <= 0.0 || v9 <= 0.0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Symbol image file '%@' has glyph node %@ that is zero size width || height", *(*(a1 + 32) + 24), a2];
    v13 = 1021;
    goto LABEL_10;
  }

  result = __ValidateGlyphNode(a3, *(*(a1 + 32) + 24), (*(*(a1 + 40) + 8) + 40));
  if ((result & 1) == 0)
  {
LABEL_11:
    *a4 = 1;
  }

  return result;
}

- (unint64_t)numberOfVectorGlyphs
{
  os_unfair_lock_lock(&self->_lock);
  vectorGlyphNodes = self->_vectorGlyphNodes;
  if (!vectorGlyphNodes)
  {
    [(TDVectorGlyphReader *)self _readSVGNodesError:0];
    vectorGlyphNodes = self->_vectorGlyphNodes;
  }

  v4 = [(NSDictionary *)vectorGlyphNodes count];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)_glyphNodeIDForWeight:(int64_t)a3 size:(int64_t)a4
{
  switch(a4)
  {
    case 3:
      v4 = a3 - 1;
      if ((a3 - 1) < 9)
      {
        v5 = off_278EBAED0;
        return v5[v4];
      }

      break;
    case 2:
      v4 = a3 - 1;
      if ((a3 - 1) < 9)
      {
        v5 = off_278EBAE88;
        return v5[v4];
      }

      break;
    case 1:
      v4 = a3 - 1;
      if ((a3 - 1) < 9)
      {
        v5 = off_278EBAE40;
        return v5[v4];
      }

      break;
  }

  return 0;
}

- (id)_baselineNodeIDForGlyphSize:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_278EBAF18[a3 - 1];
  }
}

- (id)_caplineNodeIDForGlyphSize:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_278EBAF30[a3 - 1];
  }
}

- (id)_marginNodeIDForWeight:(int64_t)a3 size:(int64_t)a4 direction:(int64_t)a5
{
  v6 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4];
  if (!v6)
  {
    return 0;
  }

  if (a5 == 4)
  {
    v7 = @"left-margin";
    return [(__CFString *)v7 stringByAppendingFormat:@"-%@", v6];
  }

  if (a5 != 5)
  {
    return 0;
  }

  v7 = @"right-margin";
  return [(__CFString *)v7 stringByAppendingFormat:@"-%@", v6];
}

- (CGSVGNode)_createAnchorNodeFromPoint:(CGPoint)a3 withIdentifier:(__CFString *)a4
{
  v5 = CGSVGNodeCreate();
  if (a4)
  {
    CGSVGNodeSetStringIdentifier();
  }

  CGSVGAttributeCreateWithFloat();
  CGSVGAttributeCreateWithFloat();
  CGSVGNodeSetAttribute();
  CGSVGNodeSetAttribute();
  CGSVGAttributeRelease();
  CGSVGAttributeRelease();
  return v5;
}

- (void)_writeDrawAttachmentDataToRootNode:(CGSVGNode *)a3 forWeight:(int64_t)a4 size:(int64_t)a5 glyphNode:(CGSVGNode *)a6 scaleFactor:(double)a7 transform:(CGAffineTransform *)a8
{
  v13 = [(NSDictionary *)self->_vectorGlyphDrawAttachmentDataNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a4 size:a5]];
  if (!v13)
  {
    v19 = [(TDVectorGlyphReader *)self createInterpolatedDrawAttachmentDataForWeight:a4 size:a5 scaleFactor:a7];
    v14 = v19;
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = [objc_msgSend(v19 "anchors")];
    [objc_msgSend(v14 "anchors")];
    v22 = v21;
    CGSVGNodeGetBoundingBoxWithOptions();
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    vDSP_vsaddD(v20, 2, &v28, v20, 2, v22);
    vDSP_vsaddD(v20 + 1, 2, &v29, v20 + 1, 2, v22);
    goto LABEL_13;
  }

  v14 = [objc_alloc(MEMORY[0x277D02700]) initWithSVGNode:v13];
  if ([v14 count])
  {
    v15 = [objc_msgSend(v14 "anchors")];
    if ([v14 count])
    {
      v16 = 0;
      do
      {
        v28 = 0;
        v29 = 0.0;
        v30 = 0.0;
        if (v14)
        {
          [v14 dataAtIndex:{v16, v28}];
          v17 = v29;
          v18 = v30;
        }

        else
        {
          v18 = 0.0;
          v17 = 0.0;
        }

        *(v15 + 16 * v16++) = vaddq_f64(*&a8->tx, vmlaq_n_f64(vmulq_n_f64(*&a8->c, v18), *&a8->a, v17));
      }

      while (v16 < [v14 count]);
    }
  }

  if (v14)
  {
LABEL_13:
    if ([v14 count])
    {
      GroupNode = CGSVGNodeCreateGroupNode();
      CGSVGNodeSetStringIdentifier();
      [v14 encodeToSVGNode:GroupNode];
      CGSVGNodeAddChild();
      CGSVGNodeRelease();
    }
  }

LABEL_15:
}

- (CGSVGDocument)vectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4 error:(id *)a5
{
  v54 = *MEMORY[0x277D85DE8];
  templateVersion = self->_templateVersion;
  os_unfair_lock_lock(&self->_lock);
  if ((a3 - 1) > 8 || (a4 - 1) > 2)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s called with invalid weight %d or invalid size %d for file '%@'", "-[TDVectorGlyphReader vectorGlyphWithWeight:size:error:]", a3, a4, self->_fileURL];
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1024 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v13, *MEMORY[0x277CCA450], 0)}];
    }

    NSLog(&stru_28599C078.isa, v13);
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", a3, a4];
  v11 = [(NSMutableDictionary *)self->_vectorGlyphWithWeightSize objectForKey:v10];
  if (!v11)
  {
    if (!self->_vectorGlyphNodes && ![(TDVectorGlyphReader *)self _readSVGNodesError:a5])
    {
      os_unfair_lock_unlock(&self->_lock);
      v12 = 0;
      goto LABEL_10;
    }

    if ([(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4]])
    {
      goto LABEL_14;
    }

    if ([(TDVectorGlyphReader *)self isInterpolatableForWeight:a3 size:a4])
    {
      v12 = [(TDVectorGlyphReader *)self interpolatedSymbolForWeight:a3 size:a4];
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_14:
      memset(&v51, 0, sizeof(v51));
      [(TDVectorGlyphReader *)self defaultPointSize];
      v17 = v16;
      [(TDVectorGlyphReader *)self _sourcePointSize];
      v19 = v17 / v18;
      if (self->_platform == 4)
      {
        v20 = v19 * 0.94634;
      }

      else
      {
        v20 = v19;
      }

      CGAffineTransformMakeScale(&v52, v20, v20);
      CGSVGNodeGetBoundingBoxWithOptions();
      v22 = v21;
      v24 = v23;
      svgDocument = self->_svgDocument;
      CGSVGDocumentGetRootNode();
      if (CGSVGNodeGetParent())
      {
        CGSVGNodeGetBoundingBoxWithOptions();
        v22 = v26;
        v24 = v27;
      }

      v49 = v52;
      CGAffineTransformTranslate(&v50, &v49, -v22, -v24);
      v52 = v50;
      if (CGSVGNodeFindAttribute() && CGSVGAttributeGetTransform())
      {
        t1 = v51;
        t2 = v52;
        CGAffineTransformConcat(&v49, &t1, &t2);
        v52 = v49;
      }

      v49 = v52;
      CGSVGAttributeCreateWithTransform();
      v12 = CGSVGDocumentCreate();
      v28 = [MEMORY[0x277CBEB58] set];
      [v28 addObject:@"defaults"];
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke;
      v44 = &unk_278EBACB0;
      v46 = templateVersion >= 5.0;
      v45 = v28;
      CGSVGNodeEnumerate();
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v37 objects:v53 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [@"." stringByAppendingString:*(*(&v37 + 1) + 8 * i)];
            v33 = self->_svgDocument;
            if (CGSVGDocumentGetNamedStyle() && CGSVGAttributeMapCopy())
            {
              CGSVGDocumentAddNamedStyle();
              CGSVGAttributeMapRelease();
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v37 objects:v53 count:16];
        }

        while (v30);
      }

      RootNode = CGSVGDocumentGetRootNode();
      v35 = CGSVGNodeCopy();
      CGSVGNodeSetAttribute();
      CGSVGAttributeRelease();
      CGSVGNodeSetStringIdentifier();
      CGSVGNodeAddChild();
      CGSVGNodeRelease();
      v49 = v50;
      [(TDVectorGlyphReader *)self _writeRotateAnchorToRootNode:RootNode forWeight:a3 size:a4 glyphNode:v35 scaleFactor:&v49 transform:v20];
      v49 = v50;
      [(TDVectorGlyphReader *)self _writeDrawAttachmentDataToRootNode:RootNode forWeight:a3 size:a4 glyphNode:v35 scaleFactor:&v49 transform:v20];
      if (self->_layerTreeNode && templateVersion >= 5.0)
      {
        CGSVGNodeCopy();
        CGSVGNodeAddChild();
        CGSVGNodeSetStringIdentifier();
        CGSVGNodeRelease();
      }

      CGSVGNodeEnumerate();
      CGSVGNodeEnumerate();
      vectorGlyphWithWeightSize = self->_vectorGlyphWithWeightSize;
      if (!vectorGlyphWithWeightSize)
      {
        vectorGlyphWithWeightSize = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_vectorGlyphWithWeightSize = vectorGlyphWithWeightSize;
      }

      [(NSMutableDictionary *)vectorGlyphWithWeightSize setObject:v12 forKey:v10];
      goto LABEL_9;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = v11;
  CGSVGDocumentRetain();
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    Type = CGSVGNodeGetType();
    if (Type == 2 || Type == 1 && (*(a1 + 40) & 1) != 0)
    {
      if (CGSVGNodeFindAttribute())
      {
        v6 = CGSVGAttributeCopyString();
        v5 = [objc_msgSend(v6 componentsSeparatedByString:{@" ", "mutableCopy"}];
        [v5 removeObjectsAtIndexes:{objc_msgSend(v5, "indexesOfObjectsPassingTest:", &__block_literal_global)}];
        [*(a1 + 32) addObjectsFromArray:v5];
      }
    }
  }
}

uint64_t __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_3(uint64_t result, uint64_t a2, int a3)
{
  if (!a3)
  {
    v13[10] = v6;
    v13[11] = v5;
    v13[16] = v3;
    v13[17] = v4;
    v7 = result;
    result = CGSVGNodeGetType();
    if (result == 2 || result == 1 && (*(v7 + 32) & 1) != 0)
    {
      if (CGSVGNodeFindAttribute())
      {
        v8 = CGSVGAttributeCopyString();
        v9 = [objc_msgSend(v8 componentsSeparatedByString:{@" ", "mutableCopy"}];
        [v9 removeObjectsAtIndexes:{objc_msgSend(v9, "indexesOfObjectsPassingTest:", &__block_literal_global_220)}];
        [v9 componentsJoinedByString:@" "];
        v10 = CGSVGAttributeCreateWithString();
        CGSVGNodeSetAttribute();

        CFRelease(v10);
      }

      v11 = [MEMORY[0x277CBEB18] array];
      AttributeMap = CGSVGNodeGetAttributeMap();
      v13[5] = MEMORY[0x277D85DD0];
      v13[6] = 3221225472;
      v13[7] = __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_5;
      v13[8] = &unk_278EBACD8;
      v13[9] = v11;
      CGSVGAttributeMapEnumerate();
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_6;
      v13[3] = &__block_descriptor_40_e15_v32__0_8Q16_B24l;
      v13[4] = AttributeMap;
      return [v11 enumerateObjectsUsingBlock:v13];
    }
  }

  return result;
}

void __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_5(uint64_t a1)
{
  v2 = CGSVGAtomCopyString();
  if ([v2 hasPrefix:@"-sfsymbols-"])
  {
    [*(a1 + 32) addObject:v2];
  }
}

uint64_t __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CGSVGAtomFromString();

  return MEMORY[0x282156A60](v1, v2);
}

uint64_t __56__TDVectorGlyphReader_vectorGlyphWithWeight_size_error___block_invoke_7(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    result = CGSVGNodeGetType();
    if (result == 2)
    {
      result = CGSVGNodeGetAttributeMap();
      if (result)
      {
        result = CGSVGAttributeMapGetAttribute();
        if (result)
        {
          return CGSVGAttributeGetFloat();
        }
      }
    }
  }

  return result;
}

- (BOOL)vectorGlyphExistsWithWeight:(int64_t)a3 size:(int64_t)a4 error:(id *)a5
{
  os_unfair_lock_lock(&self->_lock);
  if ((a3 - 1) > 8 || (a4 - 1) > 2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s called with invalid weight %d or invalid size %d for file '%@'", "-[TDVectorGlyphReader vectorGlyphExistsWithWeight:size:error:]", a3, a4, self->_fileURL];
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1024 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v10, *MEMORY[0x277CCA450], 0)}];
    }

    NSLog(&stru_28599C078.isa, v10);
    v9 = 0;
  }

  else
  {
    if (!self->_vectorGlyphNodes)
    {
      [(TDVectorGlyphReader *)self _readSVGNodesError:a5];
    }

    v9 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4]]!= 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (double)baselineForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  if ((a3 - 1) > 8)
  {
    NSLog(&cfstr_SCalledWithInv_0.isa, "[TDVectorGlyphReader baselineForVectorGlyphWithWeight:size:]", a3, a4, self->_fileURL);
    v19 = 0.0;
  }

  else
  {
    v7 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4];
    v8 = [(TDVectorGlyphReader *)self _baselineNodeIDForGlyphSize:a4];
    v9 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v7];
    v10 = [(NSDictionary *)self->_guideNodes objectForKey:v8];
    [(TDVectorGlyphReader *)self defaultPointSize];
    v12 = v11;
    [(TDVectorGlyphReader *)self _sourcePointSize];
    v14 = v13;
    if (v9 && v10 && CGSVGNodeGetType() == 2)
    {
      CGSVGNodeGetBoundingBoxWithOptions();
      v16 = v15;
      v18 = v17;
      CGSVGNodeGetBoundingBoxWithOptions();
      v19 = v12 * ((v16 + v18 - CGRectGetMidY(v47)) / v14);
    }

    else
    {
      v19 = 0.0;
      if (self->_isInterpolatable)
      {
        v20 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1]];
        v21 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]];
        v22 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1]];
        v23 = [(NSDictionary *)self->_guideNodes objectForKey:[(TDVectorGlyphReader *)self _baselineNodeIDForGlyphSize:1]];
        if (v20)
        {
          if (v21 && v22 && v23 && CGSVGNodeGetType() == 2)
          {
            CGSVGNodeGetBoundingBoxWithOptions();
            v25 = v24;
            v27 = v26;
            CGSVGNodeGetBoundingBoxWithOptions();
            v29 = v28;
            v31 = v30;
            CGSVGNodeGetBoundingBoxWithOptions();
            v33 = v32;
            v35 = v34;
            CGSVGNodeGetBoundingBoxWithOptions();
            MidY = CGRectGetMidY(v48);
            v37 = v12 * ((v25 + v27 - MidY) / v14);
            v38 = v12 * ((v29 + v31 - MidY) / v14);
            v39 = v12 * ((v33 + v35 - MidY) / v14);
            [MEMORY[0x277D02718] scalarsForGlyphWeight:a3 glyphSize:a4];
            v41 = v40;
            v43 = v42;
            [MEMORY[0x277D02718] transformForGlyphSize:a4];
            v19 = v45 * (v38 + (v37 - v38) * v41 + (v39 - v38) * v43) - v12 * v44;
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  result = v19 * 0.94634;
  if (self->_platform != 4)
  {
    return v19;
  }

  return result;
}

- (double)capHeightForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  if ((a3 - 1) > 8)
  {
    NSLog(&cfstr_SCalledWithInv_1.isa, "[TDVectorGlyphReader capHeightForVectorGlyphWithWeight:size:]", a3, a4, self->_fileURL);
    v15 = 0.0;
  }

  else
  {
    v7 = [(TDVectorGlyphReader *)self _caplineNodeIDForGlyphSize:a4];
    v8 = [(NSDictionary *)self->_guideNodes objectForKey:[(TDVectorGlyphReader *)self _baselineNodeIDForGlyphSize:a4]];
    v9 = [(NSDictionary *)self->_guideNodes objectForKey:v7];
    if (!v8 || (v10 = v9) == 0)
    {
      v11 = [(TDVectorGlyphReader *)self _caplineNodeIDForGlyphSize:1];
      v8 = [(NSDictionary *)self->_guideNodes objectForKey:[(TDVectorGlyphReader *)self _baselineNodeIDForGlyphSize:1]];
      v10 = [(NSDictionary *)self->_guideNodes objectForKey:v11];
    }

    [(TDVectorGlyphReader *)self defaultPointSize];
    v13 = v12;
    [(TDVectorGlyphReader *)self _sourcePointSize];
    v15 = 0.0;
    if (v8)
    {
      if (v10)
      {
        v16 = v14;
        if (CGSVGNodeGetType() == 2 && CGSVGNodeGetType() == 2)
        {
          CGSVGNodeGetBoundingBoxWithOptions();
          v18 = v17;
          v19 = v17;
          CGSVGNodeGetBoundingBoxWithOptions();
          if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            NSLog(&cfstr_SGotInvalidBas.isa, "[TDVectorGlyphReader capHeightForVectorGlyphWithWeight:size:]", self->_fileURL, a3, a4);
          }

          else
          {
            v15 = v13 * ((v18 - v20) / v16);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  result = v15 * 0.94634;
  if (self->_platform != 4)
  {
    return v15;
  }

  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4
{
  v25 = 0;
  [(TDVectorGlyphReader *)self _fixedAlignmentRectInsetsForVectorGlyphWithWeight:a3 size:a4 foundExactMargins:&v25];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = CUIEdgeInsetsValid();
  isInterpolatable = self->_isInterpolatable;
  if (!v15)
  {
    if (!self->_isInterpolatable)
    {
      [(TDVectorGlyphReader *)self defaultPointSize];
      CUIEdgeInsetsMake();
      goto LABEL_8;
    }

LABEL_6:
    [(TDVectorGlyphReader *)self _interpolatedAlignmentRectInsetsForVectorGlyphWithWeight:a3 size:a4];
LABEL_8:
    v8 = v17;
    v10 = v18;
    v12 = v19;
    v14 = v20;
    goto LABEL_9;
  }

  if (self->_isInterpolatable && (v25 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (self->_platform == 4)
  {
    v10 = v10 * 0.94634;
    v12 = v12 * 0.94634;
    v14 = v14 * 0.94634;
    v8 = v8 * 0.94634;
  }

  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  result.var3 = v24;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_interpolatedAlignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4
{
  v41 = 0;
  v40 = 0;
  [(TDVectorGlyphReader *)self _fixedAlignmentRectInsetsForVectorGlyphWithWeight:1 size:1 foundExactMargins:&v41 + 1];
  v38 = v7;
  v39 = v8;
  v36 = v9;
  v37 = v10;
  [(TDVectorGlyphReader *)self _fixedAlignmentRectInsetsForVectorGlyphWithWeight:4 size:1 foundExactMargins:&v41];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(TDVectorGlyphReader *)self _fixedAlignmentRectInsetsForVectorGlyphWithWeight:9 size:1 foundExactMargins:&v40];
  if (HIBYTE(v41) == 1 && v41 == 1 && v40 == 1)
  {
    v23 = v19;
    v24 = v20;
    v25 = v21;
    v26 = v22;
    [MEMORY[0x277D02718] scalarsForGlyphWeight:a3 glyphSize:a4];
    v34 = v27;
    v35 = v28;
    [MEMORY[0x277D02718] transformForGlyphSize:a4];
    v14 = (v14 + (v36 - v14) * v34 + (v24 - v14) * v35) * v29;
    v18 = (v18 + (v37 - v18) * v34 + (v26 - v18) * v35) * v29;
    v12 = (v12 + (v38 - v12) * v34 + (v23 - v12) * v35) * v29;
    v16 = (v16 + (v39 - v16) * v34 + (v25 - v16) * v35) * v29;
  }

  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  result.var3 = v33;
  result.var2 = v32;
  result.var1 = v31;
  result.var0 = v30;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_fixedAlignmentRectInsetsForVectorGlyphWithWeight:(int64_t)a3 size:(int64_t)a4 foundExactMargins:(BOOL *)a5
{
  v9 = *MEMORY[0x277D02658];
  v10 = *(MEMORY[0x277D02658] + 8);
  v11 = *(MEMORY[0x277D02658] + 16);
  v12 = *(MEMORY[0x277D02658] + 24);
  os_unfair_lock_lock(&self->_lock);
  if ((a3 - 1) <= 8)
  {
    v13 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4];
    v14 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:a3 size:a4 direction:4];
    v15 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:a3 size:a4 direction:5];
    v16 = [(NSDictionary *)self->_guideNodes objectForKey:v14];
    v17 = [(NSDictionary *)self->_guideNodes objectForKey:v15];
    v18 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v13];
    [(TDVectorGlyphReader *)self defaultPointSize];
    [(TDVectorGlyphReader *)self _sourcePointSize];
    if (!v16)
    {
      goto LABEL_7;
    }

    if (v17 && v18)
    {
      if (a5)
      {
        *a5 = 1;
      }
    }

    else
    {
LABEL_7:
      v19 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:2];
      v20 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:2 direction:4];
      v21 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:2 direction:5];
      v16 = [(NSDictionary *)self->_guideNodes objectForKey:v20];
      v17 = [(NSDictionary *)self->_guideNodes objectForKey:v21];
      v18 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v19];
    }

    if (!v16 || !v17 || !v18)
    {
      v22 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1];
      v23 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:1 direction:4];
      v24 = [(TDVectorGlyphReader *)self _marginNodeIDForWeight:4 size:1 direction:5];
      v16 = [(NSDictionary *)self->_guideNodes objectForKey:v23];
      v17 = [(NSDictionary *)self->_guideNodes objectForKey:v24];
      v18 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v22];
    }

    if (!v16 || !v17)
    {
      v25 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:2];
      v16 = [(NSDictionary *)self->_guideNodes objectForKey:@"left-margin"];
      v17 = [(NSDictionary *)self->_guideNodes objectForKey:@"right-margin"];
      v18 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v25];
    }

    if (v16 && v17)
    {
      if (CGSVGShapeNodeGetPrimitive() == 32)
      {
        v57 = 0.0;
        v58 = 0.0;
        v56 = 0;
        v55 = 0.0;
        CGSVGShapeNodeGetLineGeometry();
        v26 = 0.0;
        v27 = 0.0;
        height = 0.0 - 0.0;
        CGSVGNodeGetParent();
        if (!CGSVGNodeFindAttribute())
        {
          v30 = 0.5;
LABEL_24:
          if (CGSVGShapeNodeGetPrimitive() == 32)
          {
            v57 = 0.0;
            v58 = 0.0;
            v56 = 0;
            v55 = 0.0;
            CGSVGShapeNodeGetLineGeometry();
            y = v57;
            x = v58;
            rect = v55 - v57;
            CGSVGNodeGetParent();
            if (!CGSVGNodeFindAttribute())
            {
              width = 0.5;
              goto LABEL_31;
            }

            v33 = *(MEMORY[0x277CBF2C0] + 16);
            *&v54.a = *MEMORY[0x277CBF2C0];
            *&v54.c = v33;
            *&v54.tx = *(MEMORY[0x277CBF2C0] + 32);
            width = 0.5;
            if (!CGSVGAttributeGetTransform())
            {
LABEL_31:
              [(TDVectorGlyphReader *)self templateVersion];
              if (v35 >= 2.0)
              {
                if (v18)
                {
                  CGSVGNodeGetBoundingBoxWithOptions();
                  v50 = v37;
                  v51 = v36;
                  v48 = v39;
                  v49 = v38;
                  v65.origin.x = v27;
                  v65.origin.y = v26;
                  v65.size.width = v30;
                  v65.size.height = height;
                  if (!CGRectIsNull(v65))
                  {
                    v66.origin.y = v50;
                    v66.origin.x = v51;
                    v66.size.height = v48;
                    v66.size.width = v49;
                    CGRectGetMinX(v66);
                    v67.origin.x = v27;
                    v67.origin.y = v26;
                    v67.size.width = v30;
                    v67.size.height = height;
                    CGRectGetMinX(v67);
                  }

                  v68.origin.x = x;
                  v68.origin.y = y;
                  v68.size.width = width;
                  v68.size.height = rect;
                  if (!CGRectIsNull(v68))
                  {
                    v69.origin.x = x;
                    v69.origin.y = y;
                    v69.size.width = width;
                    v69.size.height = rect;
                    CGRectGetMinX(v69);
                    v70.origin.y = v50;
                    v70.origin.x = v51;
                    v70.size.height = v48;
                    v70.size.width = v49;
                    CGRectGetMaxX(v70);
                  }
                }
              }

              else
              {
                v63.origin.x = v27;
                v63.origin.y = v26;
                v63.size.width = v30;
                v63.size.height = height;
                CGRectIsEmpty(v63);
                v64.origin.x = x;
                v64.origin.y = y;
                v64.size.width = width;
                v64.size.height = rect;
                CGRectIsEmpty(v64);
              }

              CUIEdgeInsetsMake();
              v9 = v40;
              v10 = v41;
              v11 = v42;
              v12 = v43;
              goto LABEL_39;
            }

            v53 = v54;
            v61.size.width = 0.5;
            v61.origin.x = x;
            v61.origin.y = y;
            v61.size.height = rect;
            v62 = CGRectApplyAffineTransform(v61, &v53);
          }

          else
          {
            CGSVGNodeGetBoundingBoxWithOptions();
          }

          x = v62.origin.x;
          y = v62.origin.y;
          width = v62.size.width;
          rect = v62.size.height;
          goto LABEL_31;
        }

        v29 = *(MEMORY[0x277CBF2C0] + 16);
        *&v54.a = *MEMORY[0x277CBF2C0];
        *&v54.c = v29;
        *&v54.tx = *(MEMORY[0x277CBF2C0] + 32);
        v30 = 0.5;
        if (!CGSVGAttributeGetTransform())
        {
          goto LABEL_24;
        }

        v53 = v54;
        v59.size.width = 0.5;
        v59.origin.x = 0.0;
        v59.origin.y = 0.0;
        v59.size.height = 0.0 - 0.0;
        v60 = CGRectApplyAffineTransform(v59, &v53);
      }

      else
      {
        CGSVGNodeGetBoundingBoxWithOptions();
      }

      v27 = v60.origin.x;
      v26 = v60.origin.y;
      v30 = v60.size.width;
      height = v60.size.height;
      goto LABEL_24;
    }
  }

LABEL_39:
  os_unfair_lock_unlock(&self->_lock);
  v44 = v9;
  v45 = v10;
  v46 = v11;
  v47 = v12;
  result.var3 = v47;
  result.var2 = v46;
  result.var1 = v45;
  result.var0 = v44;
  return result;
}

- (void)_calcInterpolatability
{
  if (self->_templateVersion >= 3.0)
  {
    v3 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]];
    v4 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1]];
    v5 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1]];
    if (v4)
    {
      if (v3)
      {
        v6 = v5;
        if (v5)
        {
          if (CUISVGNodeCanBeRepresentedAsPath() && CUISVGNodeCanBeRepresentedAsPath())
          {
            if (CUISVGNodeCanBeRepresentedAsPath())
            {
              self->_isInterpolatable = __nodesAreInterpolationCompatible(v4, v3, v6);
            }
          }
        }
      }
    }
  }
}

- (BOOL)isInterpolatableForWeight:(int64_t)a3 size:(int64_t)a4
{
  if (!self->_vectorGlyphNodes)
  {
    [(TDVectorGlyphReader *)self _readSVGNodesError:0, a4];
  }

  return self->_isInterpolatable;
}

- (CGSVGNode)interpolatedSymbolForWeight:(int64_t)a3 size:(int64_t)a4
{
  if (![TDVectorGlyphReader isInterpolatableForWeight:"isInterpolatableForWeight:size:" size:?])
  {
    return 0;
  }

  v7 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1]];
  v8 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1]];
  v9 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1]];
  v10 = 0;
  if (v8)
  {
    if (v7)
    {
      v11 = v9;
      if (v9)
      {
        v10 = CGSVGNodeCopy();
        [MEMORY[0x277D02718] scalarsForGlyphWeight:a3 glyphSize:a4];
        v13 = v12;
        v15 = v14;
        [MEMORY[0x277D02718] transformForGlyphSize:a4];
        v17 = v16;
        v19 = v18;
        [(TDVectorGlyphReader *)self defaultPointSize];
        v21 = v20;
        [(TDVectorGlyphReader *)self _sourcePointSize];
        __interpolateChildShapes(v13, v15, v17, v19, v21, v10, v8, v7, v11);
        CFAutorelease(v10);
      }
    }
  }

  return v10;
}

+ (CGPoint)_anchorInOutlineCoordinateSpaceForAnchor:(CGSVGNode *)a3 glyph:(CGSVGNode *)a4
{
  CGSVGNodeGetBoundingBoxWithOptions();
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);

  [a1 _anchorInOutlineCoordinateSpaceForAnchorPoint:a4 glyph:{MidX, MidY}];
  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)_anchorInOutlineCoordinateSpaceForAnchorPoint:(CGPoint)a3 glyph:(CGSVGNode *)a4
{
  y = a3.y;
  x = a3.x;
  CGSVGNodeGetBoundingBoxWithOptions();
  v6 = v14.origin.x;
  v7 = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MinX = CGRectGetMinX(v14);
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = width;
  v15.size.height = height;
  v11 = y - CGRectGetMinY(v15);
  v12 = x - MinX;
  result.y = v11;
  result.x = v12;
  return result;
}

- (BOOL)interpolatedRotateAnchorForWeight:(int64_t)a3 size:(int64_t)a4 scaleFactor:(double)a5 point:(CGPoint *)a6
{
  v10 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1];
  v11 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v10];
  v12 = [(NSDictionary *)self->_vectorGlyphRotateAnchorNodes objectForKey:v10];
  v13 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1];
  v14 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v13];
  v15 = [(NSDictionary *)self->_vectorGlyphRotateAnchorNodes objectForKey:v13];
  v16 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1];
  v17 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v16];
  v18 = [(NSDictionary *)self->_vectorGlyphRotateAnchorNodes objectForKey:v16];
  if (v14)
  {
    v19 = v11 == 0;
  }

  else
  {
    v19 = 1;
  }

  v23 = v19 || v17 == 0 || v12 == 0 || v15 == 0 || v18 == 0;
  v24 = !v23;
  if (!v23)
  {
    v25 = v18;
    [MEMORY[0x277D02718] scalarsForGlyphWeight:a3 glyphSize:a4];
    v42 = v26;
    v44 = v27;
    [MEMORY[0x277D02718] transformForGlyphSize:a4];
    v43 = v28;
    [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchor:v15 glyph:v14];
    v40 = v30;
    v41 = v29;
    [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchor:v12 glyph:v11];
    v38 = v32;
    v39 = v31;
    [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchor:v25 glyph:v17];
    v33.f64[0] = v41;
    v33.f64[1] = v40;
    v34.f64[0] = v39;
    v34.f64[1] = v38;
    v36.f64[1] = v35;
    *a6 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(vaddq_f64(v34, vmulq_n_f64(vsubq_f64(v33, v34), v42)), vmulq_n_f64(vsubq_f64(v36, v34), v44)), v43), a5);
  }

  return v24;
}

- (id)createInterpolatedDrawAttachmentDataForWeight:(int64_t)a3 size:(int64_t)a4 scaleFactor:(double)a5
{
  v8 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:4 size:1];
  v9 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v8];
  v10 = [(NSDictionary *)self->_vectorGlyphDrawAttachmentDataNodes objectForKey:v8];
  v11 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:1 size:1];
  v12 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v11];
  v13 = [(NSDictionary *)self->_vectorGlyphDrawAttachmentDataNodes objectForKey:v11];
  v14 = [(TDVectorGlyphReader *)self _glyphNodeIDForWeight:9 size:1];
  v15 = [(NSDictionary *)self->_vectorGlyphNodes objectForKey:v14];
  v16 = [(NSDictionary *)self->_vectorGlyphDrawAttachmentDataNodes objectForKey:v14];
  v17 = 0;
  if (v12)
  {
    if (v9)
    {
      if (v15)
      {
        if (v13)
        {
          if (v10)
          {
            v18 = v16;
            if (v16)
            {
              v50 = a3;
              v19 = [objc_alloc(MEMORY[0x277D02700]) initWithSVGNode:v10];
              v20 = [objc_alloc(MEMORY[0x277D02700]) initWithSVGNode:v13];
              v21 = [objc_alloc(MEMORY[0x277D02700]) initWithSVGNode:v18];
              v22 = [v19 count];
              v23 = [v19 count];
              if (v23 == [v20 count])
              {
                v24 = [v19 count];
                v17 = 0;
                if (v24 == [v21 count] && v22)
                {
                  [MEMORY[0x277D02718] scalarsForGlyphWeight:v50 glyphSize:a4];
                  v44 = v26;
                  v45 = v25;
                  [MEMORY[0x277D02718] transformForGlyphSize:a4];
                  v43 = v27;
                  v28 = [MEMORY[0x277D02718] createFloatDeltasFrom:objc_msgSend(v19 to:{"data"), objc_msgSend(v20, "data")}];
                  v29 = [MEMORY[0x277D02718] createFloatDeltasFrom:objc_msgSend(v19 to:{"data"), objc_msgSend(v21, "data")}];
                  v42 = [MEMORY[0x277D02718] createInterpolatedFloatsFromFloats:objc_msgSend(v19 ultralightDeltas:"data") blackDeltas:v28 withScalars:{v29, v45, v44}];

                  v30 = [MEMORY[0x277D02710] createWithPointCount:{objc_msgSend(v19, "count")}];
                  v31 = [v30 rawArray];
                  if ([v19 count])
                  {
                    v32 = 0;
                    do
                    {
                      if (v20)
                      {
                        [v20 dataAtIndex:v32];
                      }

                      if (v19)
                      {
                        [v19 dataAtIndex:v32];
                      }

                      if (v21)
                      {
                        [v21 dataAtIndex:v32];
                      }

                      [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchorPoint:v12 glyph:0.0, 0.0];
                      v49 = v34;
                      v51 = v33;
                      [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchorPoint:v9 glyph:0.0, 0.0];
                      v47 = v36;
                      v48 = v35;
                      [TDVectorGlyphReader _anchorInOutlineCoordinateSpaceForAnchorPoint:v15 glyph:0.0, 0.0];
                      v37.f64[0] = v51;
                      v37.f64[1] = v49;
                      v38.f64[0] = v48;
                      v38.f64[1] = v47;
                      v40.f64[1] = v39;
                      *(v31 + 16 * v32++) = vmulq_n_f64(vmulq_n_f64(vaddq_f64(vaddq_f64(v38, vmulq_n_f64(vsubq_f64(v37, v38), v45)), vmulq_n_f64(vsubq_f64(v40, v38), v44)), v43), a5);
                    }

                    while (v32 < [v19 count]);
                  }

                  v17 = [objc_alloc(MEMORY[0x277D02700]) initAdoptingData:v42 anchors:v30];
                }
              }

              else
              {
                v17 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v17;
}

- (CGSize)canvasSizeForWeight:(int64_t)a3 size:(int64_t)a4
{
  if ([(TDVectorGlyphReader *)self vectorGlyphWithWeight:a3 size:a4 error:0])
  {
    CGSVGDocumentGetCanvasSize();
    v5 = v4;
    v7 = v6;
    CGSVGDocumentRelease();
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v7 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)containsWideGamutContent
{
  if (!self->_svgDocument)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_lock);
  svgDocument = self->_svgDocument;
  v4 = CGSVGDocumentContainsWideGamutContent();
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (id)_layerNamesForRenderingMode:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  if (self->_svgDocument)
  {
    os_unfair_lock_lock(&self->_lock);
    svgDocument = self->_svgDocument;
    CGSVGDocumentGetRootNode();
    templateVersion = self->_templateVersion;
    v10[6] = MEMORY[0x277D85DD0];
    v10[7] = 3221225472;
    v10[8] = __51__TDVectorGlyphReader__layerNamesForRenderingMode___block_invoke;
    v10[9] = &unk_278EBAD60;
    v11 = templateVersion >= 5.0;
    v10[10] = a3;
    v10[11] = v5;
    CGSVGNodeEnumerate();
    v8 = [v5 count];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__TDVectorGlyphReader__layerNamesForRenderingMode___block_invoke_2;
    v10[3] = &unk_278EBAD88;
    v10[4] = a3;
    v10[5] = v8;
    [v5 sortUsingComparator:v10];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

void __51__TDVectorGlyphReader__layerNamesForRenderingMode___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    Type = CGSVGNodeGetType();
    if (Type == 2 || Type == 1 && (*(a1 + 48) & 1) != 0)
    {
      if (CGSVGNodeFindAttribute())
      {
        v5 = CGSVGAttributeCopyString();
        v6 = [v5 componentsSeparatedByString:@" "];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v13 + 1) + 8 * i);
              if ([v11 hasPrefix:*(a1 + 32)])
              {
                [*(a1 + 40) addObject:v11];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v8);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __51__TDVectorGlyphReader__layerNamesForRenderingMode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 40) <= 9uLL || ((v6 = [a2 rangeOfString:*(a1 + 32)], v8 = v7, v9 = objc_msgSend(a3, "rangeOfString:", *(a1 + 32)), v6 != 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v9 == 0x7FFFFFFFFFFFFFFFLL) : (v11 = 1), v11))
  {

    return [a2 compare:a3];
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v15 = [a2 stringByReplacingCharactersInRange:v6 withString:{v8, &stru_28599CA78}];
    v16 = [a3 stringByReplacingCharactersInRange:v13 withString:{v14, &stru_28599CA78}];
    v17 = [v15 integerValue];
    v18 = [v16 integerValue];
    if (v17 < v18)
    {
      return -1;
    }

    else
    {
      return v17 > v18;
    }
  }
}

- (id)_pathForLayerNamed:(id)a3 inDocument:(CGSVGDocument *)a4
{
  if (!a4)
  {
    return 0;
  }

  CGSVGDocumentGetRootNode();
  CGSVGNodeGetChildAtIndex();
  ChildCount = CGSVGNodeGetChildCount();
  v6 = [MEMORY[0x277CBEB18] array];
  if (ChildCount)
  {
    v7 = 0;
    v8 = MEMORY[0x277CBF2C0];
    do
    {
      CGSVGNodeGetChildAtIndex();
      if (CGSVGNodeGetType() == 2 && CGSVGNodeFindAttribute())
      {
        v9 = CGSVGAttributeCopyString();
        if ([objc_msgSend(v9 componentsSeparatedByString:{@" ", "containsObject:", a3}])
        {
          v12 = *v8;
          v13 = v8[1];
          v14 = v8[2];
          v10 = CUICreatePathFromSVGNode();
          [v6 addObject:{v10, v12, v13, v14}];
        }
      }

      ++v7;
    }

    while (ChildCount != v7);
  }

  return [MEMORY[0x277D02720] createConcatenatingPaths:v6];
}

- (id)createMonochromeLayerGroupForSymbol:(CGSVGDocument *)a3 layerNames:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v12 = 0;
    goto LABEL_14;
  }

  CGSVGDocumentGetRootNode();
  CGSVGNodeFindChildWithCStringIdentifier();
  templateVersion = self->_templateVersion;
  if (self->_layerTreeNode)
  {
    v7 = templateVersion < 5.0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v11 = CUICreateSubpathsFromSVGNode();
    v12 = [MEMORY[0x277D02708] createLayerGroupWithLayerTree:self->_layerTreeNode layerNames:a4 shapes:v11 delegate:self];

LABEL_14:
    v17 = *MEMORY[0x277D85DE8];
    return v12;
  }

  if (templateVersion < 4.0 || ![a4 count])
  {
    v13 = [(TDVectorGlyphReader *)self pathForLayerNamed:0];
    [(TDVectorGlyphReader *)self strokeWidthForLayerNamed:0];
    v15 = [objc_alloc(MEMORY[0x277D02708]) _initWithName:@"monochrome-0" index:0 shape:v13 strokeWidth:0 attributes:0 style:self delegate:v14];
    v16 = objc_alloc(MEMORY[0x277D02708]);
    v18[0] = v15;
    v12 = [v16 _initWithName:@"root" index:0 sublayers:objc_msgSend(MEMORY[0x277CBEA60] attributes:"arrayWithObjects:count:" style:v18 delegate:{1), 0, 0, self}];

    goto LABEL_14;
  }

  v8 = MEMORY[0x277D02708];
  v9 = *MEMORY[0x277D85DE8];

  return [v8 createLayerGroupWithLayerNames:a4 delegate:self];
}

- (void)drawInContext:(CGContext *)a3 atPointSize:(double)a4 scaleFactor:(double)a5 weight:(int64_t)a6 size:(int64_t)a7
{
  v32 = *MEMORY[0x277D85DE8];
  if (a3 && a4 > 0.0)
  {
    v11 = [(TDVectorGlyphReader *)self vectorGlyphWithWeight:a6 size:a7 error:0];
    v12 = [(TDVectorGlyphReader *)self monochromeLayerNodeNames];
    os_unfair_lock_lock(&self->_lock);
    [(TDVectorGlyphReader *)self defaultPointSize];
    self->_drawingPointSize = a4;
    self->_drawingScale = a4 * a5 / v13;
    self->_drawingSymbol = v11;
    if (v11)
    {
      CGSVGDocumentGetCanvasSize();
      v15 = v14;
      v17 = v16;
      v18 = [(TDVectorGlyphReader *)self createMonochromeLayerGroupForSymbol:v11 layerNames:v12];
      ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3B8]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = [v18 sublayers];
      v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v28;
        do
        {
          v24 = 0;
          do
          {
            if (*v28 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v27 + 1) + 8 * v24++) drawInContext:a3 scaleFactor:ConstantColor targetSize:0 variableMinValue:self->_drawingScale variableMaxValue:v15 onFillColor:v17 offFillColor:{INFINITY, INFINITY}];
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v22);
      }

      drawingSymbol = self->_drawingSymbol;
    }

    CGSVGDocumentRelease();
    self->_drawingPointSize = 0.0;
    self->_drawingScale = 0.0;
    self->_drawingSymbol = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)canDrawWithWeight:(int64_t)a3 size:(int64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  isInterpolatable = 0;
  if ((a3 - 1) <= 8 && (a4 - 1) <= 2)
  {
    if (!self->_vectorGlyphNodes)
    {
      [(TDVectorGlyphReader *)self _readSVGNodesError:0];
    }

    if ([(NSDictionary *)self->_vectorGlyphNodes objectForKey:[(TDVectorGlyphReader *)self _glyphNodeIDForWeight:a3 size:a4]])
    {
      isInterpolatable = 1;
    }

    else
    {
      isInterpolatable = self->_isInterpolatable;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return isInterpolatable;
}

+ (id)vectorGlyphReaderWithURL:(id)a3 error:(id *)a4
{
  v7 = CUICurrentPlatform();

  return [a1 vectorGlyphReaderWithURL:a3 platform:v7 error:a4];
}

+ (id)vectorGlyphReaderWithURL:(id)a3 platform:(int64_t)a4 error:(id *)a5
{
  if (__onceToken != -1)
  {
    +[TDVectorGlyphReader vectorGlyphReaderWithURL:platform:error:];
  }

  os_unfair_lock_lock(&__lock);
  v8 = [__instanceCache objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
  }

  else
  {
    v9 = [[TDVectorGlyphReader alloc] initWithURL:a3 platform:a4 error:a5];
    if (v9)
    {
      [__instanceCache setObject:v9 forKey:a3];
    }
  }

  os_unfair_lock_unlock(&__lock);
  return v9;
}

uint64_t __63__TDVectorGlyphReader_vectorGlyphReaderWithURL_platform_error___block_invoke()
{
  __instanceCache = objc_alloc_init(MEMORY[0x277CBEA78]);
  [__instanceCache setName:@"com.apple.corethemedefinition-VectoryGlyphCache"];
  [__instanceCache setEvictsObjectsWithDiscardedContent:0];
  v0 = __instanceCache;

  return [v0 setCountLimit:1500];
}

+ (void)clearInstanceCache
{
  os_unfair_lock_lock(&__lock);
  [__instanceCache removeAllObjects];

  os_unfair_lock_unlock(&__lock);
}

- (double)_requestedPointSizeRatio
{
  drawingPointSize = self->_drawingPointSize;
  [(TDVectorGlyphReader *)self defaultPointSize];
  v4 = v3 < 1.0 || drawingPointSize < 1.0;
  result = drawingPointSize / v3;
  if (v4)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)referenceCanvasSize
{
  if (self->_drawingSymbol)
  {
    CGSVGDocumentGetCanvasSize();
  }

  else
  {
    v2 = *MEMORY[0x277CBF3A8];
    v3 = *(MEMORY[0x277CBF3A8] + 8);
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (id)unsafeDrawAttachmentAnchors
{
  v2 = [MEMORY[0x277D02710] createManagedPointArrayWrapping:{malloc_type_malloc(0, 0xA79FBADAuLL), 0}];

  return v2;
}

- (id)unsafeDrawAttachmentData
{
  v2 = objc_alloc_init(MEMORY[0x277D02700]);

  return v2;
}

- (id)pathForLayerNamed:(id)a3
{
  if (!self->_drawingSymbol || !self->_isInterpolatable)
  {
    return 0;
  }

  if (!a3)
  {
    drawingSymbol = self->_drawingSymbol;
    CGSVGDocumentGetRootNode();
    CGSVGNodeFindChildWithCStringIdentifier();
    v7 = *MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    v9 = *(MEMORY[0x277CBF2C0] + 32);
    v4 = CUICreatePathFromSVGNode();
    v6 = v4;
    return v4;
  }

  return [TDVectorGlyphReader _pathForLayerNamed:"_pathForLayerNamed:inDocument:" inDocument:?];
}

- (CGSVGAttributeMap)styleForLayerName:(id)a3
{
  if (!a3 || !self->_drawingSymbol)
  {
    return 0;
  }

  [@"." stringByAppendingString:?];
  drawingSymbol = self->_drawingSymbol;

  return CGSVGDocumentGetNamedStyle();
}

- (double)strokeWidthForLayerNamed:(id)a3
{
  if ([(TDVectorGlyphReader *)self attributesForLayerNamed:a3]&& CGSVGAttributeMapGetAttribute())
  {
    CGSVGAttributeGetFloat();
  }

  return 0.0;
}

- (CGSVGAttributeMap)attributesForLayerNamed:(id)a3
{
  drawingSymbol = self->_drawingSymbol;
  if (a3)
  {
    [(TDVectorGlyphReader *)self templateVersion];
    v6 = v5;
    CGSVGDocumentGetRootNode();
    if (v6 >= 5.0 && CGSVGNodeFindChildWithStringIdentifier())
    {
      ChildCount = CGSVGNodeGetChildCount();
      if (ChildCount)
      {
        v8 = ChildCount;
        for (i = 0; i != v8; ++i)
        {
          CGSVGNodeGetChildAtIndex();
          if (CGSVGNodeFindAttribute())
          {
            v10 = CGSVGAttributeCopyString();
            if ([v10 containsString:a3])
            {
              AttributeMap = CGSVGNodeGetAttributeMap();

              if (AttributeMap)
              {
                return AttributeMap;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    else
    {
      CGSVGNodeGetChildAtIndex();
      v12 = CGSVGNodeGetChildCount();
      if (v12)
      {
        v13 = v12;
        for (j = 0; j != v13; ++j)
        {
          CGSVGNodeGetChildAtIndex();
          if (CGSVGNodeFindAttribute())
          {
            v15 = CGSVGAttributeCopyString();
            if ([v15 containsString:a3])
            {
              AttributeMap = CGSVGNodeGetAttributeMap();

              if (AttributeMap)
              {
                return AttributeMap;
              }
            }

            else
            {
            }
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v17 = self->_drawingSymbol;
    CGSVGDocumentGetRootNode();
    CGSVGNodeGetChildAtIndex();

    return CGSVGNodeGetAttributeMap();
  }
}

- (void)_legacy_drawMonochromeLayerNamed:(id)a3 inContext:(CGContext *)a4 scaleFactor:(double)a5 targetSize:(CGSize)a6 onFillColor:(CGColor *)a7 offFillColor:(CGColor *)a8
{
  if (self->_drawingSymbol)
  {
    v10 = a6.width * a5;
    v11 = a6.height * a5;
    [(TDVectorGlyphReader *)self referenceCanvasSize:a3];
    v13 = v12;
    v15 = v14;
    CGContextSaveGState(a4);
    CGContextScaleCTM(a4, v10 / v13, v11 / v15);
    drawingSymbol = self->_drawingSymbol;
    CGContextDrawSVGDocument();

    CGContextRestoreGState(a4);
  }
}

@end
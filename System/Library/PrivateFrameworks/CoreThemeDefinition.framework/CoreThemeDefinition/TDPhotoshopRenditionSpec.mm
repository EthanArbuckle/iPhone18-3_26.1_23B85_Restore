@interface TDPhotoshopRenditionSpec
- ($56AE26BFB60993BDE24C7578AE3A2D7B)_subtractThrowawaySliceFromMetricsIfNeeded:(SEL)needed metrics:(CGRect)metrics renditionRect:(id *)rect;
- (BOOL)_sliceRectanglesForPSDImage:(id)image rowsPerRendition:(int *)rendition columnsPerRendition:(int *)perRendition originalColumnWidth:(int *)width newColumnWidth:(int *)columnWidth originalRowHeight:(int *)height newRowHeight:(int *)rowHeight originalColumnX:(int *)self0 originalRowY:(int *)self1 newRenditionSize:(id *)self2 newSliceCount:(int *)self3 renditionRect:(CGRect *)self4 throwawaySliceRect:(CGRect *)self5;
- (BOOL)updatePackingPropertiesWithDocument:(id)document;
- (id)copyDataFromAttributes;
- (id)createCSIRepresentationFromPSDImage:(id)image withCompression:(BOOL)compression edgeMetricsMask:(id)mask textMetricsMask:(id)metricsMask baselineMetricsMask:(id)baselineMetricsMask auxiliary1MetricsMask:(id)auxiliary1MetricsMask auxiliary2MetricsMask:(id)auxiliary2MetricsMask colorSpaceID:(unint64_t)self0 allowsPaletteImageCompression:(BOOL)self1 allowsHevcCompression:(BOOL)self2 allowsDeepmapImageCompression:(BOOL)self3 allowsDeepmap2ImageCompression:(BOOL)self4;
- (int)_layerIndexInPSDImage:(id)image;
- (void)copyAttributesInto:(id)into;
- (void)dealloc;
- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document;
- (void)setAttributesFromCopyData:(id)data;
@end

@implementation TDPhotoshopRenditionSpec

- (void)dealloc
{
  [(TDPhotoshopRenditionSpec *)self setHistogram:0];
  v3.receiver = self;
  v3.super_class = TDPhotoshopRenditionSpec;
  [(TDPhotoshopRenditionSpec *)&v3 dealloc];
}

- (BOOL)_sliceRectanglesForPSDImage:(id)image rowsPerRendition:(int *)rendition columnsPerRendition:(int *)perRendition originalColumnWidth:(int *)width newColumnWidth:(int *)columnWidth originalRowHeight:(int *)height newRowHeight:(int *)rowHeight originalColumnX:(int *)self0 originalRowY:(int *)self1 newRenditionSize:(id *)self2 newSliceCount:(int *)self3 renditionRect:(CGRect *)self4 throwawaySliceRect:(CGRect *)self5
{
  selfCopy = self;
  production = [(TDPhotoshopRenditionSpec *)self production];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier];
  v104 = identifier;
  v95 = [(TDPhotoshopRenditionSpec *)selfCopy _layerIndexInPSDImage:image];
  v98 = [objc_msgSend(production "columnCount")];
  v103 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"row", "intValue"}];
  v102 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"column", "intValue"}];
  [image size];
  v23 = v22;
  v101 = selfCopy;
  imageCopy = image;
  if (identifier <= 2)
  {
    switch(identifier)
    {
      case 0:
        if ([production renditionSubtype])
        {
          v94 = [objc_msgSend(production "renditionSubtype")];
        }

        else
        {
          v94 = 10;
        }

        columnWidthCopy3 = columnWidth;
        renditionCopy4 = rendition;
        if ([image numberOfSlices] == 10)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"One part rendition is being distilled with artwork that has more than one slice (%d). Either the rendition is cataloged incorrectly, or the artwork has the wrong number of slices %@", 9, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v88, v89, v92];
          goto LABEL_137;
        }

        goto LABEL_35;
      case 1:
        v24 = 22;
        goto LABEL_33;
      case 2:
        v24 = 25;
        goto LABEL_33;
    }

LABEL_14:
    v24 = -1;
    goto LABEL_33;
  }

  switch(identifier)
  {
    case 3:
      if ([production renditionSubtype])
      {
        v94 = [objc_msgSend(production "renditionSubtype")];
LABEL_34:
        columnWidthCopy3 = columnWidth;
        renditionCopy4 = rendition;
LABEL_35:
        *perRendition = [TDPhotoshopElementProduction sliceColumnsPerRendition:identifier];
        *renditionCopy4 = [TDPhotoshopElementProduction sliceRowsPerRendition:identifier];
        LODWORD(v29) = *perRendition;
        goto LABEL_36;
      }

      v24 = 31;
LABEL_33:
      v94 = v24;
      goto LABEL_34;
    case 5:
      v25 = 40;
      break;
    case 8:
      v25 = 50;
      break;
    default:
      goto LABEL_14;
  }

  v94 = v25;
  v26 = [objc_msgSend(production "columnCount")];
  v27 = [objc_msgSend(production "rowCount")];
  v28 = [image numberOfSlices] - 1;
  v29 = (v28 / (v27 * v26));
  if (v28 != v27 * v26 * v29)
  {
    -[TDPhotoshopRenditionSpec _logError:](selfCopy, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Number of slices per rendition %f is not a whole number!", v28 / (v27 * v26)]);
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Slice count %d rendition rows %d rendition columns %d in %@", v28, v27, v26, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v92];
    goto LABEL_137;
  }

  if (v28 < 1)
  {
    v31 = 0;
    renditionCopy4 = rendition;
  }

  else
  {
    heightCopy = height;
    v31 = 0;
    v32 = 0;
    v33 = v28;
    v34 = v28 - 1;
    renditionCopy4 = rendition;
    while (1)
    {
      [imageCopy boundsForSlice:(v31 + 1)];
      if (v31)
      {
        if (v36 != v32)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v32 = v36;
      }

      if (v34 == v31)
      {
        break;
      }

      ++v31;
    }

    v31 = v33;
LABEL_28:
    selfCopy = v101;
    height = heightCopy;
  }

  if (v31 == v26)
  {
    v86 = v29;
    LODWORD(v29) = 1;
  }

  else
  {
    if (v31 != v29 * v26)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Inconsistent many part structure. Found %ld actual slice columns, %d slices per rendition and %d rendition column count in %@", v31, v29, v26, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v92];
      goto LABEL_137;
    }

    v86 = 1;
  }

  *renditionCopy4 = v86;
  *perRendition = v29;
  columnWidthCopy3 = columnWidth;
LABEL_36:
  if (v29 >= 1)
  {
    v39 = 0;
    do
    {
      width[v39] = -1;
      columnWidthCopy3[v39++] = -1;
    }

    while (v39 < *perRendition);
  }

  v40 = imageCopy;
  if (*renditionCopy4 >= 1)
  {
    v41 = 0;
    do
    {
      height[v41] = -1;
      rowHeight[v41++] = -1;
    }

    while (v41 < *renditionCopy4);
  }

  *count = 0;
  v42 = *MEMORY[0x277CCA868];
  v43 = *(MEMORY[0x277CCA868] + 16);
  rect->origin = *MEMORY[0x277CCA868];
  rect->size = v43;
  sliceRect->origin = v42;
  sliceRect->size = v43;
  v44 = *perRendition;
  if (*perRendition < 1)
  {
    return 1;
  }

  v45 = 0;
  v46 = v104 == 3 && v94 == 31;
  v47 = v46;
  if (v104 == 1 && v94 == 22)
  {
    v47 = 1;
  }

  v93 = v47;
  LODWORD(v49) = *renditionCopy4;
  perRenditionCopy = perRendition;
  while (v49 < 1)
  {
LABEL_124:
    ++v45;
    result = 1;
    if (v45 >= v44)
    {
      return result;
    }
  }

  v50 = 0;
  v52 = v104 == 1 && v45 == 2;
  v99 = v52;
  while (1)
  {
    widthCopy = width;
    v54 = *perRenditionCopy;
    LODWORD(v87) = v98;
    v55 = [TDPhotoshopRenditionSpec psdSliceNumberForRenditionRow:selfCopy sliceRow:"psdSliceNumberForRenditionRow:sliceRow:renditionColumn:sliceColumn:rowsPerRendition:columnsPerRendition:renditionColumnCount:" renditionColumn:v103 sliceColumn:v50 rowsPerRendition:v102 columnsPerRendition:v45 renditionColumnCount:v87];
    if ((v55 & 0x80000000) != 0 || v55 >= [v40 numberOfSlices])
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Rendition slice number %d for row %d column %d is greater than or equal to slice count %d in %@", v55, v50, v45, objc_msgSend(v40, "numberOfSlices"), -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")];
      goto LABEL_137;
    }

    [v40 boundsForSlice:v55];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v106.origin.x = v56;
    v106.origin.y = v58;
    v106.size.width = v60;
    v106.size.height = v62;
    *rect = NSUnionRect(*rect, v106);
    if ((v57 & 0x80000000) != 0 || (v59 & 0x80000000) != 0)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Slice at row %d column %d has negative x origin %f and/or y origin %f in %@", v50, v45, *&v57, *&v59, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")];
      goto LABEL_137;
    }

    if (v61 == 0.0 || v63 == 0.0)
    {
      break;
    }

    heightCopy2 = height;
    v65 = rint(v61);
    v66 = v65;
    v67 = rint(v63);
    v68 = v67;
    v69 = v68;
    if (v65 != v66 || v67 != v69)
    {
      -[TDPhotoshopRenditionSpec _logWarning:](selfCopy, "_logWarning:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Slice image size w:%d h:%d does not match slice bounds w:%f h:%f in %@", v66, v68, *&v61, *&v63, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")]);
    }

    if (v66)
    {
      v71 = v68 == 0;
    }

    else
    {
      v71 = 1;
    }

    if (v71)
    {
      -[TDPhotoshopRenditionSpec _logWarning:](selfCopy, "_logWarning:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Zero width or height slice at row %d column %d within rendition row %d column %d in %@", v50, v45, v103, v102, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription")]);
    }

    v72 = v104 == 2 && v50 == 2;
    v73 = v72;
    v74 = v99;
    if (v72)
    {
      v74 = 1;
    }

    width = widthCopy;
    if (v74)
    {
      sliceRect->origin.x = v57;
      sliceRect->origin.y = v59;
      sliceRect->size.width = v61;
      sliceRect->size.height = v63;
    }

    else
    {
      ++*count;
    }

    v75 = widthCopy[v45];
    if (v75 == -1)
    {
      widthCopy[v45] = v66;
      x[v45] = v57;
      if (v99)
      {
        columnWidth[v45] = 0;
      }

      else
      {
        if (v66 <= 8)
        {
          v78 = 8;
        }

        else
        {
          v78 = v66;
        }

        if (((v45 == 1) & v93) == 0)
        {
          v78 = v66;
        }

        columnWidth[v45] = v78;
        size->var0 += v78;
      }
    }

    else if (v75 != v66)
    {
      v76 = MEMORY[0x277CCACA8];
      v90 = [(TDPhotoshopRenditionSpec *)v101 debugDescription];
      v77 = v76;
      width = widthCopy;
      -[TDPhotoshopRenditionSpec _logWarning:](v101, "_logWarning:", [v77 stringWithFormat:@"WARNING: Slice geometry inconsistency. Column width for slice at row:%d column:%d layer:%d does not match previous slices in column in %@", v50, v45, v95, v90]);
    }

    height = heightCopy2;
    v79 = heightCopy2[v50];
    if (v79 == -1)
    {
      heightCopy2[v50] = v68;
      y[v50] = (v23 - v59 - v69);
      if (v73)
      {
        rowHeight[2] = 0;
      }

      else
      {
        if (v68 <= 8)
        {
          v82 = 8;
        }

        else
        {
          v82 = v68;
        }

        if (v94 != 25 || v50 != 1 || v104 != 2)
        {
          v82 = v68;
        }

        size->var1 += v82;
        rowHeight[v50] = v82;
      }

      selfCopy = v101;
      v40 = imageCopy;
    }

    else
    {
      v46 = v79 == v68;
      selfCopy = v101;
      v40 = imageCopy;
      if (!v46)
      {
        v80 = MEMORY[0x277CCACA8];
        v91 = [(TDPhotoshopRenditionSpec *)v101 debugDescription];
        v81 = v80;
        width = widthCopy;
        -[TDPhotoshopRenditionSpec _logWarning:](v101, "_logWarning:", [v81 stringWithFormat:@"WARNING: Slice geometry inconsistency. Row height for slice at row:%d column:%d layer:%d does not match previous slices in row in %@", v50, v45, v95, v91]);
      }
    }

    ++v50;
    v49 = *rendition;
    if (v50 >= v49)
    {
      v44 = *perRenditionCopy;
      goto LABEL_124;
    }
  }

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Slice bounds height %f or width %f is zero in %@", *&v61, *&v63, -[TDPhotoshopRenditionSpec debugDescription](selfCopy, "debugDescription"), v89, v92];
LABEL_137:
  [(TDPhotoshopRenditionSpec *)selfCopy _logError:v37];
  return 0;
}

- ($56AE26BFB60993BDE24C7578AE3A2D7B)_subtractThrowawaySliceFromMetricsIfNeeded:(SEL)needed metrics:(CGRect)metrics renditionRect:(id *)rect
{
  height = a6.size.height;
  width = a6.size.width;
  v9 = metrics.size.height;
  v10 = metrics.size.width;
  y = metrics.origin.y;
  x = metrics.origin.x;
  result = NSEqualRects(metrics, *MEMORY[0x277CCA868]);
  if ((result & 1) == 0)
  {
    v15 = rect->var0.width;
    v16 = rect->var0.height;
    v17 = rect->var1.width;
    v18 = rect->var1.height;
    if (v9 == height)
    {
      if (v15 >= x + v10)
      {
        v15 = v15 - v10;
      }

      if (width - v17 <= x)
      {
        v17 = v17 - v10;
      }
    }

    else if (v10 == width)
    {
      if (v16 >= height - y)
      {
        v16 = v16 - v9;
      }

      if (v18 >= y + v9)
      {
        v18 = v18 - v9;
      }
    }

    rect->var0.width = v15;
    rect->var0.height = v16;
    rect->var1.width = v17;
    rect->var1.height = v18;
  }

  var1 = rect->var1;
  retstr->var0 = rect->var0;
  retstr->var1 = var1;
  retstr->var2 = rect->var2;
  return result;
}

- (id)createCSIRepresentationFromPSDImage:(id)image withCompression:(BOOL)compression edgeMetricsMask:(id)mask textMetricsMask:(id)metricsMask baselineMetricsMask:(id)baselineMetricsMask auxiliary1MetricsMask:(id)auxiliary1MetricsMask auxiliary2MetricsMask:(id)auxiliary2MetricsMask colorSpaceID:(unint64_t)self0 allowsPaletteImageCompression:(BOOL)self1 allowsHevcCompression:(BOOL)self2 allowsDeepmapImageCompression:(BOOL)self3 allowsDeepmap2ImageCompression:(BOOL)self4
{
  compressionCopy = compression;
  v107 = *MEMORY[0x277D85DE8];
  v99 = 0;
  v100 = 0;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  production = [(TDPhotoshopRenditionSpec *)self production];
  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier];
  v22 = [(TDPhotoshopRenditionSpec *)self _layerIndexInPSDImage:image];
  v81 = [objc_msgSend(production "columnCount")];
  v80 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"row", "intValue"}];
  v79 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"column", "intValue"}];
  [image size];
  v23 = 0;
  if (![(TDPhotoshopRenditionSpec *)self _sliceRectanglesForPSDImage:image rowsPerRendition:&v99 columnsPerRendition:&v99 + 4 originalColumnWidth:v106 newColumnWidth:v105 originalRowHeight:v104 newRowHeight:v103 originalColumnX:v102 originalRowY:v101 newRenditionSize:&v100 newSliceCount:&v98 renditionRect:&v96 throwawaySliceRect:&v94])
  {
    goto LABEL_65;
  }

  baselineMetricsMaskCopy = baselineMetricsMask;
  imageCopy = image;
  v24 = compressionCopy;
  if ([production renditionSubtype])
  {
    identifier = [objc_msgSend(production "renditionSubtype")];
  }

  auxiliary1MetricsMaskCopy = auxiliary1MetricsMask;
  v26 = identifier;
  if ([(TDPhotoshopRenditionSpec *)self parentRendition])
  {
    [(TDRenditionSpec *)self packedPoint];
    v28 = v27;
    v30 = v29;
    v31 = objc_alloc(MEMORY[0x277D02668]);
    v32 = [v31 initWithInternalReferenceRect:v26 layout:{v28, v30, v100, SHIDWORD(v100)}];
    v33 = objc_alloc_init(MEMORY[0x277D026D0]);
    v34 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec parentRendition](self, "parentRendition"), "keySpec"), "key")}];
    [v33 setReferenceKey:v34];
    [v32 addLayerReference:v33];
  }

  else
  {
    v35 = objc_alloc(MEMORY[0x277D02668]);
    v32 = [v35 initWithCanvasSize:v98 sliceCount:v26 layout:{v100, SHIDWORD(v100)}];
  }

  [v32 setName:{objc_msgSend(objc_msgSend(production, "asset"), "name")}];
  [v32 setColorSpaceID:d];
  if ([objc_msgSend(objc_msgSend(production "asset")])
  {
    [v32 setPixelFormat:1195456544];
  }

  [v32 setIsTintable:{-[TDPhotoshopRenditionSpec isTintable](self, "isTintable")}];
  [v32 setAllowsDeepmapImageCompression:deepmapImageCompression];
  [v32 setAllowsDeepmap2ImageCompression:deepmap2ImageCompression];
  [v32 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v72 = production;
  [v32 setScaleFactor:{objc_msgSend(objc_msgSend(production, "asset"), "scaleFactor")}];
  v36 = MEMORY[0x277D02650];
  v37 = *MEMORY[0x277D02650];
  v38 = *(MEMORY[0x277D02650] + 16);
  v92 = *MEMORY[0x277D02650];
  v93 = v38;
  v39 = auxiliary1MetricsMaskCopy;
  if (mask)
  {
    v40 = v24;
    if (image)
    {
      v73 = v37;
      v70 = v38;
      [image metricsInMask:mask forRect:{v96, v97}];
      v38 = v70;
      v37 = v73;
      v41 = *(&v91 + 1);
      v42 = v91;
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      v41 = 0;
      v42 = 0;
    }

    v43 = baselineMetricsMaskCopy;
    metricsMaskCopy2 = metricsMask;
    v92 = v89;
    v93 = v90;
  }

  else
  {
    v42 = *(MEMORY[0x277D02650] + 32);
    v41 = *(MEMORY[0x277D02650] + 40);
    v40 = v24;
    v43 = baselineMetricsMaskCopy;
    metricsMaskCopy2 = metricsMask;
  }

  v89 = v92;
  v90 = v93;
  *&v91 = v42;
  *(&v91 + 1) = v41;
  v86 = v37;
  v87 = v38;
  v88 = *(v36 + 32);
  if (CSIEqualMetrics())
  {
    v41 = *(&v97 + 1);
    v42 = v97;
    v92 = 0u;
    v93 = 0u;
  }

  v89 = v92;
  v90 = v93;
  *&v91 = v42;
  *(&v91 + 1) = v41;
  [v32 addMetrics:&v89];
  if (metricsMaskCopy2)
  {
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    if (image)
    {
      [image metricsInMask:metricsMaskCopy2 forRect:{v96, v97}];
    }

    v86 = v89;
    v87 = v90;
    v88 = v91;
    [v32 addMetrics:&v86];
  }

  if (v43)
  {
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    if (image)
    {
      [image metricsInMask:v43 forRect:{v96, v97}];
    }

    v86 = v89;
    v87 = v90;
    v88 = v91;
    [v32 addMetrics:&v86];
  }

  if (v39)
  {
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    if (image)
    {
      [image metricsInMask:v39 forRect:{v96, v97}];
    }

    if (self)
    {
      v83 = v89;
      v84 = v90;
      v85 = v91;
      [(TDPhotoshopRenditionSpec *)self _subtractThrowawaySliceFromMetricsIfNeeded:&v83 metrics:v94 renditionRect:v95, v96, v97];
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
    }

    v89 = v86;
    v90 = v87;
    v91 = v88;
    [v32 addMetrics:&v86];
  }

  if (auxiliary2MetricsMask)
  {
    v90 = 0u;
    v91 = 0u;
    v89 = 0u;
    if (image)
    {
      [image metricsInMask:auxiliary2MetricsMask forRect:{v96, v97}];
    }

    if (self)
    {
      v83 = v89;
      v84 = v90;
      v85 = v91;
      [(TDPhotoshopRenditionSpec *)self _subtractThrowawaySliceFromMetricsIfNeeded:&v83 metrics:v94 renditionRect:v95, v96, v97];
    }

    else
    {
      v87 = 0u;
      v88 = 0u;
      v86 = 0u;
    }

    v89 = v86;
    v90 = v87;
    v91 = v88;
    [v32 addMetrics:&v86];
  }

  v45 = [image layerRefAtIndex:v22];
  [v32 setBlendMode:{objc_msgSend(v45, "blendMode")}];
  [v45 opacity];
  [v32 setOpacity:?];
  parentRendition = [(TDPhotoshopRenditionSpec *)self parentRendition];
  if (parentRendition)
  {
    v78 = v32;
    v71 = v40;
    [image boundsAtLayer:v22];
    v46 = 0;
    v74 = 0;
  }

  else
  {
    v47 = objc_alloc(MEMORY[0x277D02660]);
    v48 = [v47 initWithPixelWidth:v100 pixelHeight:HIDWORD(v100)];
    [v32 addBitmap:v48];
    [v48 setPixelFormat:objc_msgSend(v32, "pixelFormat")];
    bitmapContext = [v48 bitmapContext];
    if (!bitmapContext)
    {

      [(TDPhotoshopRenditionSpec *)self _logError:@"ERROR: Could not create bitmap context"];
LABEL_64:
      v23 = 0;
      goto LABEL_65;
    }

    v46 = bitmapContext;
    v74 = v48;
    v78 = v32;
    v71 = v40;
    [image boundsAtLayer:v22];
    CGContextSetCompositeOperation();
    CGContextSetAlpha(v46, 1.0);
  }

  v50 = HIDWORD(v99);
  if (SHIDWORD(v99) >= 1)
  {
    v51 = 0;
    v52 = 0.0;
    do
    {
      v53 = v105[v51];
      if (v53)
      {
        v54 = v99;
        if (v99 >= 1)
        {
          v55 = 0.0;
          while (1)
          {
            v56 = v103[v54 - 1];
            if (v56)
            {
              v57 = v105[v51];
              LODWORD(v69) = v81;
              v58 = [(TDPhotoshopRenditionSpec *)self psdSliceNumberForRenditionRow:v80 sliceRow:v54 - 1 renditionColumn:v79 sliceColumn:v51 rowsPerRendition:v99 columnsPerRendition:HIDWORD(v99) renditionColumnCount:v69];
              LOBYTE(v89) = 0;
              v59 = [imageCopy imageFromSlice:v58 atLayer:v22 isEmptyImage:&v89];
              if (!v59)
              {
                -[TDPhotoshopRenditionSpec _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v72, "asset"), "name")]);

                goto LABEL_64;
              }

              v60 = v56;
              if (!parentRendition)
              {
                v61 = v59;
                CGContextSaveGState(v46);
                v108.origin.x = v52;
                v108.origin.y = v55;
                v108.size.width = v57;
                v108.size.height = v56;
                CGContextClipToRect(v46, v108);
                v62 = v106[v51];
                v63 = vcvtpd_s64_f64(v105[v51] / v62);
                if (v63 >= 1)
                {
                  v64 = v52;
                  do
                  {
                    image = [v61 image];
                    v109.origin.x = v64;
                    v109.origin.y = v55;
                    v109.size.width = v62;
                    v109.size.height = v60;
                    CGContextDrawImage(v46, v109, image);
                    v64 = v64 + v62;
                    --v63;
                  }

                  while (v63);
                }

                CGContextRestoreGState(v46);
              }

              [v78 addSliceRect:{v52, v55, v57, v60}];
              v55 = v55 + v103[v54 - 1];
            }

            if (v54-- <= 1)
            {
              v53 = v105[v51];
              v50 = HIDWORD(v99);
              break;
            }
          }
        }

        v52 = v52 + v53;
      }

      ++v51;
    }

    while (v51 < v50);
  }

  [v78 setExcludedFromContrastFilter:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec production](self, "production"), "valueForKey:", @"isExcludedFromFilter", "BOOLValue")}];
  [v78 setAllowsPaletteImageCompression:imageCompression];
  [v78 setAllowsHevcCompression:hevcCompression];
  [v78 setAllowsDeepmapImageCompression:deepmapImageCompression];
  [v78 setAllowsDeepmap2ImageCompression:deepmap2ImageCompression];
  v23 = [v78 CSIRepresentationWithCompression:v71];

LABEL_65:
  v67 = *MEMORY[0x277D85DE8];
  return v23;
}

- (int)_layerIndexInPSDImage:(id)image
{
  if (_layerIndexInPSDImage__pred != -1)
  {
    [TDPhotoshopRenditionSpec _layerIndexInPSDImage:];
  }

  if ([(TDPhotoshopRenditionSpec *)self photoshopLayer]&& (_layerIndexInPSDImage__usingOldStylePSDFiles & 1) == 0)
  {
    v7 = [-[TDPhotoshopRenditionSpec photoshopLayer](self "photoshopLayer")];

    return [image absoluteLayerIndexFromLayerNames:v7];
  }

  else
  {
    v5 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"layer"];

    return [v5 unsignedIntValue];
  }
}

uint64_t __50__TDPhotoshopRenditionSpec__layerIndexInPSDImage___block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  _layerIndexInPSDImage__usingOldStylePSDFiles = result;
  return result;
}

- (void)copyAttributesInto:(id)into
{
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"row", @"row"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"column", @"column"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"layer", @"layer"}];
  [into setValue:-[TDPhotoshopRenditionSpec valueForKey:](self forKey:{"valueForKey:", @"isTintable", @"isTintable"}];
  preserveForArchiveOnly = [(TDPhotoshopRenditionSpec *)self preserveForArchiveOnly];

  [into setPreserveForArchiveOnly:preserveForArchiveOnly];
}

- (id)copyDataFromAttributes
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"row"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"row"];
  }

  v5 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"column"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"column"];
  }

  v6 = [(TDPhotoshopRenditionSpec *)self valueForKey:@"layer"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"layer"];
  }

  keySpec = [(TDPhotoshopRenditionSpec *)self keySpec];
  if (keySpec)
  {
    [v3 setObject:objc_msgSend(keySpec forKey:{"copyDataFromAttributes"), @"keySpec"}];
  }

  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];

  return [v8 copy];
}

- (void)setAttributesFromCopyData:(id)data
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"row"];
  if (v5)
  {
    [(TDPhotoshopRenditionSpec *)self setValue:v5 forKey:@"row"];
  }

  v6 = [v4 objectForKey:@"column"];
  if (v6)
  {
    [(TDPhotoshopRenditionSpec *)self setValue:v6 forKey:@"column"];
  }

  v7 = [v4 objectForKey:@"layer"];
  if (v7)
  {

    [(TDPhotoshopRenditionSpec *)self setValue:v7 forKey:@"layer"];
  }
}

- (BOOL)updatePackingPropertiesWithDocument:(id)document
{
  selfCopy = self;
  v80 = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = TDPhotoshopRenditionSpec;
  [(TDRenditionSpec *)&v73 updatePackingPropertiesWithDocument:?];
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  memset(v67, 0, sizeof(v67));
  production = [(TDPhotoshopRenditionSpec *)selfCopy production];
  v6 = [production psdImageRefWithDocument:document];
  if ([(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier]!= 6)
  {
    if (![(TDPhotoshopRenditionSpec *)selfCopy _sliceRectanglesForPSDImage:v6 rowsPerRendition:&v71 columnsPerRendition:&v71 + 4 originalColumnWidth:v79 newColumnWidth:v78 originalRowHeight:v77 newRowHeight:v76 originalColumnX:v75 originalRowY:v74 newRenditionSize:&v72 newSliceCount:&v70 renditionRect:&v68 throwawaySliceRect:v67])
    {
      if (!v6)
      {
        NSLog(&cfstr_CouldnTReadPsd.isa, [objc_msgSend(objc_msgSend(production "asset")]);
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    [(TDPhotoshopRenditionSpec *)selfCopy setWidth:v72];
    [(TDPhotoshopRenditionSpec *)selfCopy setHeight:HIDWORD(v72)];
  }

  if (![document shouldPerformHistogramBasedPacking])
  {
LABEL_45:
    result = 1;
    goto LABEL_48;
  }

  identifier = [(TDThemeConstant *)[(TDRenditionSpec *)selfCopy renditionType] identifier];
  v8 = [(TDPhotoshopRenditionSpec *)selfCopy _layerIndexInPSDImage:v6];
  v59 = [objc_msgSend(production "columnCount")];
  v58 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"row", "intValue"}];
  v57 = [-[TDPhotoshopRenditionSpec valueForKey:](selfCopy valueForKey:{@"column", "intValue"}];
  [v6 size];
  if ([production renditionSubtype])
  {
    identifier = [objc_msgSend(production "renditionSubtype")];
  }

  result = 1;
  if (v72 && HIDWORD(v72))
  {
    v10 = identifier;
    if ([(TDPhotoshopRenditionSpec *)selfCopy parentRendition])
    {
      [(TDRenditionSpec *)selfCopy packedPoint];
      v12 = v11;
      v14 = v13;
      v15 = objc_alloc(MEMORY[0x277D02668]);
      v16 = [v15 initWithInternalReferenceRect:v10 layout:{v12, v14, v72, SHIDWORD(v72)}];
      v17 = objc_alloc_init(MEMORY[0x277D026D0]);
      v18 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(objc_msgSend(-[TDPhotoshopRenditionSpec parentRendition](selfCopy, "parentRendition"), "keySpec"), "key")}];
      [v17 setReferenceKey:v18];
      [v16 addLayerReference:v17];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277D02668]);
      v16 = [v19 initWithCanvasSize:v70 sliceCount:v10 layout:{v72, SHIDWORD(v72)}];
    }

    [v16 setName:{objc_msgSend(objc_msgSend(production, "asset"), "name")}];
    [v16 setIsTintable:{-[TDPhotoshopRenditionSpec isTintable](selfCopy, "isTintable")}];
    [v16 setAllowsDeepmapImageCompression:{objc_msgSend(document, "shouldAllowDeepmapCompression")}];
    [v16 setAllowsDeepmap2ImageCompression:{objc_msgSend(document, "shouldAllowDeepmap2Compression")}];
    [v16 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](selfCopy, "propertiesAsDictionary")}];
    [v16 setScaleFactor:{objc_msgSend(objc_msgSend(production, "asset"), "scaleFactor")}];
    v20 = *(MEMORY[0x277D02650] + 16);
    v65 = *MEMORY[0x277D02650];
    v66 = v20;
    v21 = *(MEMORY[0x277D02650] + 32);
    v22 = *(MEMORY[0x277D02650] + 40);
    v61 = v65;
    v62 = v20;
    v63 = v21;
    v64 = v22;
    v60 = *(MEMORY[0x277D02650] + 32);
    if (CSIEqualMetrics())
    {
      v22 = *(&v69 + 1);
      v21 = v69;
      v65 = 0u;
      v66 = 0u;
    }

    v61 = v65;
    v62 = v66;
    v63 = v21;
    v64 = v22;
    [v16 addMetrics:&v61];
    v23 = [v6 layerRefAtIndex:v8];
    [v16 setBlendMode:{objc_msgSend(v23, "blendMode")}];
    [v23 opacity];
    [v16 setOpacity:?];
    parentRendition = [(TDPhotoshopRenditionSpec *)selfCopy parentRendition];
    if (parentRendition)
    {
      v54 = production;
      [v6 boundsAtLayer:v8];
      v24 = 0;
      v53 = 0;
      goto LABEL_20;
    }

    v25 = objc_alloc(MEMORY[0x277D02660]);
    v26 = [v25 initWithPixelWidth:v72 pixelHeight:HIDWORD(v72)];
    [v16 addBitmap:v26];
    bitmapContext = [v26 bitmapContext];
    if (bitmapContext)
    {
      v24 = bitmapContext;
      v53 = v26;
      v54 = production;
      [v6 boundsAtLayer:v8];
      CGContextSetCompositeOperation();
      CGContextSetAlpha(v24, 1.0);
LABEL_20:
      v28 = HIDWORD(v71);
      if (SHIDWORD(v71) >= 1)
      {
        v29 = 0;
        v30 = 0.0;
        v56 = selfCopy;
        do
        {
          v31 = v78[v29];
          if (v31)
          {
            v32 = v71;
            if (v71 >= 1)
            {
              v33 = v8;
              v34 = 0.0;
              while (1)
              {
                v35 = v76[v32 - 1];
                if (v35)
                {
                  v36 = v16;
                  v37 = v78[v29];
                  LODWORD(v52) = v59;
                  v38 = [(TDPhotoshopRenditionSpec *)v56 psdSliceNumberForRenditionRow:v58 sliceRow:v32 - 1 renditionColumn:v57 sliceColumn:v29 rowsPerRendition:v71 columnsPerRendition:HIDWORD(v71) renditionColumnCount:v52];
                  LOBYTE(v61) = 0;
                  v39 = v6;
                  v40 = [v6 imageFromSlice:v38 atLayer:v33 isEmptyImage:&v61];
                  if (!v40)
                  {
                    -[TDPhotoshopRenditionSpec _logError:](v56, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v54, "asset"), "name")]);

                    goto LABEL_47;
                  }

                  v41 = v37;
                  v42 = v35;
                  v16 = v36;
                  if (!parentRendition)
                  {
                    v43 = v40;
                    CGContextSaveGState(v24);
                    v81.origin.x = v30;
                    v81.origin.y = v34;
                    v81.size.width = v41;
                    v81.size.height = v35;
                    CGContextClipToRect(v24, v81);
                    v44 = v79[v29];
                    v45 = vcvtpd_s64_f64(v78[v29] / v44);
                    if (v45 >= 1)
                    {
                      v46 = v30;
                      do
                      {
                        image = [v43 image];
                        v82.origin.x = v46;
                        v82.origin.y = v34;
                        v82.size.width = v44;
                        v82.size.height = v42;
                        CGContextDrawImage(v24, v82, image);
                        v46 = v46 + v44;
                        --v45;
                      }

                      while (v45);
                    }

                    CGContextRestoreGState(v24);
                  }

                  [v36 addSliceRect:{v30, v34, v41, v42}];
                  v34 = v34 + v76[v32 - 1];
                  v6 = v39;
                }

                if (v32-- <= 1)
                {
                  v31 = v78[v29];
                  v28 = HIDWORD(v71);
                  v8 = v33;
                  selfCopy = v56;
                  break;
                }
              }
            }

            v30 = v30 + v31;
          }

          ++v29;
        }

        while (v29 < v28);
      }

      if ([objc_msgSend(objc_msgSend(v54 "asset")])
      {
        IsMonochrome = 1;
        v50 = v53;
      }

      else
      {
        v50 = v53;
        if (!CGBitmapContextCreateImage(v24))
        {
LABEL_44:

          goto LABEL_45;
        }

        IsMonochrome = CUIImageIsMonochrome();
      }

      [(TDPhotoshopRenditionSpec *)selfCopy setMonochrome:IsMonochrome];
      goto LABEL_44;
    }

    [(TDPhotoshopRenditionSpec *)selfCopy _logError:@"ERROR: Could not create bitmap context"];
LABEL_47:
    result = 0;
  }

LABEL_48:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)drawPackableRenditionInContext:(CGContext *)context withDocument:(id)document
{
  v49 = *MEMORY[0x277D85DE8];
  if ([(TDThemeConstant *)[(TDRenditionSpec *)self renditionType] identifier]!= 6)
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    memset(v38, 0, sizeof(v38));
    [(TDRenditionSpec *)self packedPoint];
    v8 = v7;
    v10 = v9;
    production = [(TDPhotoshopRenditionSpec *)self production];
    v12 = [production psdImageRefWithDocument:document];
    v35 = [(TDPhotoshopRenditionSpec *)self _layerIndexInPSDImage:v12];
    v31 = production;
    v34 = [objc_msgSend(production "columnCount")];
    v33 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"row", "intValue"}];
    v32 = [-[TDPhotoshopRenditionSpec valueForKey:](self valueForKey:{@"column", "intValue"}];
    [v12 size];
    v36 = v12;
    if ([(TDPhotoshopRenditionSpec *)self _sliceRectanglesForPSDImage:v12 rowsPerRendition:&v41 columnsPerRendition:&v41 + 4 originalColumnWidth:v48 newColumnWidth:v47 originalRowHeight:v46 newRowHeight:v45 originalColumnX:v44 originalRowY:v43 newRenditionSize:&v42 newSliceCount:&v40 renditionRect:v39 throwawaySliceRect:v38])
    {
      [v12 boundsAtLayer:v35];
      v13 = HIDWORD(v41);
      if (SHIDWORD(v41) >= 1)
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v16 = v47[v14];
          if (v16)
          {
            v17 = v41;
            if (v41 >= 1)
            {
              v18 = 0.0;
              while (1)
              {
                v19 = v45[v17 - 1];
                if (v19)
                {
                  v20 = v47[v14];
                  LODWORD(v30) = v34;
                  v21 = [(TDPhotoshopRenditionSpec *)self psdSliceNumberForRenditionRow:v33 sliceRow:v17 - 1 renditionColumn:v32 sliceColumn:v14 rowsPerRendition:v41 columnsPerRendition:HIDWORD(v41) renditionColumnCount:v30];
                  v37 = 0;
                  v22 = [v36 imageFromSlice:v21 atLayer:v35 isEmptyImage:&v37];
                  if (!v22)
                  {
                    -[TDPhotoshopRenditionSpec _logError:](self, "_logError:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Unable to extract Photoshop image: %@\nThings to check:\n1. Are any Photoshop layers missing when compared to the reference file?\n2. Are any of the layer names not matching the layer names in the reference file (case sensitive)?\n3. Are there the same number of slices as in the reference file?\n", objc_msgSend(objc_msgSend(v31, "asset"), "name")]);
                    goto LABEL_21;
                  }

                  v23 = v22;
                  CGContextSaveGState(context);
                  CGContextTranslateCTM(context, v8, v10);
                  v50.origin.x = v15;
                  v50.origin.y = v18;
                  v50.size.width = v20;
                  v50.size.height = v19;
                  CGContextClipToRect(context, v50);
                  v24 = v48[v14];
                  v25 = vcvtpd_s64_f64(v47[v14] / v24);
                  if (v25 >= 1)
                  {
                    v26 = v15;
                    do
                    {
                      image = [v23 image];
                      v51.origin.x = v26;
                      v51.origin.y = v18;
                      v51.size.width = v24;
                      v51.size.height = v19;
                      CGContextDrawImage(context, v51, image);
                      v26 = v26 + v24;
                      --v25;
                    }

                    while (v25);
                  }

                  CGContextRestoreGState(context);
                  v18 = v18 + v45[v17 - 1];
                }

                if (v17-- <= 1)
                {
                  v16 = v47[v14];
                  v13 = HIDWORD(v41);
                  break;
                }
              }
            }

            v15 = v15 + v16;
          }

          ++v14;
        }

        while (v14 < v13);
      }
    }
  }

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

@end
@interface TDPhotoshopElementProduction
+ (unsigned)sliceColumnsPerRendition:(int64_t)a3;
+ (unsigned)sliceRowsPerRendition:(int64_t)a3;
- (BOOL)generateRenditionsWithEntityName:(id)a3 document:(id)a4 errorDescription:(id *)a5;
- (id)_layerMappingForPhotoshopLayer:(int64_t)a3 drawingLayer:(int64_t)a4;
- (id)associatedFileURLWithDocument:(id)a3;
- (id)auxiliary1MetricsMaskWithDocument:(id)a3;
- (id)auxiliary2MetricsMaskWithDocument:(id)a3;
- (id)baseKeySpec;
- (id)baselineMetricsMaskWithDocument:(id)a3;
- (id)columnCount;
- (id)columnIterationType;
- (id)copyDataFromAttributes;
- (id)dataFromAttributes;
- (id)edgeMetricsMaskWithDocument:(id)a3;
- (id)isActive;
- (id)log;
- (id)psdImageRefWithDocument:(id)a3;
- (id)relativePath;
- (id)rowCount;
- (id)rowIterationType;
- (id)textMetricsMaskWithDocument:(id)a3;
- (void)_loadMetricsMasksWithDocument:(id)a3;
- (void)addDrawingLayerIndex:(id)a3 themeLayer:(id)a4 toIndices:(id)a5 layers:(id)a6 lowestIndex:(int64_t *)a7;
- (void)appendToLog:(id)a3;
- (void)copyAttributesInto:(id)a3;
- (void)dealloc;
- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4;
- (void)getDrawingLayerIndices:(id *)a3 themeLayers:(id *)a4 lowestIndex:(int64_t *)a5;
- (void)setAttributesFromCopyData:(id)a3;
- (void)setAttributesFromData:(id)a3;
- (void)setColumnCount:(id)a3;
- (void)setColumnIterationType:(id)a3;
- (void)setIsActive:(id)a3;
- (void)setRowCount:(id)a3;
- (void)setRowIterationType:(id)a3;
@end

@implementation TDPhotoshopElementProduction

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDPhotoshopElementProduction;
  [(TDPhotoshopElementProduction *)&v3 dealloc];
}

- (id)rowCount
{
  if ([-[TDPhotoshopElementProduction renditionType](self "renditionType")] == 6)
  {
    v3 = MEMORY[0x277CCABB0];

    return [v3 numberWithInteger:1];
  }

  else
  {
    [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"rowCount"];
    v5 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"rowCount"];
    [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"rowCount"];
    return v5;
  }
}

- (void)setRowCount:(id)a3
{
  [(TDPhotoshopElementProduction *)self willChangeValueForKey:@"rowCount"];
  [(TDPhotoshopElementProduction *)self setPrimitiveValue:a3 forKey:@"rowCount"];

  [(TDPhotoshopElementProduction *)self didChangeValueForKey:@"rowCount"];
}

- (id)columnCount
{
  if ([-[TDPhotoshopElementProduction renditionType](self "renditionType")] == 6)
  {
    v3 = MEMORY[0x277CCABB0];

    return [v3 numberWithInteger:1];
  }

  else
  {
    [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"columnCount"];
    v5 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"columnCount"];
    [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"columnCount"];
    return v5;
  }
}

- (void)setColumnCount:(id)a3
{
  [(TDPhotoshopElementProduction *)self willChangeValueForKey:@"columnCount"];
  [(TDPhotoshopElementProduction *)self setPrimitiveValue:a3 forKey:@"columnCount"];

  [(TDPhotoshopElementProduction *)self didChangeValueForKey:@"columnCount"];
}

- (id)columnIterationType
{
  [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"columnIterationType"];
  v3 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"columnIterationType"];
  [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"columnIterationType"];
  return v3;
}

- (id)rowIterationType
{
  [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"rowIterationType"];
  v3 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"rowIterationType"];
  [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"rowIterationType"];
  return v3;
}

- (id)isActive
{
  [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"isActive"];
  v3 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"isActive"];
  [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"isActive"];
  return v3;
}

- (id)baseKeySpec
{
  [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"baseKeySpec"];
  v3 = [(TDPhotoshopElementProduction *)self primitiveValueForKey:@"baseKeySpec"];
  [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"baseKeySpec"];
  return v3;
}

- (void)setIsActive:(id)a3
{
  [(TDPhotoshopElementProduction *)self willChangeValueForKey:@"isActive"];
  [(TDPhotoshopElementProduction *)self setPrimitiveValue:a3 forKey:@"isActive"];

  [(TDPhotoshopElementProduction *)self didChangeValueForKey:@"isActive"];
}

- (void)setColumnIterationType:(id)a3
{
  [(TDPhotoshopElementProduction *)self willChangeValueForKey:@"columnIterationType"];
  [(TDPhotoshopElementProduction *)self setPrimitiveValue:a3 forKey:@"columnIterationType"];

  [(TDPhotoshopElementProduction *)self didChangeValueForKey:@"columnIterationType"];
}

- (void)setRowIterationType:(id)a3
{
  [(TDPhotoshopElementProduction *)self willChangeValueForKey:@"rowIterationType"];
  [(TDPhotoshopElementProduction *)self setPrimitiveValue:a3 forKey:@"rowIterationType"];

  [(TDPhotoshopElementProduction *)self didChangeValueForKey:@"rowIterationType"];
}

- (id)relativePath
{
  v2 = [(TDPhotoshopElementProduction *)self asset];

  return [v2 sourceRelativePath];
}

- (id)associatedFileURLWithDocument:(id)a3
{
  v4 = [(TDPhotoshopElementProduction *)self asset];

  return [v4 fileURLWithDocument:a3];
}

+ (unsigned)sliceRowsPerRendition:(int64_t)a3
{
  if (a3 > 3)
  {
    return -1;
  }

  else
  {
    return dword_247A49330[a3];
  }
}

+ (unsigned)sliceColumnsPerRendition:(int64_t)a3
{
  if (a3 > 3)
  {
    return -1;
  }

  else
  {
    return dword_247A49340[a3];
  }
}

- (void)addDrawingLayerIndex:(id)a3 themeLayer:(id)a4 toIndices:(id)a5 layers:(id)a6 lowestIndex:(int64_t *)a7
{
  if ([a3 integerValue] >= 1)
  {
    if ([a3 integerValue] < *a7)
    {
      *a7 = [a3 integerValue];
    }

    if ([a5 containsObject:a3])
    {
      NSLog(&cfstr_ErrorPhotoshop.isa, a3, self);
    }

    else
    {
      [a5 addObject:a3];

      [a6 addObject:a4];
    }
  }
}

- (void)getDrawingLayerIndices:(id *)a3 themeLayers:(id *)a4 lowestIndex:(int64_t *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  *a5 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(TDPhotoshopElementProduction *)self layerMappings];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        -[TDPhotoshopElementProduction addDrawingLayerIndex:themeLayer:toIndices:layers:lowestIndex:](self, "addDrawingLayerIndex:themeLayer:toIndices:layers:lowestIndex:", [*(*(&v15 + 1) + 8 * v13) photoshopLayerIndex], objc_msgSend(*(*(&v15 + 1) + 8 * v13), "themeDrawingLayer"), *a3, *a4, a5);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)psdImageRefWithDocument:(id)a3
{
  if (!self->psdImageRef || self->_cachedImageDate && [-[TDElementProduction associatedFileModificationDateWithDocument:](self associatedFileModificationDateWithDocument:{a3), "compare:", self->_cachedImageDate}] == 1)
  {
    self->psdImageRef = [objc_alloc(MEMORY[0x277D026C0]) initWithPath:{objc_msgSend(objc_msgSend(-[TDPhotoshopElementProduction asset](self, "asset"), "fileURLWithDocument:", a3), "path")}];
    cachedImageDate = self->_cachedImageDate;
    if (cachedImageDate)
    {
    }

    self->_cachedImageDate = [-[TDElementProduction associatedFileModificationDateWithDocument:](self associatedFileModificationDateWithDocument:{a3), "copy"}];
  }

  return self->psdImageRef;
}

- (void)_loadMetricsMasksWithDocument:(id)a3
{
  v4 = [(TDPhotoshopElementProduction *)self psdImageRefWithDocument:a3];
  if (!self->_edgeMetricsMask)
  {
    v5 = v4;
    v6 = [v4 maskFromCompositeAlphaChannel:1];
    self->_edgeMetricsMask = v6;
    if (v6)
    {
      if (!self->_textMetricsMask)
      {
        v7 = [v5 maskFromCompositeAlphaChannel:2];
        self->_textMetricsMask = v7;
        if (v7)
        {
          if (!self->_baselineMetricsMask)
          {
            v8 = [v5 maskFromCompositeAlphaChannel:3];
            self->_baselineMetricsMask = v8;
            if (v8)
            {
              if (!self->_auxiliary1MetricsMask)
              {
                v9 = [v5 maskFromCompositeAlphaChannel:4];
                self->_auxiliary1MetricsMask = v9;
                if (v9)
                {
                  if (!self->_auxiliary2MetricsMask)
                  {
                    self->_auxiliary2MetricsMask = [v5 maskFromCompositeAlphaChannel:5];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  self->_didCheckForMetricsMasks = 1;
}

- (id)edgeMetricsMaskWithDocument:(id)a3
{
  if (!self->_didCheckForMetricsMasks)
  {
    [(TDPhotoshopElementProduction *)self _loadMetricsMasksWithDocument:a3];
  }

  return self->_edgeMetricsMask;
}

- (id)textMetricsMaskWithDocument:(id)a3
{
  if (!self->_didCheckForMetricsMasks)
  {
    [(TDPhotoshopElementProduction *)self _loadMetricsMasksWithDocument:a3];
  }

  return self->_textMetricsMask;
}

- (id)baselineMetricsMaskWithDocument:(id)a3
{
  if (!self->_didCheckForMetricsMasks)
  {
    [(TDPhotoshopElementProduction *)self _loadMetricsMasksWithDocument:a3];
  }

  return self->_baselineMetricsMask;
}

- (id)auxiliary1MetricsMaskWithDocument:(id)a3
{
  if (!self->_didCheckForMetricsMasks)
  {
    [(TDPhotoshopElementProduction *)self _loadMetricsMasksWithDocument:a3];
  }

  return self->_auxiliary1MetricsMask;
}

- (id)auxiliary2MetricsMaskWithDocument:(id)a3
{
  if (!self->_didCheckForMetricsMasks)
  {
    [(TDPhotoshopElementProduction *)self _loadMetricsMasksWithDocument:a3];
  }

  return self->_auxiliary2MetricsMask;
}

- (id)log
{
  [(TDPhotoshopElementProduction *)self willAccessValueForKey:@"log"];
  log = self->log;
  if (!log)
  {
    log = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_28599CA78];
  }

  [(TDPhotoshopElementProduction *)self didAccessValueForKey:@"log"];
  return log;
}

- (void)appendToLog:(id)a3
{
  if (!appendToLog__attributes)
  {
    appendToLog__attributes = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  }

  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a3 locale:0 arguments:&v11];
  v6 = appendToLog__messageIndex++;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d - ", v6];
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [v8 initWithString:v7 attributes:appendToLog__attributes];
  v10 = objc_alloc(MEMORY[0x277CCA898]);
  [v9 appendAttributedString:{objc_msgSend(v10, "initWithString:attributes:", v5, appendToLog__attributes)}];
  [v9 appendAttributedString:{-[TDPhotoshopElementProduction log](self, "log")}];
  [(TDPhotoshopElementProduction *)self setValue:v9 forKey:@"log"];
}

- (BOOL)generateRenditionsWithEntityName:(id)a3 document:(id)a4 errorDescription:(id *)a5
{
  if (!a3)
  {
    v15 = [&stru_28599CA78 stringByAppendingString:@"ERROR: Null entityName passed to generateRenditionsWithEntityName"];
    goto LABEL_8;
  }

  v73 = [objc_msgSend(objc_msgSend(-[TDPhotoshopElementProduction entity](self "entity")];
  v72 = NSClassFromString([v73 managedObjectClassName]);
  if (![(objc_class *)v72 isSubclassOfClass:objc_opt_class()])
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entity %@ passed to TDPhotoshopElementProduction -generateRenditionsWithEntityName: is not TDPhotoshopRenditionSpec subclass", a3];
LABEL_8:
    v16 = v15;
    NSLog(&stru_28599C078.isa, v15);
    if (a5)
    {
      result = 0;
      *a5 = v16;
      return result;
    }

    return 0;
  }

  v8 = [(TDPhotoshopElementProduction *)self psdImageRefWithDocument:a4];
  if (!v8)
  {
    if (a5)
    {
      result = 0;
      v18 = @"ERROR: Invalid Photoshop PSD file";
LABEL_16:
      *a5 = v18;
      return result;
    }

    v14 = @"ERROR: Invalid Photoshop PSD file";
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [-[TDPhotoshopElementProduction rowCount](self "rowCount")];
  v11 = [-[TDPhotoshopElementProduction columnCount](self "columnCount")];
  v12 = [-[TDPhotoshopElementProduction renditionType](self "renditionType")];
  v13 = v12 != 6;
  if (v10 < v13)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Element must have %d or more rows, not %d row(s). The asset may not have enough slices to satisfy the rendition type's specifications.", v13, v10];
    goto LABEL_14;
  }

  if (v11 < v13)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Element must have %d or more columns, not %d column(s). The asset may not have enough slices to satisfy the rendition type's specifications.", v13, v11];
    goto LABEL_14;
  }

  v64 = v11;
  v19 = v12;
  v20 = [v9 numberOfSlices];
  if (v19 > 8 || ((1 << v19) & 0x160) == 0)
  {
    v27 = (v20 - 1);
    v28 = v11 * v10 * [objc_opt_class() sliceRowsPerRendition:v19];
    v29 = v28 * [objc_opt_class() sliceColumnsPerRendition:v19];
    if (v27 != v29)
    {
      v30 = &stru_28599CA78;
      if ([&stru_28599CA78 length])
      {
        v30 = [&stru_28599CA78 stringByAppendingString:@"\n"];
      }

      if ((v29 & 0x80000000) != 0)
      {
        v60 = [objc_opt_class() sliceRowsPerRendition:v19];
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PSD slice count is %d. The production says it requires %d slices, which is abnormal. This may be the result of hidden slices lurking about in the PSD asset. Try selecting the first or last slice and deleting it. Do you have one less slice now? Also confirm that the slice boundaries are correct. Given the rendition type chosen, you need a slice count that is a multiple of %d.", v27, v29, objc_msgSend(objc_opt_class(), "sliceColumnsPerRendition:", v19) * v60];
      }

      else
      {
        v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: PSD slice count %d is not consistent with element production requirements %d", v27, v29, v61];
      }

      v14 = [(__CFString *)v30 stringByAppendingString:v31];
LABEL_14:
      v18 = v14;
      if (a5)
      {
        result = 0;
        goto LABEL_16;
      }

LABEL_23:
      [(TDPhotoshopElementProduction *)self appendToLog:[(__CFString *)v14 stringByAppendingString:@"\n"]];
      return 0;
    }
  }

  v62 = v10;
  v78[0] = [MEMORY[0x277CBEB18] array];
  v77 = [MEMORY[0x277CBEB18] array];
  v76 = 0x7FFFFFFFFFFFFFFFLL;
  [(TDPhotoshopElementProduction *)self getDrawingLayerIndices:v78 themeLayers:&v77 lowestIndex:&v76];
  v71 = [-[TDPhotoshopElementProduction partDefinition](self "partDefinition")];
  v76 = [v71 count];
  v74 = [v78[0] count];
  v21 = [v9 numberOfLayers];
  v22 = v21;
  v23 = v76;
  v24 = v9;
  v66 = v19;
  if (v76 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v68 = 0;
    v76 = v21;
    v25 = &stru_28599CA78;
    v23 = v21;
  }

  else if (v76 >= v21)
  {
    v68 = 0;
    v25 = &stru_28599CA78;
  }

  else
  {
    v68 = 0;
    v25 = &stru_28599CA78;
    do
    {
      if (([v78[0] containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v23)}] & 1) == 0)
      {
        if (!v68)
        {
          v68 = [v9 layerNames];
        }

        if ([(__CFString *)v25 length])
        {
          v25 = [(__CFString *)v25 stringByAppendingString:@"\n"];
        }

        v26 = -[__CFString stringByAppendingString:](v25, "stringByAppendingString:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Photoshop layer %@ (index %ld) is not assigned to a state or rendition layer", objc_msgSend(v68, "objectAtIndex:", v23), v23]);
        v25 = v26;
        if (a5)
        {
          *a5 = v26;
        }

        else
        {
          [(TDPhotoshopElementProduction *)self appendToLog:[(__CFString *)v26 stringByAppendingString:@"\n"]];
        }
      }

      ++v23;
    }

    while (v22 != v23);
    v23 = v76;
  }

  if (v23 != 1 && v23 != 4)
  {
    if ([(__CFString *)v25 length])
    {
      v25 = [(__CFString *)v25 stringByAppendingString:@"\n"];
    }

    v33 = -[__CFString stringByAppendingString:](v25, "stringByAppendingString:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: State layer count %ld not equal to 1 or 5 or 6", v76]);
    v25 = v33;
    if (a5)
    {
      *a5 = v33;
    }

    else
    {
      [(TDPhotoshopElementProduction *)self appendToLog:[(__CFString *)v33 stringByAppendingString:@"\n"]];
    }
  }

  v70 = [v71 indexOfObjectPassingTest:&__block_literal_global_1];
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      [v9 boundsAtLayer:i];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = v35;
      if ((rint(v40) == 0.0 || rint(v35) == 0.0) && (v70 != i || v76 <= i))
      {
        if (!v68)
        {
          v68 = [v9 layerNames];
        }

        if ([(__CFString *)v25 length])
        {
          v25 = [(__CFString *)v25 stringByAppendingString:@"\n"];
        }

        v43 = -[__CFString stringByAppendingString:](v25, "stringByAppendingString:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Layer %@ (index %ld) has no pixels. Layer bounds of {{%ld, %ld}, {%ld, %ld}}", objc_msgSend(v68, "objectAtIndex:", i), i, v37, v39, v41, v42]);
        v25 = v43;
        if (a5)
        {
          *a5 = v43;
        }

        else
        {
          [(TDPhotoshopElementProduction *)self appendToLog:[(__CFString *)v43 stringByAppendingString:@"\n"]];
        }

        v9 = v24;
      }
    }
  }

  if (v66 == 6)
  {
    v64 = 1;
    v44 = 4;
    v46 = 1;
    v45 = 4;
  }

  else
  {
    v44 = [-[TDPhotoshopElementProduction valueForKey:](self valueForKey:{@"rowIterationType", "identifier"}];
    v45 = [-[TDPhotoshopElementProduction valueForKey:](self valueForKey:{@"columnIterationType", "identifier"}];
    v46 = v62;
  }

  v47 = [-[TDPhotoshopElementProduction partDefinition](self "partDefinition")];
  v48 = [v71 indexOfObjectPassingTest:&__block_literal_global_80];
  v49 = [v71 indexOfObjectPassingTest:&__block_literal_global_82];
  v50 = v64;
  if (v46 >= 1)
  {
    v51 = 0;
    v63 = v46;
    v67 = v48;
    v69 = v47;
    v65 = v49;
    do
    {
      if (v50 >= 1)
      {
        v52 = 0;
        v53 = v76;
        do
        {
          if (v53 >= 1)
          {
            for (j = 0; j < v53; ++j)
            {
              v55 = j == v70 && (v47 & 0x100) == 0;
              if (!v55 && ((j == v48) & (v47 >> 11)) == 0 && ((j == v49) & (v47 >> 19)) == 0 && (v74 & 0x8000000000000000) == 0)
              {
                v56 = -1;
                do
                {
                  v57 = [[(objc_class *)v72 alloc] initWithEntity:v73 insertIntoManagedObjectContext:[(TDPhotoshopElementProduction *)self managedObjectContext]];
                  [(objc_class *)v57 setValue:self forKey:@"production"];
                  [-[TDPhotoshopElementProduction mutableSetValueForKey:](self mutableSetValueForKey:{@"renditions", "addObject:", v57}];
                  [(objc_class *)v57 resetToBaseKeySpec];
                  [(TDPhotoshopElementProduction *)self fillIterationKeyAttribute:[(objc_class *)v57 keySpec] iteration:v44 rowOrColumn:v51 document:a4];
                  [(TDPhotoshopElementProduction *)self fillIterationKeyAttribute:[(objc_class *)v57 keySpec] iteration:v45 rowOrColumn:v52 document:a4];
                  [-[objc_class keySpec](v57 "keySpec")];
                  -[objc_class setValue:forKey:](v57, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInt:v51], @"row");
                  -[objc_class setValue:forKey:](v57, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInt:v52], @"column");
                  v58 = [(objc_class *)v57 keySpec];
                  if (v56 == -1)
                  {
                    if (![v58 layer])
                    {
                      [-[objc_class keySpec](v57 "keySpec")];
                    }

                    v59 = [MEMORY[0x277CCABB0] numberWithInt:j];
                  }

                  else
                  {
                    [v58 setLayer:{objc_msgSend(v77, "objectAtIndex:", v56)}];
                    v59 = [v78[0] objectAtIndex:v56];
                  }

                  [(objc_class *)v57 setValue:v59 forKey:@"layer"];
                  ++v56;
                }

                while (v74 != v56);
                v53 = v76;
                v48 = v67;
                v47 = v69;
                v49 = v65;
              }
            }
          }

          v52 = (v52 + 1);
          v50 = v64;
        }

        while (v52 != v64);
      }

      v51 = (v51 + 1);
    }

    while (v51 != v63);
  }

  return 1;
}

- (void)deleteRenditionsInDocument:(id)a3 shouldDeleteAssetFiles:(BOOL)a4
{
  v4 = a4;
  [a3 deleteObjects:{objc_msgSend(-[TDPhotoshopElementProduction renditions](self, "renditions"), "allObjects")}];
  v7 = [(TDPhotoshopElementProduction *)self asset];
  v8 = v7;
  if (v4)
  {
    v9 = [v7 fileURLWithDocument:a3];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      [a3 assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(a3 "assetManagementDelegate")];
      }

      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      [a3 assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(a3 "assetManagementDelegate")];
      }
    }
  }

  [a3 deleteObject:v8];
}

- (void)copyAttributesInto:(id)a3
{
  [a3 setRenditionType:{-[TDPhotoshopElementProduction renditionType](self, "renditionType")}];
  [a3 setValue:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"isActive", @"isActive"}];
  [a3 setValue:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"comment", @"comment"}];
  [a3 setValue:-[TDPhotoshopElementProduction rowCount](self forKey:{"rowCount"), @"rowCount"}];
  [a3 setValue:-[TDPhotoshopElementProduction columnCount](self forKey:{"columnCount"), @"columnCount"}];
  [a3 setValue:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"rowIterationType", @"rowIterationType"}];
  [a3 setValue:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"columnIterationType", @"columnIterationType"}];
  v5 = [(TDPhotoshopElementProduction *)self valueForKey:@"layerMappings"];

  [a3 setValue:v5 forKey:@"layerMappings"];
}

- (id)dataFromAttributes
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:7];
  v4 = [(TDPhotoshopElementProduction *)self renditionType];
  if (v4)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v4 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"renditionType"}];
  }

  [v3 setObject:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"rowCount", @"rowCount"}];
  [v3 setObject:-[TDPhotoshopElementProduction valueForKey:](self forKey:{"valueForKey:", @"columnCount", @"columnCount"}];
  v5 = [(TDPhotoshopElementProduction *)self valueForKey:@"rowIterationType"];
  if (v5)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v5 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"rowIterationType"}];
  }

  v6 = [(TDPhotoshopElementProduction *)self valueForKey:@"columnIterationType"];
  if (v6)
  {
    [v3 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v6 forKey:{"objectID"), "URIRepresentation"), "absoluteString"), @"columnIterationType"}];
  }

  v7 = [(TDPhotoshopElementProduction *)self layerMappings];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v3 setObject:objc_msgSend(*(*(&v14 + 1) + 8 * v11) forKey:{"photoshopLayerIndex"), objc_msgSend(objc_msgSend(*(*(&v14 + 1) + 8 * v11), "themeDrawingLayer"), "constantName")}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v3 setObject:objc_msgSend(-[TDPhotoshopElementProduction baseKeySpec](self forKey:{"baseKeySpec"), "dataFromAttributes"), @"baseKeySpec"}];
  result = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_layerMappingForPhotoshopLayer:(int64_t)a3 drawingLayer:(int64_t)a4
{
  v6 = [(TDPhotoshopElementProduction *)self managedObjectContext];
  v7 = [MEMORY[0x277CBE408] entityForName:@"LayerMapping" inManagedObjectContext:v6];
  v8 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v8 setEntity:v7];
  [v8 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"photoshopLayerIndex = %d AND themeDrawingLayer.identifier = %d", a3, a4)}];
  v14 = 0;
  v9 = [v6 executeFetchRequest:v8 error:&v14];

  if ([v9 count])
  {
    return [v9 objectAtIndex:0];
  }

  v10 = [[TDLayerMapping alloc] initWithEntity:v7 insertIntoManagedObjectContext:v6];
  -[TDLayerMapping setValue:forKey:](v10, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"photoshopLayerIndex");
  v11 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v11 setEntity:{objc_msgSend(MEMORY[0x277CBE408], "entityForName:inManagedObjectContext:", @"ThemeDrawingLayer", v6)}];
  [v11 setPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier = %d", a4)}];
  v12 = [v6 executeFetchRequest:v11 error:&v14];

  -[TDLayerMapping setValue:forKey:](v10, "setValue:forKey:", [v12 objectAtIndex:0], @"themeDrawingLayer");
  return v10;
}

- (void)setAttributesFromData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [(TDPhotoshopElementProduction *)self managedObjectContext];
  v6 = [v4 objectForKey:@"baseKeySpec"];
  if (v6)
  {
    [-[TDPhotoshopElementProduction baseKeySpec](self "baseKeySpec")];
  }

  v7 = [v4 objectForKey:@"renditionType"];
  if (v7)
  {
    -[TDPhotoshopElementProduction setRenditionType:](self, "setRenditionType:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v7))}]);
  }

  v8 = [v4 objectForKey:@"rowCount"];
  if (v8)
  {
    [(TDPhotoshopElementProduction *)self setValue:v8 forKey:@"rowCount"];
  }

  v9 = [v4 objectForKey:@"columnCount"];
  if (v9)
  {
    [(TDPhotoshopElementProduction *)self setValue:v9 forKey:@"columnCount"];
  }

  v10 = [v4 objectForKey:@"rowIterationType"];
  if (v10)
  {
    -[TDPhotoshopElementProduction setValue:forKey:](self, "setValue:forKey:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v10))}], @"rowIterationType");
  }

  v11 = [v4 objectForKey:@"columnIterationType"];
  if (v11)
  {
    -[TDPhotoshopElementProduction setValue:forKey:](self, "setValue:forKey:", [v5 objectWithID:{objc_msgSend(objc_msgSend(v5, "persistentStoreCoordinator"), "managedObjectIDForURIRepresentation:", objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v11))}], @"columnIterationType");
  }

  v12 = [v4 objectForKey:@"kCoreThemeLayerPulse"];
  if (v12)
  {
    v13 = v12;
    if ([v12 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v13, "integerValue"), 3)}]);
    }
  }

  v14 = [v4 objectForKey:@"kCoreThemeLayerHighlight"];
  if (v14)
  {
    v15 = v14;
    if ([v14 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v15, "integerValue"), 1)}]);
    }
  }

  v16 = [v4 objectForKey:@"kCoreThemeLayerHitMask"];
  if (v16)
  {
    v17 = v16;
    if ([v16 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v17, "integerValue"), 4)}]);
    }
  }

  v18 = [v4 objectForKey:@"kCoreThemeLayerMask"];
  if (v18)
  {
    v19 = v18;
    if ([v18 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v19, "integerValue"), 2)}]);
    }
  }

  v20 = [v4 objectForKey:@"kCoreThemeLayerPatternOverlay"];
  if (v20)
  {
    v21 = v20;
    if ([v20 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v21, "integerValue"), 5)}]);
    }
  }

  v22 = [v4 objectForKey:@"kCoreThemeLayerOutline"];
  if (v22)
  {
    v23 = v22;
    if ([v22 integerValue])
    {
      -[TDPhotoshopElementProduction addLayerMappings:](self, "addLayerMappings:", [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v23, "integerValue"), 6)}]);
    }
  }

  v24 = [v4 objectForKey:@"kCoreThemeLayerInterior"];
  if (v24)
  {
    v25 = v24;
    if ([v24 integerValue])
    {
      v26 = [MEMORY[0x277CBEB98] setWithObject:{-[TDPhotoshopElementProduction _layerMappingForPhotoshopLayer:drawingLayer:](self, "_layerMappingForPhotoshopLayer:drawingLayer:", objc_msgSend(v25, "integerValue"), 7)}];

      [(TDPhotoshopElementProduction *)self addLayerMappings:v26];
    }
  }
}

- (id)copyDataFromAttributes
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:14];
  v4 = [(TDPhotoshopElementProduction *)self valueForKey:@"columnCount"];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"columnCount"];
  }

  v5 = [(TDPhotoshopElementProduction *)self valueForKey:@"rowCount"];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"rowCount"];
  }

  v6 = [(TDPhotoshopElementProduction *)self valueForKey:@"comment"];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"comment"];
  }

  v7 = [(TDPhotoshopElementProduction *)self valueForKey:@"isActive"];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"isActive"];
  }

  v8 = [(TDPhotoshopElementProduction *)self valueForKey:@"isExcludedFromFilter"];
  if (v8)
  {
    [v3 setObject:v8 forKey:@"isExcludedFromFilter"];
  }

  v9 = [(TDPhotoshopElementProduction *)self valueForKey:@"renditionType"];
  if (v9)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v9, "identifier")), @"renditionType"}];
  }

  v10 = [(TDPhotoshopElementProduction *)self valueForKey:@"artworkDraftType"];
  if (v10)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v10, "identifier")), @"artworkDraftType"}];
  }

  v11 = [(TDPhotoshopElementProduction *)self valueForKey:@"columnIterationType"];
  if (v11)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v11, "identifier")), @"columnIterationType"}];
  }

  v12 = [(TDPhotoshopElementProduction *)self valueForKey:@"rowIterationType"];
  if (v12)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v12, "identifier")), @"rowIterationType"}];
  }

  v13 = [(TDPhotoshopElementProduction *)self valueForKey:@"renditionSubtype"];
  if (v13)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v13, "identifier")), @"renditionSubtype"}];
  }

  v14 = [(TDPhotoshopElementProduction *)self valueForKey:@"baseKeySpec"];
  if (v14)
  {
    [v3 setObject:objc_msgSend(v14 forKey:{"copyDataFromAttributes"), @"baseKeySpec"}];
  }

  v15 = [(TDPhotoshopElementProduction *)self asset];
  if (v15)
  {
    [v3 setObject:objc_msgSend(v15 forKey:{"copyDataFromAttributes"), @"asset"}];
  }

  v16 = [(TDPhotoshopElementProduction *)self mutableSetValueForKey:@"layerMappings"];
  if ([v16 count])
  {
    v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = [v16 allObjects];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        v22 = 0;
        do
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObject:{objc_msgSend(*(*(&v36 + 1) + 8 * v22++), "copyDataFromAttributes")}];
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKey:@"layerMappings"];
  }

  v23 = [(TDPhotoshopElementProduction *)self mutableSetValueForKey:@"renditions"];
  if ([v23 count])
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v23, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = [v23 allObjects];
    v26 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v33;
      do
      {
        v29 = 0;
        do
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [v24 addObject:{objc_msgSend(*(*(&v32 + 1) + 8 * v29++), "copyDataFromAttributes")}];
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKey:@"renditions"];
  }

  result = [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:{0), "copy"}];
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setAttributesFromCopyData:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  v5 = [v4 objectForKey:@"columnCount"];
  if (v5)
  {
    [(TDPhotoshopElementProduction *)self setValue:v5 forKey:@"columnCount"];
  }

  v6 = [v4 objectForKey:@"rowCount"];
  if (v6)
  {
    [(TDPhotoshopElementProduction *)self setValue:v6 forKey:@"rowCount"];
  }

  v7 = [v4 objectForKey:@"comment"];
  if (v7)
  {
    [(TDPhotoshopElementProduction *)self setValue:v7 forKey:@"comment"];
  }

  v8 = [v4 objectForKey:@"isActive"];
  if (v8)
  {
    [(TDPhotoshopElementProduction *)self setValue:v8 forKey:@"isActive"];
  }

  v9 = [v4 objectForKey:@"isExcludedFromFilter"];
  if (v9)
  {

    [(TDPhotoshopElementProduction *)self setValue:v9 forKey:@"isExcludedFromFilter"];
  }
}

@end
@interface TDDistiller
- (BOOL)_distillColorDefinitions:(id)a3;
- (BOOL)_distillCursorFacetDefinitions:(id)a3;
- (BOOL)_distillFonts:(id)a3;
- (BOOL)_distillNamedElements:(id)a3;
- (BOOL)_setupWithOutputPath:(id)a3 attemptIncremental:(BOOL)a4;
- (BOOL)assetStoreWriteToDisk;
- (BOOL)distillCatalogGlobals;
- (BOOL)distillCursorFacetDefinitions;
- (BOOL)distillCustomColors;
- (BOOL)distillCustomFontSizes;
- (BOOL)distillCustomFonts;
- (BOOL)distillLocalizationss;
- (BOOL)distillNamedElements;
- (BOOL)distillRenditions;
- (BOOL)distillThemeAppearances;
- (BOOL)setAsset:(id)a3 withKey:(const _renditionkeytoken *)a4 fromRenditionSpec:(id)a5;
- (id)_copyStandardEffectDefinitions;
- (id)_filterRenditions:(id)a3;
- (id)_keyDataFromKey:(const _renditionkeytoken *)a3;
- (id)_keySpecsToRemoveFromKeySpecs:(id)a3;
- (id)_productionForRenditionSpec:(id)a3;
- (id)_renditionsFromProductions:(id)a3 error:(id *)a4;
- (id)_renditionsWithError:(id *)a3;
- (id)dateOfLastDistill;
- (id)documentPath;
- (id)keyFormatData;
- (uint64_t)cancelDistill;
- (unint64_t)_removeRenditionsWithKeySpecs:(id)a3;
- (void)_accumulateErrorDescription:(id)a3;
- (void)_distill:(id)a3;
- (void)_distillChanges:(id)a3;
- (void)_logError:(id)a3;
- (void)_logErrorAndAccumulateDescription:(id)a3;
- (void)_logExtra:(id)a3;
- (void)_logInfo:(id)a3;
- (void)_logWarning:(id)a3;
- (void)_resetDocumentUuid:(id)a3;
- (void)cancelDistill;
- (void)dealloc;
- (void)markDistillationAsFinished;
- (void)saveAndDistillWithCompletionHandler:(id)a3;
- (void)setFileCompression:(int)a3;
- (void)waitUntilFinished;
@end

@implementation TDDistiller

- (void)setFileCompression:(int)a3
{
  self->_fileCompression = a3;
  if (a3 == 1)
  {
    [MEMORY[0x277D02668] setFileEncoding:0];
  }
}

- (void)_logError:(id)a3
{
  v4 = [(TDDistiller *)self logger];

  [(TDLogger *)v4 logError:a3];
}

- (void)_logWarning:(id)a3
{
  v4 = [(TDDistiller *)self logger];

  [(TDLogger *)v4 logWarning:a3];
}

- (void)_logInfo:(id)a3
{
  v4 = [(TDDistiller *)self logger];

  [(TDLogger *)v4 logInfo:a3];
}

- (void)_logExtra:(id)a3
{
  v4 = [(TDDistiller *)self logger];

  [(TDLogger *)v4 logExtra:a3];
}

- (void)_accumulateErrorDescription:(id)a3
{
  if ([(NSString *)[(TDDistiller *)self accumulatedErrorDescription] length])
  {
    a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -- %@", a3, -[TDDistiller accumulatedErrorDescription](self, "accumulatedErrorDescription")];
  }

  [(TDDistiller *)self setAccumulatedErrorDescription:a3];
}

- (void)_logErrorAndAccumulateDescription:(id)a3
{
  [(TDDistiller *)self _logError:?];

  [(TDDistiller *)self _accumulateErrorDescription:a3];
}

- (BOOL)_setupWithOutputPath:(id)a3 attemptIncremental:(BOOL)a4
{
  self->_assetStoreVersionNumber = 17;
  if (!a4)
  {
    -[TDDistiller _logInfo:](self, "_logInfo:", [MEMORY[0x277CCACA8] stringWithFormat:@"AttemptingIncremental %d isIncremental %d on document %@", 0, 0, a3]);
    self->_assetStore = [objc_alloc(MEMORY[0x277D02680]) initWithPath:a3];
LABEL_9:
    self->_renditionEntries = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_alloc(MEMORY[0x277CBEA60]);
    self->_mainThreadPerformRunLoopModes = [v12 initWithObjects:{*MEMORY[0x277CBE640], @"DistillWaitRunLoopMode", 0}];
    [(TDDistiller *)self _logExtra:@"Theme document and asset store created"];
    return 1;
  }

  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    [(TDDistiller *)self setIncremental:1];
    -[TDDistiller _logInfo:](self, "_logInfo:", [MEMORY[0x277CCACA8] stringWithFormat:@"AttemptingIncremental %d isIncremental %d on document %@", 1, 1, a3]);
    self->_assetStore = [[TDProMergeableCommonAssetStorage alloc] initWithPath:a3];
    if (-[CoreThemeDocument pathToRepresentedDocument](self->_document, "pathToRepresentedDocument") && ([-[CUIMutableCommonAssetStorage uuid](self->_assetStore "uuid")] & 1) == 0)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Definition (%@) and CAR (%@) files do not match.", -[CoreThemeDocument pathToRepresentedDocument](self->_document, "pathToRepresentedDocument"), a3];
    }

    else
    {
      v6 = [(CoreThemeDocument *)self->_document colorSpaceID];
      if (v6 == [(CUIMutableCommonAssetStorage *)self->_assetStore colorSpaceID])
      {
        v7 = [(CUIMutableCommonAssetStorage *)self->_assetStore storageVersion];
        v8 = [(CUIMutableCommonAssetStorage *)self->_assetStore schemaVersion];
        v9 = [(TDDistiller *)self assetStoreVersionNumber];
        v10 = [(CoreThemeDocument *)self->_document metadatumForKey:@"CoreThemeSchemaVersion"];
        if (v10)
        {
          v11 = [v10 unsignedIntValue];
        }

        else
        {
          v11 = 1;
        }

        if (v7 == v9 && v8 == v11)
        {
          v15 = [(CUIMutableCommonAssetStorage *)self->_assetStore distilledInCoreUIVersion];
          v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{-[CUIMutableCommonAssetStorage storageTimestamp](self->_assetStore, "storageTimestamp")}];
          v17 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
          v18 = [v17 objectForKey:*MEMORY[0x277CCA1C0]];
          v19 = &unk_2859AC4E8;
          if (v18)
          {
            v19 = v18;
          }

          NSLog(&cfstr_PerformingIncr.isa, a3, v19, v15, v16);
          goto LABEL_9;
        }

        v14 = @"Definition and CAR version numbers do not match.";
      }

      else
      {
        v14 = @"Definition and CAR color spaces do not match.";
      }
    }

    [(TDDistiller *)self _logError:v14];
    [(TDDistiller *)self setIncremental:0];

    result = 0;
    self->_assetStore = 0;
  }

  else
  {
    [(TDDistiller *)self _logError:@"No CAR file to increment doing a clean distill"];
    return 0;
  }

  return result;
}

- (id)_keySpecsToRemoveFromKeySpecs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  if ([a3 count])
  {
    if ([(CoreThemeDocument *)self->_document countOfRenditionsMatchingRenditionKeySpecs:a3])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(a3);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            if (![(CoreThemeDocument *)self->_document countOfRenditionsMatchingRenditionKeySpec:v10])
            {
              [v5 addObject:v10];
            }
          }

          v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }

    else
    {
      [v5 addObjectsFromArray:a3];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)documentPath
{
  v2 = [(TDPersistentDocument *)self->_document fileURL];

  return [(NSURL *)v2 path];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  [(TDDistiller *)self setCompletionHandler:0];
  [(TDDistiller *)self setLogger:0];
  [(TDDistiller *)self setCallbackThread:0];
  v3.receiver = self;
  v3.super_class = TDDistiller;
  [(TDDistiller *)&v3 dealloc];
}

- (id)keyFormatData
{
  v2 = [(CoreThemeDocument *)self->_document renditionKeyFormat];
  v3 = MEMORY[0x277CBEA90];
  v4 = v2->var2 + 3;

  return [v3 dataWithBytes:? length:?];
}

- (id)_keyDataFromKey:(const _renditionkeytoken *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  *v13 = 0u;
  v3 = [(CoreThemeDocument *)self->_document renditionKeyFormat:0];
  var2 = v3->var2;
  if (var2 < 0x16)
  {
    v5 = &v12;
  }

  else
  {
    v5 = malloc_type_calloc(var2, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey();
  v6 = v3->var2;
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v8 = 2 * v3->var2;
  if (v6 < 0x16)
  {
    v9 = [v7 initWithBytes:v5 length:v8];
  }

  else
  {
    v9 = [v7 initWithBytesNoCopy:v5 length:v8 freeWhenDone:1];
  }

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_filterRenditions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v5 = [a3 count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [a3 objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 mipLevels];
        v10 = [v9 filteredSetUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"(face != nil) AND (face.identifier != 0)"}];
        if ([v10 count])
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [a3 indexOfObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v14), "textureImage")}];
                if (v15 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v4 addIndex:v15];
                }

                ++v14;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
            }

            while (v12);
          }
        }
      }
    }
  }

  if ([v4 count])
  {
    v16 = [a3 mutableCopy];
    [v16 removeObjectsAtIndexes:v4];
    a3 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];
  return a3;
}

- (id)_renditionsWithError:(id *)a3
{
  v4 = [(CoreThemeDocument *)self->_document objectsForEntity:@"RenditionSpec" withPredicate:0 sortDescriptors:0 error:a3];
  v5 = [(CoreThemeDocument *)self->_document renditionKeyFormat];
  v6 = [(TDDistiller *)self _filterRenditions:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__TDDistiller__renditionsWithError___block_invoke;
  v11[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  v11[4] = v5;
  v7 = [v6 sortedArrayUsingComparator:v11];
  v8 = [MEMORY[0x277CBEB18] array];
  __midpointQuickPermuteInRange(v7, 0, [v7 count], v8);
  v9 = [v8 count];
  if (v9 != [v7 count])
  {
    [TDDistiller _renditionsWithError:];
  }

  return v8;
}

uint64_t __36__TDDistiller__renditionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [objc_msgSend(a2 "keySpec")];
  v6 = [objc_msgSend(a3 "keySpec")];
  v7 = *(a1 + 32);

  return MEMORY[0x282157470](v5, v6, v7);
}

- (id)_renditionsFromProductions:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = MEMORY[0x277CCA918];
        v12 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"production"];
        [v5 addObject:{objc_msgSend(v11, "predicateWithLeftExpression:rightExpression:modifier:type:options:", v12, objc_msgSend(MEMORY[0x277CCA9C0], "expressionForConstantValue:", v10), 0, 4, 0)}];
      }

      v7 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  result = -[TDDistiller _filterRenditions:](self, "_filterRenditions:", -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self->_document, "objectsForEntity:withPredicate:sortDescriptors:error:", @"RenditionSpec", [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5], 0, a4));
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setAsset:(id)a3 withKey:(const _renditionkeytoken *)a4 fromRenditionSpec:(id)a5
{
  assetStore = self->_assetStore;
  v7 = [(TDDistiller *)self _keyDataFromKey:a4];

  return [(CUIMutableCommonAssetStorage *)assetStore setAsset:a3 forKey:v7];
}

- (unint64_t)_removeRenditionsWithKeySpecs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = -[TDDistiller _keyDataFromKey:](self, "_keyDataFromKey:", [*(*(&v13 + 1) + 8 * i) key]);
        if ([(CUIMutableCommonAssetStorage *)self->_assetStore assetExistsForKey:v10])
        {
          ++v7;
          [(TDDistiller *)self removeRenditionsFromAssetStoreWithKey:v10];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_productionForRenditionSpec:(id)a3
{
  v5 = [a3 production];
  if (!v5)
  {
    -[TDDistiller _logWarning:](self, "_logWarning:", [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Found a rendition spec not associated with any element production: %@", a3]);
  }

  return v5;
}

- (BOOL)distillRenditions
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v26 = 0;
  v4 = [[TDRenditionsDistiller alloc] initWithDocument:self->_document shouldCompressCSIDataFlag:1];
  [(TDRenditionsDistiller *)v4 setLogger:[(TDDistiller *)self logger]];
  [(TDRenditionsDistiller *)v4 detachDistillationThread];
  [(TDDistiller *)self _logExtra:@"Fetching and distilling renditions"];
  v5 = [(TDDistiller *)self _renditionsWithError:&v26];
  v6 = [v5 count];
  [(CoreThemeDocument *)self->_document renditionKeyFormat];
  [(TDDistiller *)self setAssetStoreRenditionCount:v6];
  if (v26)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v26 localizedDescription]);
    [(TDRenditionsDistiller *)v4 enqueueAbortFlag];
    v7 = 0;
  }

  else
  {
    v24 = v3;
    v25 = v4;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    if (v6)
    {
      v9 = 0;
      while (1)
      {
        if ([(TDDistiller *)self isCancelled])
        {
          [(TDRenditionsDistiller *)v25 enqueueAbortFlag];
          goto LABEL_21;
        }

        v10 = objc_autoreleasePoolPush();
        v11 = [v5 objectAtIndex:v9];
        v12 = [v11 keySpec];
        if (!-[TDDistiller setAsset:withKey:fromRenditionSpec:](self, "setAsset:withKey:fromRenditionSpec:", 0, [v12 key], v11))
        {
          -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: couldnot write key to file\n%@\n", objc_msgSend(v12, "keyDescription")]);

          goto LABEL_20;
        }

        [v12 key];
        CUIRenditionKeyCopy();
        CUIRenditionKeyStandardize();
        v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v27 length:4 * CUIRenditionKeyTokenCount()];
        if ([v8 containsObject:v13])
        {
          break;
        }

        [(TDRenditionsDistiller *)v25 enqueueRenditionSpec:v11];
        [v8 addObject:v13];

        objc_autoreleasePoolPop(v10);
        if (v6 == ++v9)
        {
          goto LABEL_9;
        }
      }

      -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: Identical key for two renditions\n\n%@\n", objc_msgSend(v12, "keyDescription")]);

LABEL_20:
      [(TDRenditionsDistiller *)v25 enqueueAbortFlag];
      objc_autoreleasePoolPop(v10);
LABEL_21:
      v7 = 0;
    }

    else
    {
LABEL_9:

      v14 = v25;
      [(TDRenditionsDistiller *)v25 enqueueLastRenditionFlag];
      v15 = [-[CoreThemeDocument mocOrganizer](self->_document "mocOrganizer")];
      v16 = [(TDRenditionsDistiller *)v25 nextCSIDataInfoFromQueue];
      if (v16 && (v17 = v16, ![(TDDistiller *)self isCancelled]))
      {
        while (1)
        {
          v18 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v17 objectForKey:{@"DistillingAborted", "BOOLValue"}])
          {
            break;
          }

          v19 = [v17 objectForKey:@"CSIData"];
          v20 = [v15 objectWithID:{objc_msgSend(v17, "objectForKey:", @"RenditionSpec"}];
          v7 = -[TDDistiller setAsset:withKey:fromRenditionSpec:](self, "setAsset:withKey:fromRenditionSpec:", v19, [objc_msgSend(v20 "keySpec")], v20);
          objc_autoreleasePoolPop(v18);
          v14 = v25;
          v21 = [(TDRenditionsDistiller *)v25 nextCSIDataInfoFromQueue];
          if (v21)
          {
            v17 = v21;
            if (![(TDDistiller *)self isCancelled])
            {
              continue;
            }
          }

          goto LABEL_12;
        }

        objc_autoreleasePoolPop(v18);
        v7 = 0;
        v14 = v25;
      }

      else
      {
        v7 = 1;
      }

LABEL_12:
      [(TDRenditionsDistiller *)v14 waitUntilFinished];
    }

    v3 = v24;
  }

  objc_autoreleasePoolPop(v3);
  v22 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)distillThemeAppearances
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v17 = 0;
  [(TDDistiller *)self _logExtra:@"Fetching and distilling appearances"];
  v4 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"Appearance" withSortDescriptors:0 error:&v17];
  v5 = v17;
  if (v17)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v17 localizedDescription]);
  }

  else
  {
    v6 = v4;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
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

          -[CUIMutableCommonAssetStorage setAppearanceIdentifier:forName:](self->_assetStore, "setAppearanceIdentifier:forName:", [*(*(&v13 + 1) + 8 * i) identifier], objc_msgSend(*(*(&v13 + 1) + 8 * i), "name"));
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  objc_autoreleasePoolPop(v3);
  v11 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)distillLocalizationss
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v18 = 0;
  [(TDDistiller *)self _logExtra:@"Fetching and distilling localizations"];
  v4 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"Localization" withSortDescriptors:0 error:&v18];
  v5 = v18;
  if (v18)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v18 localizedDescription]);
  }

  else
  {
    v6 = v4;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 identifier])
          {
            -[CUIMutableCommonAssetStorage setLocalizationIdentifier:forName:](self->_assetStore, "setLocalizationIdentifier:forName:", [v11 identifier], objc_msgSend(v11, "name"));
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)distillCatalogGlobals
{
  v3 = objc_autoreleasePoolPush();
  v11 = 0;
  [(TDDistiller *)self _logExtra:@"Fetching and distilling catalog globals"];
  v4 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"CatalogGlobals" withSortDescriptors:0 error:&v11];
  v5 = v11;
  if (v11)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v11 localizedDescription]);
  }

  else
  {
    v7 = v4;
    v8 = [v4 count];
    if (v8 >= 2)
    {
      [TDDistiller distillCatalogGlobals];
    }

    else if (!v8)
    {
      goto LABEL_3;
    }

    v9 = [v7 firstObject];
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objc_msgSend(v9 requiringSecureCoding:"dictionaryForArchiving") error:{0, 0}];
    if (v10)
    {
      [(CUIMutableCommonAssetStorage *)self->_assetStore setCatalogGlobalData:v10];
    }
  }

LABEL_3:
  objc_autoreleasePoolPop(v3);
  return v5 == 0;
}

- (BOOL)_distillColorDefinitions:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v19;
    do
    {
      v16 = v6;
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 valueForKey:@"name"];
        v12 = [v11 valueForKey:@"selector"];
        v13 = [objc_msgSend(v11 valueForKey:{@"isExcludedFromFilter", "BOOLValue"}];
        LODWORD(v9) = [objc_msgSend(v9 valueForKey:{@"physicalColor", "unsignedIntValue"}];
        -[TDDistiller _logExtra:](self, "_logExtra:", [MEMORY[0x277CCACA8] stringWithFormat:@"Writing color A:%u R:%u G:%u B:%u name %@ excludeFromFilter %d", v9 >> 24, BYTE2(v9), BYTE1(v9), v9, v12, v13]);
        -[CUIMutableCommonAssetStorage setColor:forName:excludeFromFilter:](self->_assetStore, "setColor:forName:excludeFromFilter:", v9, [v12 UTF8String], v13);
        objc_autoreleasePoolPop(v10);
      }

      v6 = v16 + v5;
      v5 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
    if (v6)
    {
      -[TDDistiller _logExtra:](self, "_logExtra:", [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully distilled and stored %lu colors", v6]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)distillCustomColors
{
  v3 = objc_autoreleasePoolPush();
  v7 = 0;
  [(TDDistiller *)self _logExtra:@"Fetching and distilling color definitions"];
  v4 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"ColorDefinition" withSortDescriptors:0 error:&v7];
  if (v7)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v7 localizedDescription]);
    v5 = 0;
  }

  else
  {
    v5 = [(TDDistiller *)self _distillColorDefinitions:v4];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)_distillFonts:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      v18 = v6;
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 postscriptName];
        v12 = [objc_msgSend(v9 "selector")];
        [objc_msgSend(v9 "baselineOffset")];
        v14 = v13;
        -[TDDistiller _logExtra:](self, "_logExtra:", [MEMORY[0x277CCACA8] stringWithFormat:@"Writing font %@ for %@", v11, v12]);
        LODWORD(v15) = v14;
        [(CUIMutableCommonAssetStorage *)self->_assetStore setFontName:v11 baselineOffset:v12 forFontSelector:v15];
        objc_autoreleasePoolPop(v10);
      }

      v6 = v18 + v5;
      v5 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
    if (v6)
    {
      -[TDDistiller _logInfo:](self, "_logInfo:", [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully distilled and stored %lu fonts", v6]);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)distillCustomFonts
{
  v3 = objc_autoreleasePoolPush();
  v7 = 0;
  [(TDDistiller *)self _logInfo:@"Fetching and distilling font definitions"];
  v4 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"FontDefinition" withSortDescriptors:0 error:&v7];
  if (v7)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v7 localizedDescription]);
    v5 = 0;
  }

  else
  {
    v5 = [(TDDistiller *)self _distillFonts:v4];
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)distillCustomFontSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v3 = [(CoreThemeDocument *)self->_document allObjectsForEntity:@"FontSizeDefinition" withSortDescriptors:0 error:&v16];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 "selector")];
        [objc_msgSend(v8 "pointSize")];
        [(CUIMutableCommonAssetStorage *)self->_assetStore setFontSize:v9 forFontSizeSelector:?];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_copyStandardEffectDefinitions
{
  v2 = [(CoreThemeDocument *)self->_document targetPlatform];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v2)
  {

    return [v3 initWithCapacity:0];
  }

  else
  {
    v5 = [v3 initWithCapacity:50];
    v6 = [MEMORY[0x277D026E0] schemaForPlatform:0];
    if ([v6 effectDefinitionCount])
    {
      v7 = 0;
      do
      {
        v8 = [v6 effectDefinitionAtIndex:v7];
        if (*(v8 + 72))
        {
          v9 = v8 + 32;
          do
          {
            [v5 addObjectsFromArray:{objc_msgSend(v6, "schemaEffectRenditionsForPartDefinition:", v9)}];
            v10 = *(v9 + 480);
            v9 += 440;
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 < [v6 effectDefinitionCount]);
    }

    return v5;
  }
}

- (BOOL)_distillNamedElements:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [objc_msgSend(v9 "production")];
        [v11 key];
        CUIRenditionKeyCopy();
        CUIRenditionKeySetValueForAttribute();
        if ([objc_msgSend(v11 "part")])
        {
          if ([objc_msgSend(v11 "part")] != 181)
          {
            v16 = 0;
            if ([-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self->_document objectsForEntity:@"RenditionKeySpec" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:"predicateWithFormat:" error:{@"nameIdentifier == %d AND part.identifier == %d", objc_msgSend(v11, "nameIdentifier"), 181), 0, &v16), "count"}])
            {
              CUIRenditionKeySetValueForAttribute();
            }
          }
        }

        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation([v9 name]);
        v13 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xDAA9409FuLL);
        CFStringGetFileSystemRepresentation([v9 name], v13, MaximumSizeOfFileSystemRepresentation);
        [(CUIMutableCommonAssetStorage *)self->_assetStore setRenditionKey:v21 hotSpot:v13 forName:0.0, 0.0];
        free(v13);
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v6);
  }

  -[TDDistiller _logInfo:](self, "_logInfo:", [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully stored %ld asset name entries.", objc_msgSend(a3, "count")]);
  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)distillNamedElements
{
  v7 = 0;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"production.isActive = YES"];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v5 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self->_document, "objectsForEntity:withPredicate:sortDescriptors:error:", @"NamedElement", v3, [MEMORY[0x277CBEA60] arrayWithObject:v4], &v7);

  return [(TDDistiller *)self _distillNamedElements:v5];
}

- (BOOL)_distillCursorFacetDefinitions:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if ([a3 count])
  {
    v14 = a3;
    v15 = v5;
    v6 = [a3 objectEnumerator];
    v7 = [v6 nextObject];
    if (v7)
    {
      v8 = v7;
      do
      {
        v9 = -1.0;
        v10 = -1.0;
        if ([objc_msgSend(objc_msgSend(v8 "entity")])
        {
          v10 = [objc_msgSend(v8 valueForKey:{@"hotSpotX", "integerValue"}];
          v9 = [objc_msgSend(v8 valueForKey:{@"hotSpotY", "integerValue"}];
        }

        MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation([v8 valueForKey:@"facetName"]);
        v12 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xE1B83578uLL);
        CFStringGetFileSystemRepresentation([v8 valueForKey:@"facetName"], v12, MaximumSizeOfFileSystemRepresentation);
        -[CUIMutableCommonAssetStorage setRenditionKey:hotSpot:forName:](self->_assetStore, "setRenditionKey:hotSpot:forName:", [objc_msgSend(v8 valueForKey:{@"keySpec", "key"}], v12, v10, v9);
        free(v12);
        v8 = [v6 nextObject];
      }

      while (v8);
    }

    -[TDDistiller _logInfo:](self, "_logInfo:", [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully stored %ld facet definitions", objc_msgSend(v14, "count")]);
    v5 = v15;
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

- (BOOL)distillCursorFacetDefinitions
{
  v3 = objc_autoreleasePoolPush();
  v18 = 0;
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"facetName" ascending:1];
  v5 = [-[CoreThemeDocument allObjectsForEntity:withSortDescriptors:error:](self->_document allObjectsForEntity:@"CursorFacetDefinition" withSortDescriptors:objc_msgSend(MEMORY[0x277CBEA60] error:{"arrayWithObject:", v4), &v18), "mutableCopy"}];

  if (v18)
  {
    -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [v18 localizedDescription]);
LABEL_3:
    v6 = 0;
  }

  else
  {
    v7 = [v5 count];
    v8 = [MEMORY[0x277CCAB58] indexSet];
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{i), "valueForKey:", @"cursorProductions", "objectEnumerator"}];
        while (1)
        {
          v11 = [v10 nextObject];
          if (!v11)
          {
            break;
          }

          if ([objc_msgSend(v11 valueForKey:{@"isActive", "BOOLValue"}])
          {
            goto LABEL_11;
          }
        }

        [v8 addIndex:i];
LABEL_11:
        ;
      }
    }

    [v5 removeObjectsAtIndexes:v8];
    v12 = [v5 count];
    v13 = v12 - 1;
    if (v12 > 1)
    {
      v14 = 0;
      v15 = 1;
LABEL_14:
      v16 = v13 - v14;
      do
      {
        if ([objc_msgSend(objc_msgSend(v5 objectAtIndex:{v14), "valueForKey:", @"facetName", "isEqualToString:", objc_msgSend(objc_msgSend(v5, "objectAtIndex:", v14 + 1), "valueForKey:", @"facetName"}])
        {
          -[TDDistiller _logErrorAndAccumulateDescription:](self, "_logErrorAndAccumulateDescription:", [MEMORY[0x277CCACA8] stringWithFormat:@"More than one definition of the facet name: %@", objc_msgSend(objc_msgSend(v5, "objectAtIndex:", v14), "valueForKey:", @"facetName"]);
          v15 = 0;
          v6 = 0;
          ++v14;
          if (v16 != 1)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }

        ++v14;
        --v16;
      }

      while (v16);
      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = [(TDDistiller *)self _distillCursorFacetDefinitions:v5];
  }

LABEL_22:

  objc_autoreleasePoolPop(v3);
  return v6;
}

- (void)markDistillationAsFinished
{
  [(TDDistiller *)self setFinished:1];
  v3 = [(TDDistiller *)self completionHandler];
  if (v3)
  {
    v4 = v3;
    if ([(NSString *)[(TDDistiller *)self accumulatedErrorDescription] length])
    {
      v5 = MEMORY[0x277CCA9B8];
      v6 = CoreThemeDefinitionErrorDomain[0];
      v7 = MEMORY[0x277CBEAC0];
      v8 = [(TDDistiller *)self accumulatedErrorDescription];
      v9 = [v5 errorWithDomain:v6 code:0 userInfo:{objc_msgSend(v7, "dictionaryWithObjectsAndKeys:", v8, *MEMORY[0x277CCA450], 0)}];
    }

    else
    {
      v9 = 0;
    }

    v4[2](v4, [(TDDistiller *)self isSuccessful], v9);
    [(TDDistiller *)self setCompletionHandler:0];
  }

  [(TDDistiller *)self setAccumulatedErrorDescription:0];
}

- (void)_resetDocumentUuid:(id)a3
{
  [(TDDistiller *)self _logExtra:@"Setting document uuid."];
  [(CoreThemeDocument *)self->_document setUuid:a3];
  if ([(TDPersistentDocument *)self->_document fileURL])
  {
    document = self->_document;

    [(TDPersistentDocument *)document saveDocument:self];
  }
}

- (id)dateOfLastDistill
{
  if (!self->_assetStore || ![(TDDistiller *)self isIncremental])
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  v4 = [(CUIMutableCommonAssetStorage *)self->_assetStore storageTimestamp];

  return [v3 dateWithTimeIntervalSince1970:v4];
}

- (void)_distillChanges:(id)a3
{
  [(TDDistiller *)self _logExtra:@"CAR exists. Beginning incremental distill"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 setName:{objc_msgSend(v6, "stringWithFormat:", @"%@.%@", v8, NSStringFromSelector(a2))}];
  }

  v9 = [-[CoreThemeDocument mocOrganizer](self->_document "mocOrganizer")];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__TDDistiller__distillChanges___block_invoke;
  v10[3] = &unk_278EBB678;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = a2;
  [v9 performBlockAndWait:v10];

  self->_assetStore = 0;
  [(TDDistiller *)self finishDistillationWithSuccess:*(v12 + 24)];
  _Block_object_dispose(&v11, 8);
}

uint64_t __31__TDDistiller__distillChanges___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v66 = 0;
  v65 = 0;
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) dateOfLastDistill];
  v4 = [*(*v2 + 1) historian];
  v5 = [v4 colorsChangedSinceDate:v3];
  v6 = [v5 count];
  result = [*v2 _distillColorDefinitions:v5];
  *(*(v2[1] + 1) + 24) = result;
  if (!result)
  {
    goto LABEL_30;
  }

  v8 = [v4 fontsChangedSinceDate:v3];
  v9 = v8;
  v10 = v6 || [v8 count] != 0;
  result = [*(a1 + 32) _distillFonts:v9];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!result)
  {
    goto LABEL_30;
  }

  result = [*(a1 + 32) distillCustomFontSizes];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!result)
  {
    goto LABEL_30;
  }

  v11 = [v4 namedElementsChangedSinceDate:v3];
  v12 = v11;
  v13 = v10 || [v11 count] != 0;
  result = [*(a1 + 32) _distillNamedElements:v12];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!result)
  {
    goto LABEL_30;
  }

  v14 = [v4 facetDefinitionsChangedSinceDate:v3];
  v15 = v14;
  v16 = v13 || [v14 count] != 0;
  result = [*(a1 + 32) _distillCursorFacetDefinitions:v15];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (!result)
  {
    goto LABEL_30;
  }

  v17 = [*v2 _removeRenditionsWithKeySpecs:{objc_msgSend(*v2, "_keySpecsToRemoveFromKeySpecs:", objc_msgSend(v4, "keySpecsForRenditionsRemovedSinceDate:", v3))}];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  v66 = v18;
  *(*v2 + 4) = [v4 productionsChangedSinceDate:v3 uuidNeedsReset:&v66];
  v19 = [*(*v2 + 4) count];
  v66 |= v19 != 0;
  if (v19)
  {
    v20 = @"s";
    if (v19 == 1)
    {
      v20 = &stru_28599CA78;
    }

    [*v2 _logExtra:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Found %lu changed production%@.", v19, v20)}];
  }

  v21 = [*(*v2 + 4) filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"isActive = NO"}];
  if ([v21 count])
  {
    [*v2 _logWarning:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Removing renditions for %lu inactive productions", objc_msgSend(v21, "count"))}];
    v22 = [*v2 _renditionsFromProductions:v21 error:&v65];
    v23 = *v2;
    if (v65)
    {
      v24 = [v65 localizedDescription];
      v25 = v23;
LABEL_29:
      result = [v25 _logErrorAndAccumulateDescription:v24];
      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_30;
    }

    v17 += [v23 _removeRenditionsWithKeySpecs:{objc_msgSend(v23, "_keySpecsToRemoveFromKeySpecs:", objc_msgSend(v22, "valueForKey:", @"keySpec"}];
  }

  v26 = [*(*v2 + 4) filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"isActive = YES"}];
  if ([v26 count])
  {
    [*v2 _logInfo:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Active changed productions: %lu", objc_msgSend(v26, "count"))}];
    v27 = [*v2 _renditionsFromProductions:v26 error:&v65];
    if (v65)
    {
      v28 = *(a1 + 32);
      v24 = [v65 localizedDescription];
      v25 = v28;
      goto LABEL_29;
    }

    v30 = [*(*v2 + 1) countOfRenditionsMatchingRenditionKeySpecs:{objc_msgSend(v27, "valueForKey:", @"keySpec"}];
    v31 = [v27 count];
    if (v30 < v31)
    {
      __31__TDDistiller__distillChanges___block_invoke_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = v30 == v31;
    obj = v27;
    if (v30 != v31)
    {
      v63 = 0uLL;
      v64 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      result = [v27 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (result)
      {
        v41 = result;
        v42 = *v62;
        v52 = *v62;
        v53 = v2;
        do
        {
          v43 = 0;
          v55 = v41;
          do
          {
            if (*v62 != v42)
            {
              objc_enumerationMutation(v27);
            }

            v44 = [*(*(&v61 + 1) + 8 * v43) keySpec];
            if ([*(*v2 + 1) countOfRenditionsMatchingRenditionKeySpec:v44] >= 2)
            {
              v45 = [MEMORY[0x277CCAB68] stringWithCapacity:250];
              v46 = [*(*v2 + 1) renditionsMatchingRenditionKeySpec:v44];
              v47 = [v46 count];
              if (v47)
              {
                for (i = 0; i != v47; [v45 appendString:{objc_msgSend(v50, "stringWithFormat:", @"\n\t%lu. %@ Rendition: %@", i, NSStringFromClass(v51), v49)}])
                {
                  v49 = [v46 objectAtIndex:i];
                  [v49 production];
                  v50 = MEMORY[0x277CCACA8];
                  ++i;
                  v51 = objc_opt_class();
                }
              }

              v2 = v53;
              [*v53 _logErrorAndAccumulateDescription:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"ERROR: Identical keys for %lu renditions.\n\t%@%@", v47, objc_msgSend(v44, "keyDescription"), v45)}];
              v41 = v55;
              v27 = obj;
              v42 = v52;
            }

            ++v43;
          }

          while (v43 != v41);
          result = [v27 countByEnumeratingWithState:&v61 objects:v68 count:16];
          v41 = result;
        }

        while (result);
      }

      goto LABEL_30;
    }

    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v32 = [v27 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v58;
      v54 = v17;
LABEL_37:
      v36 = v2;
      v37 = 0;
      while (1)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(v27);
        }

        v38 = *(*(&v57 + 1) + 8 * v37);
        if (([*(*v36 + 2) assetExistsForKey:{objc_msgSend(*v36, "_keyDataFromKey:", objc_msgSend(objc_msgSend(v38, "keySpec"), "key"))}] & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) setAsset:objc_msgSend(v38 withKey:"createCSIRepresentationWithCompression:colorSpaceID:document:" fromRenditionSpec:{1, objc_msgSend(*(*(a1 + 32) + 8), "colorSpaceID"), *(*(a1 + 32) + 8)), objc_msgSend(objc_msgSend(v38, "keySpec"), "key"), v38}];
          if (*(*(*(a1 + 40) + 8) + 24) != 1)
          {
            v2 = v36;
            v17 = v54;
            if (v54)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          }

          ++v34;
        }

        if (v33 == ++v37)
        {
          v33 = [v27 countByEnumeratingWithState:&v57 objects:v67 count:16];
          v2 = v36;
          v17 = v54;
          if (v33)
          {
            goto LABEL_37;
          }

          goto LABEL_47;
        }
      }
    }
  }

  v34 = 0;
LABEL_47:
  if (v17)
  {
LABEL_48:
    [*v2 _logInfo:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%lu renditions removed from the CAR", v17)}];
  }

LABEL_49:
  if (v34)
  {
    [*v2 _logInfo:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%lu renditions added to the CAR", v34)}];
  }

  [*v2 setAssetStoreRenditionCount:{v34 - v17 + objc_msgSend(*(*v2 + 2), "renditionCount")}];
  if (v66 == 1)
  {
    v39 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [*v2 setAssetStoreUuid:v39];
    [*v2 setAssetStoreAssociatedChecksum:{objc_msgSend(*(*v2 + 1), "checksum")}];
    v40 = v39;
  }

  else
  {
    v39 = 0;
  }

  result = [*(a1 + 32) assetStoreWriteToDisk];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (result)
  {
    if (v66 == 1)
    {
      result = [*v2 performSelectorOnCallbackThread:sel__resetDocumentUuid_ withObject:v39 waitUntilDone:1];
    }
  }

  else
  {
    result = [*v2 _logErrorAndAccumulateDescription:@"Failed to write to CAR"];
  }

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)assetStoreWriteToDisk
{
  v3 = [(CoreThemeDocument *)self->_document targetPlatform];
  v4 = [(CoreThemeDocument *)self->_document majorVersion];
  v5 = [(CoreThemeDocument *)self->_document minorVersion];
  v6 = [(CoreThemeDocument *)self->_document patchVersion];
  if (v3 != 4)
  {
    if (v3)
    {
      if (v3 <= 3 && (v4 < 9 || v4 == 9 && v5 <= 2))
      {
LABEL_18:
        [(CUIMutableCommonAssetStorage *)self->_assetStore setEnableLargeCarKeyWorkaround:1];
      }
    }

    else
    {
      v7 = v5 < 12 && v4 < 11;
      if (v6 >= 5)
      {
        v7 = 0;
      }

      v8 = v5 < 11 && v4 < 11;
      if (v7 || v8)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = [(CUIMutableCommonAssetStorage *)self->_assetStore writeToDiskAndCompact:1];
  if (v9)
  {
    LOBYTE(v9) = [(CUIMutableCommonAssetStorage *)self->_assetStore validateFile]== 0;
  }

  return v9;
}

- (void)_distill:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACC8] currentThread];
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v7 setName:{objc_msgSend(v8, "stringWithFormat:", @"%@.%@", v10, NSStringFromSelector(a2))}];
  }

  [(TDDistiller *)self _logExtra:@"Beginning clean distill."];
  assetStore = self->_assetStore;
  if (!assetStore)
  {
    [(TDDistiller *)self _logErrorAndAccumulateDescription:@"ERROR: Each TDDistiller instance can be distilled only one time!"];
    *(v17 + 24) = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (assetStore)
  {
    [(TDDistiller *)self setDeploymentPlatformVersion:[(CoreThemeDocument *)self->_document minimumDeploymentVersion]];
    [(CoreThemeDocument *)self->_document targetPlatform];
    [(TDDistiller *)self setDeploymentPlatform:CUIPlatformNameForPlatform()];
    stpncpy(__dst, "@(#)PROGRAM:CoreThemeDefinition  PROJECT:CoreThemeDefinition-653.2\n", 0x100uLL);
    v12 = strnlen(__dst, 0x100uLL) - 1;
    if (__dst[v12] == 10)
    {
      __dst[v12] = 32;
    }

    -[TDDistiller setAuthoringTool:](self, "setAuthoringTool:", [MEMORY[0x277CCACA8] stringWithFormat:@"%s [IIO-%s]", __dst, CGGetImageIOVersion()]);
    v13 = [-[CoreThemeDocument mocOrganizer](self->_document "mocOrganizer")];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __24__TDDistiller__distill___block_invoke;
    v15[3] = &unk_278EBB678;
    v15[4] = self;
    v15[5] = &v16;
    v15[6] = a2;
    [v13 performBlockAndWait:v15];
  }

  if ([(TDDistiller *)self isCancelled])
  {
    *(v17 + 24) = 0;
    [(TDDistiller *)self _logErrorAndAccumulateDescription:@"Distill aborted. No data written to CAR"];
  }

  self->_assetStore = 0;
  self->_renditionEntries = 0;
  objc_autoreleasePoolPop(v5);
  [(TDDistiller *)self finishDistillationWithSuccess:*(v17 + 24)];
  _Block_object_dispose(&v16, 8);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __24__TDDistiller__distill___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  result = [*(a1 + 32) distillCatalogGlobals];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillThemeAppearances];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillLocalizationss];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillCustomColors];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillCustomFonts];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillCustomFontSizes];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  result = [*v2 distillNamedElements];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  if (([*v2 distillCursorFacetDefinitions] & 1) == 0)
  {
    result = [*v2 _logErrorAndAccumulateDescription:@"distilling Cursor Facet Definitions failed"];
LABEL_32:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_33;
  }

  [*v2 setAssetStoreKeyFormatData:{objc_msgSend(*v2, "keyFormatData")}];
  [*v2 setAssetStoreKeySemantics:{objc_msgSend(*(*v2 + 1), "renditionKeySemantics")}];
  result = [*v2 distillRenditions];
  if (!result)
  {
    goto LABEL_32;
  }

  result = [*v2 isCancelled];
  if (result)
  {
    goto LABEL_32;
  }

  [*v2 setAssetStorageVersion:{objc_msgSend(*v2, "assetStoreVersionNumber")}];
  if ([*(*v2 + 1) deviceTraitsUsedForOptimization])
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = [*(*v2 + 1) deviceTraitsUsedForOptimization];
    v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v35 + 1) + 8 * i);
          [v34 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "idiomValue"))}];
          [v33 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "subtype"))}];
          v11 = MEMORY[0x277CCABB0];
          [v10 scale];
          [v32 addObject:{objc_msgSend(v11, "numberWithInteger:", llround(v12))}];
          [v31 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "graphicsFeatureSetClassValue"))}];
          [v30 addObject:{objc_msgSend(v10, "graphicsFeatureSetFallbackValues")}];
          [v29 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "memoryPerformanceClass"))}];
          [v4 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "displayGamutValue"))}];
          [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v10, "deploymentTargetValue"))}];
          if ([objc_msgSend(v10 "hostedIdiomValues")])
          {
            [v28 addObject:{objc_msgSend(v10, "hostedIdiomValues")}];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v7);
    }

    obja = *(*v2 + 2);
    v25 = MEMORY[0x277CCACA8];
    v24 = __arrayToString(v34);
    v23 = __arrayToString(v33);
    v22 = __arrayToString(v32);
    v21 = __arrayToString(v4);
    v20 = __arrayToString(v31);
    v13 = __arrayToString(v30);
    v14 = __arrayToString(v29);
    v15 = __arrayToString(v5);
    [obja setThinningArguments:{objc_msgSend(v25, "stringWithFormat:", @"optimized <idiom %@> <subtype %@> <scale %@> <gamut %@> <graphics %@> <graphicsfallback %@> <memory %@> <deployment %@> <hostedIdioms %@>", v24, v23, v22, v21, v20, v13, v14, v15, __arrayToString(v28))}];
  }

  snprintf(__str, 0x100uLL, "%s", [objc_msgSend(*v2 "assetStoreVersionString")]);
  [*v2 setAssetStorageVersionString:__str];
  v16 = [*(*v2 + 1) metadatumForKey:@"CoreThemeSchemaVersion"];
  if (v16)
  {
    v17 = [v16 unsignedIntValue];
  }

  else
  {
    v17 = 1;
  }

  [*v2 setAssetSchemaVersion:v17];
  v19 = [*(*v2 + 1) uuid];
  if (v19)
  {
    [*v2 setAssetStoreUuid:v19];
    [*v2 setAssetStoreAssociatedChecksum:{objc_msgSend(*(*v2 + 1), "checksum")}];
    [*v2 setAssetColorSpaceID:{objc_msgSend(*(*v2 + 1), "colorSpaceID")}];
    if (([*v2 isCancelled] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "assetStoreWriteToDisk"), *(*(*(a1 + 40) + 8) + 24) = result, (result & 1) == 0))
    {
      result = [*v2 _logErrorAndAccumulateDescription:@"Failed to write to CAR"];
    }
  }

  else
  {
    result = __24__TDDistiller__distill___block_invoke_cold_1();
  }

LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)saveAndDistillWithCompletionHandler:(id)a3
{
  v6 = 0;
  v7 = 0;
  [(CoreThemeDocument *)self->_document _processModelProductions];
  if (![(TDDistiller *)self dontPackRenditionsBeforeDistilling])
  {
    if ([(TDDistiller *)self isIncremental])
    {
      [(CoreThemeDocument *)self->_document incrementallyPackRenditionsSinceDate:[(TDDistiller *)self dateOfLastDistill] error:&v6];
    }

    else
    {
      [(CoreThemeDocument *)self->_document packRenditionsError:&v6];
    }

    if (v6)
    {
      goto LABEL_7;
    }
  }

  [objc_msgSend(-[CoreThemeDocument mocOrganizer](self->_document "mocOrganizer")];
  if (v7)
  {
LABEL_7:
    if (a3)
    {
      (*(a3 + 2))(a3, 0);
      [(TDDistiller *)self setFinished:1];
      [(TDDistiller *)self setSuccessful:0];
    }
  }

  else
  {
    [(TDDistiller *)self setCompletionHandler:a3];
    if ([(TDDistiller *)self isIncremental])
    {
      v5 = sel__distillChanges_;
    }

    else
    {
      v5 = sel__distill_;
    }

    [MEMORY[0x277CCACC8] detachNewThreadSelector:v5 toTarget:self withObject:0];
  }
}

- (void)waitUntilFinished
{
  v3 = [MEMORY[0x277CBEAA8] distantFuture];
  v4 = [objc_alloc(MEMORY[0x277CBEBB8]) initWithFireDate:v3 interval:self target:sel_waitTimerDidFire_ selector:0 userInfo:0 repeats:0.0];
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v5 addTimer:v4 forMode:@"DistillWaitRunLoopMode"];
  -[TDDistiller setCallbackThread:](self, "setCallbackThread:", [MEMORY[0x277CCACC8] currentThread]);
  if (![(TDDistiller *)self isFinished])
  {
    do
    {
      [v5 runMode:@"DistillWaitRunLoopMode" beforeDate:v3];
    }

    while (![(TDDistiller *)self isFinished]);
  }

  [v4 invalidate];

  v6 = [(TDDistiller *)self logger];

  [(TDLogger *)v6 waitForLoggingToComplete];
}

- (void)cancelDistill
{
  if ([(TDDistiller *)self isIncremental])
  {
    [TDDistiller cancelDistill];
  }

  [(TDDistiller *)self _logErrorAndAccumulateDescription:@"Canceling. Cleaning up."];

  [(TDDistiller *)self setCancelled:1];
}

uint64_t __24__TDDistiller__distill___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  result = [*v0 _logErrorAndAccumulateDescription:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"-[TDDistiller _distill:] is surprised that %@ doesn't have a uuid!", objc_msgSend(*(*v0 + 1), "displayName"))}];
  *(*(*(v1 + 40) + 8) + 24) = 0;
  return result;
}

- (uint64_t)cancelDistill
{
  OUTLINED_FUNCTION_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];

  return [v2 handleFailureInMethod:v1 object:v0 file:@"TDDistiller.m" lineNumber:1601 description:@"Cancelling incremental distill is not implemented."];
}

@end
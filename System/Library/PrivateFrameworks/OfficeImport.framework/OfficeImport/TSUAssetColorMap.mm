@interface TSUAssetColorMap
+ (id)assetColorMap;
- (NSDictionary)assetPathToColorMap;
- (TSUAssetColorMap)init;
- (id)TSUColorFromColorArray:(id)array;
- (void)addEntriesFromPlistBasename:(id)basename transformKeyBlock:(id)block;
@end

@implementation TSUAssetColorMap

+ (id)assetColorMap
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (TSUAssetColorMap)init
{
  v6.receiver = self;
  v6.super_class = TSUAssetColorMap;
  v2 = [(TSUAssetColorMap *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mAssetPathToColorMap = v2->mAssetPathToColorMap;
    v2->mAssetPathToColorMap = v3;
  }

  return v2;
}

- (NSDictionary)assetPathToColorMap
{
  [(NSMutableDictionary *)self->mAssetPathToColorMap count];
  v3 = [(NSMutableDictionary *)self->mAssetPathToColorMap copy];

  return v3;
}

- (id)TSUColorFromColorArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy count];
  if (v4 > 4)
  {
    v15 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [arrayCopy objectAtIndexedSubscript:0];
    intValue = [v6 intValue];

    if (v5 < 3)
    {
      v14 = 255.0;
      intValue3 = intValue;
      intValue2 = intValue;
    }

    else
    {
      v8 = [arrayCopy objectAtIndexedSubscript:1];
      intValue2 = [v8 intValue];

      v10 = [arrayCopy objectAtIndexedSubscript:2];
      intValue3 = [v10 intValue];

      if (v5 == 4)
      {
        v12 = [arrayCopy objectAtIndexedSubscript:3];
        [v12 floatValue];
        v14 = v13;
      }

      else
      {
        v14 = 255.0;
      }
    }

    v15 = [OITSUColor colorWithRed:(intValue / 255.0) green:(intValue2 / 255.0) blue:(intValue3 / 255.0) alpha:(v14 / 255.0)];
  }

  return v15;
}

- (void)addEntriesFromPlistBasename:(id)basename transformKeyBlock:(id)block
{
  basenameCopy = basename;
  blockCopy = block;
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUAssetColorMap.m"];
    [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:62 isFatal:0 description:"invalid nil value for '%{public}s'", "bundle"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v12 = [v9 pathForResource:basenameCopy ofType:@"plist"];
  if (v12)
  {
    v32 = basenameCopy;
    v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v12];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __66__TSUAssetColorMap_addEntriesFromPlistBasename_transformKeyBlock___block_invoke;
    v33[3] = &unk_2799C76D8;
    v31 = blockCopy;
    v35 = blockCopy;
    v33[4] = self;
    v15 = v14;
    v34 = v15;
    v36 = a2;
    [v13 enumerateKeysAndObjectsUsingBlock:v33];
    tsu_allKeysAsSet = [v15 tsu_allKeysAsSet];
    tsu_allKeysAsSet2 = [(NSMutableDictionary *)self->mAssetPathToColorMap tsu_allKeysAsSet];
    v18 = [tsu_allKeysAsSet intersectsSet:tsu_allKeysAsSet2];

    if (v18)
    {
      v30 = v13;
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUAssetColorMap.m"];
      v21 = MEMORY[0x277CBEB98];
      tsu_allKeysAsSet3 = [v15 tsu_allKeysAsSet];
      tsu_allKeysAsSet4 = [(NSMutableDictionary *)self->mAssetPathToColorMap tsu_allKeysAsSet];
      v24 = [v21 setWithObjects:{tsu_allKeysAsSet3, tsu_allKeysAsSet4, 0}];
      v25 = [v21 tsu_intersectionOfSets:v24];
      [OITSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:95 isFatal:0 description:"Overwriting duplicated entries %@", v25];

      v13 = v30;
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    mAssetPathToColorMap = self->mAssetPathToColorMap;
    if (!mAssetPathToColorMap)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]"];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUAssetColorMap.m"];
      [OITSUAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:96 isFatal:0 description:"invalid nil value for '%{public}s'", "mAssetPathToColorMap"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      mAssetPathToColorMap = self->mAssetPathToColorMap;
    }

    [(NSMutableDictionary *)mAssetPathToColorMap addEntriesFromDictionary:v15];

    blockCopy = v31;
    basenameCopy = v32;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TSUAssetColorMap.m" lineNumber:100 description:{@"No plist found for name %@", basenameCopy}];
  }
}

void __66__TSUAssetColorMap_addEntriesFromPlistBasename_transformKeyBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = TSUCheckedDynamicCast(v6, v15);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = (*(v8 + 16))(v8, v7);
      if (!v9)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUAssetColorMap addEntriesFromPlistBasename:transformKeyBlock:]_block_invoke"];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUAssetColorMap.m"];
        [OITSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:72 isFatal:0 description:"invalid nil value for '%{public}s'", "convertedKey"];

        +[OITSUAssertionHandler logBacktraceThrottled];
        v9 = 0;
      }
    }

    else
    {
      v9 = v7;
    }

    v12 = objc_opt_class();
    v13 = TSUCheckedDynamicCast(v12, v5);
    if (v13)
    {
      v14 = [*(a1 + 32) TSUColorFromColorArray:v13];
      if (v14)
      {
        [*(a1 + 40) setObject:v14 forKeyedSubscript:v9];
      }

      else
      {
        NSLog(@"Failed to map color for: %@ array: %@", v15, v13);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TSUAssetColorMap.m" lineNumber:85 description:{@"Expected an NSArray, found %@ : %@", objc_opt_class(), v5}];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TSUAssetColorMap.m" lineNumber:90 description:{@"Expected an NSString key, found %@ : %@", objc_opt_class(), v15}];
  }
}

@end
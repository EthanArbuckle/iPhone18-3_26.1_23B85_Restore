@interface TDModelMeshRenditionSpec
+ (id)fetchRequest;
- (void)processSubMesh:(id)a3 withAssetSubmeshIndex:(unsigned int *)a4 assetKeySpec:(id)a5 inDocument:(id)a6;
@end

@implementation TDModelMeshRenditionSpec

- (void)processSubMesh:(id)a3 withAssetSubmeshIndex:(unsigned int *)a4 assetKeySpec:(id)a5 inDocument:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v11 = [a6 newObjectForEntity:@"ModelIOSubmeshRenditionSpec"];
  v12 = [a6 newObjectForEntity:@"RenditionKeySpec"];
  [a5 copyAttributesInto:v12];
  [v12 setElement:{objc_msgSend(a6, "elementWithIdentifier:", 164)}];
  v28 = a6;
  [v12 setPart:{objc_msgSend(a6, "partWithIdentifier:", 233)}];
  [v12 setDimension2:a4];
  [v11 setParentRendition:self];
  [(TDModelMeshRenditionSpec *)self addSubmeshesObject:v11];
  [v11 setKeySpec:v12];
  v29 = v11;
  [-[TDModelMeshRenditionSpec production](self "production")];
  v13 = [a3 material];
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v13)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 URLValue];
          if ([v18 type] == 1 && v19 != 0)
          {
            v21 = objc_alloc_init(TDNamedAssetImportInfo);
            -[TDNamedAssetImportInfo setName:](v21, "setName:", [v18 stringValue]);
            [(TDNamedAssetImportInfo *)v21 setNameIdentifier:33333];
            [(TDNamedAssetImportInfo *)v21 setIdiom:0];
            [(TDNamedAssetImportInfo *)v21 setScaleFactor:1];
            -[TDNamedAssetImportInfo setModificationDate:](v21, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
            [(TDNamedAssetImportInfo *)v21 setRenditionType:1007];
            [(TDNamedAssetImportInfo *)v21 setTexturePixelFormat:1];
            [(TDNamedAssetImportInfo *)v21 setTextureWidth:120];
            [(TDNamedAssetImportInfo *)v21 setTextureHeight:120];
            v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v23 = objc_alloc_init(TDTextureAssetInfo);
            [(TDTextureAssetInfo *)v23 setFileURL:v19];
            [(TDTextureAssetInfo *)v23 setMipLevel:0];
            [v22 addObject:v23];
            [(TDNamedAssetImportInfo *)v21 setTextureInfos:v22];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }
  }

  v30 = 0;
  v24 = v26;
  [v28 createNamedTexturesForCustomInfos:v27 referenceFiles:1 bitSource:objc_msgSend(v28 error:{"_themeBitSourceForReferencedFilesAtURLs:createIfNecessary:", v26, 1, v26), &v30}];

  v25 = *MEMORY[0x277D85DE8];
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ModelIOMeshRenditionSpec"];

  return v2;
}

@end
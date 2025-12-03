@interface TDModelRenditionSpec
+ (id)fetchRequest;
- (void)processMesh:(id)mesh withAssetMeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document;
- (void)processModelObjectsInDocument:(id)document;
@end

@implementation TDModelRenditionSpec

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ModelIORenditionSpec"];

  return v2;
}

- (void)processMesh:(id)mesh withAssetMeshIndex:(unsigned int *)index assetKeySpec:(id)spec inDocument:(id)document
{
  v26 = *MEMORY[0x277D85DE8];
  v11 = [document newObjectForEntity:@"ModelIOMeshRenditionSpec"];
  v12 = [document newObjectForEntity:@"RenditionKeySpec"];
  [spec copyAttributesInto:v12];
  [v12 setElement:{objc_msgSend(document, "elementWithIdentifier:", 164)}];
  [v12 setPart:{objc_msgSend(document, "partWithIdentifier:", 232)}];
  [v12 setDimension1:index];
  [v11 setParentRendition:self];
  [(TDModelRenditionSpec *)self addChildRenditionsObject:v11];
  [v11 setKeySpec:v12];
  [-[TDModelRenditionSpec production](self "production")];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  submeshes = [mesh submeshes];
  v14 = [submeshes countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v22;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(submeshes);
        }

        v16 = v19 + 1;
        [v11 processSubMesh:*(*(&v21 + 1) + 8 * v18++) withAssetSubmeshIndex:v19++ assetKeySpec:objc_msgSend(v11 inDocument:{"keySpec"), document}];
      }

      while (v15 != v18);
      v15 = [submeshes countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)processModelObjectsInDocument:(id)document
{
  v22 = *MEMORY[0x277D85DE8];
  _cachedModelAssets = [document _cachedModelAssets];
  v6 = [-[TDModelRenditionSpec asset](self "asset")];
  v7 = [objc_alloc(MEMORY[0x277CD7AD0]) initWithURL:v6];
  if (v7)
  {
    v8 = v7;
    [_cachedModelAssets addObject:v7];
    -[TDModelRenditionSpec setModelAssetIndex:](self, "setModelAssetIndex:", [_cachedModelAssets count] - 1);
    v9 = [v8 childObjectsOfClass:objc_opt_class()];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v18;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 = v15 + 1;
          [(TDModelRenditionSpec *)self processMesh:*(*(&v17 + 1) + 8 * v14++) withAssetMeshIndex:v15++ assetKeySpec:[(TDModelRenditionSpec *)self keySpec] inDocument:document];
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  else
  {
    NSLog(&cfstr_CouldnTLoadAss.isa, v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
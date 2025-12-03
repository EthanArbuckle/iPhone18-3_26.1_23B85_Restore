@interface TDLayerGroupRenditionSpec
- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document;
@end

@implementation TDLayerGroupRenditionSpec

- (id)createCSIRepresentationWithCompression:(BOOL)compression colorSpaceID:(unint64_t)d document:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277D02668]) initWithLayerStackData:0 type:1020 withCanvasSize:{0.0, 0.0}];
  [v7 setTargetPlatform:{objc_msgSend(document, "targetPlatform")}];
  [v7 setScaleFactor:{objc_msgSend(-[TDLayerGroupRenditionSpec keySpec](self, "keySpec"), "scaleFactor")}];
  [v7 setName:@"IconGroup"];
  layerReferences = [(TDLayerGroupRenditionSpec *)self layerReferences];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [layerReferences countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(layerReferences);
        }

        [v7 addLayerReference:{objc_msgSend(*(*(&v16 + 1) + 8 * v12++), "cuiLayerReference")}];
      }

      while (v10 != v12);
      v10 = [layerReferences countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [v7 setRenditionProperties:{-[TDRenditionSpec propertiesAsDictionary](self, "propertiesAsDictionary")}];
  v13 = [v7 CSIRepresentationWithCompression:1];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end
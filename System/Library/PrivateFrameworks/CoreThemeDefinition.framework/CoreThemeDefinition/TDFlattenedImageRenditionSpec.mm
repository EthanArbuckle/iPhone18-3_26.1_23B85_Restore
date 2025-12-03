@interface TDFlattenedImageRenditionSpec
- (void)addLayerReferencesObject:(id)object;
- (void)copyAttributesInto:(id)into;
- (void)drawFlattenedImageIntoContext:(CGContext *)context document:(id)document;
@end

@implementation TDFlattenedImageRenditionSpec

- (void)drawFlattenedImageIntoContext:(CGContext *)context document:(id)document
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [-[TDFlattenedImageRenditionSpec keySpec](self "keySpec")];
  CGContextSaveGState(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  CGContextTranslateCTM(context, (Width - [(TDFlattenedImageRenditionSpec *)self width]) * 0.5, (Height - [(TDFlattenedImageRenditionSpec *)self height]) * 0.5);
  width = [(TDFlattenedImageRenditionSpec *)self width];
  height = [(TDFlattenedImageRenditionSpec *)self height];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = width;
  v32.size.height = height;
  CGContextClipToRect(context, v32);
  if ([-[TDFlattenedImageRenditionSpec layerReferences](self "layerReferences")])
  {
    v12 = v7;
    CGContextScaleCTM(context, v7, v7);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    layerReferences = [(TDFlattenedImageRenditionSpec *)self layerReferences];
    v14 = [layerReferences countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      v17 = Height / v12;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(layerReferences);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          reference = [v19 reference];
          v21 = [reference _createImageRefWithURL:objc_msgSend(objc_msgSend(reference andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{document), document, 0, 0}];
          CGContextSetBlendMode(context, [objc_msgSend(v19 "blendMode")]);
          [objc_msgSend(v19 "opacity")];
          CGContextSetAlpha(context, v22);
          [v19 frameRect];
          v33.origin.y = v17 - v33.size.height - v23;
          CGContextDrawImage(context, v33, v21);
          CGImageRelease(v21);
        }

        v15 = [layerReferences countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }
  }

  else if ([(TDFlattenedImageRenditionSpec *)self asset])
  {
    v24 = -[TDSimpleArtworkRenditionSpec _createImageRefWithURL:andDocument:format:vectorBased:](self, "_createImageRefWithURL:andDocument:format:vectorBased:", [-[TDFlattenedImageRenditionSpec asset](self "asset")], document, 0, 0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextSetAlpha(context, 1.0);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = width;
    v34.size.height = height;
    CGContextDrawImage(context, v34, v24);
    CGImageRelease(v24);
  }

  CGContextRestoreGState(context);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)addLayerReferencesObject:(id)object
{
  v5 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:{-[TDFlattenedImageRenditionSpec layerReferences](self, "layerReferences")}];
  [v5 addObject:object];

  [(TDFlattenedImageRenditionSpec *)self setLayerReferences:v5];
}

- (void)copyAttributesInto:(id)into
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TDFlattenedImageRenditionSpec;
  [(TDSimpleArtworkRenditionSpec *)&v19 copyAttributesInto:?];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  layerReferences = [(TDFlattenedImageRenditionSpec *)self layerReferences];
  v7 = [layerReferences countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(layerReferences);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = -[TDResolvedImageLayerReference initWithContext:]([TDResolvedImageLayerReference alloc], "initWithContext:", [v11 managedObjectContext]);
        -[TDResolvedImageLayerReference setName:](v12, "setName:", [v11 name]);
        [v11 frameRect];
        [(TDAbstractLayerReference *)v12 setFrameRect:?];
        -[TDResolvedImageLayerReference setOpacity:](v12, "setOpacity:", [v11 opacity]);
        -[TDResolvedImageLayerReference setBlendMode:](v12, "setBlendMode:", [v11 blendMode]);
        -[TDResolvedImageLayerReference setReference:](v12, "setReference:", [v11 reference]);
        [(TDResolvedImageLayerReference *)v12 setStack:into];
        [v5 addObject:v12];
        v13 = v12;
        ++v10;
      }

      while (v8 != v10);
      v8 = [layerReferences countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  [into setLayerReferences:v5];

  v14 = *MEMORY[0x277D85DE8];
}

@end
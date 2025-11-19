@interface NUContentOverlayDocumentSectionBlueprintData
- (NUContentOverlayDocumentSectionBlueprintData)initWithBlueprint:(id)a3 topOffset:(double)a4;
@end

@implementation NUContentOverlayDocumentSectionBlueprintData

- (NUContentOverlayDocumentSectionBlueprintData)initWithBlueprint:(id)a3 topOffset:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NUContentOverlayDocumentSectionBlueprintData;
  v8 = [(NUContentOverlayDocumentSectionBlueprintData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_blueprint, a3);
    v9->_topOffset = a4;
  }

  return v9;
}

@end
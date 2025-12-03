@interface NUContentOverlayDocumentSectionBlueprintData
- (NUContentOverlayDocumentSectionBlueprintData)initWithBlueprint:(id)blueprint topOffset:(double)offset;
@end

@implementation NUContentOverlayDocumentSectionBlueprintData

- (NUContentOverlayDocumentSectionBlueprintData)initWithBlueprint:(id)blueprint topOffset:(double)offset
{
  blueprintCopy = blueprint;
  v11.receiver = self;
  v11.super_class = NUContentOverlayDocumentSectionBlueprintData;
  v8 = [(NUContentOverlayDocumentSectionBlueprintData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_blueprint, blueprint);
    v9->_topOffset = offset;
  }

  return v9;
}

@end
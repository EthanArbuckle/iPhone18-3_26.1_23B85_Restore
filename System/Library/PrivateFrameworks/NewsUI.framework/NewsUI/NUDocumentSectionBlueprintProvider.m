@interface NUDocumentSectionBlueprintProvider
- (NUDocumentSectionBlueprintProvider)init;
@end

@implementation NUDocumentSectionBlueprintProvider

- (NUDocumentSectionBlueprintProvider)init
{
  v10.receiver = self;
  v10.super_class = NUDocumentSectionBlueprintProvider;
  v2 = [(NUDocumentSectionBlueprintProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D31180]);
    tempObservableHeaderBlueprint = v2->_tempObservableHeaderBlueprint;
    v2->_tempObservableHeaderBlueprint = v3;

    v5 = objc_alloc_init(MEMORY[0x277D31180]);
    tempObservableFooterBlueprint = v2->_tempObservableFooterBlueprint;
    v2->_tempObservableFooterBlueprint = v5;

    v7 = objc_alloc_init(MEMORY[0x277D31180]);
    tempObservableContentOverlayBlueprintData = v2->_tempObservableContentOverlayBlueprintData;
    v2->_tempObservableContentOverlayBlueprintData = v7;
  }

  return v2;
}

@end
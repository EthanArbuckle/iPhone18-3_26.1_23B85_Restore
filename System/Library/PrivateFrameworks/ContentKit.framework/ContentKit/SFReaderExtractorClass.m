@interface SFReaderExtractorClass
@end

@implementation SFReaderExtractorClass

void __get_SFReaderExtractorClass_block_invoke(uint64_t a1)
{
  SafariServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_SFReaderExtractor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    get_SFReaderExtractorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_SFReaderExtractorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFArticle.m" lineNumber:60 description:{@"Unable to find class %s", "_SFReaderExtractor"}];

    __break(1u);
  }
}

@end
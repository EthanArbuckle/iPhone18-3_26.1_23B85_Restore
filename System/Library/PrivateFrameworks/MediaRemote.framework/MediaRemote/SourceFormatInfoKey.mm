@interface SourceFormatInfoKey
@end

@implementation SourceFormatInfoKey

void *__getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "kMXSession_SourceFormatInfoKey_BestAvailableContentType_Multichannel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMXSession_SourceFormatInfoKey_BestAvailableContentType_MultichannelSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaExperienceLibrary_0();
  result = dlsym(v2, "kMXSession_SourceFormatInfoKey_BestAvailableContentType_Atmos");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkMXSession_SourceFormatInfoKey_BestAvailableContentType_AtmosSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
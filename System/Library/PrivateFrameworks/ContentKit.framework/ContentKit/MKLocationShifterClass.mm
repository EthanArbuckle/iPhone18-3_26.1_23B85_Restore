@interface MKLocationShifterClass
@end

@implementation MKLocationShifterClass

Class __get_MKLocationShifterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_13079)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MapKitLibraryCore_block_invoke_13080;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783477A8;
    v8 = 0;
    MapKitLibraryCore_frameworkLibrary_13079 = _sl_dlopen();
  }

  if (!MapKitLibraryCore_frameworkLibrary_13079)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"DCMapsLink+WFLocationCoercions.m" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("_MKLocationShifter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class get_MKLocationShifterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"DCMapsLink+WFLocationCoercions.m" lineNumber:15 description:{@"Unable to find class %s", "_MKLocationShifter"}];

LABEL_10:
    __break(1u);
  }

  get_MKLocationShifterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end
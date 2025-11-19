@interface DDScannerLoaderInitScannerIdentifierMappings
@end

@implementation DDScannerLoaderInitScannerIdentifierMappings

CFDictionaryRef ____DDScannerLoaderInitScannerIdentifierMappings_block_invoke()
{
  v0 = malloc_type_malloc(0x28uLL, 0x6004044C4A2DFuLL);
  scannerTypesToScannerIdentifiers = v0;
  *v0 = @"com.apple.datadetectors.scanner.standard";
  v0[1] = @"com.apple.datadetectors.scanner.urlifier";
  v0[2] = @"com.apple.datadetectors.scanner.iCal";
  v0[3] = @"com.apple.datadetectors.scanner.test";
  v0[4] = @"com.apple.datadetectors.scanner.replies";
  result = CFDictionaryCreate(0, v0, &__DDScannerLoaderInitScannerIdentifierMappings_keys, 5, MEMORY[0x1E695E9D8], 0);
  scannerIdentifiersToScannerTypes = result;
  return result;
}

@end
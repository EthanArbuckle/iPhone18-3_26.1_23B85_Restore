@interface MBLibrarySearchPaths
@end

@implementation MBLibrarySearchPaths

uint64_t ___MBLibrarySearchPaths_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"/usr/lib", 0}];
  _MBLibrarySearchPaths_paths = result;
  return result;
}

@end
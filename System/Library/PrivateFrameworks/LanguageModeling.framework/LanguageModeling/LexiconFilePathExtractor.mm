@interface LexiconFilePathExtractor
- (id)lexiconFilePath:(id)path;
@end

@implementation LexiconFilePathExtractor

- (id)lexiconFilePath:(id)path
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66B58](v3, sel_pathForResource_ofType_);
}

@end
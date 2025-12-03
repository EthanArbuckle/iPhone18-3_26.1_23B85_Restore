@interface FigCaptureCIFilterUnarchiverDelegate
+ (id)sharedInstance;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
@end

@implementation FigCaptureCIFilterUnarchiverDelegate

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FigCaptureCIFilterUnarchiverDelegate sharedInstance];
  }

  return sharedInstance_sSharedInstance;
}

FigCaptureCIFilterUnarchiverDelegate *__54__FigCaptureCIFilterUnarchiverDelegate_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigCaptureCIFilterUnarchiverDelegate);
  sharedInstance_sSharedInstance = result;
  return result;
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  if (![classes containsObject:@"CIFilter"])
  {
    return 0;
  }

  [MEMORY[0x1E695F648] filterWithName:name];

  return objc_opt_class();
}

@end
@interface FigCaptureCIFilterUnarchiverDelegate
+ (id)sharedInstance;
- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
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

- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  if (![a5 containsObject:@"CIFilter"])
  {
    return 0;
  }

  [MEMORY[0x1E695F648] filterWithName:a4];

  return objc_opt_class();
}

@end
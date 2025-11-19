@interface NSBundle
@end

@implementation NSBundle

void __71__NSBundle_FeldsparInternalExtras__fc_feldsparCoreInternalExtrasBundle__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696AAE8]);
  v4 = FCURLForInternalExtrasBundle();
  v1 = [v4 path];
  v2 = [v0 initWithPath:v1];
  v3 = qword_1EDB275B8;
  qword_1EDB275B8 = v2;
}

@end
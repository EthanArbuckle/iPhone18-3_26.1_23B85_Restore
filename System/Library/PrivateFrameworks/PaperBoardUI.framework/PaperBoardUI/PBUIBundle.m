@interface PBUIBundle
@end

@implementation PBUIBundle

void ___PBUIBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_self();
  v1 = [v0 bundleForClass:v3];
  v2 = _PBUIBundle___paperBoardUIBundle;
  _PBUIBundle___paperBoardUIBundle = v1;
}

@end
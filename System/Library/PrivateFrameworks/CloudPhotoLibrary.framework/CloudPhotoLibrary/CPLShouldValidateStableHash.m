@interface CPLShouldValidateStableHash
@end

@implementation CPLShouldValidateStableHash

void ___CPLShouldValidateStableHash_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  _CPLShouldValidateStableHash_result = [v0 BOOLForKey:@"CPLShouldValidateStableHashOnUpload"];
}

@end
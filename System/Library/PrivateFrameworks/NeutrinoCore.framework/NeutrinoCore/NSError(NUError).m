@interface NSError(NUError)
- (id)descriptionWithIndent:()NUError;
@end

@implementation NSError(NUError)

- (id)descriptionWithIndent:()NUError
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 description];
  v6 = [v4 stringWithFormat:@"%*s%@", a3, "", v5];

  return v6;
}

@end
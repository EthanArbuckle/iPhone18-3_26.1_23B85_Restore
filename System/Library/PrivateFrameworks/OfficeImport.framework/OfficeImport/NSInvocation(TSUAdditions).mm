@interface NSInvocation(TSUAdditions)
+ (void)tsu_invocationWithBlock:()TSUAdditions;
@end

@implementation NSInvocation(TSUAdditions)

+ (void)tsu_invocationWithBlock:()TSUAdditions
{
  v6 = [a3 copy];
  v4 = [self invocationWithMethodSignature:{objc_msgSend(self, "methodSignatureForSelector:", sel_tsu_executeBlock_)}];
  [v4 setTarget:self];
  [v4 setSelector:sel_tsu_executeBlock_];
  [v4 setArgument:&v6 atIndex:2];
  [v4 retainArguments];

  return v4;
}

@end
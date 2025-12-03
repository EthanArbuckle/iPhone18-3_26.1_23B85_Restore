@interface NSProgress(DOCAdditions)
- (BOOL)doc_isPending;
@end

@implementation NSProgress(DOCAdditions)

- (BOOL)doc_isPending
{
  if ([self isIndeterminate])
  {
    return 1;
  }

  [self fractionCompleted];
  return v3 == 0.0;
}

@end
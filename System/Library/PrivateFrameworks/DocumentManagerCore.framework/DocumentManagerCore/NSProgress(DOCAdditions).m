@interface NSProgress(DOCAdditions)
- (BOOL)doc_isPending;
@end

@implementation NSProgress(DOCAdditions)

- (BOOL)doc_isPending
{
  if ([a1 isIndeterminate])
  {
    return 1;
  }

  [a1 fractionCompleted];
  return v3 == 0.0;
}

@end
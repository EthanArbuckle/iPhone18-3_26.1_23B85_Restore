@interface NSURLSessionTask(FCOperationPrioritizingSupport)
- (uint64_t)relativePriority;
- (uint64_t)setRelativePriority:()FCOperationPrioritizingSupport;
@end

@implementation NSURLSessionTask(FCOperationPrioritizingSupport)

- (uint64_t)relativePriority
{
  [self priority];
  if (v2 == 0.25 || fabs(v2 + -0.25) < 0.000000249999999)
  {
    return -1;
  }

  [self priority];
  if (v4 == 0.5 || fabs(v4 + -0.5) < 0.000000499999999)
  {
    return 0;
  }

  [self priority];
  if (v5 == 0.75 || fabs(v5 + -0.75) < 0.000000749999998)
  {
    return 1;
  }

  [self priority];
  if (v6 != 1.0 && fabs(v6 + -1.0) >= 0.000000999999997)
  {
    return 0;
  }

  return 2;
}

- (uint64_t)setRelativePriority:()FCOperationPrioritizingSupport
{
  if ((a3 + 1) >= 4)
  {
    v4 = MEMORY[0x1E695ABC0];
  }

  else
  {
    v4 = (&unk_1B681A400 + 4 * a3 + 4);
  }

  LODWORD(a4) = *v4;
  return [self setPriority:a4];
}

@end
@interface INInteraction
@end

@implementation INInteraction

uint64_t __66__INInteraction_IntentsCore__inc_associateFileURLsWithAuditToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFileURL])
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    INFileURLSetAssociatedAuditToken();
  }

  return 0;
}

@end
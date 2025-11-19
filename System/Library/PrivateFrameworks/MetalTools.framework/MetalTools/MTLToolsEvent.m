@interface MTLToolsEvent
- (BOOL)enableBarrier;
- (BOOL)supportsRollback;
- (NSString)label;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsEvent

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (BOOL)enableBarrier
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 enableBarrier];
}

- (BOOL)supportsRollback
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 supportsRollback];
}

@end
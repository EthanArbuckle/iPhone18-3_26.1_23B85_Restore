@interface MTLToolsFence
- (NSString)label;
- (void)setLabel:(id)a3;
@end

@implementation MTLToolsFence

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

@end
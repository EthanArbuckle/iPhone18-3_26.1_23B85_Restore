@interface NSCompoundPredicate(_EmailFoundationAdditions)
- (id)_ef_parenthesizedPublicDescription;
@end

@implementation NSCompoundPredicate(_EmailFoundationAdditions)

- (id)_ef_parenthesizedPublicDescription
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [a1 ef_publicDescription];
  v4 = [v2 initWithFormat:@"(%@)", v3];

  return v4;
}

@end
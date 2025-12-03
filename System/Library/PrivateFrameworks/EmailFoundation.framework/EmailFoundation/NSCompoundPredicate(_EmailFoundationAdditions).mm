@interface NSCompoundPredicate(_EmailFoundationAdditions)
- (id)_ef_parenthesizedPublicDescription;
@end

@implementation NSCompoundPredicate(_EmailFoundationAdditions)

- (id)_ef_parenthesizedPublicDescription
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  ef_publicDescription = [self ef_publicDescription];
  v4 = [v2 initWithFormat:@"(%@)", ef_publicDescription];

  return v4;
}

@end
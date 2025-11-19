@interface SFAbstractCommand(CRCommand)
- (id)referenceIdentifier;
@end

@implementation SFAbstractCommand(CRCommand)

- (id)referenceIdentifier
{
  if ([a1 type] == 1)
  {
    v2 = [a1 value];
    v3 = [v2 referentialCommand];
    v4 = [v3 referenceIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
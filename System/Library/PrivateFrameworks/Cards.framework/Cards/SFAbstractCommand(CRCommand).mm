@interface SFAbstractCommand(CRCommand)
- (id)referenceIdentifier;
@end

@implementation SFAbstractCommand(CRCommand)

- (id)referenceIdentifier
{
  if ([self type] == 1)
  {
    value = [self value];
    referentialCommand = [value referentialCommand];
    referenceIdentifier = [referentialCommand referenceIdentifier];
  }

  else
  {
    referenceIdentifier = 0;
  }

  return referenceIdentifier;
}

@end
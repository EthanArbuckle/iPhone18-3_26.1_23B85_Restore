@interface ASAction
- (BOOL)isOrganizerUpdate;
@end

@implementation ASAction

- (BOOL)isOrganizerUpdate
{
  changedItem = [(ASAction *)self changedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  changedItem2 = [(ASAction *)self changedItem];
  isOrganizerUpdate = [changedItem2 isOrganizerUpdate];

  return isOrganizerUpdate;
}

@end
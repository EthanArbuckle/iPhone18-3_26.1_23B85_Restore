@interface ASAction
- (BOOL)isOrganizerUpdate;
@end

@implementation ASAction

- (BOOL)isOrganizerUpdate
{
  v3 = [(ASAction *)self changedItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(ASAction *)self changedItem];
  v6 = [v5 isOrganizerUpdate];

  return v6;
}

@end
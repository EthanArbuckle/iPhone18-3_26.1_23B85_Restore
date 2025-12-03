@interface SFDialogAction
+ (id)actionWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type;
+ (id)actionWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type isPreferredAction:(BOOL)action;
- (SFDialogAction)initWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type isPreferredAction:(BOOL)action;
- (void)setCustomAction:(id)action;
@end

@implementation SFDialogAction

+ (id)actionWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type
{
  titleCopy = title;
  v9 = [[self alloc] initWithTitle:titleCopy activatingKeyboardShortcut:shortcut type:type isPreferredAction:0];

  return v9;
}

+ (id)actionWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type isPreferredAction:(BOOL)action
{
  actionCopy = action;
  titleCopy = title;
  v11 = [[self alloc] initWithTitle:titleCopy activatingKeyboardShortcut:shortcut type:type isPreferredAction:actionCopy];

  return v11;
}

- (SFDialogAction)initWithTitle:(id)title activatingKeyboardShortcut:(int64_t)shortcut type:(int64_t)type isPreferredAction:(BOOL)action
{
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = SFDialogAction;
  v12 = [(SFDialogAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_activatingKeyboardShortcut = shortcut;
    v12->_actionType = type;
    objc_storeStrong(&v12->_title, title);
    v13->_isPreferredAction = action;
    v14 = v13;
  }

  return v13;
}

- (void)setCustomAction:(id)action
{
  v4 = _Block_copy(action);
  customAction = self->_customAction;
  self->_customAction = v4;
}

@end
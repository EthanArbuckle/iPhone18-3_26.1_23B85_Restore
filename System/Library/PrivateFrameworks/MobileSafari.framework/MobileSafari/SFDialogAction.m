@interface SFDialogAction
+ (id)actionWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5;
+ (id)actionWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5 isPreferredAction:(BOOL)a6;
- (SFDialogAction)initWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5 isPreferredAction:(BOOL)a6;
- (void)setCustomAction:(id)a3;
@end

@implementation SFDialogAction

+ (id)actionWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithTitle:v8 activatingKeyboardShortcut:a4 type:a5 isPreferredAction:0];

  return v9;
}

+ (id)actionWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5 isPreferredAction:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [[a1 alloc] initWithTitle:v10 activatingKeyboardShortcut:a4 type:a5 isPreferredAction:v6];

  return v11;
}

- (SFDialogAction)initWithTitle:(id)a3 activatingKeyboardShortcut:(int64_t)a4 type:(int64_t)a5 isPreferredAction:(BOOL)a6
{
  v11 = a3;
  v16.receiver = self;
  v16.super_class = SFDialogAction;
  v12 = [(SFDialogAction *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_activatingKeyboardShortcut = a4;
    v12->_actionType = a5;
    objc_storeStrong(&v12->_title, a3);
    v13->_isPreferredAction = a6;
    v14 = v13;
  }

  return v13;
}

- (void)setCustomAction:(id)a3
{
  v4 = _Block_copy(a3);
  customAction = self->_customAction;
  self->_customAction = v4;
}

@end
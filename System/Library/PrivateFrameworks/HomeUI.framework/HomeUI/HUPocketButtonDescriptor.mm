@interface HUPocketButtonDescriptor
+ (id)descriptorWithTitle:(id)title style:(unint64_t)style target:(id)target action:(SEL)action userInfo:(id)info;
+ (id)descriptorWithTitle:(id)title style:(unint64_t)style userInfo:(id)info block:(id)block;
- (SEL)action;
- (UIColor)backgroundColor;
- (UIColor)textColor;
- (id)target;
- (void)execute;
- (void)setAction:(SEL)action;
@end

@implementation HUPocketButtonDescriptor

+ (id)descriptorWithTitle:(id)title style:(unint64_t)style target:(id)target action:(SEL)action userInfo:(id)info
{
  infoCopy = info;
  targetCopy = target;
  titleCopy = title;
  v14 = objc_opt_new();
  [v14 setTitle:titleCopy];

  [v14 setStyle:style];
  [v14 setTarget:targetCopy];

  [v14 setAction:action];
  [v14 setUserInfo:infoCopy];

  return v14;
}

+ (id)descriptorWithTitle:(id)title style:(unint64_t)style userInfo:(id)info block:(id)block
{
  blockCopy = block;
  infoCopy = info;
  titleCopy = title;
  v12 = objc_opt_new();
  [v12 setTitle:titleCopy];

  [v12 setStyle:style];
  [v12 setBlock:blockCopy];

  [v12 setUserInfo:infoCopy];

  return v12;
}

- (UIColor)textColor
{
  style = [(HUPocketButtonDescriptor *)self style];
  if (style == 1)
  {
    style = [MEMORY[0x277D75348] hf_keyColor];
  }

  else if (!style)
  {
    style = [MEMORY[0x277D75348] systemWhiteColor];
  }

  return style;
}

- (UIColor)backgroundColor
{
  if ([(HUPocketButtonDescriptor *)self style]== 1)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    clearColor = 0;
  }

  return clearColor;
}

- (void)execute
{
  block = [(HUPocketButtonDescriptor *)self block];

  if (block)
  {
    block2 = [(HUPocketButtonDescriptor *)self block];
    block2[2](block2, self);
  }

  else
  {
    block2 = [(HUPocketButtonDescriptor *)self target];
    [block2 performSelector:-[HUPocketButtonDescriptor action](self withObject:{"action"), self}];
  }
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

@end
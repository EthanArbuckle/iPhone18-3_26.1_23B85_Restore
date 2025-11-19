@interface HUPocketButtonDescriptor
+ (id)descriptorWithTitle:(id)a3 style:(unint64_t)a4 target:(id)a5 action:(SEL)a6 userInfo:(id)a7;
+ (id)descriptorWithTitle:(id)a3 style:(unint64_t)a4 userInfo:(id)a5 block:(id)a6;
- (SEL)action;
- (UIColor)backgroundColor;
- (UIColor)textColor;
- (id)target;
- (void)execute;
- (void)setAction:(SEL)a3;
@end

@implementation HUPocketButtonDescriptor

+ (id)descriptorWithTitle:(id)a3 style:(unint64_t)a4 target:(id)a5 action:(SEL)a6 userInfo:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = objc_opt_new();
  [v14 setTitle:v13];

  [v14 setStyle:a4];
  [v14 setTarget:v12];

  [v14 setAction:a6];
  [v14 setUserInfo:v11];

  return v14;
}

+ (id)descriptorWithTitle:(id)a3 style:(unint64_t)a4 userInfo:(id)a5 block:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setTitle:v11];

  [v12 setStyle:a4];
  [v12 setBlock:v9];

  [v12 setUserInfo:v10];

  return v12;
}

- (UIColor)textColor
{
  v2 = [(HUPocketButtonDescriptor *)self style];
  if (v2 == 1)
  {
    v2 = [MEMORY[0x277D75348] hf_keyColor];
  }

  else if (!v2)
  {
    v2 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  return v2;
}

- (UIColor)backgroundColor
{
  if ([(HUPocketButtonDescriptor *)self style]== 1)
  {
    v2 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)execute
{
  v3 = [(HUPocketButtonDescriptor *)self block];

  if (v3)
  {
    v4 = [(HUPocketButtonDescriptor *)self block];
    v4[2](v4, self);
  }

  else
  {
    v4 = [(HUPocketButtonDescriptor *)self target];
    [v4 performSelector:-[HUPocketButtonDescriptor action](self withObject:{"action"), self}];
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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_action = v3;
}

@end
@interface AnimationSettings
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
@end

@implementation AnimationSettings

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  if (a5 == 1 && (LOBYTE(self[1].var1) & 1) == 0)
  {
    p_var9 = &self->var9;
    p_var8 = self + 1;
    p_var10 = &self->var10;
  }

  else
  {
    p_var9 = &self->var6;
    p_var10 = &self->var7;
    p_var8 = &self->var8;
  }

  v8 = *p_var10;
  var0 = p_var8->var0;
  var5 = self[1].var5;
  retstr->var0 = *p_var9;
  retstr->var1 = v8;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  retstr->var5 = 0.0;
  *&retstr->var6 = *&self[1].var2;
  retstr->var8 = var5;
  retstr->var9 = 0.0;
  retstr->var10 = var0;
  return self;
}

@end
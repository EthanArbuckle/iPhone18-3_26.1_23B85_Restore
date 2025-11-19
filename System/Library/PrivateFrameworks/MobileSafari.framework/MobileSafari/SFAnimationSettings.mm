@interface SFAnimationSettings
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4;
- (SFAnimationSettings)init;
- (void)performInteractive:(BOOL)a3 animations:(id)a4 completion:(id)a5;
@end

@implementation SFAnimationSettings

- (void)performInteractive:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_18BA93C74;
  }

  else
  {
    v10 = 0;
  }

  _Block_copy(v8);
  v11 = self;
  sub_18BA93314(a3, v9, v10, v11, v8);
  sub_18B7B171C(v9);
  _Block_release(v8);
  _Block_release(v8);
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)a3 toState:(int)a4
{
  sub_18BA9341C(a5, &v13);
  v7 = v19;
  v8 = v14 & 1;
  v9 = v15 & 1;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  *&retstr->var0 = v13;
  retstr->var2 = v8;
  retstr->var3 = v9;
  *&retstr->var4 = v10;
  *&retstr->var6 = v11;
  *&retstr->var8 = v12;
  retstr->var10 = v7;
  return result;
}

- (SFAnimationSettings)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
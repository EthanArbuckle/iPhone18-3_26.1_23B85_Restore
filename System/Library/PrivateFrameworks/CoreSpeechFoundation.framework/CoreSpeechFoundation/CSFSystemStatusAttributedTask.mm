@interface CSFSystemStatusAttributedTask
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CSFSystemStatusAttributedTask)initWithTaskName:(id)a3 taskBundleIdentifier:(id)a4 auditToken:(id *)a5 taskExecutablePath:(id)a6;
@end

@implementation CSFSystemStatusAttributedTask

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (CSFSystemStatusAttributedTask)initWithTaskName:(id)a3 taskBundleIdentifier:(id)a4 auditToken:(id *)a5 taskExecutablePath:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = CSFSystemStatusAttributedTask;
  v14 = [(CSFSystemStatusAttributedTask *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_taskName, a3);
    objc_storeStrong(&v15->_taskBundleIdentifier, a4);
    v16 = *&a5->var0[4];
    *v15->_auditToken.val = *a5->var0;
    *&v15->_auditToken.val[4] = v16;
    objc_storeStrong(&v15->_taskExecutablePath, a6);
  }

  return v15;
}

@end
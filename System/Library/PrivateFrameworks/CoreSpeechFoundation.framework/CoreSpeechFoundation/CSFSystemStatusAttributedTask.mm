@interface CSFSystemStatusAttributedTask
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (CSFSystemStatusAttributedTask)initWithTaskName:(id)name taskBundleIdentifier:(id)identifier auditToken:(id *)token taskExecutablePath:(id)path;
@end

@implementation CSFSystemStatusAttributedTask

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (CSFSystemStatusAttributedTask)initWithTaskName:(id)name taskBundleIdentifier:(id)identifier auditToken:(id *)token taskExecutablePath:(id)path
{
  nameCopy = name;
  identifierCopy = identifier;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = CSFSystemStatusAttributedTask;
  v14 = [(CSFSystemStatusAttributedTask *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_taskName, name);
    objc_storeStrong(&v15->_taskBundleIdentifier, identifier);
    v16 = *&token->var0[4];
    *v15->_auditToken.val = *token->var0;
    *&v15->_auditToken.val[4] = v16;
    objc_storeStrong(&v15->_taskExecutablePath, path);
  }

  return v15;
}

@end
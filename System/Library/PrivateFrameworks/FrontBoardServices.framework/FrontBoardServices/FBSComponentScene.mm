@interface FBSComponentScene
- (BOOL)conformsToExtension:(Class)extension;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)isMemberOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (Class)class;
- (Class)superclass;
- (FBSComponentScene)initWithScene:(id)scene extension:(Class)extension;
- (NSString)debugDescription;
- (NSString)description;
- (id)clientSettings;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)loggingIdentifier;
- (id)remoteTargetForProtocol:(id)protocol;
- (id)scene;
- (id)settings;
- (id)siblingComponentOfClass:(Class)class;
- (unint64_t)hash;
- (void)sendActions:(id)actions;
- (void)sendPrivateActions:(id)actions;
@end

@implementation FBSComponentScene

- (id)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  settings = [WeakRetained settings];

  return settings;
}

- (id)clientSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  clientSettings = [WeakRetained clientSettings];

  return clientSettings;
}

- (id)loggingIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  loggingIdentifier = [WeakRetained loggingIdentifier];

  return loggingIdentifier;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained hash];

  return v3;
}

- (Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = objc_opt_class();

  return v3;
}

- (FBSComponentScene)initWithScene:(id)scene extension:(Class)extension
{
  objc_storeWeak(&self->_scene, scene);
  self->_extension = extension;
  return self;
}

- (id)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained isEqual:equalCopy];

  return v6;
}

- (Class)superclass
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained superclass];

  return v3;
}

- (BOOL)isKindOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMemberOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  LOBYTE(class) = [WeakRetained isMemberOfClass:class];

  return class;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained conformsToProtocol:protocolCopy];

  return v6;
}

- (NSString)description
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromClass(self->_extension);
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  succinctDescription = [WeakRetained succinctDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p ex: %@> --> %@", v5, self, v6, succinctDescription];;

  return v9;
}

- (void)sendActions:(id)actions
{
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained sendActions:actionsCopy];
}

- (void)sendPrivateActions:(id)actions
{
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained sendActions:actionsCopy toExtension:self->_extension];
}

- (id)siblingComponentOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained componentForExtension:self->_extension ofClass:class];

  return v6;
}

- (id)remoteTargetForProtocol:(id)protocol
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__FBSComponentScene_remoteTargetForProtocol___block_invoke;
  v5[3] = &unk_1E76BCD38;
  v5[4] = self;
  v3 = [FBSInvocationTarget targetWithInterface:protocol handler:v5];

  return v3;
}

BOOL __45__FBSComponentScene_remoteTargetForProtocol___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained)
  {
    v8 = NSStringFromClass(*(*(a1 + 32) + 16));
    [v6 encodeObject:v8 forKey:@"extension"];

    [WeakRetained sendInvocation:v5];
  }

  return WeakRetained != 0;
}

- (BOOL)conformsToExtension:(Class)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  LOBYTE(extension) = [WeakRetained conformsToExtension:extension];

  return extension;
}

@end
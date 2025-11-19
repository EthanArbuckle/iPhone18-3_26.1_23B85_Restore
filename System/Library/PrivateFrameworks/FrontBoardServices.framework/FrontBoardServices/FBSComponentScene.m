@interface FBSComponentScene
- (BOOL)conformsToExtension:(Class)a3;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)isMemberOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (Class)class;
- (Class)superclass;
- (FBSComponentScene)initWithScene:(id)a3 extension:(Class)a4;
- (NSString)debugDescription;
- (NSString)description;
- (id)clientSettings;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)loggingIdentifier;
- (id)remoteTargetForProtocol:(id)a3;
- (id)scene;
- (id)settings;
- (id)siblingComponentOfClass:(Class)a3;
- (unint64_t)hash;
- (void)sendActions:(id)a3;
- (void)sendPrivateActions:(id)a3;
@end

@implementation FBSComponentScene

- (id)settings
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained settings];

  return v3;
}

- (id)clientSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained clientSettings];

  return v3;
}

- (id)loggingIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained loggingIdentifier];

  return v3;
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

- (FBSComponentScene)initWithScene:(id)a3 extension:(Class)a4
{
  objc_storeWeak(&self->_scene, a3);
  self->_extension = a4;
  return self;
}

- (id)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained isEqual:v4];

  return v6;
}

- (Class)superclass
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v3 = [WeakRetained superclass];

  return v3;
}

- (BOOL)isKindOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isMemberOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  LOBYTE(a3) = [WeakRetained isMemberOfClass:a3];

  return a3;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained conformsToProtocol:v4];

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
  v8 = [WeakRetained succinctDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p ex: %@> --> %@", v5, self, v6, v8];;

  return v9;
}

- (void)sendActions:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained sendActions:v4];
}

- (void)sendPrivateActions:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  [WeakRetained sendActions:v4 toExtension:self->_extension];
}

- (id)siblingComponentOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained componentForExtension:self->_extension ofClass:a3];

  return v6;
}

- (id)remoteTargetForProtocol:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__FBSComponentScene_remoteTargetForProtocol___block_invoke;
  v5[3] = &unk_1E76BCD38;
  v5[4] = self;
  v3 = [FBSInvocationTarget targetWithInterface:a3 handler:v5];

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

- (BOOL)conformsToExtension:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  LOBYTE(a3) = [WeakRetained conformsToExtension:a3];

  return a3;
}

@end
@interface _MUExtensionGroup
- (_MUExtensionGroup)initWithAppIdentifier:(id)a3;
- (_MXExtension)bestExtensionToUse;
- (void)addExtensionIfMatchedAppIdentifier:(id)a3;
@end

@implementation _MUExtensionGroup

- (_MUExtensionGroup)initWithAppIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _MUExtensionGroup;
  v6 = [(_MUExtensionGroup *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appIdentifier, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extensions = v7->_extensions;
    v7->_extensions = v8;

    v10 = geo_isolater_create();
    extensionsLock = v7->_extensionsLock;
    v7->_extensionsLock = v10;
  }

  return v7;
}

- (void)addExtensionIfMatchedAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 _containingAppIdentifer];
  v6 = [v5 isEqual:self->_appIdentifier];

  if (v6)
  {
    extensionsLock = self->_extensionsLock;
    v8 = v4;
    geo_isolate_sync();
  }
}

- (_MXExtension)bestExtensionToUse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16682;
  v9 = __Block_byref_object_dispose__16683;
  v10 = 0;
  extensionsLock = self->_extensionsLock;
  geo_isolate_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

@end
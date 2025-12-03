@interface IKJSMenuBarDocument
- (IKJSMenuBarDocumentAppBridge)appBridge;
- (id)_entityUniqueIdentifierForObject:(id)object;
- (id)getDocument:(id)document;
- (id)getSelectedItem;
- (void)setDocument:(id)document :(id)a4 :(id)a5;
- (void)setSelectedItem:(id)item :(id)a4;
@end

@implementation IKJSMenuBarDocument

- (id)getDocument:(id)document
{
  v4 = [(IKJSMenuBarDocument *)self _entityUniqueIdentifierForObject:document];
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);
  v6 = [WeakRetained jsMenuBarDocument:self documentForEntityUniqueIdentifier:v4];

  jsDocument = [v6 jsDocument];

  return jsDocument;
}

- (void)setDocument:(id)document :(id)a4 :(id)a5
{
  v14 = a4;
  v8 = a5;
  documentCopy = document;
  appContext = [(IKJSObject *)self appContext];
  v11 = [[IKAppDocument alloc] initWithAppContext:appContext document:documentCopy owner:self];

  if (v11)
  {
    v12 = [(IKJSMenuBarDocument *)self _entityUniqueIdentifierForObject:v14];
    WeakRetained = objc_loadWeakRetained(&self->_appBridge);
    [WeakRetained jsMenuBarDocument:self setDocument:v11 forEntityUniqueIdentifier:v12 withOptions:v8];
  }
}

- (id)getSelectedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);
  v4 = [WeakRetained selectedItemForJsMenuBarDocument:self];

  return v4;
}

- (void)setSelectedItem:(id)item :(id)a4
{
  v6 = a4;
  v8 = [(IKJSMenuBarDocument *)self _entityUniqueIdentifierForObject:item];
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);
  [WeakRetained jsMenuBarDocument:self setSelectedEntityUniqueIdentifier:v8 withOptions:v6];
}

- (id)_entityUniqueIdentifierForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    entityUniqueIdentifier = [objectCopy getAttribute:@"itmlID"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      entityValueProvider = [objectCopy entityValueProvider];
      entityUniqueIdentifier = [entityValueProvider entityUniqueIdentifier];
    }

    else
    {
      entityUniqueIdentifier = 0;
    }
  }

  return entityUniqueIdentifier;
}

- (IKJSMenuBarDocumentAppBridge)appBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);

  return WeakRetained;
}

@end
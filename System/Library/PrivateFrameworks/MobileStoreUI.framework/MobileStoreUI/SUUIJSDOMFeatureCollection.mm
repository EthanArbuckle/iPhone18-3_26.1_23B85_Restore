@interface SUUIJSDOMFeatureCollection
- (SUUIJSDOMFeatureCollectionAppBridge)appBridge;
- (void)setEditing:(BOOL)editing :(id)a4;
@end

@implementation SUUIJSDOMFeatureCollection

- (void)setEditing:(BOOL)editing :(id)a4
{
  editingCopy = editing;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);
  [WeakRetained setEditing:editingCopy options:v6];
}

- (SUUIJSDOMFeatureCollectionAppBridge)appBridge
{
  WeakRetained = objc_loadWeakRetained(&self->_appBridge);

  return WeakRetained;
}

@end
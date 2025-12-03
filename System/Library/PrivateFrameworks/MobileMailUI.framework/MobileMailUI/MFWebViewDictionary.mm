@interface MFWebViewDictionary
- (BOOL)isEqualToDictionary:(id)dictionary;
- (MFWebViewDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allKeysForObject:(id)object;
- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent;
- (id)objectForKey:(id)key;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker;
- (void)_updateRemoteInstance;
- (void)registerWithWebView:(id)view javascriptName:(id)name;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)setDictionary:(id)dictionary;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setValuesForKeysWithDictionary:(id)dictionary;
@end

@implementation MFWebViewDictionary

- (MFWebViewDictionary)initWithCapacity:(unint64_t)capacity
{
  v9.receiver = self;
  v9.super_class = MFWebViewDictionary;
  v3 = [(MFWebViewDictionary *)&v9 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storage = v3->_storage;
    v3->_storage = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedKeys = v3->_changedKeys;
    v3->_changedKeys = v6;

    v3->_requiresResynchronization = 1;
  }

  return v3;
}

- (id)descriptionWithLocale:(id)locale indent:(unint64_t)indent
{
  v5 = [(NSMutableDictionary *)self->_storage descriptionWithLocale:locale indent:indent];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  javascriptName = self->_javascriptName;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v11 = [v6 stringWithFormat:@"<%@: %p> jsName='%@' => %@", v7, self, javascriptName, v10];

  return v11;
}

- (void)registerWithWebView:(id)view javascriptName:(id)name
{
  viewCopy = view;
  nameCopy = name;
  v7 = [nameCopy copy];
  javascriptName = self->_javascriptName;
  self->_javascriptName = v7;

  v9 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282716C48];
  _remoteObjectRegistry = [viewCopy _remoteObjectRegistry];
  v11 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v9];
  webProcessProxy = self->_webProcessProxy;
  self->_webProcessProxy = v11;

  [(MFMailWebProcessProxy *)self->_webProcessProxy registerDictionary:self->_storage name:nameCopy];
}

- (void)_updateRemoteInstance
{
  if (self->_requiresResynchronization)
  {
    [(MFMailWebProcessProxy *)self->_webProcessProxy setDictionary:self->_storage forWebViewDictionaryWithName:self->_javascriptName];
    self->_requiresResynchronization = 0;
  }

  else
  {
    storage = self->_storage;
    allObjects = [(NSMutableSet *)self->_changedKeys allObjects];
    v5 = [(NSMutableDictionary *)storage dictionaryWithValuesForKeys:allObjects];

    [(MFMailWebProcessProxy *)self->_webProcessProxy setValuesForKeysWithDictionary:v5 forWebViewDictionaryWithName:self->_javascriptName];
    [(NSMutableSet *)self->_changedKeys removeAllObjects];
  }
}

- (BOOL)isEqualToDictionary:(id)dictionary
{
  if (dictionary == self)
  {
    return 1;
  }

  else
  {
    return [(NSMutableDictionary *)self->_storage isEqualToDictionary:*(dictionary + 1)];
  }
}

- (id)objectForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:key];

  return v3;
}

- (id)allKeysForObject:(id)object
{
  v3 = [(NSMutableDictionary *)self->_storage allKeysForObject:object];

  return v3;
}

- (id)objectsForKeys:(id)keys notFoundMarker:(id)marker
{
  v4 = [(NSMutableDictionary *)self->_storage objectsForKeys:keys notFoundMarker:marker];

  return v4;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:subscript];

  return v3;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  [(NSMutableDictionary *)self->_storage removeObjectForKey:?];
  [(NSMutableSet *)self->_changedKeys addObject:keyCopy];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  [(NSMutableDictionary *)self->_storage setObject:objectCopy forKey:keyCopy];
  [(NSMutableSet *)self->_changedKeys addObject:keyCopy];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_storage removeAllObjects];
  [(MFWebViewDictionary *)self _setRequiresSynchronization];

  [(MFWebViewDictionary *)self synchronize];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  [(NSMutableDictionary *)self->_storage removeObjectsForKeys:?];
  [(NSMutableSet *)self->_changedKeys addObjectsFromArray:keysCopy];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(NSMutableDictionary *)self->_storage setDictionary:?];
  [(MFWebViewDictionary *)self _setRequiresSynchronization];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  [(NSMutableDictionary *)self->_storage setObject:objectCopy forKeyedSubscript:subscriptCopy];
  [(NSMutableSet *)self->_changedKeys addObject:subscriptCopy];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setValuesForKeysWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(NSMutableDictionary *)self->_storage setValuesForKeysWithDictionary:?];
  changedKeys = self->_changedKeys;
  allKeys = [dictionaryCopy allKeys];
  [(NSMutableSet *)changedKeys addObjectsFromArray:allKeys];

  [(MFWebViewDictionary *)self synchronize];
}

@end
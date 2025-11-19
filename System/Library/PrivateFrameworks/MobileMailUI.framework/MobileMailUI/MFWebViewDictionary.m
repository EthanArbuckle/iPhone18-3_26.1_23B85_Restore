@interface MFWebViewDictionary
- (BOOL)isEqualToDictionary:(id)a3;
- (MFWebViewDictionary)initWithCapacity:(unint64_t)a3;
- (id)allKeysForObject:(id)a3;
- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4;
- (void)_updateRemoteInstance;
- (void)registerWithWebView:(id)a3 javascriptName:(id)a4;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)setDictionary:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setValuesForKeysWithDictionary:(id)a3;
@end

@implementation MFWebViewDictionary

- (MFWebViewDictionary)initWithCapacity:(unint64_t)a3
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

- (id)descriptionWithLocale:(id)a3 indent:(unint64_t)a4
{
  v5 = [(NSMutableDictionary *)self->_storage descriptionWithLocale:a3 indent:a4];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  javascriptName = self->_javascriptName;
  v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v5 stringByTrimmingCharactersInSet:v9];
  v11 = [v6 stringWithFormat:@"<%@: %p> jsName='%@' => %@", v7, self, javascriptName, v10];

  return v11;
}

- (void)registerWithWebView:(id)a3 javascriptName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 copy];
  javascriptName = self->_javascriptName;
  self->_javascriptName = v7;

  v9 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_282716C48];
  v10 = [v13 _remoteObjectRegistry];
  v11 = [v10 remoteObjectProxyWithInterface:v9];
  webProcessProxy = self->_webProcessProxy;
  self->_webProcessProxy = v11;

  [(MFMailWebProcessProxy *)self->_webProcessProxy registerDictionary:self->_storage name:v6];
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
    v4 = [(NSMutableSet *)self->_changedKeys allObjects];
    v5 = [(NSMutableDictionary *)storage dictionaryWithValuesForKeys:v4];

    [(MFMailWebProcessProxy *)self->_webProcessProxy setValuesForKeysWithDictionary:v5 forWebViewDictionaryWithName:self->_javascriptName];
    [(NSMutableSet *)self->_changedKeys removeAllObjects];
  }
}

- (BOOL)isEqualToDictionary:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  else
  {
    return [(NSMutableDictionary *)self->_storage isEqualToDictionary:*(a3 + 1)];
  }
}

- (id)objectForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:a3];

  return v3;
}

- (id)allKeysForObject:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_storage allKeysForObject:a3];

  return v3;
}

- (id)objectsForKeys:(id)a3 notFoundMarker:(id)a4
{
  v4 = [(NSMutableDictionary *)self->_storage objectsForKeys:a3 notFoundMarker:a4];

  return v4;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:a3];

  return v3;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_storage removeObjectForKey:?];
  [(NSMutableSet *)self->_changedKeys addObject:v4];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(NSMutableDictionary *)self->_storage setObject:v7 forKey:v6];
  [(NSMutableSet *)self->_changedKeys addObject:v6];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_storage removeAllObjects];
  [(MFWebViewDictionary *)self _setRequiresSynchronization];

  [(MFWebViewDictionary *)self synchronize];
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_storage removeObjectsForKeys:?];
  [(NSMutableSet *)self->_changedKeys addObjectsFromArray:v4];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setDictionary:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_storage setDictionary:?];
  [(MFWebViewDictionary *)self _setRequiresSynchronization];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(NSMutableDictionary *)self->_storage setObject:v7 forKeyedSubscript:v6];
  [(NSMutableSet *)self->_changedKeys addObject:v6];
  [(MFWebViewDictionary *)self synchronize];
}

- (void)setValuesForKeysWithDictionary:(id)a3
{
  v6 = a3;
  [(NSMutableDictionary *)self->_storage setValuesForKeysWithDictionary:?];
  changedKeys = self->_changedKeys;
  v5 = [v6 allKeys];
  [(NSMutableSet *)changedKeys addObjectsFromArray:v5];

  [(MFWebViewDictionary *)self synchronize];
}

@end
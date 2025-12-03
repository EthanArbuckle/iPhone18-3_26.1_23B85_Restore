@interface GDViewRemoteAccessRequesterGuardedData
- (GDViewRemoteAccessRequesterGuardedData)init;
- (id)accessInfoForKey:(id)key useCase:(id)case;
- (id)keyForViewName:(id)name useCase:(id)case;
- (id)objectForKey:(id)key useCase:(id)case;
- (void)setInfo:(id)info forKey:(id)key useCase:(id)case;
- (void)setObject:(id)object forKey:(id)key useCase:(id)case;
- (void)setPersistentInfo:(id)info forKey:(id)key useCase:(id)case;
- (void)setPersistentObject:(id)object forKey:(id)key useCase:(id)case;
@end

@implementation GDViewRemoteAccessRequesterGuardedData

- (GDViewRemoteAccessRequesterGuardedData)init
{
  v13.receiver = self;
  v13.super_class = GDViewRemoteAccessRequesterGuardedData;
  v2 = [(GDViewRemoteAccessRequesterGuardedData *)&v13 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    strongWeakCache = v2->_strongWeakCache;
    v2->_strongWeakCache = strongToWeakObjectsMapTable;

    v6 = objc_opt_new();
    persistentTokens = v2->_persistentTokens;
    v2->_persistentTokens = v6;

    strongToWeakObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    strongWeakInfoCache = v2->_strongWeakInfoCache;
    v2->_strongWeakInfoCache = strongToWeakObjectsMapTable2;

    v10 = objc_opt_new();
    persistentInfo = v2->_persistentInfo;
    v2->_persistentInfo = v10;

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)setPersistentInfo:(id)info forKey:(id)key useCase:(id)case
{
  infoCopy = info;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  [(NSMutableDictionary *)self->_persistentInfo setObject:infoCopy forKey:v9];
}

- (void)setInfo:(id)info forKey:(id)key useCase:(id)case
{
  infoCopy = info;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  [(NSMapTable *)self->_strongWeakInfoCache setObject:infoCopy forKey:v9];
}

- (id)accessInfoForKey:(id)key useCase:(id)case
{
  v5 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  v6 = [(NSMapTable *)self->_strongWeakInfoCache objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_persistentInfo objectForKey:v5];
  }

  v9 = v8;

  return v9;
}

- (void)setPersistentObject:(id)object forKey:(id)key useCase:(id)case
{
  objectCopy = object;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  [(NSMutableDictionary *)self->_persistentTokens setObject:objectCopy forKey:v9];
}

- (void)setObject:(id)object forKey:(id)key useCase:(id)case
{
  objectCopy = object;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  [(NSMapTable *)self->_strongWeakCache setObject:objectCopy forKey:v9];
}

- (id)objectForKey:(id)key useCase:(id)case
{
  v5 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:key useCase:case];
  v6 = [(NSMapTable *)self->_strongWeakCache objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_persistentTokens objectForKey:v5];
  }

  v9 = v8;

  return v9;
}

- (id)keyForViewName:(id)name useCase:(id)case
{
  v5 = MEMORY[0x1E696AEC0];
  caseCopy = case;
  nameCopy = name;
  caseCopy = [[v5 alloc] initWithFormat:@"%@:%@", nameCopy, caseCopy];

  return caseCopy;
}

@end
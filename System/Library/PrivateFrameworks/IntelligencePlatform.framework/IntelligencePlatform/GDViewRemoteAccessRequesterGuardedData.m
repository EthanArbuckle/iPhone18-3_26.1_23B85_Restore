@interface GDViewRemoteAccessRequesterGuardedData
- (GDViewRemoteAccessRequesterGuardedData)init;
- (id)accessInfoForKey:(id)a3 useCase:(id)a4;
- (id)keyForViewName:(id)a3 useCase:(id)a4;
- (id)objectForKey:(id)a3 useCase:(id)a4;
- (void)setInfo:(id)a3 forKey:(id)a4 useCase:(id)a5;
- (void)setObject:(id)a3 forKey:(id)a4 useCase:(id)a5;
- (void)setPersistentInfo:(id)a3 forKey:(id)a4 useCase:(id)a5;
- (void)setPersistentObject:(id)a3 forKey:(id)a4 useCase:(id)a5;
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
    v4 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    strongWeakCache = v2->_strongWeakCache;
    v2->_strongWeakCache = v4;

    v6 = objc_opt_new();
    persistentTokens = v2->_persistentTokens;
    v2->_persistentTokens = v6;

    v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    strongWeakInfoCache = v2->_strongWeakInfoCache;
    v2->_strongWeakInfoCache = v8;

    v10 = objc_opt_new();
    persistentInfo = v2->_persistentInfo;
    v2->_persistentInfo = v10;

    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)setPersistentInfo:(id)a3 forKey:(id)a4 useCase:(id)a5
{
  v8 = a3;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a4 useCase:a5];
  [(NSMutableDictionary *)self->_persistentInfo setObject:v8 forKey:v9];
}

- (void)setInfo:(id)a3 forKey:(id)a4 useCase:(id)a5
{
  v8 = a3;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a4 useCase:a5];
  [(NSMapTable *)self->_strongWeakInfoCache setObject:v8 forKey:v9];
}

- (id)accessInfoForKey:(id)a3 useCase:(id)a4
{
  v5 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a3 useCase:a4];
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

- (void)setPersistentObject:(id)a3 forKey:(id)a4 useCase:(id)a5
{
  v8 = a3;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a4 useCase:a5];
  [(NSMutableDictionary *)self->_persistentTokens setObject:v8 forKey:v9];
}

- (void)setObject:(id)a3 forKey:(id)a4 useCase:(id)a5
{
  v8 = a3;
  v9 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a4 useCase:a5];
  [(NSMapTable *)self->_strongWeakCache setObject:v8 forKey:v9];
}

- (id)objectForKey:(id)a3 useCase:(id)a4
{
  v5 = [(GDViewRemoteAccessRequesterGuardedData *)self keyForViewName:a3 useCase:a4];
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

- (id)keyForViewName:(id)a3 useCase:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithFormat:@"%@:%@", v7, v6];

  return v8;
}

@end
@interface MRDBrowsableContentAPICoordinator
- (MRDBrowsableContentAPICoordinator)init;
- (id)applicationsSupportingAPIs:(unsigned int)a3;
- (unsigned)supportedAPIsForApplication:(id)a3;
@end

@implementation MRDBrowsableContentAPICoordinator

- (MRDBrowsableContentAPICoordinator)init
{
  v10.receiver = self;
  v10.super_class = MRDBrowsableContentAPICoordinator;
  v2 = [(MRDBrowsableContentAPICoordinator *)&v10 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 dictionaryForKey:@"MRDBrowsableContentAPICoordinatorPersistence"];
    v5 = [v4 mutableCopy];
    persistenceDictionary = v2->_persistenceDictionary;
    v2->_persistenceDictionary = v5;

    if (!v2->_persistenceDictionary)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      v8 = v2->_persistenceDictionary;
      v2->_persistenceDictionary = v7;
    }

    if (([v3 BOOLForKey:@"MRDBrowsableContentAPICoordinatorStoredCaseSensitive"] & 1) == 0)
    {
      [v3 removeObjectForKey:@"MRDBrowsableContentAPICoordinatorPersistence"];
      [v3 setBool:1 forKey:@"MRDBrowsableContentAPICoordinatorStoredCaseSensitive"];
      [(NSMutableDictionary *)v2->_persistenceDictionary removeAllObjects];
    }
  }

  return v2;
}

- (unsigned)supportedAPIsForApplication:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_persistenceDictionary objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)applicationsSupportingAPIs:(unsigned int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  persistenceDictionary = self->_persistenceDictionary;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000656CC;
  v9[3] = &unk_1004B7EE0;
  v11 = a3;
  v7 = v5;
  v10 = v7;
  [(NSMutableDictionary *)persistenceDictionary enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

@end
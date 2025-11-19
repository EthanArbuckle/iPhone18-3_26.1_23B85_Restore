@interface DYExtensionRegistry
+ (id)sharedExtensionRegistry;
- (DYExtensionRegistry)init;
- (void)dealloc;
- (void)registerExtension:(id)a3;
@end

@implementation DYExtensionRegistry

+ (id)sharedExtensionRegistry
{
  if (sharedExtensionRegistry_registry_once != -1)
  {
    +[DYExtensionRegistry sharedExtensionRegistry];
  }

  return sharedExtensionRegistry_registry;
}

uint64_t __46__DYExtensionRegistry_sharedExtensionRegistry__block_invoke()
{
  result = objc_opt_new();
  sharedExtensionRegistry_registry = result;
  return result;
}

- (DYExtensionRegistry)init
{
  v4.receiver = self;
  v4.super_class = DYExtensionRegistry;
  v2 = [(DYExtensionRegistry *)&v4 init];
  if (v2)
  {
    v2->_slotsMap = objc_opt_new();
    v2->_identifiersMap = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExtensionRegistry;
  [(DYExtensionRegistry *)&v3 dealloc];
}

- (void)registerExtension:(id)a3
{
  v5 = -[NSMutableDictionary objectForKey:](self->_identifiersMap, "objectForKey:", [a3 identifier]);
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x277D0B240];
    [objc_msgSend(v5 "identifier")];
    [objc_msgSend(v6 "description")];
    [objc_msgSend(a3 "description")];
    DYLog();
  }

  else
  {
    v8 = -[NSMutableDictionary objectForKey:](self->_slotsMap, "objectForKey:", [a3 slot]);
    if (!v8)
    {
      v8 = objc_opt_new();
      -[NSMutableDictionary setObject:forKey:](self->_slotsMap, "setObject:forKey:", v8, [a3 slot]);
    }

    [v8 addObject:a3];
    identifiersMap = self->_identifiersMap;
    v10 = [a3 identifier];

    [(NSMutableDictionary *)identifiersMap setObject:a3 forKey:v10];
  }
}

@end
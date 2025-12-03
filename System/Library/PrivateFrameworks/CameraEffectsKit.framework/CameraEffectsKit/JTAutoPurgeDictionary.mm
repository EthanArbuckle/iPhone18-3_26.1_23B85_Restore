@interface JTAutoPurgeDictionary
- (JTAutoPurgeDictionary)init;
- (JTAutoPurgeDictionaryDelegate)delegate;
- (id)copyOfDictionary;
- (id)description;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)dictionary;
- (void)dealloc;
- (void)highMemoryWarning;
- (void)removeAllObjects;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation JTAutoPurgeDictionary

- (JTAutoPurgeDictionary)init
{
  v7.receiver = self;
  v7.super_class = JTAutoPurgeDictionary;
  v2 = [(JTAutoPurgeDictionary *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = v2->_dictionary;
    v2->_dictionary = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_highMemoryWarning name:*MEMORY[0x277D76670] object:0];
  }

  return v2;
}

- (id)copyOfDictionary
{
  v3 = self->_dictionary;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_dictionary copy];
  objc_sync_exit(v3);

  return v4;
}

- (unint64_t)count
{
  v3 = self->_dictionary;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_dictionary count];
  objc_sync_exit(v3);

  return v4;
}

- (void)addEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = self->_dictionary;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:dictionaryCopy];
  objc_sync_exit(v4);
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v7 = self->_dictionary;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->_dictionary setObject:objectCopy forKey:keyCopy];
  objc_sync_exit(v7);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = self->_dictionary;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:keyCopy];
  objc_sync_exit(v5);

  return v6;
}

- (void)removeAllObjects
{
  obj = self->_dictionary;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_dictionary removeAllObjects];
  objc_sync_exit(obj);
}

- (id)description
{
  v3 = self->_dictionary;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_dictionary description];
  objc_sync_exit(v3);

  return v4;
}

- (void)highMemoryWarning
{
  if (![(JTAutoPurgeDictionary *)self suspendPurging])
  {
    [(JTAutoPurgeDictionary *)self removeAllObjects];
    delegate = [(JTAutoPurgeDictionary *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(JTAutoPurgeDictionary *)self delegate];
      [delegate2 didPurgeItems:self];
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];

  v4.receiver = self;
  v4.super_class = JTAutoPurgeDictionary;
  [(JTAutoPurgeDictionary *)&v4 dealloc];
}

- (JTAutoPurgeDictionaryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
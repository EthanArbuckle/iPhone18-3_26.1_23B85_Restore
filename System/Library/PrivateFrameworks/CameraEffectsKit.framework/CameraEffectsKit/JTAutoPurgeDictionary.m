@interface JTAutoPurgeDictionary
- (JTAutoPurgeDictionary)init;
- (JTAutoPurgeDictionaryDelegate)delegate;
- (id)copyOfDictionary;
- (id)description;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)addEntriesFromDictionary:(id)a3;
- (void)dealloc;
- (void)highMemoryWarning;
- (void)removeAllObjects;
- (void)setObject:(id)a3 forKey:(id)a4;
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

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_highMemoryWarning name:*MEMORY[0x277D76670] object:0];
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

- (void)addEntriesFromDictionary:(id)a3
{
  v5 = a3;
  v4 = self->_dictionary;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_dictionary addEntriesFromDictionary:v5];
  objc_sync_exit(v4);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self->_dictionary;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->_dictionary setObject:v8 forKey:v6];
  objc_sync_exit(v7);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = self->_dictionary;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:v4];
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
    v3 = [(JTAutoPurgeDictionary *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(JTAutoPurgeDictionary *)self delegate];
      [v5 didPurgeItems:self];
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76670] object:0];

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
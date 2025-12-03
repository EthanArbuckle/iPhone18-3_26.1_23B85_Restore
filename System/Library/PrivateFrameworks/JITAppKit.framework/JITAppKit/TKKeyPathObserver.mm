@interface TKKeyPathObserver
- (TKKeyPathObserver)initWithBlock:(id)block;
- (void)dealloc;
- (void)observe:(id)observe keyPath:(id)path;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)stopObserving;
@end

@implementation TKKeyPathObserver

- (TKKeyPathObserver)initWithBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v3 = selfCopy;
  selfCopy = 0;
  v10.receiver = v3;
  v10.super_class = TKKeyPathObserver;
  selfCopy = [(TKKeyPathObserver *)&v10 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = _Block_copy(location[0]);
    block = selfCopy->_block;
    selfCopy->_block = v4;
    MEMORY[0x277D82BD8](block);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observations = selfCopy->_observations;
    selfCopy->_observations = v6;
    MEMORY[0x277D82BD8](observations);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(TKKeyPathObserver *)self stopObserving];
  v2.receiver = selfCopy;
  v2.super_class = TKKeyPathObserver;
  [(TKKeyPathObserver *)&v2 dealloc];
}

- (void)observe:(id)observe keyPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observe);
  v6 = 0;
  objc_storeStrong(&v6, path);
  v5 = objc_alloc_init(TKKeyPathObservation);
  [(TKKeyPathObservation *)v5 setObject:location[0]];
  [(TKKeyPathObservation *)v5 setKeyPath:v6];
  [(NSMutableArray *)selfCopy->_observations addObject:v5];
  [location[0] addObserver:selfCopy forKeyPath:v6 options:0 context:0];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)stopObserving
{
  selfCopy = self;
  v8[1] = a2;
  observations = self->_observations;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __34__TKKeyPathObserver_stopObserving__block_invoke;
  v7 = &unk_2797EE6B0;
  v8[0] = MEMORY[0x277D82BE0](self);
  [(NSMutableArray *)observations enumerateObjectsUsingBlock:?];
  [(NSMutableArray *)selfCopy->_observations removeAllObjects];
  objc_storeStrong(v8, 0);
}

void __34__TKKeyPathObserver_stopObserving__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[3] = a3;
  v9[2] = a4;
  v9[1] = a1;
  v9[0] = [location[0] object];
  if (v9[0])
  {
    v4 = a1[4];
    v5 = [location[0] keyPath];
    [v9[0] removeObserver:v4 forKeyPath:?];
    MEMORY[0x277D82BD8](v5);
  }

  [location[0] setObject:?];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v9 = 0;
  objc_storeStrong(&v9, object);
  v8 = 0;
  objc_storeStrong(&v8, change);
  if (v9 && location[0])
  {
    (*(selfCopy->_block + 2))();
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
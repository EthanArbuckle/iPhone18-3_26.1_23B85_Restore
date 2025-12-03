@interface CatalogsCache
- (id)init:(unsigned int)init evictionHandler:(id)handler;
- (void)flush;
@end

@implementation CatalogsCache

- (void)flush
{
  cache = [(CatalogsCache *)self cache];
  [cache removeAllObjects];
}

- (id)init:(unsigned int)init evictionHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = CatalogsCache;
  v7 = [(CatalogsCache *)&v14 init];
  if (v7)
  {
    v8 = [_OSLogLRUCache alloc];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__CatalogsCache_init_evictionHandler___block_invoke;
    v12[3] = &unk_2787AE660;
    v13 = handlerCopy;
    v9 = [(_OSLogLRUCache *)v8 initWithName:@"clientCatalogCache" maxCount:init evictionHandler:v12];
    cache = v7->_cache;
    v7->_cache = v9;
  }

  return v7;
}

void __38__CatalogsCache_init_evictionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (!v7 || (v5 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    qword_27DA52778 = "BUG IN LIBTRACE: CatalogsCache EvictionHandler was given a bad key!";
    qword_27DA527A8 = v7;
    __break(1u);
LABEL_9:
    qword_27DA52778 = "BUG IN LIBTRACE: CatalogsCache EvictionHandler was given a bad value!";
    qword_27DA527A8 = v5;
    __break(1u);
    return;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  v10 = v5;
  v14 = v7;
  v11 = [v14 fileIndex];
  v12 = [v14 chunk_offset];

  v13 = [v10 pointerValue];
  (*(v9 + 16))(v9, v11, v12, v13);
}

@end
@interface DataCache
- (id)init:(unsigned int)a3 evictionHandler:(id)a4;
- (void)flush;
@end

@implementation DataCache

- (void)flush
{
  v2 = [(DataCache *)self cache];
  [v2 removeAllObjects];
}

- (id)init:(unsigned int)a3 evictionHandler:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = DataCache;
  v7 = [(DataCache *)&v14 init];
  if (v7)
  {
    v8 = [_OSLogLRUCache alloc];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__DataCache_init_evictionHandler___block_invoke;
    v12[3] = &unk_2787AE660;
    v13 = v6;
    v9 = [(_OSLogLRUCache *)v8 initWithName:@"clientDataCache" maxCount:a3 evictionHandler:v12];
    cache = v7->_cache;
    v7->_cache = v9;
  }

  return v7;
}

void __34__DataCache_init_evictionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (!v7 || (v6 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    qword_27DA52778 = "BUG IN LIBTRACE: DataCache EvictionHandler was given a bad key!";
    qword_27DA527A8 = v7;
    __break(1u);
LABEL_9:
    qword_27DA52778 = "BUG IN LIBTRACE: DataCache EvictionHandler was given a bad value!";
    qword_27DA527A8 = v6;
    __break(1u);
    return;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = v6;
  v16 = v7;
  v10 = [v9 objectForKeyedSubscript:@"data_key"];
  v11 = [v9 objectForKeyedSubscript:@"algo_key"];

  v12 = [v11 unsignedIntValue];
  v13 = *(a1 + 32);
  v14 = [v16 fileIndex];
  v15 = [v16 chunk_offset];

  (*(v13 + 16))(v13, v14, v15, v12, [v10 pointerValue]);
}

@end
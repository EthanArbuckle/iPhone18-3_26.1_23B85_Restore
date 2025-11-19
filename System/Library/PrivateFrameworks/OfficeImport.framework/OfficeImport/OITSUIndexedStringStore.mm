@interface OITSUIndexedStringStore
- (OITSUIndexedStringStore)init;
- (id)stringForIndex:(unint64_t)a3;
- (unint64_t)indexForString:(id)a3;
- (void)dealloc;
@end

@implementation OITSUIndexedStringStore

- (OITSUIndexedStringStore)init
{
  v4.receiver = self;
  v4.super_class = OITSUIndexedStringStore;
  v2 = [(OITSUIndexedStringStore *)&v4 init];
  if (v2)
  {
    v2->_indexByString = objc_opt_new();
    v2->_stringByIndex = objc_opt_new();
    v2->_accessQueue = dispatch_queue_create("com.apple.iWork.TSUIndexedStringStore", 0);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUIndexedStringStore;
  [(OITSUIndexedStringStore *)&v3 dealloc];
}

- (unint64_t)indexForString:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [a3 length];
  if (a3 && v5)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__OITSUIndexedStringStore_indexForString___block_invoke;
    block[3] = &unk_2799C60D8;
    block[4] = self;
    block[5] = a3;
    block[6] = &v10;
    dispatch_sync(accessQueue, block);
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __42__OITSUIndexedStringStore_indexForString___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = [v2 unsignedIntegerValue];
  }

  else
  {
    [*(a1[4] + 24) addObject:a1[5]];
    *(*(a1[6] + 8) + 24) = [*(a1[4] + 24) count];
    v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
    [*(a1[4] + 16) setObject:v3 forKey:a1[5]];
  }
}

- (id)stringForIndex:(unint64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  if (a3)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__OITSUIndexedStringStore_stringForIndex___block_invoke;
    block[3] = &unk_2799C6100;
    block[5] = &v8;
    block[6] = a3;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    v4 = v9[5];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __42__OITSUIndexedStringStore_stringForIndex___block_invoke(void *a1)
{
  v2 = a1[6];
  result = [*(a1[4] + 24) count];
  if (v2 <= result)
  {
    result = [*(a1[4] + 24) objectAtIndex:a1[6] - 1];
    *(*(a1[5] + 8) + 40) = result;
  }

  return result;
}

@end
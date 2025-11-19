@interface STStorage
- (STStorage)initWithCStorage:(_Storage *)a3;
- (id)getChildrenInfo;
- (id)getInfo;
- (id)openStorage:(id)a3 withMode:(int)a4;
- (id)openStream:(id)a3 withMode:(int)a4;
- (int)getChildType:(id)a3;
- (void)close;
- (void)dealloc;
- (void)setClass:(id)a3;
@end

@implementation STStorage

- (STStorage)initWithCStorage:(_Storage *)a3
{
  v8.receiver = self;
  v8.super_class = STStorage;
  v4 = [(STSStgObject *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->m_pCStorage = a3;
    v6 = v4;
  }

  return v5;
}

- (void)dealloc
{
  [(STStorage *)self close];
  v3.receiver = self;
  v3.super_class = STStorage;
  [(STStorage *)&v3 dealloc];
}

- (void)close
{
  if (self->m_pCStorage)
  {
    closeStorage(&self->m_pCStorage);
  }
}

- (id)openStream:(id)a3 withMode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v13 = 0;
  v7 = StgModeFromSTStgMode(v4);
  if (v7 == 1)
  {
    v8 = createStream(self->m_pCStorage, [v6 cWideString], &v13);
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = openStream(self->m_pCStorage, [v6 cWideString], &v13);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  [STSStgObject throwIfError:v9];
  v10 = [STStream alloc];
  v11 = [(STStream *)v10 initWithCStream:v13];
  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  return v11;
}

- (id)openStorage:(id)a3 withMode:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v13 = 0;
  v7 = StgModeFromSTStgMode(v4);
  if (v7 == 1)
  {
    v8 = createStorage(self->m_pCStorage, [v6 cWideString], &v13);
    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = openStorage(self->m_pCStorage, [v6 cWideString], &v13);
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  [STSStgObject throwIfError:v9];
  v10 = [STStorage alloc];
  v11 = [(STStorage *)v10 initWithCStorage:v13];
  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  return v11;
}

- (id)getInfo
{
  v6 = 0;
  [STSStgObject throwIfError:getStorageInfo(self->m_pCStorage, &v6)];
  v2 = [STStgInfo alloc];
  v3 = [(STStgInfo *)v2 initWithStgInfo:v6];
  v4 = freeInfo(v6, 1u);
  free(v6);
  [STSStgObject throwIfError:v4];
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  return v3;
}

- (id)getChildrenInfo
{
  v11 = 0;
  v10 = 0;
  [STSStgObject throwIfError:getChildrenInfo(self->m_pCStorage, &v11, &v10)];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277CBE728];
  if (!v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Structured Storage library memory failure"];
  }

  if (v10 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v3;
    do
    {
      v7 = [STStgInfo alloc];
      v8 = [(STStgInfo *)v7 initWithStgInfo:&v11[v4]];
      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:v6 format:@"Structured Storage library memory failure"];
      }

      [v2 addObject:v8];

      ++v5;
      v4 += 8;
    }

    while (v5 < v10);
  }

  return v2;
}

- (int)getChildType:(id)a3
{
  ChildType = getChildType(self->m_pCStorage, [a3 cWideString]);
  if (ChildType >= 3)
  {
    return -1;
  }

  else
  {
    return ChildType - 1;
  }
}

- (void)setClass:(id)a3
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [STSStgObject throwIfError:storageSetClass(self->m_pCStorage, &v3)];
}

@end
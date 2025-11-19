@interface TSUSparseArray
+ (id)array;
- (BOOL)hasObjectForKey:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)objectForKey:(unint64_t)a3;
- (unint64_t)maxIndexForCurrentDepth;
- (void)clear;
- (void)dealloc;
- (void)foreach:(id)a3;
- (void)increaseDepth;
- (void)setObject:(id)a3 forKey:(unint64_t)a4;
@end

@implementation TSUSparseArray

+ (id)array
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUSparseArray;
  [(TSUSparseArray *)&v4 dealloc];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__7;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>:", objc_opt_class(), self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TSUSparseArray_description__block_invoke;
  v5[3] = &unk_2799C68F8;
  v5[4] = &v6;
  [(TSUSparseArray *)self foreach:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__TSUSparseArray_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n   [%lu] = %@", *(*(*(a1 + 32) + 8) + 40), a3, v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)maxIndexForCurrentDepth
{
  depth = self->_depth;
  if (!depth)
  {
    return 0;
  }

  v3 = 8 * depth;
  if (8 * depth >= 0x21)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSparseArray maxIndexForCurrentDepth]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUSparseArray.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:215 isFatal:0 description:"Not expecting a shiftedDepth larger than 32"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  return ~(-1 << v3);
}

- (id)objectForKey:(unint64_t)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  depth = self->_depth;
  if (depth && (v6 = [(TSUSparseArray *)self maxIndexForCurrentDepth], v6 >= a3))
  {
    MEMORY[0x28223BE20](v6);
    v9 = v18 - v8;
    topPage = self->_topPage;
    v11 = depth - 1;
    v12 = depth;
    do
    {
      *&v9[8 * v11] = a3;
      a3 >>= 8;
      --v11;
      --v12;
    }

    while (v12);
    v13 = (depth - 1);
    if (depth == 1)
    {
      v13 = 0;
LABEL_12:
      v7 = topPage[*&v9[8 * v13] + 1].var0;
    }

    else
    {
      v14 = (depth - 1);
      v15 = v9;
      while (1)
      {
        v16 = *v15++;
        topPage = topPage[v16 + 1].var0;
        if (!topPage)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_12;
        }
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)increaseDepth
{
  depth = self->_depth;
  if (depth)
  {
    if (depth >= 4)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSparseArray increaseDepth]"];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUSparseArray.mm"];
      [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:249 isFatal:1 description:"TSUSparseArray - getting too deep"];

      TSUCrash("TSUSparseArray - getting too deep", v5, v6, v7, v8, v9, v10, v11, v12);
    }

    operator new();
  }

  operator new();
}

- (void)setObject:(id)a3 forKey:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = a3;
  while (1)
  {
    v6 = [(TSUSparseArray *)self maxIndexForCurrentDepth:v16];
    if (v6 >= a4)
    {
      if (self->_depth)
      {
        break;
      }
    }

    [(TSUSparseArray *)self increaseDepth];
  }

  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  depth = self->_depth;
  if (depth)
  {
    v10 = depth - 1;
    v11 = self->_depth;
    do
    {
      *&v8[8 * v10] = a4;
      a4 >>= 8;
      --v10;
      --v11;
    }

    while (v11);
    topPage = self->_topPage;
    if (depth == 1)
    {
      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    topPage = self->_topPage;
  }

  v14 = 0;
  do
  {
    topPage = topPage[*&v8[8 * v14] + 1].var0;
    if (!topPage)
    {
      if (v14 == depth - 2)
      {
        operator new();
      }

      operator new();
    }

    ++v14;
    v13 = depth - 1;
  }

  while (v14 < v13);
LABEL_17:
  self->_nonNilCount += tsuSaObjectPage::setObjectAtIndex(topPage, v16, *&v8[8 * v13]);
  v15 = v16;
}

- (BOOL)hasObjectForKey:(unint64_t)a3
{
  v3 = [(TSUSparseArray *)self objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)foreach:(id)a3
{
  v4 = a3;
  topPage = self->_topPage;
  if (topPage)
  {
    v6 = 0;
    (*(topPage->var0 + 2))(topPage, v4, 0, &v6);
  }
}

- (void)clear
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
    self->_depth = 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  *(v4 + 24) = self->_depth;
  topPage = self->_topPage;
  *(v4 + 16) = self->_nonNilCount;
  if (topPage)
  {
    topPage = (*(topPage->var0 + 3))(topPage);
  }

  *(v4 + 8) = topPage;
  return v4;
}

@end
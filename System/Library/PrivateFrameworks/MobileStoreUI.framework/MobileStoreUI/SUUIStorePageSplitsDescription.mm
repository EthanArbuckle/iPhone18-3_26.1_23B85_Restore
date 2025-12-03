@interface SUUIStorePageSplitsDescription
- (SUUIStorePageSplit)firstSplit;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)numberOfSplits;
- (void)enumerateSplitsUsingBlock:(id)block;
- (void)sizeSplitsToFitWidth:(double)width usingBlock:(id)block;
@end

@implementation SUUIStorePageSplitsDescription

- (void)enumerateSplitsUsingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = self->_topSplit;
  v6 = self->_leftSplit;
  v7 = self->_rightSplit;
  v8 = self->_bottomSplit;
  v9 = 0;
  v10 = 0;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  v16[0] = v12;
  v16[1] = v11;
  do
  {
    v15 = 0;
    v13 = *(v16 + v9);
    if (v13)
    {
      blockCopy[2](blockCopy, v13, v10, &v15);
      if (v15)
      {
        break;
      }

      ++v10;
    }

    v9 += 8;
  }

  while (v9 != 32);
  for (i = 24; i != -8; i -= 8)
  {
  }
}

- (SUUIStorePageSplit)firstSplit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__55;
  v9 = __Block_byref_object_dispose__55;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUUIStorePageSplitsDescription_firstSplit__block_invoke;
  v4[3] = &unk_2798FB5D8;
  v4[4] = &v5;
  [(SUUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (int64_t)numberOfSplits
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SUUIStorePageSplitsDescription_numberOfSplits__block_invoke;
  v4[3] = &unk_2798FB5D8;
  v4[4] = &v5;
  [(SUUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)sizeSplitsToFitWidth:(double)width usingBlock:(id)block
{
  blockCopy = block;
  rightSplit = self->_rightSplit;
  if (!rightSplit)
  {
    rightSplit = self->_leftSplit;
  }

  v8 = rightSplit;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  *&v16[3] = width;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SUUIStorePageSplitsDescription_sizeSplitsToFitWidth_usingBlock___block_invoke;
  v11[3] = &unk_2798FB600;
  v11[4] = self;
  v9 = blockCopy;
  v13 = v9;
  widthCopy = width;
  v10 = v8;
  v12 = v10;
  v14 = v16;
  [(SUUIStorePageSplitsDescription *)self enumerateSplitsUsingBlock:v11];

  _Block_object_dispose(v16, 8);
}

void __66__SUUIStorePageSplitsDescription_sizeSplitsToFitWidth_usingBlock___block_invoke(double *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = v7;
  v10 = *(a1 + 4);
  v16 = v7;
  if (v10[4] == v7 || v10[1] == v7)
  {
    v15 = *(a1 + 6);
    v8.n128_f64[0] = a1[8];
LABEL_8:
    (*(v15 + 16))(v15, v9, a3, a4, v8);
    goto LABEL_9;
  }

  if (*(a1 + 5) == v7)
  {
    v15 = *(a1 + 6);
    v8.n128_u64[0] = *(*(*(a1 + 7) + 8) + 24);
    goto LABEL_8;
  }

  [v10[2] widthFraction];
  if (v11 < 0.00000011920929)
  {
    [*(*(a1 + 4) + 24) widthFraction];
    v11 = 1.0 - v12;
  }

  v13 = v11 * a1[8];
  v14 = roundf(v13);
  (*(*(a1 + 6) + 16))(v14);
  *(*(*(a1 + 7) + 8) + 24) = *(*(*(a1 + 7) + 8) + 24) - v14;
LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setBottomSplit:self->_bottomSplit];
  [v4 setLeftSplit:self->_leftSplit];
  [v4 setRightSplit:self->_rightSplit];
  [v4 setTopSplit:self->_topSplit];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIStorePageSplitsDescription;
  v4 = [(SUUIStorePageSplitsDescription *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Splits: [T: %@, L: %@, R: %@, B: %@]", v4, self->_topSplit, self->_leftSplit, self->_rightSplit, self->_bottomSplit];

  return v5;
}

@end
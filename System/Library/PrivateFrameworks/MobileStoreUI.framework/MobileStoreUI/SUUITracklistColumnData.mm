@interface SUUITracklistColumnData
- (SUUITracklistColumnData)initWithRepresentativeTrack:(id)track;
- (id)_initSUUITracklistColumnData;
- (id)columnForIdentifier:(int64_t)identifier;
- (id)viewElementsForTrack:(id)track columnIndex:(int64_t)index;
- (void)adjustColumnsToFitWidth:(double)width;
- (void)enumerateColumnsForHeader:(id)header usingBlock:(id)block;
- (void)enumerateColumnsForTrack:(id)track usingBlock:(id)block;
@end

@implementation SUUITracklistColumnData

- (id)_initSUUITracklistColumnData
{
  v3.receiver = self;
  v3.super_class = SUUITracklistColumnData;
  result = [(SUUITracklistColumnData *)&v3 init];
  if (result)
  {
    *(result + 4) = 0x402E000000000000;
    *(result + 1) = xmmword_259FCAAE0;
  }

  return result;
}

- (SUUITracklistColumnData)initWithRepresentativeTrack:(id)track
{
  trackCopy = track;
  _initSUUITracklistColumnData = [(SUUITracklistColumnData *)self _initSUUITracklistColumnData];
  if (_initSUUITracklistColumnData)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__27;
    v22 = __Block_byref_object_dispose__27;
    v23 = 0;
    flattenedChildren = [trackCopy flattenedChildren];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__SUUITracklistColumnData_initWithRepresentativeTrack___block_invoke;
    v15 = &unk_2798F86F8;
    v17 = &v18;
    v8 = v6;
    v16 = v8;
    [flattenedChildren enumerateObjectsUsingBlock:&v12];
    if (v19[5])
    {
      [v8 addObject:{v12, v13, v14, v15}];
    }

    v9 = [v8 copy];
    columns = _initSUUITracklistColumnData->_columns;
    _initSUUITracklistColumnData->_columns = v9;

    _Block_object_dispose(&v18, 8);
  }

  return _initSUUITracklistColumnData;
}

void __55__SUUITracklistColumnData_initWithRepresentativeTrack___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = SUUITrackListColumnIdentifierForViewElement(v18);
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    if (v3 != 2)
    {
      v8 = [*(v6 + 40) columnIdentifier];
      v5 = *(a1 + 40);
      if (v8 == v4)
      {
        goto LABEL_6;
      }

      v7 = *(*(v5 + 8) + 40);
    }

    [*(a1 + 32) addObject:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v5 = *(a1 + 40);
  }

LABEL_6:
  if (*(*(v5 + 8) + 40))
  {
    goto LABEL_19;
  }

  v11 = objc_alloc_init(SUUITracklistColumn);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  [*(*(*(a1 + 40) + 8) + 40) setColumnIdentifier:v4];
  [*(*(*(a1 + 40) + 8) + 40) setShowsPreviewControl:{objc_msgSend(v18, "elementType") == 90}];
  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_15;
    }

    if (v4 == 4)
    {
      [v14 setSizesToFit:1];
      v14 = *(*(*(a1 + 40) + 8) + 40);
      v15 = 0;
      goto LABEL_14;
    }

LABEL_16:
    v16 = 1;
    v17 = 1;
    goto LABEL_17;
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  if (v4 != 1)
  {
LABEL_15:
    v16 = 2;
    v17 = 2;
LABEL_17:
    [v14 setContentAlignment:v17];
    goto LABEL_18;
  }

  v15 = 2;
LABEL_14:
  [v14 setContentAlignment:v15];
  v16 = 0;
LABEL_18:
  [*(*(*(a1 + 40) + 8) + 40) setHeaderAlignment:v16];
LABEL_19:
}

- (void)adjustColumnsToFitWidth:(double)width
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_columns;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v6)
  {
LABEL_25:

    return;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v34;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v33 + 1) + 8 * i);
      if ([v12 sizesToFit])
      {
        ++v8;
      }

      else
      {
        [v12 preferredWidth];
        v14 = v13;
        [v12 maximumWidthFraction];
        if (v15 > 0.00000011920929)
        {
          v16 = v15 * width;
          if (v14 < v16)
          {
            v16 = v14;
          }

          v17 = v16;
          v14 = floorf(v17);
        }

        [v12 setWidth:v14];
        v10 = v10 + v14;
      }
    }

    v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v7);

  if (v8 >= 1)
  {
    leftEdgeInset = self->_leftEdgeInset;
    rightEdgeInset = self->_rightEdgeInset;
    v20 = [(NSArray *)self->_columns count];
    interColumnSpacing = self->_interColumnSpacing;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_columns;
    v22 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = (width - leftEdgeInset - rightEdgeInset - (v20 - 1) * interColumnSpacing - v10) / v8;
      v25 = floorf(v24);
      v26 = *v30;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(v5);
          }

          v28 = *(*(&v29 + 1) + 8 * j);
          if ([v28 sizesToFit])
          {
            [v28 setWidth:v25];
          }
        }

        v23 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v23);
    }

    goto LABEL_25;
  }
}

- (id)columnForIdentifier:(int64_t)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_columns;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 columnIdentifier] == identifier)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)enumerateColumnsForHeader:(id)header usingBlock:(id)block
{
  blockCopy = block;
  columns = self->_columns;
  headerCopy = header;
  v9 = [(NSArray *)columns count];
  titleLabels = [headerCopy titleLabels];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SUUITracklistColumnData_enumerateColumnsForHeader_usingBlock___block_invoke;
  v12[3] = &unk_2798F8720;
  v13 = blockCopy;
  v14 = v9;
  v12[4] = self;
  v11 = blockCopy;
  [titleLabels enumerateObjectsUsingBlock:v12];
}

void __64__SUUITracklistColumnData_enumerateColumnsForHeader_usingBlock___block_invoke(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (a1[6] > a3)
  {
    v10 = v5;
    v6 = [v5 text];
    v7 = [v6 string];
    v8 = [v7 length];

    v5 = v10;
    if (v8)
    {
      v9 = [*(a1[4] + 8) objectAtIndex:a3];
      (*(a1[5] + 16))();

      v5 = v10;
    }
  }
}

- (void)enumerateColumnsForTrack:(id)track usingBlock:(id)block
{
  trackCopy = track;
  blockCopy = block;
  flattenedChildren = [trackCopy flattenedChildren];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v9 = [flattenedChildren count];
  columns = self->_columns;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SUUITracklistColumnData_enumerateColumnsForTrack_usingBlock___block_invoke;
  v13[3] = &unk_2798F8748;
  v16 = v18;
  v17 = v9;
  v11 = flattenedChildren;
  v14 = v11;
  v12 = blockCopy;
  v15 = v12;
  [(NSArray *)columns enumerateObjectsUsingBlock:v13];

  _Block_object_dispose(v18, 8);
}

void __63__SUUITracklistColumnData_enumerateColumnsForTrack_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = *(*(*(a1 + 48) + 8) + 24);
  if (v5 < *(a1 + 56))
  {
    while (1)
    {
      v6 = [*(a1 + 32) objectAtIndex:v5];
      if ([v6 elementType] == 90)
      {
        v7 = [v6 flattenedChildren];
        v8 = [v7 firstObject];

        v6 = v8;
      }

      v9 = SUUITrackListColumnIdentifierForViewElement(v6);
      if (v9 != [v10 columnIdentifier])
      {
        break;
      }

      [v4 addObject:v6];

      if (v9 != 2 && ++v5 < *(a1 + 56))
      {
        continue;
      }

      goto LABEL_9;
    }
  }

LABEL_9:
  (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) += [v4 count];

  objc_autoreleasePoolPop(v3);
}

- (id)viewElementsForTrack:(id)track columnIndex:(int64_t)index
{
  trackCopy = track;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__27;
  v14 = __Block_byref_object_dispose__27;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SUUITracklistColumnData_viewElementsForTrack_columnIndex___block_invoke;
  v9[3] = &unk_2798F8770;
  v9[4] = &v10;
  v9[5] = index;
  [(SUUITracklistColumnData *)self enumerateColumnsForTrack:trackCopy usingBlock:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __60__SUUITracklistColumnData_viewElementsForTrack_columnIndex___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 40) == a4)
  {
    v7 = [a3 copy];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a5 = 1;
  }
}

@end
@interface SUUIEditorialLinkLayout
- (CGSize)sizeForLinkAtIndex:(int64_t)index;
- (CGSize)totalSize;
- (SUUIEditorialLinkLayout)initWithLayoutRequest:(id)request;
- (void)dealloc;
- (void)enumerateLinesUsingBlock:(id)block;
@end

@implementation SUUIEditorialLinkLayout

- (SUUIEditorialLinkLayout)initWithLayoutRequest:(id)request
{
  requestCopy = request;
  v43.receiver = self;
  v43.super_class = SUUIEditorialLinkLayout;
  v5 = [(SUUIEditorialLinkLayout *)&v43 init];
  if (v5)
  {
    [requestCopy width];
    v5->_totalSize.width = v6;
    links = [requestCopy links];
    v8 = [links copy];
    links = v5->_links;
    v5->_links = v8;

    v10 = [(NSArray *)v5->_links count];
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = malloc_type_malloc(16 * v10, 0x1000040451B5BE8uLL);
      v5->_sizes = v12;
      if (v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [v13 setObject:v14 forKey:*MEMORY[0x277D740A8]];

        v15 = SUUIBundle();
        blackColor = [MEMORY[0x277D75348] blackColor];
        v17 = SUUILinkArrowImage(v15, blackColor);

        [v17 size];
        v19 = v18;
        v21 = v20;
        v22 = 0;
        v23 = 0;
        v24 = 0.0;
        do
        {
          v25 = [(NSArray *)v5->_links objectAtIndex:v23];
          title = [v25 title];
          [title sizeWithAttributes:v13];
          v28 = v27;
          v30 = v29;

          v31 = v30;
          v32 = ceilf(v31);
          if (v21 >= v32)
          {
            v32 = v21;
          }

          p_width = &v5->_sizes[v22].width;
          v34 = v19 + v28 + 3.0;
          *p_width = ceilf(v34);
          p_width[1] = v32;
          if (v24 < v32)
          {
            v24 = v32;
          }

          ++v23;
          ++v22;
        }

        while (v11 != v23);
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __49__SUUIEditorialLinkLayout_initWithLayoutRequest___block_invoke;
        v38[3] = &unk_2798FD3B0;
        v38[4] = &v39;
        [(SUUIEditorialLinkLayout *)v5 enumerateLinesUsingBlock:v38];
        v35 = v40[3];
        v36 = v24 * v35;
        if (v35 >= 2)
        {
          v36 = v36 + ((v35 - 1) * 8.0);
        }

        v5->_totalSize.height = v36;
        _Block_object_dispose(&v39, 8);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  sizes = self->_sizes;
  if (sizes)
  {
    free(sizes);
  }

  v4.receiver = self;
  v4.super_class = SUUIEditorialLinkLayout;
  [(SUUIEditorialLinkLayout *)&v4 dealloc];
}

- (void)enumerateLinesUsingBlock:(id)block
{
  blockCopy = block;
  v4 = [(NSArray *)self->_links count];
  v6 = blockCopy;
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v5.n128_u64[0] = 0;
    do
    {
      width = self->_sizes[v10].width;
      v12 = self->_totalSize.width;
      if (width >= v12)
      {
        if (v9)
        {
          (v6)[2](blockCopy, v8, v9, v7, v5);
          v6 = blockCopy;
          ++v7;
          v8 = v10;
        }

        (v6)[2](blockCopy, v8, 1, v7, v5);
        v6 = blockCopy;
        v9 = 0;
        ++v10;
        ++v7;
        v5.n128_u64[0] = 0;
        v8 = v10;
      }

      else
      {
        v13 = v5.n128_f64[0] + width;
        if (v5.n128_f64[0] + width >= v12)
        {
          (v6[2])(blockCopy, v8, v10 - v8, v7);
          v6 = blockCopy;
          v9 = 0;
          v13 = self->_sizes[v10].width;
          ++v7;
          v8 = v10;
        }

        else
        {
          ++v9;
        }

        if (v10 == v4 - 1)
        {
          v9 = v4 - v8;
          (v6[2])(blockCopy, v8, v4 - v8, v7);
          v6 = blockCopy;
        }

        v5.n128_f64[0] = v13 + 15.0;
        ++v10;
      }
    }

    while (v10 != v4);
  }
}

- (CGSize)sizeForLinkAtIndex:(int64_t)index
{
  if (!self->_sizes || [(NSArray *)self->_links count]<= index)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid index: %ld", index}];
  }

  v5 = &self->_sizes[index];
  width = v5->width;
  height = v5->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)totalSize
{
  width = self->_totalSize.width;
  height = self->_totalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
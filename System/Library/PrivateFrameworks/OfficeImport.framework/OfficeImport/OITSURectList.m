@interface OITSURectList
+ (id)rectListWithDifference:(CGRect)a3 withRect:(CGRect)a4;
- (CGRect)rectAtIndex:(unint64_t)a3;
- (OITSURectList)initWithRect:(CGRect)a3;
- (OITSURectList)initWithRectList:(id)a3;
- (id).cxx_construct;
- (void)addRect:(CGRect)a3;
@end

@implementation OITSURectList

- (OITSURectList)initWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(OITSURectList *)self init];
  v8 = v7;
  if (v7)
  {
    std::vector<CGRect>::resize(&v7->mRectList.__begin_, 1uLL);
    p_x = &v8->mRectList.__begin_->origin.x;
    *p_x = x;
    p_x[1] = y;
    p_x[2] = width;
    p_x[3] = height;
  }

  return v8;
}

- (OITSURectList)initWithRectList:(id)a3
{
  v4 = [(OITSURectList *)self init];
  if (v4)
  {
    std::vector<CGRect>::resize(&v4->mRectList.__begin_, [a3 count]);
    if ([a3 count])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        [a3 rectAtIndex:v6];
        p_x = &v4->mRectList.__begin_[v5].origin.x;
        *p_x = v8;
        p_x[1] = v9;
        p_x[2] = v10;
        p_x[3] = v11;
        ++v6;
        ++v5;
      }

      while (v6 < [a3 count]);
    }
  }

  return v4;
}

- (void)addRect:(CGRect)a3
{
  end = self->mRectList.__end_;
  cap = self->mRectList.__cap_;
  if (end >= cap)
  {
    begin = self->mRectList.__begin_;
    v8 = end - begin;
    v9 = end - begin;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<std::shared_ptr<TSUStringChunk>>::__throw_length_error[abi:ne200100]();
    }

    v11 = cap - begin;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(&self->mRectList, v10);
    }

    *(32 * v9) = a3;
    v6 = (32 * v9 + 32);
    memcpy(0, begin, v8);
    v12 = self->mRectList.__begin_;
    self->mRectList.__begin_ = 0;
    self->mRectList.__end_ = v6;
    self->mRectList.__cap_ = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *end = a3;
    v6 = end + 1;
  }

  self->mRectList.__end_ = v6;
}

- (CGRect)rectAtIndex:(unint64_t)a3
{
  begin = self->mRectList.__begin_;
  v8 = self->mRectList.__end_ - begin;
  if (v8 <= a3)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:@"IndexOutOfBound" reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"Getting object at %lu from an array with size %lu", a3, v8, v4, v3, v5, v6), 0}]);
  }

  p_x = &begin[a3].origin.x;
  v10 = *p_x;
  v11 = p_x[1];
  v12 = p_x[2];
  v13 = p_x[3];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (id)rectListWithDifference:(CGRect)a3 withRect:(CGRect)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28 = CGRectIntersection(a3, a4);
  v8 = v28.origin.x;
  v9 = v28.origin.y;
  v10 = v28.size.width;
  v11 = v28.size.height;
  v12 = objc_alloc_init(OITSURectList);
  v29.origin.x = v8;
  v29.origin.y = v9;
  v29.size.width = v10;
  v29.size.height = v11;
  if (CGRectIsEmpty(v29))
  {
    goto LABEL_22;
  }

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MinY = CGRectGetMinY(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxY = CGRectGetMaxY(v33);
  v34.origin.x = v8;
  v34.origin.y = v9;
  v34.size.width = v10;
  v34.size.height = v11;
  v14 = CGRectGetMinX(v34);
  v35.origin.x = v8;
  v35.origin.y = v9;
  v35.size.width = v10;
  v35.size.height = v11;
  v15 = CGRectGetMinY(v35);
  v36.origin.x = v8;
  v36.origin.y = v9;
  v36.size.width = v10;
  v36.size.height = v11;
  v26 = CGRectGetMaxX(v36);
  v37.origin.x = v8;
  v37.origin.y = v9;
  v37.size.width = v10;
  v37.size.height = v11;
  v16 = MinY;
  v17 = CGRectGetMaxY(v37);
  y = v17;
  if (MinY != v15)
  {
    v18 = MinX;
    if (MaxY == v17)
    {
      v20 = MaxX;
      if (MinX < v14)
      {
        [(OITSURectList *)v12 addRect:MinX, v15, v14 - MinX, MaxY - v15];
      }

      v19 = v26;
      if (v26 >= MaxX)
      {
        goto LABEL_18;
      }

      v21 = MaxY - v15;
    }

    else
    {
      v20 = MaxX;
      if (MinX < v14)
      {
        [(OITSURectList *)v12 addRect:MinX, v15, v14 - MinX, v17 - v15];
      }

      v19 = v26;
      if (v26 >= MaxX)
      {
        goto LABEL_18;
      }

      v21 = y - v15;
    }

    v22 = v15;
    goto LABEL_17;
  }

  v18 = MinX;
  if (MinX < v14)
  {
    [(OITSURectList *)v12 addRect:MinX, MinY, v14 - MinX, v17 - MinY];
  }

  v19 = v26;
  v20 = MaxX;
  if (v26 < MaxX)
  {
    v21 = y - MinY;
    v22 = MinY;
LABEL_17:
    [(OITSURectList *)v12 addRect:v19, v22, v20 - v19, v21, *&MinY];
  }

LABEL_18:
  if (v16 < v15)
  {
    [(OITSURectList *)v12 addRect:v18, v16, v20 - v18, v15 - v16];
  }

  if (y < MaxY)
  {
    width = v20 - v18;
    height = MaxY - y;
    x = v18;
LABEL_22:
    [(OITSURectList *)v12 addRect:x, y, width, height, *&MinY];
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end
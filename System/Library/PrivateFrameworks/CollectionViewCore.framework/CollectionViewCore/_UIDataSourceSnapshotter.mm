@interface _UIDataSourceSnapshotter
+ (id)snapshotterForDataSourceBackedView:(id)view;
+ (id)snapshotterForNoDataSource;
+ (id)snapshotterForSectionCountsProvider:(id)provider;
+ (id)snapshotterForSnapshot:(id)snapshot;
- (BOOL)_decrementSectionCount:(int64_t)count byCount:(int64_t)byCount;
- (BOOL)_deleteSection:(int64_t)section;
- (BOOL)_incrementSectionCount:(int64_t)count byCount:(int64_t)byCount;
- (BOOL)_insertSection:(int64_t)section withInitialCount:(int64_t)count;
- (BOOL)indexPathIsSectionAppendingInsert:(id)insert;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_NSRange)rangeForSection:(int64_t)section;
- (_UIDataSourceSnapshotter)initWithDataSourceBackedView:(id)view;
- (_UIDataSourceSnapshotter)initWithSectionCounts:(id)counts;
- (_UIDataSourceSnapshotter)initWithSectionCountsProvider:(id)provider;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathForAppendingInsertInSection:(int64_t)section;
- (id)indexPathForGlobalIndex:(int64_t)index;
- (id)snapshot;
- (int64_t)globalIndexForIndexPath:(id)path;
- (int64_t)numberOfItems;
- (int64_t)numberOfItemsBeforeSection:(int64_t)section;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)sectionForGlobalIndex:(int64_t)index;
- (void)_recomputeRangeLocations;
- (void)_resetToStateOfSnapshotter:(id)snapshotter;
@end

@implementation _UIDataSourceSnapshotter

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (int64_t)numberOfItems
{
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += begin->length;
    ++begin;
  }

  while (begin != end);
  return result;
}

- (void)_recomputeRangeLocations
{
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  if (begin != end)
  {
    v4 = 0;
    do
    {
      begin->location = v4;
      v4 += begin->length;
      ++begin;
    }

    while (begin != end);
  }
}

+ (id)snapshotterForDataSourceBackedView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithDataSourceBackedView:viewCopy];

  return v5;
}

+ (id)snapshotterForSectionCountsProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithSectionCountsProvider:providerCopy];

  return v5;
}

+ (id)snapshotterForNoDataSource
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)snapshotterForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [snapshotCopy copy];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51___UIDataSourceSnapshotter_snapshotterForSnapshot___block_invoke;
    v8[3] = &unk_278DE58E0;
    v9 = snapshotCopy;
    v6 = MEMORY[0x245D4B4A0](v8);
    v5 = [self snapshotterForSectionCountsProvider:v6];
  }

  return v5;
}

- (_UIDataSourceSnapshotter)initWithSectionCounts:(id)counts
{
  v19 = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v5 = [(_UIDataSourceSnapshotter *)self init];
  if ([countsCopy count])
  {
    std::vector<_NSRange>::reserve(&v5->_sectionRanges.__begin_, [countsCopy count]);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = countsCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          integerValue = [*(*(&v14 + 1) + 8 * v10) integerValue];
          *&v13 = v8;
          *(&v13 + 1) = integerValue;
          std::vector<_NSRange>::push_back[abi:nn200100](&v5->_sectionRanges, &v13);
          v8 += integerValue;
          ++v10;
        }

        while (v7 != v10);
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (_UIDataSourceSnapshotter)initWithDataSourceBackedView:(id)view
{
  viewCopy = view;
  v5 = [(_UIDataSourceSnapshotter *)self init];
  v6 = v5;
  if (v5)
  {
    _UIDataSourceSnapshotterCommonInit(v5, viewCopy, 0);
  }

  return v6;
}

- (_UIDataSourceSnapshotter)initWithSectionCountsProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(_UIDataSourceSnapshotter *)self init];
  v6 = v5;
  if (v5)
  {
    _UIDataSourceSnapshotterCommonInit(v5, 0, providerCopy);
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  numberOfSections = [(_UIDataSourceSnapshotter *)self numberOfSections];
  v8 = numberOfSections;
  v9 = @"s";
  v10 = numberOfSections - 1;
  if (numberOfSections == 1)
  {
    v9 = &stru_2856CCCD0;
  }

  [v6 appendFormat:@"%lu section%@ with item counts: [", numberOfSections, v9];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      [v6 appendFormat:@"%lu", -[_UIDataSourceSnapshotter numberOfItemsInSection:](self, "numberOfItemsInSection:", i)];
      if (i < v10)
      {
        [v6 appendString:{@", "}];
      }
    }
  }

  [v6 appendString:@"] >"];

  return v6;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  begin = self->_sectionRanges.__begin_;
  if (section >= self->_sectionRanges.__end_ - begin)
  {
    return 0;
  }

  else
  {
    return begin[section].length;
  }
}

- (int64_t)numberOfItemsBeforeSection:(int64_t)section
{
  begin = self->_sectionRanges.__begin_;
  if (section >= self->_sectionRanges.__end_ - begin)
  {
    return 0;
  }

  else
  {
    return begin[section].location;
  }
}

- (id)indexPathForGlobalIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || (begin = self->_sectionRanges.__begin_, end = self->_sectionRanges.__end_, begin == end))
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    while (index < begin->location || begin->length + begin->location <= index)
    {
      ++v7;
      if (++begin == end)
      {
        v8 = 0;
        goto LABEL_12;
      }
    }

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:index - begin->location inSection:{v7, v3}];
LABEL_12:
  }

  return v8;
}

- (int64_t)globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy)
  {
    begin = self->_sectionRanges.__begin_;
    end = self->_sectionRanges.__end_;
    section = [pathCopy section];
    v9 = section;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if ((section & 0x8000000000000000) == 0 && section < end - begin)
    {
      v11 = self->_sectionRanges.__begin_;
      item = [v5 item];
      if (item >= v11[v9].length || item <= -1)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v11[v9].location + item;
      }
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (_NSRange)rangeForSection:(int64_t)section
{
  v4 = 0;
  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if ((section & 0x8000000000000000) == 0)
  {
    p_sectionRanges = &self->_sectionRanges;
    begin = self->_sectionRanges.__begin_;
    if (p_sectionRanges->__end_ - begin > section)
    {
      p_location = &begin[section].location;
      v5 = *p_location;
      v4 = p_location[1];
    }
  }

  result.length = v4;
  result.location = v5;
  return result;
}

- (int64_t)sectionForGlobalIndex:(int64_t)index
{
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  if (begin == end)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  for (result = 0; index < begin->location || index - begin->location >= begin->length; ++result)
  {
    if (++begin == end)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      numberOfSections = [(_UIDataSourceSnapshotter *)v5 numberOfSections];
      if (numberOfSections == [(_UIDataSourceSnapshotter *)self numberOfSections]&& (v7 = [(_UIDataSourceSnapshotter *)v5 numberOfItems], v7 == [(_UIDataSourceSnapshotter *)self numberOfItems]))
      {
        begin = self->_sectionRanges.__begin_;
        end = self->_sectionRanges.__end_;
        if (begin == end)
        {
          LOBYTE(v16) = 1;
        }

        else
        {
          v10 = v5->_sectionRanges.__begin_;
          do
          {
            location = begin->location;
            length = begin->length;
            ++begin;
            v13 = v10->location;
            v14 = v10->length;
            ++v10;
            v16 = location == v13 && length == v14;
          }

          while (v16 && begin != end);
        }
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

- (BOOL)indexPathIsSectionAppendingInsert:(id)insert
{
  insertCopy = insert;
  v5 = insertCopy;
  if (insertCopy)
  {
    section = [insertCopy section];
    numberOfSections = [(_UIDataSourceSnapshotter *)self numberOfSections];
    item = [v5 item];
    v9 = [(_UIDataSourceSnapshotter *)self numberOfItemsInSection:section];
    v11 = section < numberOfSections && item == v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)indexPathForAppendingInsertInSection:(int64_t)section
{
  v5 = 0;
  if ((section & 0x8000000000000000) == 0)
  {
    if (self->_sectionRanges.__end_ - self->_sectionRanges.__begin_ > section)
    {
      v5 = [MEMORY[0x277CCAA70] indexPathForItem:-[_UIDataSourceSnapshotter numberOfItemsInSection:](self inSection:{"numberOfItemsInSection:", section), section}];
    }

    v3 = vars8;
  }

  return v5;
}

- (id)snapshot
{
  v2 = [(_UIDataSourceSnapshotter *)self copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_UIDataSourceSnapshotter);
  v5 = v4;
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  v8 = (end - begin) >> 4;
  if (v8 >= 1 && v4 != self)
  {
    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&v4->_sectionRanges.__begin_, begin, end, v8);
  }

  return v5;
}

- (BOOL)_decrementSectionCount:(int64_t)count byCount:(int64_t)byCount
{
  begin = self->_sectionRanges.__begin_;
  if (count >= self->_sectionRanges.__end_ - begin)
  {
    return 0;
  }

  v7 = &begin[count];
  length = v7->length;
  p_length = &v7->length;
  v10 = length - byCount;
  if (length < byCount)
  {
    return 0;
  }

  *p_length = v10;
  [(_UIDataSourceSnapshotter *)self _recomputeRangeLocations:v4];
  return 1;
}

- (BOOL)_deleteSection:(int64_t)section
{
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  v5 = end - begin;
  v7 = v5 > section && v5 > 0;
  if (v7)
  {
    v9 = &begin[section];
    v10 = (end - &v9[1]);
    if (end != &v9[1])
    {
      memmove(&begin[section], &v9[1], end - &v9[1]);
    }

    self->_sectionRanges.__end_ = &v10[v9];
    [(_UIDataSourceSnapshotter *)self _recomputeRangeLocations];
  }

  return v7;
}

- (BOOL)_incrementSectionCount:(int64_t)count byCount:(int64_t)byCount
{
  begin = self->_sectionRanges.__begin_;
  v6 = self->_sectionRanges.__end_ - begin;
  if (v6 > count)
  {
    begin[count].length += byCount;
    [(_UIDataSourceSnapshotter *)self _recomputeRangeLocations];
  }

  return v6 > count;
}

- (BOOL)_insertSection:(int64_t)section withInitialCount:(int64_t)count
{
  begin = self->_sectionRanges.__begin_;
  end = self->_sectionRanges.__end_;
  v7 = end - begin;
  if (v7 >= section)
  {
    v25.location = 0x7FFFFFFFFFFFFFFFLL;
    v25.length = count;
    v9 = &begin[section];
    cap = self->_sectionRanges.__cap_;
    if (end >= cap)
    {
      v13 = v7 + 1;
      if ((v7 + 1) >> 60)
      {
        std::vector<_NSRange>::__throw_length_error[abi:nn200100]();
      }

      v14 = cap - begin;
      if (v14 >> 3 > v13)
      {
        v13 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(v15);
      }

      v16 = 16 * section;
      if (!section)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<_NSRange>>(1uLL);
      }

      *v16 = v25;
      memcpy((v16 + 16), v9, self->_sectionRanges.__end_ - v9);
      v19 = self->_sectionRanges.__begin_;
      v20 = (v16 + 16 + self->_sectionRanges.__end_ - v9);
      self->_sectionRanges.__end_ = v9;
      v21 = v9 - v19;
      v22 = (v16 - (v9 - v19));
      memcpy(v22, v19, v21);
      v23 = self->_sectionRanges.__begin_;
      self->_sectionRanges.__begin_ = v22;
      self->_sectionRanges.__end_ = v20;
      self->_sectionRanges.__cap_ = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else if (v9 == end)
    {
      *end = v25;
      self->_sectionRanges.__end_ = end + 1;
    }

    else
    {
      v11 = v9 + 1;
      if (end < 0x10)
      {
        v12 = end;
      }

      else
      {
        v12 = end + 1;
        *end = end[-1];
      }

      self->_sectionRanges.__end_ = v12;
      if (end != v11)
      {
        memmove(&v9[1], v9, end - v11);
        v12 = self->_sectionRanges.__end_;
      }

      v17 = v12 <= &v25 || v9 > &v25;
      v18 = 16;
      if (v17)
      {
        v18 = 0;
      }

      *v9 = *(&v25 + v18);
    }

    [(_UIDataSourceSnapshotter *)self _recomputeRangeLocations];
  }

  return v7 >= section;
}

- (void)_resetToStateOfSnapshotter:(id)snapshotter
{
  snapshotterCopy = snapshotter;
  v7 = snapshotterCopy;
  if (!snapshotterCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDataSourceSnapshotter.mm" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"snapshotter != nil"}];

    snapshotterCopy = 0;
  }

  if (self != snapshotterCopy)
  {
    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(&self->_sectionRanges.__begin_, v7[1], v7[2], (v7[2] - v7[1]) >> 4);
  }
}

@end
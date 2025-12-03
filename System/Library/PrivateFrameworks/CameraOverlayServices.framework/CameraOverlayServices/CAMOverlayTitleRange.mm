@interface CAMOverlayTitleRange
- (BOOL)containsValue:(id)value;
- (BOOL)isEqualToRange:(id)range;
- (BOOL)isValueExpectedType:(id)type;
- (CAMOverlayIndexedRange)indexedRange;
- (CAMOverlayTitleRange)initWithCoder:(id)coder;
- (CAMOverlayTitleRange)initWithTitles:(id)titles;
- (id)valueAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)indexOfValue:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMOverlayTitleRange

- (CAMOverlayTitleRange)initWithTitles:(id)titles
{
  titlesCopy = titles;
  v10.receiver = self;
  v10.super_class = CAMOverlayTitleRange;
  v6 = [(CAMOverlayTitleRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__titles, titles);
    v8 = v7;
  }

  return v7;
}

- (CAMOverlayTitleRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CAMOverlayTitleRange;
  v5 = [(CAMOverlayTitleRange *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"%@.%@", v11, @"_titles"];
    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:v12];
    titles = v5->__titles;
    v5->__titles = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  _titles = [(CAMOverlayTitleRange *)self _titles];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"_titles"];
  [coderCopy encodeObject:_titles forKey:v8];
}

- (unint64_t)count
{
  _titles = [(CAMOverlayTitleRange *)self _titles];
  v3 = [_titles count];

  return v3;
}

- (BOOL)isEqualToRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (rangeCopy == self)
    {
      v7 = 1;
    }

    else
    {
      _titles = [(CAMOverlayTitleRange *)rangeCopy _titles];
      _titles2 = [(CAMOverlayTitleRange *)self _titles];
      v7 = [_titles isEqualToArray:_titles2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _titles = [(CAMOverlayTitleRange *)self _titles];
    v6 = [_titles containsObject:valueCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValueExpectedType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)indexOfValue:(id)value
{
  valueCopy = value;
  _titles = [(CAMOverlayTitleRange *)self _titles];
  v6 = [_titles indexOfObject:valueCopy];

  return v6;
}

- (id)valueAtIndex:(unint64_t)index
{
  _titles = [(CAMOverlayTitleRange *)self _titles];
  v5 = [_titles objectAtIndexedSubscript:index];

  return v5;
}

- (CAMOverlayIndexedRange)indexedRange
{
  v2 = [[CAMOverlayIndexedRange alloc] initWithCount:[(CAMOverlayTitleRange *)self count]];

  return v2;
}

@end
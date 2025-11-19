@interface CAMOverlayTitleRange
- (BOOL)containsValue:(id)a3;
- (BOOL)isEqualToRange:(id)a3;
- (BOOL)isValueExpectedType:(id)a3;
- (CAMOverlayIndexedRange)indexedRange;
- (CAMOverlayTitleRange)initWithCoder:(id)a3;
- (CAMOverlayTitleRange)initWithTitles:(id)a3;
- (id)valueAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)indexOfValue:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayTitleRange

- (CAMOverlayTitleRange)initWithTitles:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CAMOverlayTitleRange;
  v6 = [(CAMOverlayTitleRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__titles, a3);
    v8 = v7;
  }

  return v7;
}

- (CAMOverlayTitleRange)initWithCoder:(id)a3
{
  v4 = a3;
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
    v13 = [v4 decodeObjectOfClasses:v8 forKey:v12];
    titles = v5->__titles;
    v5->__titles = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = [(CAMOverlayTitleRange *)self _titles];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 stringWithFormat:@"%@.%@", v7, @"_titles"];
  [v4 encodeObject:v9 forKey:v8];
}

- (unint64_t)count
{
  v2 = [(CAMOverlayTitleRange *)self _titles];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEqualToRange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v7 = 1;
    }

    else
    {
      v5 = [(CAMOverlayTitleRange *)v4 _titles];
      v6 = [(CAMOverlayTitleRange *)self _titles];
      v7 = [v5 isEqualToArray:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)containsValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAMOverlayTitleRange *)self _titles];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValueExpectedType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)indexOfValue:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayTitleRange *)self _titles];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)valueAtIndex:(unint64_t)a3
{
  v4 = [(CAMOverlayTitleRange *)self _titles];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (CAMOverlayIndexedRange)indexedRange
{
  v2 = [[CAMOverlayIndexedRange alloc] initWithCount:[(CAMOverlayTitleRange *)self count]];

  return v2;
}

@end
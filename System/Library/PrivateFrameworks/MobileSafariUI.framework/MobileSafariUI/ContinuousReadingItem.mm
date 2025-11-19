@interface ContinuousReadingItem
+ (ContinuousReadingItem)itemWithReadingListItem:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)previewText;
- (NSString)title;
- (NSURL)URL;
- (id)_initWithReadingListItem:(id)a3;
- (id)_siteNameForReadingListItem;
- (unint64_t)hash;
- (void)_readingListItemDidUpdate:(id)a3;
- (void)dealloc;
@end

@implementation ContinuousReadingItem

+ (ContinuousReadingItem)itemWithReadingListItem:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithReadingListItem:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ContinuousReadingItem;
  [(ContinuousReadingItem *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ContinuousReadingItem *)self readingListBookmark];
      v7 = [v6 identifier];
      v8 = [(ContinuousReadingItem *)v5 readingListBookmark];

      v9 = v7 == [v8 identifier];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(ContinuousReadingItem *)self readingListBookmark];
  v3 = [v2 identifier];

  return v3;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v4 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___ContinuousReadingItem;
  v5 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, v4);
  v6 = keyPathsForValuesAffectingValueForKey__derivedKeys;
  if (!keyPathsForValuesAffectingValueForKey__derivedKeys)
  {
    keyPathsForValuesAffectingValueForKey__derivedKeys = &unk_2827FC658;

    v6 = &unk_2827FC658;
  }

  if ([v6 containsObject:v4])
  {
    v7 = [v5 setByAddingObject:@"readingListBookmark"];

    v5 = v7;
  }

  return v5;
}

- (NSString)title
{
  v2 = [(ContinuousReadingItem *)self readingListBookmark];
  v3 = [v2 title];

  return v3;
}

- (NSString)previewText
{
  v2 = [(ContinuousReadingItem *)self readingListBookmark];
  v3 = [v2 previewText];

  return v3;
}

- (NSURL)URL
{
  v2 = [(ContinuousReadingItem *)self readingListBookmark];
  v3 = [(WebBookmark *)v2 safari_bestCurrentURL];

  return v3;
}

- (id)_siteNameForReadingListItem
{
  v2 = [(ContinuousReadingItem *)self readingListBookmark];
  v3 = [v2 address];
  v4 = [v3 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  return v4;
}

- (id)_initWithReadingListItem:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ContinuousReadingItem;
  v6 = [(ContinuousReadingItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readingListBookmark, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__readingListItemDidUpdate_ name:@"ReadingListBookmarkDidUpdateNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)_readingListItemDidUpdate:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 identifier];
  v5 = [(ContinuousReadingItem *)self readingListBookmark];
  v6 = [v5 identifier];

  if (v4 == v6)
  {
    [(ContinuousReadingItem *)self _setReadingListBookmark:v7];
  }
}

@end
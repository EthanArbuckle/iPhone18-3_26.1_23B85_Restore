@interface ContinuousReadingItem
+ (ContinuousReadingItem)itemWithReadingListItem:(id)item;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSString)previewText;
- (NSString)title;
- (NSURL)URL;
- (id)_initWithReadingListItem:(id)item;
- (id)_siteNameForReadingListItem;
- (unint64_t)hash;
- (void)_readingListItemDidUpdate:(id)update;
- (void)dealloc;
@end

@implementation ContinuousReadingItem

+ (ContinuousReadingItem)itemWithReadingListItem:(id)item
{
  itemCopy = item;
  v5 = [[self alloc] _initWithReadingListItem:itemCopy];

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ContinuousReadingItem;
  [(ContinuousReadingItem *)&v4 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
      identifier = [readingListBookmark identifier];
      readingListBookmark2 = [(ContinuousReadingItem *)v5 readingListBookmark];

      v9 = identifier == [readingListBookmark2 identifier];
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
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  identifier = [readingListBookmark identifier];

  return identifier;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___ContinuousReadingItem;
  v5 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v6 = keyPathsForValuesAffectingValueForKey__derivedKeys;
  if (!keyPathsForValuesAffectingValueForKey__derivedKeys)
  {
    keyPathsForValuesAffectingValueForKey__derivedKeys = &unk_2827FC658;

    v6 = &unk_2827FC658;
  }

  if ([v6 containsObject:keyCopy])
  {
    v7 = [v5 setByAddingObject:@"readingListBookmark"];

    v5 = v7;
  }

  return v5;
}

- (NSString)title
{
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  title = [readingListBookmark title];

  return title;
}

- (NSString)previewText
{
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  previewText = [readingListBookmark previewText];

  return previewText;
}

- (NSURL)URL
{
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  safari_bestCurrentURL = [(WebBookmark *)readingListBookmark safari_bestCurrentURL];

  return safari_bestCurrentURL;
}

- (id)_siteNameForReadingListItem
{
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  address = [readingListBookmark address];
  v4 = [address safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  return v4;
}

- (id)_initWithReadingListItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = ContinuousReadingItem;
  v6 = [(ContinuousReadingItem *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_readingListBookmark, item);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__readingListItemDidUpdate_ name:@"ReadingListBookmarkDidUpdateNotification" object:0];

    v9 = v7;
  }

  return v7;
}

- (void)_readingListItemDidUpdate:(id)update
{
  object = [update object];
  identifier = [object identifier];
  readingListBookmark = [(ContinuousReadingItem *)self readingListBookmark];
  identifier2 = [readingListBookmark identifier];

  if (identifier == identifier2)
  {
    [(ContinuousReadingItem *)self _setReadingListBookmark:object];
  }
}

@end
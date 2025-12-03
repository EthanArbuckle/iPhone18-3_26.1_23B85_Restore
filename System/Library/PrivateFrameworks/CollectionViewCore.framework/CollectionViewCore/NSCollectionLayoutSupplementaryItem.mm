@interface NSCollectionLayoutSupplementaryItem
+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)size;
+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items;
+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor;
+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor itemAnchor:(NSCollectionLayoutAnchor *)itemAnchor;
- (BOOL)isEqual:(id)equal;
- (CVCDirectionalEdgeInsets)_effectiveContentInsets;
- (NSCollectionLayoutSupplementaryItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets elementKind:(id)kind containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index;
- (NSCollectionLayoutSupplementaryItem)supplementaryItem;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSCollectionLayoutSupplementaryItem

- (CVCDirectionalEdgeInsets)_effectiveContentInsets
{
  v6.receiver = self;
  v6.super_class = NSCollectionLayoutSupplementaryItem;
  [(NSCollectionLayoutItem *)&v6 _effectiveContentInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSCollectionLayoutSupplementaryItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets elementKind:(id)kind containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  kindCopy = kind;
  anchorCopy = anchor;
  itemAnchorCopy = itemAnchor;
  sizeCopy = size;
  v20 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v26.receiver = self;
  v26.super_class = NSCollectionLayoutSupplementaryItem;
  trailing = [(NSCollectionLayoutItem *)&v26 initWithSize:sizeCopy contentInsets:v20 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:uUID identifier:top, leading, bottom, trailing];

  if (trailing)
  {
    objc_storeStrong(&trailing->_elementKind, kind);
    objc_storeStrong(&trailing->_containerAnchor, anchor);
    objc_storeStrong(&trailing->_itemAnchor, itemAnchor);
    trailing->_zIndex = index;
  }

  return trailing;
}

+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor
{
  v8 = containerAnchor;
  v9 = elementKind;
  v10 = layoutSize;
  v11 = [[self alloc] initWithSize:v10 contentInsets:v9 elementKind:v8 containerAnchor:0 itemAnchor:1 zIndex:{0.0, 0.0, 0.0, 0.0}];

  return v11;
}

+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor itemAnchor:(NSCollectionLayoutAnchor *)itemAnchor
{
  v10 = itemAnchor;
  v11 = containerAnchor;
  v12 = elementKind;
  v13 = layoutSize;
  v14 = [[self alloc] initWithSize:v13 contentInsets:v12 elementKind:v11 containerAnchor:v10 itemAnchor:1 zIndex:{0.0, 0.0, 0.0, 0.0}];

  return v14;
}

+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)size
{
  sizeCopy = size;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutSupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items
{
  sizeCopy = size;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutSupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v7);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSCollectionLayoutItem *)self size];
  [(NSCollectionLayoutItem *)self contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  elementKind = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  containerAnchor = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
  itemAnchor = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
  v17 = [v4 initWithSize:v5 contentInsets:elementKind elementKind:containerAnchor containerAnchor:itemAnchor itemAnchor:-[NSCollectionLayoutSupplementaryItem zIndex](self zIndex:{"zIndex"), v7, v9, v11, v13}];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  zIndex = [(NSCollectionLayoutSupplementaryItem *)self zIndex];
  if (zIndex != [(NSCollectionLayoutSupplementaryItem *)equalCopy zIndex])
  {
    goto LABEL_12;
  }

  elementKind = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  elementKind2 = [(NSCollectionLayoutSupplementaryItem *)equalCopy elementKind];
  v8 = [elementKind isEqualToString:elementKind2];

  if (!v8)
  {
    goto LABEL_12;
  }

  [(NSCollectionLayoutItem *)self contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(NSCollectionLayoutItem *)equalCopy contentInsets];
  v20 = 0;
  if (v12 == v21 && v10 == v17 && v16 == v19 && v14 == v18)
  {
    containerAnchor = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
    containerAnchor2 = [(NSCollectionLayoutSupplementaryItem *)equalCopy containerAnchor];
    v24 = __objectEqual(containerAnchor, containerAnchor2);

    if (v24)
    {
      itemAnchor = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
      itemAnchor2 = [(NSCollectionLayoutSupplementaryItem *)equalCopy itemAnchor];
      v27 = __objectEqual(itemAnchor, itemAnchor2);

      if (v27)
      {
        v29.receiver = self;
        v29.super_class = NSCollectionLayoutSupplementaryItem;
        v20 = [(NSCollectionLayoutItem *)&v29 isEqual:equalCopy];
        goto LABEL_14;
      }
    }

LABEL_12:
    v20 = 0;
  }

LABEL_14:

  return v20;
}

- (id)_externalDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  layoutSize = [(NSCollectionLayoutItem *)self layoutSize];
  elementKind = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  v7 = [v3 stringWithFormat:@"<%@ %p size: %@ elementKind: %@;", v4, self, layoutSize, elementKind];;

  [(NSCollectionLayoutItem *)self contentInsets];
  if (v11 != 0.0 || v8 != 0.0 || v10 != 0.0 || v9 != 0.0)
  {
    [(NSCollectionLayoutItem *)self contentInsets];
    v16 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, v12, 17, v13, 17, v14, 17, v15);
    [v7 appendFormat:@"\n\tcontentInsets=%@", v16];
  }

  containerAnchor = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];

  if (containerAnchor)
  {
    containerAnchor2 = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
    [v7 appendFormat:@"\n\tcontainerAnchor=%@", containerAnchor2];
  }

  itemAnchor = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];

  if (itemAnchor)
  {
    itemAnchor2 = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
    [v7 appendFormat:@"\n\titemAnchor=%@", itemAnchor2];
  }

  [v7 appendString:@">"];

  return v7;
}

- (NSCollectionLayoutSupplementaryItem)supplementaryItem
{
  if ([(NSCollectionLayoutSupplementaryItem *)self isMemberOfClass:objc_opt_class()])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
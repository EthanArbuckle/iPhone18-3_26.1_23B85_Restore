@interface NSCollectionLayoutDecorationItem
+ (NSCollectionLayoutDecorationItem)backgroundDecorationItemWithElementKind:(NSString *)elementKind;
+ (NSCollectionLayoutDecorationItem)decorationItemWithSize:(id)size elementKind:(id)kind containerAnchor:(id)anchor;
+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)size;
+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items;
- (BOOL)isEqual:(id)equal;
- (CVCDirectionalEdgeInsets)_effectiveContentInsets;
- (NSCollectionLayoutDecorationItem)initWithElementKind:(id)kind size:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index registrationViewClass:(Class)class isBackgroundDecoration:(BOOL)self0;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSCollectionLayoutDecorationItem

- (CVCDirectionalEdgeInsets)_effectiveContentInsets
{
  v6.receiver = self;
  v6.super_class = NSCollectionLayoutDecorationItem;
  [(NSCollectionLayoutItem *)&v6 _effectiveContentInsets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (NSCollectionLayoutDecorationItem)initWithElementKind:(id)kind size:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index registrationViewClass:(Class)class isBackgroundDecoration:(BOOL)self0
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  kindCopy = kind;
  anchorCopy = anchor;
  itemAnchorCopy = itemAnchor;
  v23 = MEMORY[0x277CCAD78];
  sizeCopy = size;
  uUID = [v23 UUID];
  v34.receiver = self;
  v34.super_class = NSCollectionLayoutDecorationItem;
  trailing = [(NSCollectionLayoutItem *)&v34 initWithSize:sizeCopy contentInsets:0 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:uUID identifier:top, leading, bottom, trailing];

  if (trailing)
  {
    v27 = [kindCopy copy];
    elementKind = trailing->_elementKind;
    trailing->_elementKind = v27;

    v29 = [anchorCopy copy];
    containerAnchor = trailing->_containerAnchor;
    trailing->_containerAnchor = v29;

    v31 = [itemAnchorCopy copy];
    itemAnchor = trailing->_itemAnchor;
    trailing->_itemAnchor = v31;

    trailing->_zIndex = index;
    trailing->_isBackgroundDecoration = decoration;
    objc_storeStrong(&trailing->__registrationViewClass, class);
  }

  return trailing;
}

+ (NSCollectionLayoutDecorationItem)backgroundDecorationItemWithElementKind:(NSString *)elementKind
{
  v4 = elementKind;
  v5 = [self alloc];
  v6 = +[NSCollectionLayoutSize sizeWithContainerSize];
  LOBYTE(v9) = 1;
  v7 = [v5 initWithElementKind:v4 size:v6 contentInsets:0 containerAnchor:0 itemAnchor:0 zIndex:0 registrationViewClass:0.0 isBackgroundDecoration:{0.0, 0.0, 0.0, v9}];

  return v7;
}

+ (NSCollectionLayoutDecorationItem)decorationItemWithSize:(id)size elementKind:(id)kind containerAnchor:(id)anchor
{
  anchorCopy = anchor;
  kindCopy = kind;
  sizeCopy = size;
  LOBYTE(v13) = 0;
  v11 = [[self alloc] initWithElementKind:kindCopy size:sizeCopy contentInsets:anchorCopy containerAnchor:0 itemAnchor:1 zIndex:0 registrationViewClass:0.0 isBackgroundDecoration:{0.0, 0.0, 0.0, v13}];

  return v11;
}

+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)size
{
  sizeCopy = size;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutDecorationItem must be initialized with the .background(elementKind:)/+backgroundDecorationItemWithElementKind: initializer" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items
{
  sizeCopy = size;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutDecorationItem must be initialized with the .background(elementKind:)/+backgroundDecorationItemWithElementKind: initializer" userInfo:0];
  objc_exception_throw(v7);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  elementKind = [(NSCollectionLayoutDecorationItem *)self elementKind];
  v6 = [(NSCollectionLayoutItem *)self size];
  [(NSCollectionLayoutItem *)self contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  containerAnchor = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
  itemAnchor = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
  zIndex = [(NSCollectionLayoutDecorationItem *)self zIndex];
  _registrationViewClass = [(NSCollectionLayoutDecorationItem *)self _registrationViewClass];
  LOBYTE(v21) = [(NSCollectionLayoutDecorationItem *)self isBackgroundDecoration];
  v19 = [v4 initWithElementKind:elementKind size:v6 contentInsets:containerAnchor containerAnchor:itemAnchor itemAnchor:zIndex zIndex:_registrationViewClass registrationViewClass:v8 isBackgroundDecoration:{v10, v12, v14, v21}];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  zIndex = self->_zIndex;
  if (zIndex != [(NSCollectionLayoutDecorationItem *)equalCopy zIndex])
  {
    goto LABEL_13;
  }

  elementKind = [(NSCollectionLayoutDecorationItem *)self elementKind];
  elementKind2 = [(NSCollectionLayoutDecorationItem *)equalCopy elementKind];
  v8 = [elementKind isEqualToString:elementKind2];

  if (!v8)
  {
    goto LABEL_13;
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
    isBackgroundDecoration = [(NSCollectionLayoutDecorationItem *)self isBackgroundDecoration];
    if (isBackgroundDecoration == [(NSCollectionLayoutDecorationItem *)equalCopy isBackgroundDecoration])
    {
      containerAnchor = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
      containerAnchor2 = [(NSCollectionLayoutDecorationItem *)equalCopy containerAnchor];
      v25 = __objectEqual(containerAnchor, containerAnchor2);

      if (v25)
      {
        itemAnchor = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
        itemAnchor2 = [(NSCollectionLayoutDecorationItem *)equalCopy itemAnchor];
        v28 = __objectEqual(itemAnchor, itemAnchor2);

        if (v28)
        {
          v30.receiver = self;
          v30.super_class = NSCollectionLayoutDecorationItem;
          v20 = [(NSCollectionLayoutItem *)&v30 isEqual:equalCopy];
          goto LABEL_15;
        }
      }
    }

LABEL_13:
    v20 = 0;
  }

LABEL_15:

  return v20;
}

- (id)_externalDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  layoutSize = [(NSCollectionLayoutItem *)self layoutSize];
  elementKind = [(NSCollectionLayoutDecorationItem *)self elementKind];
  v7 = [v3 stringWithFormat:@"<%@ %p size: %@ elementKind: %@;", v4, self, layoutSize, elementKind];;

  [(NSCollectionLayoutItem *)self contentInsets];
  if (v11 != 0.0 || v8 != 0.0 || v10 != 0.0 || v9 != 0.0)
  {
    [(NSCollectionLayoutItem *)self contentInsets];
    v16 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, v12, 17, v13, 17, v14, 17, v15);
    [v7 appendFormat:@"\n\tcontentInsets=%@", v16];
  }

  containerAnchor = [(NSCollectionLayoutDecorationItem *)self containerAnchor];

  if (containerAnchor)
  {
    containerAnchor2 = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
    [v7 appendFormat:@"\n\tcontainerAnchor=%@", containerAnchor2];
  }

  itemAnchor = [(NSCollectionLayoutDecorationItem *)self itemAnchor];

  if (itemAnchor)
  {
    itemAnchor2 = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
    [v7 appendFormat:@"\n\titemAnchor=%@", itemAnchor2];
  }

  [v7 appendString:@">"];

  return v7;
}

@end
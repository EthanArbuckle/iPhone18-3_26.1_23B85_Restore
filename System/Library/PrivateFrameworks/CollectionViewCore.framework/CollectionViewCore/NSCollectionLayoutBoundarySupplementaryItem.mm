@interface NSCollectionLayoutBoundarySupplementaryItem
+ (NSCollectionLayoutBoundarySupplementaryItem)boundarySupplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind alignment:(NSRectAlignment)alignment absoluteOffset:(CGPoint)absoluteOffset;
+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)size;
+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items;
- (BOOL)isEqual:(id)equal;
- (CGPoint)offset;
- (NSCollectionLayoutBoundarySupplementaryItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets elementKind:(id)kind containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index alignment:(int64_t)alignment offset:(CGPoint)self0 extendsBoundary:(BOOL)self1 pinToVisibleBounds:(BOOL)self2;
- (id)copyWithContainerAnchor:(id)anchor itemAnchor:(id)itemAnchor;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_pinningZIndex;
@end

@implementation NSCollectionLayoutBoundarySupplementaryItem

- (int64_t)_pinningZIndex
{
  if (self->_pinningZIndex == 0x8000000000000001)
  {
    return [(NSCollectionLayoutSupplementaryItem *)self zIndex];
  }

  else
  {
    return self->_pinningZIndex;
  }
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NSCollectionLayoutBoundarySupplementaryItem)initWithSize:(id)size contentInsets:(CVCDirectionalEdgeInsets)insets elementKind:(id)kind containerAnchor:(id)anchor itemAnchor:(id)itemAnchor zIndex:(int64_t)index alignment:(int64_t)alignment offset:(CGPoint)self0 extendsBoundary:(BOOL)self1 pinToVisibleBounds:(BOOL)self2
{
  y = offset.y;
  x = offset.x;
  v16.receiver = self;
  v16.super_class = NSCollectionLayoutBoundarySupplementaryItem;
  result = [(NSCollectionLayoutSupplementaryItem *)&v16 initWithSize:size contentInsets:kind elementKind:anchor containerAnchor:itemAnchor itemAnchor:index zIndex:insets.top, insets.leading, insets.bottom, insets.trailing];
  if (result)
  {
    result->_alignment = alignment;
    result->_offset.x = x;
    result->_offset.y = y;
    result->_extendsBoundary = boundary;
    result->_pinToVisibleBounds = bounds;
    result->_pinningZIndex = 0x8000000000000001;
  }

  return result;
}

+ (NSCollectionLayoutBoundarySupplementaryItem)boundarySupplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind alignment:(NSRectAlignment)alignment absoluteOffset:(CGPoint)absoluteOffset
{
  y = absoluteOffset.y;
  x = absoluteOffset.x;
  v10 = elementKind;
  v11 = layoutSize;
  LOWORD(v14) = 1;
  v12 = [objc_alloc(objc_opt_class()) initWithSize:v11 contentInsets:v10 elementKind:0 containerAnchor:0 itemAnchor:1 zIndex:alignment alignment:0.0 offset:0.0 extendsBoundary:0.0 pinToVisibleBounds:{0.0, x, y, v14}];

  return v12;
}

+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)size
{
  sizeCopy = size;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutBoundarySupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)size supplementaryItems:(id)items
{
  sizeCopy = size;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutBoundarySupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
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
  zIndex = [(NSCollectionLayoutSupplementaryItem *)self zIndex];
  alignment = [(NSCollectionLayoutBoundarySupplementaryItem *)self alignment];
  [(NSCollectionLayoutBoundarySupplementaryItem *)self offset];
  v20 = v19;
  v22 = v21;
  extendsBoundary = [(NSCollectionLayoutBoundarySupplementaryItem *)self extendsBoundary];
  BYTE1(v26) = [(NSCollectionLayoutBoundarySupplementaryItem *)self pinToVisibleBounds];
  LOBYTE(v26) = extendsBoundary;
  v24 = [v4 initWithSize:v5 contentInsets:elementKind elementKind:containerAnchor containerAnchor:itemAnchor itemAnchor:zIndex zIndex:alignment alignment:v7 offset:v9 extendsBoundary:v11 pinToVisibleBounds:{v13, v20, v22, v26}];

  v24[19] = self->_pinningZIndex;
  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  alignment = [(NSCollectionLayoutBoundarySupplementaryItem *)self alignment];
  if (alignment != [(NSCollectionLayoutBoundarySupplementaryItem *)equalCopy alignment])
  {
    goto LABEL_10;
  }

  [(NSCollectionLayoutBoundarySupplementaryItem *)self offset];
  v7 = v6;
  v9 = v8;
  [(NSCollectionLayoutBoundarySupplementaryItem *)equalCopy offset];
  v11 = 0;
  if (v7 == v12 && v9 == v10)
  {
    extendsBoundary = [(NSCollectionLayoutBoundarySupplementaryItem *)self extendsBoundary];
    if (extendsBoundary == [(NSCollectionLayoutBoundarySupplementaryItem *)equalCopy extendsBoundary])
    {
      pinToVisibleBounds = [(NSCollectionLayoutBoundarySupplementaryItem *)self pinToVisibleBounds];
      if (pinToVisibleBounds == [(NSCollectionLayoutBoundarySupplementaryItem *)equalCopy pinToVisibleBounds])
      {
        _pinningZIndex = [(NSCollectionLayoutBoundarySupplementaryItem *)self _pinningZIndex];
        if (_pinningZIndex == [(NSCollectionLayoutBoundarySupplementaryItem *)equalCopy _pinningZIndex])
        {
          v17.receiver = self;
          v17.super_class = NSCollectionLayoutBoundarySupplementaryItem;
          v11 = [(NSCollectionLayoutSupplementaryItem *)&v17 isEqual:equalCopy];
          goto LABEL_12;
        }
      }
    }

LABEL_10:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (id)copyWithContainerAnchor:(id)anchor itemAnchor:(id)itemAnchor
{
  itemAnchorCopy = itemAnchor;
  anchorCopy = anchor;
  v8 = [(NSCollectionLayoutBoundarySupplementaryItem *)self copy];
  [v8 setContainerAnchor:anchorCopy];

  [v8 setItemAnchor:itemAnchorCopy];
  return v8;
}

@end
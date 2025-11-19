@interface NSCollectionLayoutBoundarySupplementaryItem
+ (NSCollectionLayoutBoundarySupplementaryItem)boundarySupplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind alignment:(NSRectAlignment)alignment absoluteOffset:(CGPoint)absoluteOffset;
+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)a3;
+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)offset;
- (NSCollectionLayoutBoundarySupplementaryItem)initWithSize:(id)a3 contentInsets:(CVCDirectionalEdgeInsets)a4 elementKind:(id)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8 alignment:(int64_t)a9 offset:(CGPoint)a10 extendsBoundary:(BOOL)a11 pinToVisibleBounds:(BOOL)a12;
- (id)copyWithContainerAnchor:(id)a3 itemAnchor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
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

- (NSCollectionLayoutBoundarySupplementaryItem)initWithSize:(id)a3 contentInsets:(CVCDirectionalEdgeInsets)a4 elementKind:(id)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8 alignment:(int64_t)a9 offset:(CGPoint)a10 extendsBoundary:(BOOL)a11 pinToVisibleBounds:(BOOL)a12
{
  y = a10.y;
  x = a10.x;
  v16.receiver = self;
  v16.super_class = NSCollectionLayoutBoundarySupplementaryItem;
  result = [(NSCollectionLayoutSupplementaryItem *)&v16 initWithSize:a3 contentInsets:a5 elementKind:a6 containerAnchor:a7 itemAnchor:a8 zIndex:a4.top, a4.leading, a4.bottom, a4.trailing];
  if (result)
  {
    result->_alignment = a9;
    result->_offset.x = x;
    result->_offset.y = y;
    result->_extendsBoundary = a11;
    result->_pinToVisibleBounds = a12;
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

+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutBoundarySupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutBoundarySupplementaryItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutBoundarySupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSCollectionLayoutItem *)self size];
  [(NSCollectionLayoutItem *)self contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  v15 = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
  v16 = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
  v17 = [(NSCollectionLayoutSupplementaryItem *)self zIndex];
  v18 = [(NSCollectionLayoutBoundarySupplementaryItem *)self alignment];
  [(NSCollectionLayoutBoundarySupplementaryItem *)self offset];
  v20 = v19;
  v22 = v21;
  v23 = [(NSCollectionLayoutBoundarySupplementaryItem *)self extendsBoundary];
  BYTE1(v26) = [(NSCollectionLayoutBoundarySupplementaryItem *)self pinToVisibleBounds];
  LOBYTE(v26) = v23;
  v24 = [v4 initWithSize:v5 contentInsets:v14 elementKind:v15 containerAnchor:v16 itemAnchor:v17 zIndex:v18 alignment:v7 offset:v9 extendsBoundary:v11 pinToVisibleBounds:{v13, v20, v22, v26}];

  v24[19] = self->_pinningZIndex;
  return v24;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [(NSCollectionLayoutBoundarySupplementaryItem *)self alignment];
  if (v5 != [(NSCollectionLayoutBoundarySupplementaryItem *)v4 alignment])
  {
    goto LABEL_10;
  }

  [(NSCollectionLayoutBoundarySupplementaryItem *)self offset];
  v7 = v6;
  v9 = v8;
  [(NSCollectionLayoutBoundarySupplementaryItem *)v4 offset];
  v11 = 0;
  if (v7 == v12 && v9 == v10)
  {
    v13 = [(NSCollectionLayoutBoundarySupplementaryItem *)self extendsBoundary];
    if (v13 == [(NSCollectionLayoutBoundarySupplementaryItem *)v4 extendsBoundary])
    {
      v14 = [(NSCollectionLayoutBoundarySupplementaryItem *)self pinToVisibleBounds];
      if (v14 == [(NSCollectionLayoutBoundarySupplementaryItem *)v4 pinToVisibleBounds])
      {
        v15 = [(NSCollectionLayoutBoundarySupplementaryItem *)self _pinningZIndex];
        if (v15 == [(NSCollectionLayoutBoundarySupplementaryItem *)v4 _pinningZIndex])
        {
          v17.receiver = self;
          v17.super_class = NSCollectionLayoutBoundarySupplementaryItem;
          v11 = [(NSCollectionLayoutSupplementaryItem *)&v17 isEqual:v4];
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

- (id)copyWithContainerAnchor:(id)a3 itemAnchor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NSCollectionLayoutBoundarySupplementaryItem *)self copy];
  [v8 setContainerAnchor:v7];

  [v8 setItemAnchor:v6];
  return v8;
}

@end
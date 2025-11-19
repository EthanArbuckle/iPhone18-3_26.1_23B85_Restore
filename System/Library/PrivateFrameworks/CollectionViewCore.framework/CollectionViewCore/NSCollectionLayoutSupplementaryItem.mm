@interface NSCollectionLayoutSupplementaryItem
+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)a3;
+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4;
+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor;
+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor itemAnchor:(NSCollectionLayoutAnchor *)itemAnchor;
- (BOOL)isEqual:(id)a3;
- (CVCDirectionalEdgeInsets)_effectiveContentInsets;
- (NSCollectionLayoutSupplementaryItem)initWithSize:(id)a3 contentInsets:(CVCDirectionalEdgeInsets)a4 elementKind:(id)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8;
- (NSCollectionLayoutSupplementaryItem)supplementaryItem;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)a3;
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

- (NSCollectionLayoutSupplementaryItem)initWithSize:(id)a3 contentInsets:(CVCDirectionalEdgeInsets)a4 elementKind:(id)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8
{
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  v25 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a3;
  v20 = +[NSCollectionLayoutEdgeSpacing defaultSpacing];
  v21 = [MEMORY[0x277CCAD78] UUID];
  v26.receiver = self;
  v26.super_class = NSCollectionLayoutSupplementaryItem;
  v22 = [(NSCollectionLayoutItem *)&v26 initWithSize:v19 contentInsets:v20 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:v21 identifier:top, leading, bottom, trailing];

  if (v22)
  {
    objc_storeStrong(&v22->_elementKind, a5);
    objc_storeStrong(&v22->_containerAnchor, a6);
    objc_storeStrong(&v22->_itemAnchor, a7);
    v22->_zIndex = a8;
  }

  return v22;
}

+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor
{
  v8 = containerAnchor;
  v9 = elementKind;
  v10 = layoutSize;
  v11 = [[a1 alloc] initWithSize:v10 contentInsets:v9 elementKind:v8 containerAnchor:0 itemAnchor:1 zIndex:{0.0, 0.0, 0.0, 0.0}];

  return v11;
}

+ (NSCollectionLayoutSupplementaryItem)supplementaryItemWithLayoutSize:(NSCollectionLayoutSize *)layoutSize elementKind:(NSString *)elementKind containerAnchor:(NSCollectionLayoutAnchor *)containerAnchor itemAnchor:(NSCollectionLayoutAnchor *)itemAnchor
{
  v10 = itemAnchor;
  v11 = containerAnchor;
  v12 = elementKind;
  v13 = layoutSize;
  v14 = [[a1 alloc] initWithSize:v13 contentInsets:v12 elementKind:v11 containerAnchor:v10 itemAnchor:1 zIndex:{0.0, 0.0, 0.0, 0.0}];

  return v14;
}

+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutSupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutSupplementaryItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutSupplementaryItem must be initialized with an initializer accepting an element kind" userInfo:0];
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
  v17 = [v4 initWithSize:v5 contentInsets:v14 elementKind:v15 containerAnchor:v16 itemAnchor:-[NSCollectionLayoutSupplementaryItem zIndex](self zIndex:{"zIndex"), v7, v9, v11, v13}];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [(NSCollectionLayoutSupplementaryItem *)self zIndex];
  if (v5 != [(NSCollectionLayoutSupplementaryItem *)v4 zIndex])
  {
    goto LABEL_12;
  }

  v6 = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  v7 = [(NSCollectionLayoutSupplementaryItem *)v4 elementKind];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_12;
  }

  [(NSCollectionLayoutItem *)self contentInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(NSCollectionLayoutItem *)v4 contentInsets];
  v20 = 0;
  if (v12 == v21 && v10 == v17 && v16 == v19 && v14 == v18)
  {
    v22 = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
    v23 = [(NSCollectionLayoutSupplementaryItem *)v4 containerAnchor];
    v24 = __objectEqual(v22, v23);

    if (v24)
    {
      v25 = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
      v26 = [(NSCollectionLayoutSupplementaryItem *)v4 itemAnchor];
      v27 = __objectEqual(v25, v26);

      if (v27)
      {
        v29.receiver = self;
        v29.super_class = NSCollectionLayoutSupplementaryItem;
        v20 = [(NSCollectionLayoutItem *)&v29 isEqual:v4];
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
  v5 = [(NSCollectionLayoutItem *)self layoutSize];
  v6 = [(NSCollectionLayoutSupplementaryItem *)self elementKind];
  v7 = [v3 stringWithFormat:@"<%@ %p size: %@ elementKind: %@;", v4, self, v5, v6];;

  [(NSCollectionLayoutItem *)self contentInsets];
  if (v11 != 0.0 || v8 != 0.0 || v10 != 0.0 || v9 != 0.0)
  {
    [(NSCollectionLayoutItem *)self contentInsets];
    v16 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, v12, 17, v13, 17, v14, 17, v15);
    [v7 appendFormat:@"\n\tcontentInsets=%@", v16];
  }

  v17 = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];

  if (v17)
  {
    v18 = [(NSCollectionLayoutSupplementaryItem *)self containerAnchor];
    [v7 appendFormat:@"\n\tcontainerAnchor=%@", v18];
  }

  v19 = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];

  if (v19)
  {
    v20 = [(NSCollectionLayoutSupplementaryItem *)self itemAnchor];
    [v7 appendFormat:@"\n\titemAnchor=%@", v20];
  }

  [v7 appendString:@">"];

  return v7;
}

- (NSCollectionLayoutSupplementaryItem)supplementaryItem
{
  if ([(NSCollectionLayoutSupplementaryItem *)self isMemberOfClass:objc_opt_class()])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
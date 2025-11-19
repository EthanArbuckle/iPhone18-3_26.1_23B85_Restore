@interface NSCollectionLayoutDecorationItem
+ (NSCollectionLayoutDecorationItem)backgroundDecorationItemWithElementKind:(NSString *)elementKind;
+ (NSCollectionLayoutDecorationItem)decorationItemWithSize:(id)a3 elementKind:(id)a4 containerAnchor:(id)a5;
+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)a3;
+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CVCDirectionalEdgeInsets)_effectiveContentInsets;
- (NSCollectionLayoutDecorationItem)initWithElementKind:(id)a3 size:(id)a4 contentInsets:(CVCDirectionalEdgeInsets)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8 registrationViewClass:(Class)a9 isBackgroundDecoration:(BOOL)a10;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)a3;
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

- (NSCollectionLayoutDecorationItem)initWithElementKind:(id)a3 size:(id)a4 contentInsets:(CVCDirectionalEdgeInsets)a5 containerAnchor:(id)a6 itemAnchor:(id)a7 zIndex:(int64_t)a8 registrationViewClass:(Class)a9 isBackgroundDecoration:(BOOL)a10
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v20 = a3;
  v21 = a6;
  v22 = a7;
  v23 = MEMORY[0x277CCAD78];
  v24 = a4;
  v25 = [v23 UUID];
  v34.receiver = self;
  v34.super_class = NSCollectionLayoutDecorationItem;
  v26 = [(NSCollectionLayoutItem *)&v34 initWithSize:v24 contentInsets:0 edgeSpacing:MEMORY[0x277CBEBF8] supplementaryItems:MEMORY[0x277CBEBF8] decorationItems:0 name:v25 identifier:top, leading, bottom, trailing];

  if (v26)
  {
    v27 = [v20 copy];
    elementKind = v26->_elementKind;
    v26->_elementKind = v27;

    v29 = [v21 copy];
    containerAnchor = v26->_containerAnchor;
    v26->_containerAnchor = v29;

    v31 = [v22 copy];
    itemAnchor = v26->_itemAnchor;
    v26->_itemAnchor = v31;

    v26->_zIndex = a8;
    v26->_isBackgroundDecoration = a10;
    objc_storeStrong(&v26->__registrationViewClass, a9);
  }

  return v26;
}

+ (NSCollectionLayoutDecorationItem)backgroundDecorationItemWithElementKind:(NSString *)elementKind
{
  v4 = elementKind;
  v5 = [a1 alloc];
  v6 = +[NSCollectionLayoutSize sizeWithContainerSize];
  LOBYTE(v9) = 1;
  v7 = [v5 initWithElementKind:v4 size:v6 contentInsets:0 containerAnchor:0 itemAnchor:0 zIndex:0 registrationViewClass:0.0 isBackgroundDecoration:{0.0, 0.0, 0.0, v9}];

  return v7;
}

+ (NSCollectionLayoutDecorationItem)decorationItemWithSize:(id)a3 elementKind:(id)a4 containerAnchor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  LOBYTE(v13) = 0;
  v11 = [[a1 alloc] initWithElementKind:v9 size:v10 contentInsets:v8 containerAnchor:0 itemAnchor:1 zIndex:0 registrationViewClass:0.0 isBackgroundDecoration:{0.0, 0.0, 0.0, v13}];

  return v11;
}

+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutDecorationItem must be initialized with the .background(elementKind:)/+backgroundDecorationItemWithElementKind: initializer" userInfo:0];
  objc_exception_throw(v4);
}

+ (NSCollectionLayoutDecorationItem)itemWithLayoutSize:(id)a3 supplementaryItems:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"NSCollectionLayoutDecorationItem must be initialized with the .background(elementKind:)/+backgroundDecorationItemWithElementKind: initializer" userInfo:0];
  objc_exception_throw(v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSCollectionLayoutDecorationItem *)self elementKind];
  v6 = [(NSCollectionLayoutItem *)self size];
  [(NSCollectionLayoutItem *)self contentInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
  v16 = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
  v17 = [(NSCollectionLayoutDecorationItem *)self zIndex];
  v18 = [(NSCollectionLayoutDecorationItem *)self _registrationViewClass];
  LOBYTE(v21) = [(NSCollectionLayoutDecorationItem *)self isBackgroundDecoration];
  v19 = [v4 initWithElementKind:v5 size:v6 contentInsets:v15 containerAnchor:v16 itemAnchor:v17 zIndex:v18 registrationViewClass:v8 isBackgroundDecoration:{v10, v12, v14, v21}];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
  if (zIndex != [(NSCollectionLayoutDecorationItem *)v4 zIndex])
  {
    goto LABEL_13;
  }

  v6 = [(NSCollectionLayoutDecorationItem *)self elementKind];
  v7 = [(NSCollectionLayoutDecorationItem *)v4 elementKind];
  v8 = [v6 isEqualToString:v7];

  if (!v8)
  {
    goto LABEL_13;
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
    v22 = [(NSCollectionLayoutDecorationItem *)self isBackgroundDecoration];
    if (v22 == [(NSCollectionLayoutDecorationItem *)v4 isBackgroundDecoration])
    {
      v23 = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
      v24 = [(NSCollectionLayoutDecorationItem *)v4 containerAnchor];
      v25 = __objectEqual(v23, v24);

      if (v25)
      {
        v26 = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
        v27 = [(NSCollectionLayoutDecorationItem *)v4 itemAnchor];
        v28 = __objectEqual(v26, v27);

        if (v28)
        {
          v30.receiver = self;
          v30.super_class = NSCollectionLayoutDecorationItem;
          v20 = [(NSCollectionLayoutItem *)&v30 isEqual:v4];
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
  v5 = [(NSCollectionLayoutItem *)self layoutSize];
  v6 = [(NSCollectionLayoutDecorationItem *)self elementKind];
  v7 = [v3 stringWithFormat:@"<%@ %p size: %@ elementKind: %@;", v4, self, v5, v6];;

  [(NSCollectionLayoutItem *)self contentInsets];
  if (v11 != 0.0 || v8 != 0.0 || v10 != 0.0 || v9 != 0.0)
  {
    [(NSCollectionLayoutItem *)self contentInsets];
    v16 = CFStringCreateWithFormat(0, 0, @"{%.*g, %.*g, %.*g, %.*g}", 17, v12, 17, v13, 17, v14, 17, v15);
    [v7 appendFormat:@"\n\tcontentInsets=%@", v16];
  }

  v17 = [(NSCollectionLayoutDecorationItem *)self containerAnchor];

  if (v17)
  {
    v18 = [(NSCollectionLayoutDecorationItem *)self containerAnchor];
    [v7 appendFormat:@"\n\tcontainerAnchor=%@", v18];
  }

  v19 = [(NSCollectionLayoutDecorationItem *)self itemAnchor];

  if (v19)
  {
    v20 = [(NSCollectionLayoutDecorationItem *)self itemAnchor];
    [v7 appendFormat:@"\n\titemAnchor=%@", v20];
  }

  [v7 appendString:@">"];

  return v7;
}

@end
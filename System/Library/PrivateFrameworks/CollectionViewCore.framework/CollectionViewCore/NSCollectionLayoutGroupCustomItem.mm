@interface NSCollectionLayoutGroupCustomItem
+ (NSCollectionLayoutGroupCustomItem)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex;
- (CGRect)frame;
- (NSCollectionLayoutGroupCustomItem)initWithFrame:(CGRect)a3 zIndex:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NSCollectionLayoutGroupCustomItem

- (NSCollectionLayoutGroupCustomItem)initWithFrame:(CGRect)a3 zIndex:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = NSCollectionLayoutGroupCustomItem;
  result = [(NSCollectionLayoutGroupCustomItem *)&v10 init];
  if (result)
  {
    result->_frame.origin.x = x;
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_zIndex = a4;
  }

  return result;
}

+ (NSCollectionLayoutGroupCustomItem)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex
{
  v4 = [objc_alloc(objc_opt_class()) initWithFrame:zIndex zIndex:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(NSCollectionLayoutGroupCustomItem *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NSCollectionLayoutGroupCustomItem *)self zIndex];

  return [v4 initWithFrame:v13 zIndex:{v6, v8, v10, v12}];
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
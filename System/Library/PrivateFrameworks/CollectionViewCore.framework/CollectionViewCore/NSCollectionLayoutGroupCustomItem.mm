@interface NSCollectionLayoutGroupCustomItem
+ (NSCollectionLayoutGroupCustomItem)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex;
- (CGRect)frame;
- (NSCollectionLayoutGroupCustomItem)initWithFrame:(CGRect)frame zIndex:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NSCollectionLayoutGroupCustomItem

- (NSCollectionLayoutGroupCustomItem)initWithFrame:(CGRect)frame zIndex:(int64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = NSCollectionLayoutGroupCustomItem;
  result = [(NSCollectionLayoutGroupCustomItem *)&v10 init];
  if (result)
  {
    result->_frame.origin.x = x;
    result->_frame.origin.y = y;
    result->_frame.size.width = width;
    result->_frame.size.height = height;
    result->_zIndex = index;
  }

  return result;
}

+ (NSCollectionLayoutGroupCustomItem)customItemWithFrame:(CGRect)frame zIndex:(NSInteger)zIndex
{
  v4 = [objc_alloc(objc_opt_class()) initWithFrame:zIndex zIndex:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(NSCollectionLayoutGroupCustomItem *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  zIndex = [(NSCollectionLayoutGroupCustomItem *)self zIndex];

  return [v4 initWithFrame:zIndex zIndex:{v6, v8, v10, v12}];
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
@interface MTL4ToolsCounterHeap
- (MTL4ToolsCounterHeap)initWithBaseObject:(id)a3 parent:(id)a4;
- (NSString)label;
- (id)resolveCounterRange:(_NSRange)a3;
- (int64_t)type;
- (unint64_t)count;
- (void)invalidateCounterRange:(_NSRange)a3;
- (void)setLabel:(id)a3;
@end

@implementation MTL4ToolsCounterHeap

- (MTL4ToolsCounterHeap)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCounterHeap;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (void)setLabel:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 setLabel:a3];
}

- (unint64_t)count
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 count];
}

- (int64_t)type
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 type];
}

- (void)invalidateCounterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 invalidateCounterRange:{location, length}];
}

- (id)resolveCounterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  return [v5 resolveCounterRange:{location, length}];
}

@end
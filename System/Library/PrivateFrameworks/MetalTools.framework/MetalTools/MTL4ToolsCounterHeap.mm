@interface MTL4ToolsCounterHeap
- (MTL4ToolsCounterHeap)initWithBaseObject:(id)object parent:(id)parent;
- (NSString)label;
- (id)resolveCounterRange:(_NSRange)range;
- (int64_t)type;
- (unint64_t)count;
- (void)invalidateCounterRange:(_NSRange)range;
- (void)setLabel:(id)label;
@end

@implementation MTL4ToolsCounterHeap

- (MTL4ToolsCounterHeap)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTL4ToolsCounterHeap;
  return [(MTLToolsObject *)&v5 initWithBaseObject:object parent:parent];
}

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

- (unint64_t)count
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject count];
}

- (int64_t)type
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject type];
}

- (void)invalidateCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject invalidateCounterRange:{location, length}];
}

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resolveCounterRange:{location, length}];
}

@end
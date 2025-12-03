@interface MTLToolsResource
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (BOOL)isAliasable;
- (BOOL)isComplete;
- (BOOL)isPurgeable;
- (MTLToolsResource)initWithBaseObject:(id)object parent:(id)parent;
- (MTLToolsResource)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap;
- (NSString)label;
- (int)responsibleProcess;
- (unint64_t)allocatedSize;
- (unint64_t)allocationID;
- (unint64_t)cpuCacheMode;
- (unint64_t)hazardTrackingMode;
- (unint64_t)heapOffset;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)storageMode;
- (unint64_t)unfilteredResourceOptions;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)label;
- (void)validateCPUReadable;
- (void)validateCPUWriteable;
- (void)waitUntilComplete;
@end

@implementation MTLToolsResource

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

- (unint64_t)cpuCacheMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject cpuCacheMode];
}

- (unint64_t)storageMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject storageMode];
}

- (unint64_t)hazardTrackingMode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject hazardTrackingMode];
}

- (unint64_t)resourceOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resourceOptions];
}

- (unint64_t)unfilteredResourceOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject unfilteredResourceOptions];
}

- (BOOL)isAliasable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isAliasable];
}

- (void)makeAliasable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject makeAliasable];
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (unint64_t)heapOffset
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject heapOffset];
}

- (BOOL)isPurgeable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isPurgeable];
}

- (int)responsibleProcess
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject responsibleProcess];
}

- (unint64_t)protectionOptions
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject protectionOptions];
}

- (unint64_t)allocationID
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocationID];
}

- (MTLToolsResource)initWithBaseObject:(id)object parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = MTLToolsResource;
  v5 = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_heap = [parent heap];
    }
  }

  return v5;
}

- (MTLToolsResource)initWithBaseObject:(id)object parent:(id)parent heap:(id)heap
{
  v8.receiver = self;
  v8.super_class = MTLToolsResource;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:object parent:parent];
  if (v6)
  {
    v6->_heap = heap;
  }

  return v6;
}

- (void)dealloc
{
  [(MTLToolsHeap *)self->_heap notifyResourceReleasing:self];

  v3.receiver = self;
  v3.super_class = MTLToolsResource;
  [(MTLToolsObject *)&v3 dealloc];
}

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  return [baseObject doesAliasResource:baseObject2];
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = v13 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    resourcesCopy = resources;
    v8 = (v13 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v10 = *resourcesCopy++;
      *v8++ = [v10 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  result = [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = v13 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  if (count)
  {
    resourcesCopy = resources;
    v8 = (v13 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v10 = *resourcesCopy++;
      *v8++ = [v10 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  result = [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isComplete
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject isComplete];
}

- (void)waitUntilComplete
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitUntilComplete];
}

- (void)validateCPUReadable
{
  v2 = self->_options >> 4;
  if (v2 == 2)
  {
    options = self->_options;
LABEL_6:
    MTLReportFailure();
    return;
  }

  if (v2 == 3)
  {
    v4 = self->_options;
    goto LABEL_6;
  }
}

- (void)validateCPUWriteable
{
  v2 = self->_options >> 4;
  if (v2 == 2)
  {
    options = self->_options;
LABEL_6:
    MTLReportFailure();
    return;
  }

  if (v2 == 3)
  {
    v4 = self->_options;
    goto LABEL_6;
  }
}

- (unint64_t)allocatedSize
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject allocatedSize];
}

@end
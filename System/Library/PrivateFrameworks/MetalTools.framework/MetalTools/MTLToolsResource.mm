@interface MTLToolsResource
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (BOOL)isAliasable;
- (BOOL)isComplete;
- (BOOL)isPurgeable;
- (MTLToolsResource)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLToolsResource)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5;
- (NSString)label;
- (int)responsibleProcess;
- (unint64_t)allocatedSize;
- (unint64_t)allocationID;
- (unint64_t)cpuCacheMode;
- (unint64_t)hazardTrackingMode;
- (unint64_t)heapOffset;
- (unint64_t)protectionOptions;
- (unint64_t)resourceOptions;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)storageMode;
- (unint64_t)unfilteredResourceOptions;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)a3;
- (void)validateCPUReadable;
- (void)validateCPUWriteable;
- (void)waitUntilComplete;
@end

@implementation MTLToolsResource

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

- (unint64_t)cpuCacheMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 cpuCacheMode];
}

- (unint64_t)storageMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 storageMode];
}

- (unint64_t)hazardTrackingMode
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 hazardTrackingMode];
}

- (unint64_t)resourceOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 resourceOptions];
}

- (unint64_t)unfilteredResourceOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 unfilteredResourceOptions];
}

- (BOOL)isAliasable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isAliasable];
}

- (void)makeAliasable
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 makeAliasable];
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  return [v4 setPurgeableState:a3];
}

- (unint64_t)heapOffset
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 heapOffset];
}

- (BOOL)isPurgeable
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isPurgeable];
}

- (int)responsibleProcess
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 responsibleProcess];
}

- (unint64_t)protectionOptions
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 protectionOptions];
}

- (unint64_t)allocationID
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocationID];
}

- (MTLToolsResource)initWithBaseObject:(id)a3 parent:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTLToolsResource;
  v5 = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_heap = [a4 heap];
    }
  }

  return v5;
}

- (MTLToolsResource)initWithBaseObject:(id)a3 parent:(id)a4 heap:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLToolsResource;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_heap = a5;
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

- (BOOL)doesAliasResource:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  return [v4 doesAliasResource:v5];
}

- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = v13 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v7 = a3;
    v8 = (v13 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = a4;
    do
    {
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  result = [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = v13 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v7 = a3;
    v8 = (v13 - ((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = a4;
    do
    {
      v10 = *v7++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  result = [-[MTLToolsObject baseObject](self baseObject];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isComplete
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 isComplete];
}

- (void)waitUntilComplete
{
  v2 = [(MTLToolsObject *)self baseObject];

  [v2 waitUntilComplete];
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
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 allocatedSize];
}

@end
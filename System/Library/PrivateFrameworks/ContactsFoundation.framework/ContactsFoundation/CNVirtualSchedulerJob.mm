@interface CNVirtualSchedulerJob
+ (id)jobWithTime:(unint64_t)time block:(id)block;
- (CNVirtualSchedulerJob)initWithTime:(unint64_t)time block:(id)block;
- (id)description;
@end

@implementation CNVirtualSchedulerJob

+ (id)jobWithTime:(unint64_t)time block:(id)block
{
  blockCopy = block;
  v7 = [[self alloc] initWithTime:time block:blockCopy];

  return v7;
}

- (CNVirtualSchedulerJob)initWithTime:(unint64_t)time block:(id)block
{
  blockCopy = block;
  v13.receiver = self;
  v13.super_class = CNVirtualSchedulerJob;
  v7 = [(CNVirtualSchedulerJob *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_time = time;
    v9 = [blockCopy copy];
    block = v8->_block;
    v8->_block = v9;

    v11 = v8;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  time = [(CNVirtualSchedulerJob *)self time];
  block = [(CNVirtualSchedulerJob *)self block];
  v8 = _Block_copy(block);
  v9 = [v3 stringWithFormat:@"<%@: %p time=%lu block=%p", v5, self, time, v8];

  return v9;
}

@end
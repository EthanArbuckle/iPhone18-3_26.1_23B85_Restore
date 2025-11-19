@interface CNVirtualSchedulerJob
+ (id)jobWithTime:(unint64_t)a3 block:(id)a4;
- (CNVirtualSchedulerJob)initWithTime:(unint64_t)a3 block:(id)a4;
- (id)description;
@end

@implementation CNVirtualSchedulerJob

+ (id)jobWithTime:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithTime:a3 block:v6];

  return v7;
}

- (CNVirtualSchedulerJob)initWithTime:(unint64_t)a3 block:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = CNVirtualSchedulerJob;
  v7 = [(CNVirtualSchedulerJob *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_time = a3;
    v9 = [v6 copy];
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
  v6 = [(CNVirtualSchedulerJob *)self time];
  v7 = [(CNVirtualSchedulerJob *)self block];
  v8 = _Block_copy(v7);
  v9 = [v3 stringWithFormat:@"<%@: %p time=%lu block=%p", v5, self, v6, v8];

  return v9;
}

@end
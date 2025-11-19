@interface HMMTagSessionProcessorList
- (HMMTagSessionProcessorList)initWithWorkQueue:(id)a3;
- (id)objectForChildActivity;
- (void)addProcessor:(id)a3;
- (void)removeProcessor:(id)a3;
@end

@implementation HMMTagSessionProcessorList

- (id)objectForChildActivity
{
  v3 = [[HMMTagSessionProcessorList alloc] initWithWorkQueue:self->_workQueue];
  workQueue = self->_workQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HMMTagSessionProcessorList_objectForChildActivity__block_invoke;
  v8[3] = &unk_2786F9038;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_async(workQueue, v8);
  v6 = v5;

  return v5;
}

- (void)removeProcessor:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  processors = self->_processors;
  v6 = a3;
  v9 = [v4 arrayWithArray:processors];
  [v9 removeObjectIdenticalTo:v6];

  v7 = [v9 copy];
  v8 = self->_processors;
  self->_processors = v7;
}

- (void)addProcessor:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  processors = self->_processors;
  v6 = a3;
  v9 = [v4 arrayWithArray:processors];
  [v9 addObject:v6];

  v7 = [v9 copy];
  v8 = self->_processors;
  self->_processors = v7;
}

- (HMMTagSessionProcessorList)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMMTagSessionProcessorList;
  v6 = [(HMMTagSessionProcessorList *)&v10 init];
  v7 = v6;
  if (v6)
  {
    processors = v6->_processors;
    v6->_processors = MEMORY[0x277CBEBF8];

    objc_storeStrong(&v7->_workQueue, a3);
  }

  return v7;
}

@end
@interface MTLDebugCounterSampleBuffer
- (MTLDebugCounterSampleBuffer)initWithCounterSampleBuffer:(id)a3 device:(id)a4 descriptor:(id)a5;
- (id)formattedDescription:(unint64_t)a3;
- (id)resolveCounterRange:(_NSRange)a3;
- (void)dealloc;
@end

@implementation MTLDebugCounterSampleBuffer

- (MTLDebugCounterSampleBuffer)initWithCounterSampleBuffer:(id)a3 device:(id)a4 descriptor:(id)a5
{
  v8.receiver = self;
  v8.super_class = MTLDebugCounterSampleBuffer;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:a3 parent:a4];
  if (v6)
  {
    v6->_descriptor = [a5 copy];
    v6->_storageMode = [a5 storageMode];
  }

  return v6;
}

- (void)dealloc
{
  self->_descriptor = 0;
  v3.receiver = self;
  v3.super_class = MTLDebugCounterSampleBuffer;
  [(MTLToolsObject *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)a3
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v11[0] = v5;
  v11[1] = @"label =";
  if ([(MTLToolsCounterSampleBuffer *)self label])
  {
    v8 = [(MTLToolsCounterSampleBuffer *)self label];
  }

  else
  {
    v8 = @"<none>";
  }

  v11[2] = v8;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 3), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)resolveCounterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if (a3.location + a3.length > [(MTLToolsCounterSampleBuffer *)self sampleCount])
  {
    [MTLDebugCounterSampleBuffer resolveCounterRange:?];
  }

  if ([(MTLDebugCounterSampleBuffer *)self storageMode]== 2)
  {
    [MTLDebugCounterSampleBuffer resolveCounterRange:];
  }

  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 resolveCounterRange:{location, length}];
}

@end
@interface MTLDebugCounterSampleBuffer
- (MTLDebugCounterSampleBuffer)initWithCounterSampleBuffer:(id)buffer device:(id)device descriptor:(id)descriptor;
- (id)formattedDescription:(unint64_t)description;
- (id)resolveCounterRange:(_NSRange)range;
- (void)dealloc;
@end

@implementation MTLDebugCounterSampleBuffer

- (MTLDebugCounterSampleBuffer)initWithCounterSampleBuffer:(id)buffer device:(id)device descriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLDebugCounterSampleBuffer;
  v6 = [(MTLToolsObject *)&v8 initWithBaseObject:buffer parent:device];
  if (v6)
  {
    v6->_descriptor = [descriptor copy];
    v6->_storageMode = [descriptor storageMode];
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

- (id)formattedDescription:(unint64_t)description
{
  v11[3] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x277CCACA8];
  v7 = [-[MTLToolsObject baseObject](self "baseObject")];
  v11[0] = v5;
  v11[1] = @"label =";
  if ([(MTLToolsCounterSampleBuffer *)self label])
  {
    label = [(MTLToolsCounterSampleBuffer *)self label];
  }

  else
  {
    label = @"<none>";
  }

  v11[2] = label;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 3), "componentsJoinedByString:", @" "];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > [(MTLToolsCounterSampleBuffer *)self sampleCount])
  {
    [MTLDebugCounterSampleBuffer resolveCounterRange:?];
  }

  if ([(MTLDebugCounterSampleBuffer *)self storageMode]== 2)
  {
    [MTLDebugCounterSampleBuffer resolveCounterRange:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resolveCounterRange:{location, length}];
}

@end
@interface EGStillImageCaptureCompleteNode
- (EGStillImageCaptureCompleteNode)initWithName:(id)name numInputs:(int)inputs;
- (void)dealloc;
- (void)receiveData:(id)data fromInputGroup:(id)group;
@end

@implementation EGStillImageCaptureCompleteNode

- (EGStillImageCaptureCompleteNode)initWithName:(id)name numInputs:(int)inputs
{
  v12.receiver = self;
  v12.super_class = EGStillImageCaptureCompleteNode;
  v5 = [(EGNode *)&v12 initWithName:name];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = [[EGInputGroup alloc] initWithName:@"captureCompleteInputs"];
    if (inputs >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [EGInput alloc];
        v10 = -[EGInput initWithName:](v9, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"captureComplete%d", v8]);
        [(EGInputGroup *)v7 installInput:v10];
        [array addObject:v10];
        v8 = (v8 + 1);
      }

      while (inputs != v8);
    }

    [(EGNode *)v5 installInputGroup:v7];
    v5->_captureCompleteInputs = [array copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageCaptureCompleteNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)data fromInputGroup:(id)group
{
  v4 = EGStillImageGraphManagerForGraphElement(self);

  [v4 captureComplete];
}

@end
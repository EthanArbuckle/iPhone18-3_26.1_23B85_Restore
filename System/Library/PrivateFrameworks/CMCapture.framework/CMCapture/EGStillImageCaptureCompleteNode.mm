@interface EGStillImageCaptureCompleteNode
- (EGStillImageCaptureCompleteNode)initWithName:(id)a3 numInputs:(int)a4;
- (void)dealloc;
- (void)receiveData:(id)a3 fromInputGroup:(id)a4;
@end

@implementation EGStillImageCaptureCompleteNode

- (EGStillImageCaptureCompleteNode)initWithName:(id)a3 numInputs:(int)a4
{
  v12.receiver = self;
  v12.super_class = EGStillImageCaptureCompleteNode;
  v5 = [(EGNode *)&v12 initWithName:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [[EGInputGroup alloc] initWithName:@"captureCompleteInputs"];
    if (a4 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = [EGInput alloc];
        v10 = -[EGInput initWithName:](v9, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"captureComplete%d", v8]);
        [(EGInputGroup *)v7 installInput:v10];
        [v6 addObject:v10];
        v8 = (v8 + 1);
      }

      while (a4 != v8);
    }

    [(EGNode *)v5 installInputGroup:v7];
    v5->_captureCompleteInputs = [v6 copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageCaptureCompleteNode;
  [(EGNode *)&v3 dealloc];
}

- (void)receiveData:(id)a3 fromInputGroup:(id)a4
{
  v4 = EGStillImageGraphManagerForGraphElement(self);

  [v4 captureComplete];
}

@end
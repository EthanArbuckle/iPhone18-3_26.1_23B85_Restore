@interface GKImageBrush
- (CGSize)sizeForInput:(id)input;
- (double)scaleForInput:(id)input;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKImageBrush

- (CGSize)sizeForInput:(id)input
{
  inputCopy = input;
  inputTransform = self->_inputTransform;
  if (inputTransform)
  {
    v6 = inputTransform[2](inputTransform, inputCopy);

    inputCopy = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    [inputCopy size];
LABEL_8:
    v10 = v7;
    v12 = v8;
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = GKImageBrush;
    [(GKBrush *)&v15 sizeForInput:inputCopy];
    goto LABEL_8;
  }

  [inputCopy bounds];
  v10 = v9;
  v12 = v11;
LABEL_9:

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)scaleForInput:(id)input
{
  inputCopy = input;
  inputTransform = self->_inputTransform;
  if (inputTransform)
  {
    v6 = inputTransform[2](inputTransform, inputCopy);

    inputCopy = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    [inputCopy scale];
  }

  else if (objc_opt_respondsToSelector())
  {
    [inputCopy contentScaleFactor];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKImageBrush;
    [(GKBrush *)&v10 scaleForInput:inputCopy];
  }

  v8 = v7;

  return v8;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  inputTransform = self->_inputTransform;
  v13 = inputCopy;
  v16 = inputCopy;
  if (inputTransform)
  {
    v13 = inputTransform[2](inputTransform, inputCopy);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UIGraphicsPushContext(context);
    [v13 drawInRect:{x, y, width, height}];
    UIGraphicsPopContext();
    if (annotateOnceToken != -1)
    {
      [GKImageBrush drawInRect:withContext:input:];
    }

    if (shouldAnnotateImageUsage == 1)
    {
      v14 = objc_opt_class();
      Name = class_getName(v14);
      _annotateDrawInRectWithContextAndInput(Name, 0, v13, x, y, width, height);
    }
  }
}

void __45__GKImageBrush_drawInRect_withContext_input___block_invoke()
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  shouldAnnotateImageUsage = [v0 shouldAnnotateImageUsage];
}

@end
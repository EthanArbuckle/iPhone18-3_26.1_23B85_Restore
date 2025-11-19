@interface GKImageBrush
- (CGSize)sizeForInput:(id)a3;
- (double)scaleForInput:(id)a3;
- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5;
@end

@implementation GKImageBrush

- (CGSize)sizeForInput:(id)a3
{
  v4 = a3;
  inputTransform = self->_inputTransform;
  if (inputTransform)
  {
    v6 = inputTransform[2](inputTransform, v4);

    v4 = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 size];
LABEL_8:
    v10 = v7;
    v12 = v8;
    goto LABEL_9;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = GKImageBrush;
    [(GKBrush *)&v15 sizeForInput:v4];
    goto LABEL_8;
  }

  [v4 bounds];
  v10 = v9;
  v12 = v11;
LABEL_9:

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (double)scaleForInput:(id)a3
{
  v4 = a3;
  inputTransform = self->_inputTransform;
  if (inputTransform)
  {
    v6 = inputTransform[2](inputTransform, v4);

    v4 = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 scale];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v4 contentScaleFactor];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKImageBrush;
    [(GKBrush *)&v10 scaleForInput:v4];
  }

  v8 = v7;

  return v8;
}

- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  inputTransform = self->_inputTransform;
  v13 = v11;
  v16 = v11;
  if (inputTransform)
  {
    v13 = inputTransform[2](inputTransform, v11);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UIGraphicsPushContext(a4);
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
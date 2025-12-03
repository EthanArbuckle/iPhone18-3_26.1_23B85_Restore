@interface CHResultWithContext
- (CHResultWithContext)initWithResult:(id)result leftContext:(id)context contentType:(int)type;
- (CHResultWithContext)initWithResult:(id)result leftContext:(id)context contentType:(int)type drawing:(id)drawing;
@end

@implementation CHResultWithContext

- (CHResultWithContext)initWithResult:(id)result leftContext:(id)context contentType:(int)type
{
  resultCopy = result;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = CHResultWithContext;
  v15 = [(CHResultWithContext *)&v20 init];
  if (v15)
  {
    v16 = objc_msgSend_mutableCopy(resultCopy, v10, v11, v12, v13, v14);
    v17 = v15->_result;
    v15->_result = v16;

    objc_storeStrong(&v15->_leftContext, context);
    v15->_contentType = type;
    drawing = v15->_drawing;
    v15->_drawing = 0;
  }

  return v15;
}

- (CHResultWithContext)initWithResult:(id)result leftContext:(id)context contentType:(int)type drawing:(id)drawing
{
  resultCopy = result;
  contextCopy = context;
  drawingCopy = drawing;
  v22.receiver = self;
  v22.super_class = CHResultWithContext;
  v18 = [(CHResultWithContext *)&v22 init];
  if (v18)
  {
    v19 = objc_msgSend_mutableCopy(resultCopy, v13, v14, v15, v16, v17);
    v20 = v18->_result;
    v18->_result = v19;

    objc_storeStrong(&v18->_leftContext, context);
    v18->_contentType = type;
    objc_storeStrong(&v18->_drawing, drawing);
  }

  return v18;
}

@end
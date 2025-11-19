@interface CHResultWithContext
- (CHResultWithContext)initWithResult:(id)a3 leftContext:(id)a4 contentType:(int)a5;
- (CHResultWithContext)initWithResult:(id)a3 leftContext:(id)a4 contentType:(int)a5 drawing:(id)a6;
@end

@implementation CHResultWithContext

- (CHResultWithContext)initWithResult:(id)a3 leftContext:(id)a4 contentType:(int)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = CHResultWithContext;
  v15 = [(CHResultWithContext *)&v20 init];
  if (v15)
  {
    v16 = objc_msgSend_mutableCopy(v8, v10, v11, v12, v13, v14);
    v17 = v15->_result;
    v15->_result = v16;

    objc_storeStrong(&v15->_leftContext, a4);
    v15->_contentType = a5;
    drawing = v15->_drawing;
    v15->_drawing = 0;
  }

  return v15;
}

- (CHResultWithContext)initWithResult:(id)a3 leftContext:(id)a4 contentType:(int)a5 drawing:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = CHResultWithContext;
  v18 = [(CHResultWithContext *)&v22 init];
  if (v18)
  {
    v19 = objc_msgSend_mutableCopy(v10, v13, v14, v15, v16, v17);
    v20 = v18->_result;
    v18->_result = v19;

    objc_storeStrong(&v18->_leftContext, a4);
    v18->_contentType = a5;
    objc_storeStrong(&v18->_drawing, a6);
  }

  return v18;
}

@end
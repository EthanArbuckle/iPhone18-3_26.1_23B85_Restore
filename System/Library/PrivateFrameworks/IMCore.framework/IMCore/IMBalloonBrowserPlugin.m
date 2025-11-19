@interface IMBalloonBrowserPlugin
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)a3 browserDisplayName:(id)a4 browserImageName:(id)a5 browserClass:(Class)a6 presentationContext:(unint64_t)a7;
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)a3 browserDisplayName:(id)a4 browserImagePath:(id)a5;
@end

@implementation IMBalloonBrowserPlugin

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)a3 browserDisplayName:(id)a4 browserImagePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = IMBalloonBrowserPlugin;
  v11 = [(IMBalloonPlugin *)&v23 initWithBundle:0];
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_app(v11, v12, v13);
    objc_msgSend_setIdentifier_(v15, v16, v8);

    v19 = objc_msgSend_app(v14, v17, v18);
    objc_msgSend_setBrowserDisplayName_(v19, v20, v9);

    objc_msgSend_setBrowserImagePath_(v14, v21, v10);
  }

  return v14;
}

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)a3 browserDisplayName:(id)a4 browserImageName:(id)a5 browserClass:(Class)a6 presentationContext:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v35.receiver = self;
  v35.super_class = IMBalloonBrowserPlugin;
  v15 = [(IMBalloonPlugin *)&v35 initWithBundle:0];
  v18 = v15;
  if (v15)
  {
    v19 = objc_msgSend_app(v15, v16, v17);
    objc_msgSend_setIdentifier_(v19, v20, v12);

    v23 = objc_msgSend_app(v18, v21, v22);
    objc_msgSend_setBrowserDisplayName_(v23, v24, v13);

    objc_msgSend_setBrowserImageName_(v18, v25, v14);
    v28 = objc_msgSend_app(v18, v26, v27);
    objc_msgSend_setBrowserClass_(v28, v29, a6);

    v32 = objc_msgSend_app(v18, v30, v31);
    objc_msgSend_setPresentationContexts_(v32, v33, a7);
  }

  return v18;
}

@end
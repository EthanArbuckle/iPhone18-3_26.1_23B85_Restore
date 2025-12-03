@interface IMBalloonBrowserPlugin
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImageName:(id)imageName browserClass:(Class)class presentationContext:(unint64_t)context;
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImagePath:(id)path;
@end

@implementation IMBalloonBrowserPlugin

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImagePath:(id)path
{
  identifierCopy = identifier;
  nameCopy = name;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = IMBalloonBrowserPlugin;
  v11 = [(IMBalloonPlugin *)&v23 initWithBundle:0];
  v14 = v11;
  if (v11)
  {
    v15 = objc_msgSend_app(v11, v12, v13);
    objc_msgSend_setIdentifier_(v15, v16, identifierCopy);

    v19 = objc_msgSend_app(v14, v17, v18);
    objc_msgSend_setBrowserDisplayName_(v19, v20, nameCopy);

    objc_msgSend_setBrowserImagePath_(v14, v21, pathCopy);
  }

  return v14;
}

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImageName:(id)imageName browserClass:(Class)class presentationContext:(unint64_t)context
{
  identifierCopy = identifier;
  nameCopy = name;
  imageNameCopy = imageName;
  v35.receiver = self;
  v35.super_class = IMBalloonBrowserPlugin;
  v15 = [(IMBalloonPlugin *)&v35 initWithBundle:0];
  v18 = v15;
  if (v15)
  {
    v19 = objc_msgSend_app(v15, v16, v17);
    objc_msgSend_setIdentifier_(v19, v20, identifierCopy);

    v23 = objc_msgSend_app(v18, v21, v22);
    objc_msgSend_setBrowserDisplayName_(v23, v24, nameCopy);

    objc_msgSend_setBrowserImageName_(v18, v25, imageNameCopy);
    v28 = objc_msgSend_app(v18, v26, v27);
    objc_msgSend_setBrowserClass_(v28, v29, class);

    v32 = objc_msgSend_app(v18, v30, v31);
    objc_msgSend_setPresentationContexts_(v32, v33, context);
  }

  return v18;
}

@end
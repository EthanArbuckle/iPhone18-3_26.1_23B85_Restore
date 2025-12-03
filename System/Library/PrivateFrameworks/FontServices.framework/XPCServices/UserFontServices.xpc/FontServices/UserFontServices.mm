@interface UserFontServices
- (UserFontServices)init;
- (void)GSFontEnableOrDisablePersistentURLs:(id)ls forProfileFonts:(BOOL)fonts enabled:(BOOL)enabled suspend:(BOOL)suspend withReply:(id)reply;
- (void)GSFontRegisterPersistentURLs:(id)ls enabled:(BOOL)enabled forProfileFonts:(BOOL)fonts withReply:(id)reply;
- (void)GSFontUnregisterPersistentURLs:(id)ls forProfileFonts:(BOOL)fonts withReply:(id)reply;
@end

@implementation UserFontServices

- (UserFontServices)init
{
  v6.receiver = self;
  v6.super_class = UserFontServices;
  v2 = [(UserFontServices *)&v6 init];
  if (v2)
  {
    GSFontInitialize2();
    v3 = dispatch_queue_create("UserFontServices queue", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)GSFontRegisterPersistentURLs:(id)ls enabled:(BOOL)enabled forProfileFonts:(BOOL)fonts withReply:(id)reply
{
  lsCopy = ls;
  replyCopy = reply;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001228;
  v15[3] = &unk_100004180;
  v17 = &v21;
  fontsCopy = fonts;
  v13 = lsCopy;
  enabledCopy = enabled;
  v16 = v13;
  v18 = &v25;
  dispatch_sync(dispatchQueue, v15);
  replyCopy[2](replyCopy, v26[3], v22[3]);
  v14 = v26[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)GSFontUnregisterPersistentURLs:(id)ls forProfileFonts:(BOOL)fonts withReply:(id)reply
{
  lsCopy = ls;
  replyCopy = reply;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000013D0;
  v13[3] = &unk_1000041A8;
  v15 = &v18;
  fontsCopy = fonts;
  v11 = lsCopy;
  v14 = v11;
  v16 = &v22;
  dispatch_sync(dispatchQueue, v13);
  replyCopy[2](replyCopy, v23[3], v19[3]);
  v12 = v23[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)GSFontEnableOrDisablePersistentURLs:(id)ls forProfileFonts:(BOOL)fonts enabled:(BOOL)enabled suspend:(BOOL)suspend withReply:(id)reply
{
  lsCopy = ls;
  replyCopy = reply;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001554;
  block[3] = &unk_1000041D0;
  fontsCopy = fonts;
  v15 = lsCopy;
  enabledCopy = enabled;
  suspendCopy = suspend;
  v18 = v15;
  v19 = &v23;
  dispatch_sync(dispatchQueue, block);
  replyCopy[2](replyCopy, v24[3]);
  v16 = v24[3];
  if (v16)
  {
    CFRelease(v16);
  }

  _Block_object_dispose(&v23, 8);
}

@end
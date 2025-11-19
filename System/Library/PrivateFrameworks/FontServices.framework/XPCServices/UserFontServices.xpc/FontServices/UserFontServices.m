@interface UserFontServices
- (UserFontServices)init;
- (void)GSFontEnableOrDisablePersistentURLs:(id)a3 forProfileFonts:(BOOL)a4 enabled:(BOOL)a5 suspend:(BOOL)a6 withReply:(id)a7;
- (void)GSFontRegisterPersistentURLs:(id)a3 enabled:(BOOL)a4 forProfileFonts:(BOOL)a5 withReply:(id)a6;
- (void)GSFontUnregisterPersistentURLs:(id)a3 forProfileFonts:(BOOL)a4 withReply:(id)a5;
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

- (void)GSFontRegisterPersistentURLs:(id)a3 enabled:(BOOL)a4 forProfileFonts:(BOOL)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a6;
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
  v19 = a5;
  v13 = v10;
  v20 = a4;
  v16 = v13;
  v18 = &v25;
  dispatch_sync(dispatchQueue, v15);
  v11[2](v11, v26[3], v22[3]);
  v14 = v26[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)GSFontUnregisterPersistentURLs:(id)a3 forProfileFonts:(BOOL)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
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
  v17 = a4;
  v11 = v8;
  v14 = v11;
  v16 = &v22;
  dispatch_sync(dispatchQueue, v13);
  v9[2](v9, v23[3], v19[3]);
  v12 = v23[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)GSFontEnableOrDisablePersistentURLs:(id)a3 forProfileFonts:(BOOL)a4 enabled:(BOOL)a5 suspend:(BOOL)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001554;
  block[3] = &unk_1000041D0;
  v20 = a4;
  v15 = v12;
  v21 = a5;
  v22 = a6;
  v18 = v15;
  v19 = &v23;
  dispatch_sync(dispatchQueue, block);
  v13[2](v13, v24[3]);
  v16 = v24[3];
  if (v16)
  {
    CFRelease(v16);
  }

  _Block_object_dispose(&v23, 8);
}

@end
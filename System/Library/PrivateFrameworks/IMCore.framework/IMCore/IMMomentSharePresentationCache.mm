@interface IMMomentSharePresentationCache
- (IMMomentSharePresentationCache)initWithMomentShareCache:(id)cache;
- (IMMomentSharePresentationCacheDelegate)delegate;
- (id)statusPresentationForMomentShareURLString:(id)string;
- (void)_momentShareCacheDidChange:(id)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)registerMomentShareItemForMessage:(id)message;
- (void)registerMomentShareURLString:(id)string;
@end

@implementation IMMomentSharePresentationCache

- (IMMomentSharePresentationCache)initWithMomentShareCache:(id)cache
{
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = IMMomentSharePresentationCache;
  v6 = [(IMMomentSharePresentationCache *)&v14 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v6->_cache;
    v6->_cache = v7;

    objc_storeStrong(&v6->_momentShareCache, cache);
    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
    objc_msgSend_addObserver_selector_name_object_(v11, v12, v6, sel__momentShareCacheDidChange_, @"IMMomentShareCacheDidChangeNotification", v6->_momentShareCache);
  }

  return v6;
}

- (id)statusPresentationForMomentShareURLString:(id)string
{
  stringCopy = string;
  objc_msgSend_registerMomentShareURLString_(self, v5, stringCopy);
  v7 = objc_msgSend_objectForKeyedSubscript_(self->_cache, v6, stringCopy);

  return v7;
}

- (void)registerMomentShareItemForMessage:(id)message
{
  messageCopy = message;
  v6 = IMCoreMomentShareURLForMessage(messageCopy);
  if (v6 && (objc_msgSend_isSenderUnknown(messageCopy, v4, v5) & 1) == 0)
  {
    v9 = objc_msgSend_absoluteString(v6, v7, v8);
    if (objc_msgSend_length(v9, v10, v11))
    {
      objc_msgSend_registerMomentShareURLString_(self, v12, v9);
    }
  }
}

- (void)registerMomentShareURLString:(id)string
{
  stringCopy = string;
  v6 = objc_msgSend_objectForKeyedSubscript_(self->_cache, v5, stringCopy);

  if (!v6)
  {
    momentShareCache = self->_momentShareCache;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A82CACF8;
    v9[3] = &unk_1E7811720;
    v9[4] = self;
    v10 = stringCopy;
    objc_msgSend_momentShareForURLString_completionHandler_(momentShareCache, v8, v10, v9);
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x1400C) != 0 && qword_1EB2E4C78 == context)
  {
    v9 = objc_msgSend_delegate(self, a2, observable);
    objc_msgSend_momentSharePresentationCacheDidChange_(v9, v8, self);
  }
}

- (void)_momentShareCacheDidChange:(id)change
{
  changeCopy = change;
  v7 = objc_msgSend_userInfo(changeCopy, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"IMMomentShareCacheNotificationURLStringsUserInfoKey");

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = objc_msgSend_allKeys(self->_cache, v10, v11);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A82CB0C8;
  v19[3] = &unk_1E7811748;
  v13 = v9;
  v20 = v13;
  selfCopy = self;
  v22 = &v23;
  objc_msgSend_enumerateObjectsUsingBlock_(v12, v14, v19);

  if (*(v24 + 24) == 1)
  {
    v17 = objc_msgSend_delegate(self, v15, v16);
    objc_msgSend_momentSharePresentationCacheDidChange_(v17, v18, self);
  }

  _Block_object_dispose(&v23, 8);
}

- (IMMomentSharePresentationCacheDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
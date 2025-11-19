@interface IMPhotoAttachmentStatusChatItem
+ (id)_guidForItem:(id)a3;
- (BOOL)_isEqualToGuid:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (BOOL)wouldBeEqualIfInitializedWithItem:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6;
- (id)_initWithItem:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMPhotoAttachmentStatusChatItem

+ (id)_guidForItem:(id)a3
{
  v3 = objc_msgSend_guid(a3, a2, a3);
  v4 = sub_1A83AC604();

  return v4;
}

- (id)_initWithItem:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6
{
  v10 = a3;
  v17.receiver = self;
  v17.super_class = IMPhotoAttachmentStatusChatItem;
  v11 = [(IMChatItem *)&v17 _initWithItem:v10];
  if (v11)
  {
    v12 = objc_opt_class();
    v14 = objc_msgSend__guidForItem_(v12, v13, v10);
    objc_msgSend__setGUID_(v11, v15, v14);
    v11[7] = a4;
    v11[8] = a5;
    v11[9] = a6;
  }

  return v11;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_guid(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  return v7 ^ (4 * self->_numberOfPhotos) ^ (16 * self->_numberOfVideos) ^ (self->_numberOfSavedAssets << 6);
}

- (BOOL)_isEqualToGuid:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6
{
  v10 = a3;
  v13 = objc_msgSend_guid(self, v11, v12);
  v14 = v10;
  v16 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    if (!v14 || !v13)
    {

LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

    isEqualToString = objc_msgSend_isEqualToString_(v13, v15, v14);

    if (!isEqualToString)
    {
      goto LABEL_11;
    }
  }

  if (self->_numberOfPhotos != a4 || self->_numberOfVideos != a5)
  {
    goto LABEL_11;
  }

  v18 = self->_numberOfSavedAssets == a6;
LABEL_12:

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_guid(v4, v5, v6);
    v10 = objc_msgSend_numberOfPhotos(v4, v8, v9);
    v13 = objc_msgSend_numberOfVideos(v4, v11, v12);
    v16 = objc_msgSend_numberOfSavedAssets(v4, v14, v15);
    isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets = objc_msgSend__isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(self, v17, v7, v10, v13, v16);
  }

  else
  {
    isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets = 0;
  }

  return isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMPhotoAttachmentStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v9 description];
  numberOfVideos = self->_numberOfVideos;
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"[[%@] numberOfPhotos: %tu, numberOfVideos: %tu, numberOfSavedAssets: %tu]", v4, self->_numberOfPhotos, numberOfVideos, self->_numberOfSavedAssets);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(v4, v8, v7, self->_numberOfPhotos, self->_numberOfVideos, self->_numberOfSavedAssets);

  return v9;
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (BOOL)wouldBeEqualIfInitializedWithItem:(id)a3 numberOfPhotos:(unint64_t)a4 numberOfVideos:(unint64_t)a5 numberOfSavedAssets:(unint64_t)a6
{
  v10 = a3;
  v11 = objc_opt_class();
  v13 = objc_msgSend__guidForItem_(v11, v12, v10);

  LOBYTE(a6) = objc_msgSend__isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(self, v14, v13, a4, a5, a6);
  return a6;
}

@end
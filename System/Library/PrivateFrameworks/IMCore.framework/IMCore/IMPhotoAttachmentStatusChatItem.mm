@interface IMPhotoAttachmentStatusChatItem
+ (id)_guidForItem:(id)item;
- (BOOL)_isEqualToGuid:(id)guid numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (id)_initWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMPhotoAttachmentStatusChatItem

+ (id)_guidForItem:(id)item
{
  v3 = objc_msgSend_guid(item, a2, item);
  v4 = sub_1A83AC604();

  return v4;
}

- (id)_initWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = IMPhotoAttachmentStatusChatItem;
  v11 = [(IMChatItem *)&v17 _initWithItem:itemCopy];
  if (v11)
  {
    v12 = objc_opt_class();
    v14 = objc_msgSend__guidForItem_(v12, v13, itemCopy);
    objc_msgSend__setGUID_(v11, v15, v14);
    v11[7] = photos;
    v11[8] = videos;
    v11[9] = assets;
  }

  return v11;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_guid(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  return v7 ^ (4 * self->_numberOfPhotos) ^ (16 * self->_numberOfVideos) ^ (self->_numberOfSavedAssets << 6);
}

- (BOOL)_isEqualToGuid:(id)guid numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  guidCopy = guid;
  v13 = objc_msgSend_guid(self, v11, v12);
  v14 = guidCopy;
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

  if (self->_numberOfPhotos != photos || self->_numberOfVideos != videos)
  {
    goto LABEL_11;
  }

  v18 = self->_numberOfSavedAssets == assets;
LABEL_12:

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_guid(equalCopy, v5, v6);
    v10 = objc_msgSend_numberOfPhotos(equalCopy, v8, v9);
    v13 = objc_msgSend_numberOfVideos(equalCopy, v11, v12);
    v16 = objc_msgSend_numberOfSavedAssets(equalCopy, v14, v15);
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)wouldBeEqualIfInitializedWithItem:(id)item numberOfPhotos:(unint64_t)photos numberOfVideos:(unint64_t)videos numberOfSavedAssets:(unint64_t)assets
{
  itemCopy = item;
  v11 = objc_opt_class();
  v13 = objc_msgSend__guidForItem_(v11, v12, itemCopy);

  LOBYTE(assets) = objc_msgSend__isEqualToGuid_numberOfPhotos_numberOfVideos_numberOfSavedAssets_(self, v14, v13, photos, videos, assets);
  return assets;
}

@end
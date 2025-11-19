@interface IMSPIAttachment
- (IMSPIAttachment)initWithGuid:(id)a3 fileUrl:(id)a4 transferState:(int64_t)a5 uti:(id)a6 isSticker:(BOOL)a7 isOutgoing:(BOOL)a8 stickerUserInfo:(id)a9 attributionInfo:(id)a10 creationDate:(id)a11 adaptiveImageGlyphContentIdentifier:(id)a12 adaptiveImageGlyphContentDescription:(id)a13;
- (id)description;
@end

@implementation IMSPIAttachment

- (IMSPIAttachment)initWithGuid:(id)a3 fileUrl:(id)a4 transferState:(int64_t)a5 uti:(id)a6 isSticker:(BOOL)a7 isOutgoing:(BOOL)a8 stickerUserInfo:(id)a9 attributionInfo:(id)a10 creationDate:(id)a11 adaptiveImageGlyphContentIdentifier:(id)a12 adaptiveImageGlyphContentDescription:(id)a13
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v61.receiver = self;
  v61.super_class = IMSPIAttachment;
  v27 = [(IMSPIAttachment *)&v61 init];
  if (v27)
  {
    v28 = objc_msgSend_copy(v17, v25, v26);
    guid = v27->_guid;
    v27->_guid = v28;

    v32 = objc_msgSend_copy(v18, v30, v31);
    fileUrl = v27->_fileUrl;
    v27->_fileUrl = v32;

    v27->_fileTransferState = a5;
    v36 = objc_msgSend_copy(v19, v34, v35);
    uti = v27->_uti;
    v27->_uti = v36;

    v27->_isSticker = a7;
    v27->_isOutgoing = a8;
    v40 = objc_msgSend_copy(v20, v38, v39);
    stickerUserInfo = v27->_stickerUserInfo;
    v27->_stickerUserInfo = v40;

    v44 = objc_msgSend_copy(v21, v42, v43);
    attributionInfo = v27->_attributionInfo;
    v27->_attributionInfo = v44;

    v48 = objc_msgSend_copy(v22, v46, v47);
    creationDate = v27->_creationDate;
    v27->_creationDate = v48;

    v52 = objc_msgSend_copy(v23, v50, v51);
    adaptiveImageGlyphContentIdentifier = v27->_adaptiveImageGlyphContentIdentifier;
    v27->_adaptiveImageGlyphContentIdentifier = v52;

    v56 = objc_msgSend_copy(v24, v54, v55);
    adaptiveImageGlyphContentDescription = v27->_adaptiveImageGlyphContentDescription;
    v27->_adaptiveImageGlyphContentDescription = v56;
  }

  return v27;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isSticker)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_isOutgoing)
  {
    v2 = @"YES";
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"IMSPIAttachment: %p [guid: %@ FileUrl: %@ TransferState: %tu uti: %@ isSticker: %@ isOutgoing: %@ attributionInfo: %@ creationDate: %@]", self, self->_guid, self->_fileUrl, self->_fileTransferState, self->_uti, v3, v2, self->_attributionInfo, self->_creationDate);
}

@end
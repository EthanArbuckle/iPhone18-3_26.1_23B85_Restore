@interface IMSPIAttachment
- (IMSPIAttachment)initWithGuid:(id)guid fileUrl:(id)url transferState:(int64_t)state uti:(id)uti isSticker:(BOOL)sticker isOutgoing:(BOOL)outgoing stickerUserInfo:(id)info attributionInfo:(id)self0 creationDate:(id)self1 adaptiveImageGlyphContentIdentifier:(id)self2 adaptiveImageGlyphContentDescription:(id)self3;
- (id)description;
@end

@implementation IMSPIAttachment

- (IMSPIAttachment)initWithGuid:(id)guid fileUrl:(id)url transferState:(int64_t)state uti:(id)uti isSticker:(BOOL)sticker isOutgoing:(BOOL)outgoing stickerUserInfo:(id)info attributionInfo:(id)self0 creationDate:(id)self1 adaptiveImageGlyphContentIdentifier:(id)self2 adaptiveImageGlyphContentDescription:(id)self3
{
  guidCopy = guid;
  urlCopy = url;
  utiCopy = uti;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  dateCopy = date;
  identifierCopy = identifier;
  descriptionCopy = description;
  v61.receiver = self;
  v61.super_class = IMSPIAttachment;
  v27 = [(IMSPIAttachment *)&v61 init];
  if (v27)
  {
    v28 = objc_msgSend_copy(guidCopy, v25, v26);
    guid = v27->_guid;
    v27->_guid = v28;

    v32 = objc_msgSend_copy(urlCopy, v30, v31);
    fileUrl = v27->_fileUrl;
    v27->_fileUrl = v32;

    v27->_fileTransferState = state;
    v36 = objc_msgSend_copy(utiCopy, v34, v35);
    uti = v27->_uti;
    v27->_uti = v36;

    v27->_isSticker = sticker;
    v27->_isOutgoing = outgoing;
    v40 = objc_msgSend_copy(infoCopy, v38, v39);
    stickerUserInfo = v27->_stickerUserInfo;
    v27->_stickerUserInfo = v40;

    v44 = objc_msgSend_copy(attributionInfoCopy, v42, v43);
    attributionInfo = v27->_attributionInfo;
    v27->_attributionInfo = v44;

    v48 = objc_msgSend_copy(dateCopy, v46, v47);
    creationDate = v27->_creationDate;
    v27->_creationDate = v48;

    v52 = objc_msgSend_copy(identifierCopy, v50, v51);
    adaptiveImageGlyphContentIdentifier = v27->_adaptiveImageGlyphContentIdentifier;
    v27->_adaptiveImageGlyphContentIdentifier = v52;

    v56 = objc_msgSend_copy(descriptionCopy, v54, v55);
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
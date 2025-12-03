@interface CKDBFileTransfer
- (BOOL)fileIsAnimated;
- (BOOL)isDownloadable;
- (BOOL)isDownloading;
- (BOOL)isFileDataReady;
- (BOOL)isFileURLFinalized;
- (BOOL)isReset;
- (CKDBFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot;
- (CKDBFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment;
- (CKDBFileTransfer)initWithTransferGUID:(id)d imMessage:(id)message;
- (NSError)error;
- (NSString)description;
- (NSString)filename;
- (NSString)originalFilename;
@end

@implementation CKDBFileTransfer

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CKDBFileTransfer;
  v4 = [(CKDBFileTransfer *)&v11 description];
  guid = [(CKDBFileTransfer *)self guid];
  fileURL = [(CKDBFileTransfer *)self fileURL];
  transcoderUserInfo = [(CKDBFileTransfer *)self transcoderUserInfo];
  filename = [(CKDBFileTransfer *)self filename];
  v9 = [v3 stringWithFormat:@"[%@ transferGUID:%@ fileURL:%@ transcoderUserInfo:%@ filename:%@]", v4, guid, fileURL, transcoderUserInfo, filename];

  return v9;
}

- (CKDBFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo adaptiveImageGlyphContentIdentifier:(id)identifier adaptiveImageGlyphContentDescription:(id)description hideAttachment:(BOOL)attachment isScreenshot:(BOOL)screenshot
{
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  identifierCopy = identifier;
  descriptionCopy = description;
  v35.receiver = self;
  v35.super_class = CKDBFileTransfer;
  v20 = [(CKDBFileTransfer *)&v35 init];
  if (v20)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v22 = [stringGUID copy];
    guid = v20->_guid;
    v20->_guid = v22;

    v24 = [lCopy copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v24;

    v26 = [infoCopy copy];
    transcoderUserInfo = v20->_transcoderUserInfo;
    v20->_transcoderUserInfo = v26;

    v28 = [attributionInfoCopy copy];
    attributionInfo = v20->_attributionInfo;
    v20->_attributionInfo = v28;

    v20->_isSticker = 0;
    v30 = [identifierCopy copy];
    adaptiveImageGlyphContentIdentifier = v20->_adaptiveImageGlyphContentIdentifier;
    v20->_adaptiveImageGlyphContentIdentifier = v30;

    v32 = [descriptionCopy copy];
    adaptiveImageGlyphContentDescription = v20->_adaptiveImageGlyphContentDescription;
    v20->_adaptiveImageGlyphContentDescription = v32;

    v20->_isScreenshot = 0;
    v20->_commSafetySensitive = 0;
    v20->_hideAttachment = attachment;
  }

  return v20;
}

- (CKDBFileTransfer)initWithFileURL:(id)l transcoderUserInfo:(id)info attributionInfo:(id)attributionInfo hideAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  lCopy = l;
  infoCopy = info;
  attributionInfoCopy = attributionInfo;
  v13 = IMIsScreenshotURL();
  if (v13)
  {
    LOBYTE(v13) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
  }

  LOBYTE(v16) = v13;
  v14 = [(CKDBFileTransfer *)self initWithFileURL:lCopy transcoderUserInfo:infoCopy attributionInfo:attributionInfoCopy adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:attachmentCopy isScreenshot:v16];

  return v14;
}

- (CKDBFileTransfer)initWithTransferGUID:(id)d imMessage:(id)message
{
  v6 = MEMORY[0x1E696AAA8];
  dCopy = d;
  currentHandler = [v6 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKDBFileTransfer.m" lineNumber:77 description:{@"-initWithTransferGUID (%@) should not be called for CKDBFileTransfer", dCopy}];

  return 0;
}

- (BOOL)fileIsAnimated
{
  v3 = IMUTITypeForFilename();
  if (self->_fileURL && IMUTTypeIsSupportedAnimatedImage())
  {
    v4 = [MEMORY[0x1E69A80C0] imageIsAnimatedSequenceAtFileURL:self->_fileURL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)filename
{
  fileURL = [(CKDBFileTransfer *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  if (!lastPathComponent)
  {
    lastPathComponent = self->_filename;
  }

  return lastPathComponent;
}

- (NSString)originalFilename
{
  fileURL = [(CKDBFileTransfer *)self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  if (!lastPathComponent)
  {
    lastPathComponent = self->_originalFilename;
  }

  return lastPathComponent;
}

- (NSError)error
{
  if ([(CKDBFileTransfer *)self transferState]== 6)
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CKFileTransferErrorDomain" code:0 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isFileURLFinalized
{
  transferState = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsFileURLFinalized(transferState);
}

- (BOOL)isFileDataReady
{
  isFileURLFinalized = [(CKDBFileTransfer *)self isFileURLFinalized];
  if (isFileURLFinalized)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileURL = [(CKDBFileTransfer *)self fileURL];
    path = [fileURL path];
    v7 = [defaultManager fileExistsAtPath:path];

    LOBYTE(isFileURLFinalized) = v7;
  }

  return isFileURLFinalized;
}

- (BOOL)isDownloadable
{
  isFileDataReady = [(CKDBFileTransfer *)self isFileDataReady];
  transferState = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsDownloadable(isFileDataReady, transferState);
}

- (BOOL)isDownloading
{
  isFileDataReady = [(CKDBFileTransfer *)self isFileDataReady];
  transferState = [(CKDBFileTransfer *)self transferState];
  guid = [(CKDBFileTransfer *)self guid];
  IsDownloading = CKFileTransferIsDownloading(isFileDataReady, transferState, guid);

  return IsDownloading;
}

- (BOOL)isReset
{
  transferState = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsReset(transferState);
}

@end
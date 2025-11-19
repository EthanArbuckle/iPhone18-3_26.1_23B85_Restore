@interface CKDBFileTransfer
- (BOOL)fileIsAnimated;
- (BOOL)isDownloadable;
- (BOOL)isDownloading;
- (BOOL)isFileDataReady;
- (BOOL)isFileURLFinalized;
- (BOOL)isReset;
- (CKDBFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9;
- (CKDBFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6;
- (CKDBFileTransfer)initWithTransferGUID:(id)a3 imMessage:(id)a4;
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
  v5 = [(CKDBFileTransfer *)self guid];
  v6 = [(CKDBFileTransfer *)self fileURL];
  v7 = [(CKDBFileTransfer *)self transcoderUserInfo];
  v8 = [(CKDBFileTransfer *)self filename];
  v9 = [v3 stringWithFormat:@"[%@ transferGUID:%@ fileURL:%@ transcoderUserInfo:%@ filename:%@]", v4, v5, v6, v7, v8];

  return v9;
}

- (CKDBFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 adaptiveImageGlyphContentIdentifier:(id)a6 adaptiveImageGlyphContentDescription:(id)a7 hideAttachment:(BOOL)a8 isScreenshot:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v35.receiver = self;
  v35.super_class = CKDBFileTransfer;
  v20 = [(CKDBFileTransfer *)&v35 init];
  if (v20)
  {
    v21 = [MEMORY[0x1E696AEC0] stringGUID];
    v22 = [v21 copy];
    guid = v20->_guid;
    v20->_guid = v22;

    v24 = [v15 copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v24;

    v26 = [v16 copy];
    transcoderUserInfo = v20->_transcoderUserInfo;
    v20->_transcoderUserInfo = v26;

    v28 = [v17 copy];
    attributionInfo = v20->_attributionInfo;
    v20->_attributionInfo = v28;

    v20->_isSticker = 0;
    v30 = [v18 copy];
    adaptiveImageGlyphContentIdentifier = v20->_adaptiveImageGlyphContentIdentifier;
    v20->_adaptiveImageGlyphContentIdentifier = v30;

    v32 = [v19 copy];
    adaptiveImageGlyphContentDescription = v20->_adaptiveImageGlyphContentDescription;
    v20->_adaptiveImageGlyphContentDescription = v32;

    v20->_isScreenshot = 0;
    v20->_commSafetySensitive = 0;
    v20->_hideAttachment = a8;
  }

  return v20;
}

- (CKDBFileTransfer)initWithFileURL:(id)a3 transcoderUserInfo:(id)a4 attributionInfo:(id)a5 hideAttachment:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = IMIsScreenshotURL();
  if (v13)
  {
    LOBYTE(v13) = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
  }

  LOBYTE(v16) = v13;
  v14 = [(CKDBFileTransfer *)self initWithFileURL:v10 transcoderUserInfo:v11 attributionInfo:v12 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v6 isScreenshot:v16];

  return v14;
}

- (CKDBFileTransfer)initWithTransferGUID:(id)a3 imMessage:(id)a4
{
  v6 = MEMORY[0x1E696AAA8];
  v7 = a3;
  v8 = [v6 currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"CKDBFileTransfer.m" lineNumber:77 description:{@"-initWithTransferGUID (%@) should not be called for CKDBFileTransfer", v7}];

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
  v3 = [(CKDBFileTransfer *)self fileURL];
  v4 = [v3 lastPathComponent];

  if (!v4)
  {
    v4 = self->_filename;
  }

  return v4;
}

- (NSString)originalFilename
{
  v3 = [(CKDBFileTransfer *)self fileURL];
  v4 = [v3 lastPathComponent];

  if (!v4)
  {
    v4 = self->_originalFilename;
  }

  return v4;
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
  v2 = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsFileURLFinalized(v2);
}

- (BOOL)isFileDataReady
{
  v3 = [(CKDBFileTransfer *)self isFileURLFinalized];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [(CKDBFileTransfer *)self fileURL];
    v6 = [v5 path];
    v7 = [v4 fileExistsAtPath:v6];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (BOOL)isDownloadable
{
  v3 = [(CKDBFileTransfer *)self isFileDataReady];
  v4 = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsDownloadable(v3, v4);
}

- (BOOL)isDownloading
{
  v3 = [(CKDBFileTransfer *)self isFileDataReady];
  v4 = [(CKDBFileTransfer *)self transferState];
  v5 = [(CKDBFileTransfer *)self guid];
  IsDownloading = CKFileTransferIsDownloading(v3, v4, v5);

  return IsDownloading;
}

- (BOOL)isReset
{
  v2 = [(CKDBFileTransfer *)self transferState];

  return CKFileTransferIsReset(v2);
}

@end
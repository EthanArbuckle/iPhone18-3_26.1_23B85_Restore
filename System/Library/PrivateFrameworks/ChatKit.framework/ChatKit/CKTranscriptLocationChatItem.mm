@interface CKTranscriptLocationChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKLocationMediaObject)locationMediaObject;
- (id)dragItemProvider;
- (id)transferGUID;
@end

@implementation CKTranscriptLocationChatItem

- (id)transferGUID
{
  v2 = [(CKTranscriptLocationChatItem *)self mediaObject];
  v3 = [v2 transferGUID];

  return v3;
}

- (CKLocationMediaObject)locationMediaObject
{
  locationMediaObject = self->_locationMediaObject;
  if (!locationMediaObject)
  {
    v4 = [(CKChatItem *)self IMChatItem];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 locationInfo];
      v7 = [v6 location];

      v8 = off_1E72E5000;
      if (v7)
      {
        v9 = [v5 locationInfo];
        v10 = [v9 query];
        v11 = v10;
        v12 = @"Location";
        if (v10)
        {
          v12 = v10;
        }

        v13 = v12;

        v14 = +[CKMediaObjectManager sharedInstance];
        v15 = [v5 locationInfo];
        v16 = [v15 location];
        v17 = [CKLocationMediaObject vcardDataFromCLLocation:v16];
        v18 = [v14 mediaObjectWithData:v17 UTIType:@"loc.vcf" filename:v13 transcoderUserInfo:MEMORY[0x1E695E0F8]];

        v8 = off_1E72E5000;
      }

      else
      {
        v18 = 0;
      }

      v19 = objc_alloc(v8[9]);
      v20 = [v18 transfer];
      v21 = [(CKMessagePartChatItem *)self message];
      v22 = [v21 __ck_context];
      v23 = [v19 initWithTransfer:v20 context:v22 forceInlinePreview:0];
      v24 = self->_locationMediaObject;
      self->_locationMediaObject = v23;

      v25 = [v5 locationInfo];
      v26 = [v25 url];
      locationURL = self->_locationURL;
      self->_locationURL = v26;
    }

    locationMediaObject = self->_locationMediaObject;
  }

  return locationMediaObject;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v4 = [CKUIBehavior sharedBehaviors:a4];
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 mapPreviewMaxWidth];
  [v4 mapThumbnailFillSizeForWidth:?];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)dragItemProvider
{
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v4 = [(NSURL *)self->_locationURL absoluteString];
  v5 = [v4 dataUsingEncoding:4];

  v6 = *MEMORY[0x1E69638B8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__CKTranscriptLocationChatItem_dragItemProvider__block_invoke;
  v13[3] = &unk_1E72EC878;
  v7 = v5;
  v14 = v7;
  [v3 registerDataRepresentationForTypeIdentifier:v6 visibility:0 loadHandler:v13];
  v8 = *MEMORY[0x1E69638C8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__CKTranscriptLocationChatItem_dragItemProvider__block_invoke_2;
  v11[3] = &unk_1E72EC878;
  v12 = v7;
  v9 = v7;
  [v3 registerDataRepresentationForTypeIdentifier:v8 visibility:0 loadHandler:v11];

  return v3;
}

@end
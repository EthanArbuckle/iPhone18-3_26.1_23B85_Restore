@interface CKAttachmentMessagePartChatItem
- (BOOL)canCopy;
- (BOOL)canExport;
- (BOOL)canForward;
- (BOOL)canInlineReply;
- (BOOL)canPerformQuickAction;
- (BOOL)stickersSnapToPoint;
- (CGSize)_adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:(CGSize)a3;
- (CGSize)_transcoderGeneratedSizeFittingSize:(CGSize)a3 sizeExists:(BOOL *)a4;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKAttachmentMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (Class)balloonViewClass;
- (Class)cellClass;
- (NSString)transferGUID;
- (NSURL)momentShareURL;
- (id)compositionWithContext:(id)a3;
- (id)description;
- (id)dragItemProvider;
- (id)fileURLForAttachment;
- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4;
- (void)setTranscriptTraitCollection:(id)a3;
@end

@implementation CKAttachmentMessagePartChatItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CKAttachmentMessagePartChatItem;
  v4 = [(CKMessagePartChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ attachmentContiguousType:%d]", v4, -[CKChatItem attachmentContiguousType](self, "attachmentContiguousType")];

  return v5;
}

- (CKAttachmentMessagePartChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = CKAttachmentMessagePartChatItem;
  v7 = [(CKMessagePartChatItem *)&v18 initWithIMChatItem:v6 maxWidth:a4];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = NSStringFromSelector(sel_chatContext);
      v9 = [v6 valueForKey:v8];
    }

    else
    {
      v9 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = NSStringFromSelector(sel_message);
      v11 = [v6 valueForKey:v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = +[CKMediaObjectManager sharedInstance];
    v13 = [(CKAttachmentMessagePartChatItem *)v7 transferGUID];
    v14 = [v12 mediaObjectWithTransferGUID:v13 imMessage:v11 chatContext:v9];

    if (objc_opt_respondsToSelector())
    {
      v15 = NSStringFromSelector(sel_time);
      v16 = [v6 valueForKey:v15];

      if (v16)
      {
        [v14 setTime:v16];
      }
    }

    [(CKAttachmentMessagePartChatItem *)v7 setMediaObject:v14];
  }

  return v7;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v115 = *MEMORY[0x1E69E9840];
  v8 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 previewBalloonSizeThatFits:{width, height}];
LABEL_3:
    v12 = v10;
    v13 = v11;

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = CKDeletedMomentShareBalloonView;
LABEL_8:
    [(__objc2_class *)v14 sizeThatFits:width, height];
LABEL_9:
    v12 = v15;
    v13 = v16;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = CKUnavailableMomentShareBalloonView;
    goto LABEL_8;
  }

  v19 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v20 = [v19 transfer];
  v21 = [v20 isSticker];

  if (v21)
  {
    if (a4)
    {
      v22 = *(MEMORY[0x1E69DDCE0] + 16);
      *&a4->top = *MEMORY[0x1E69DDCE0];
      *&a4->bottom = v22;
    }

    v23 = +[CKChatItemSizeCache sharedInstance];
    v24 = MEMORY[0x1E695F060];
    *buf = *MEMORY[0x1E695F060];
    if ([v23 cachedSizeForChatItem:self size:buf textAlignmentInsets:0 fittingSize:{width, height}])
    {
      [(CKAttachmentMessagePartChatItem *)self _adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:buf[0], buf[1]];
      v12 = v25;
      v13 = v26;
    }

    else
    {
      v113 = 0;
      [(CKAttachmentMessagePartChatItem *)self _transcoderGeneratedSizeFittingSize:&v113 sizeExists:width, height];
      v46 = v45;
      v47 = *v24;
      v109 = v24[1];
      if (v113 == 1)
      {
        v48 = v44;
        v49 = 0.0;
      }

      else
      {
        v50 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
        v51 = +[CKUIBehavior sharedBehaviors];
        [v51 previewMaxWidth];
        v52 = [v50 previewForWidth:0 orientation:?];

        if (v52)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v54 = v52;
          v55 = v54;
          if (isKindOfClass)
          {
            v56 = [v54 image];
            [v56 size];
            v46 = v57;
            v48 = v58;

            v59 = [v55 image];

            [v59 scale];
            v49 = v60;
          }

          else
          {
            [v54 size];
            v46 = v72;
            v48 = v73;
            [v55 scale];
            v49 = v74;
            v59 = v55;
          }
        }

        else
        {
          v49 = 0.0;
          v48 = v109;
          v46 = v47;
        }
      }

      v75 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
      v76 = [v75 transfer];
      v77 = [v76 stickerUserInfo];

      if (v77)
      {
        v78 = [v77 objectForKey:*MEMORY[0x1E69A7C78]];
        v79 = v78;
        if (v78)
        {
          [v78 floatValue];
          v81 = v80;
        }

        else
        {
          v81 = 1.0;
        }
      }

      else
      {
        v81 = 1.0;
      }

      v82 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
      objc_opt_class();
      v83 = objc_opt_isKindOfClass();

      if (v83)
      {
        v84 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
        v85 = width;
        if ([v84 isSticker])
        {
          v86 = [v84 sticker];
          v87 = [v86 externalURI];
          v88 = [v87 hasPrefix:@"sticker:///emoji/"];

          v89 = +[CKUIBehavior sharedBehaviors];
          v90 = [(CKChatItem *)self transcriptTraitCollection];
          [v90 displayScale];
          [v89 stickerInlinePreviewMaxWidthForImageSize:v88 isEmoji:v46 displayScale:{v48, v91}];
          v93 = v92;

          v85 = fmin(width, v93);
        }
      }

      else
      {
        v85 = width;
      }

      v94 = +[CKUIBehavior sharedBehaviors];
      [v94 stickerScreenScale];
      [v94 stickerSizeScaledWithInitialSize:v46 imageScale:v48 userScale:v49 rectifiedScreenScale:v81 maxWidth:{v95, v85}];
      v98 = v96;
      v99 = v97;
      if (v96 != v47 || v97 != v110)
      {
        [v23 setCachedSizeForChatItem:self size:v96 textAlignmentInsets:v97 fittingSize:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24), width, height}];
      }

      [(CKAttachmentMessagePartChatItem *)self _adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:v98, v99];
      v12 = v100;
      v13 = v101;
    }

    goto LABEL_10;
  }

  v27 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v28 = objc_opt_class();
  if ([v28 isEqual:objc_opt_class()])
  {
    v29 = [(CKMessagePartChatItem *)self isReplyContextPreview];

    if (!v29)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      v30 = +[CKUIBehavior sharedBehaviors];
      [v30 mapPreviewMaxWidth];
      v32 = v31;

      if (v32 >= width)
      {
        v33 = width;
      }

      else
      {
        v33 = v32;
      }

      [v9 mapThumbnailFillSizeForWidth:v33];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v34 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  if (([v34 generatePreviewOutOfProcess] & 1) == 0)
  {

    goto LABEL_30;
  }

  v35 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v36 = [objc_opt_class() shouldUseTranscoderGeneratedPreviewSize];

  if (!v36)
  {
    goto LABEL_30;
  }

  v113 = 0;
  [(CKAttachmentMessagePartChatItem *)self _transcoderGeneratedSizeFittingSize:&v113 sizeExists:width, height];
  if (v113 == 1)
  {
    v39 = v37;
    v40 = v38;
    v41 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
    v42 = +[CKUIBehavior sharedBehaviors];
    [v42 previewMaxWidth];
    [v41 prewarmPreviewForWidth:-[CKBalloonChatItem balloonOrientation](self orientation:{"balloonOrientation"), v43}];

    [(CKAttachmentMessagePartChatItem *)self _adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:v39, v40];
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = [(CKAttachmentMessagePartChatItem *)self transferGUID];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v62;
      _os_log_impl(&dword_19020E000, v61, OS_LOG_TYPE_INFO, "Did not find transcoder generated size for item w/ transferGUID = %@, generating preview", buf, 0xCu);
    }
  }

  v63 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v64 = +[CKUIBehavior sharedBehaviors];
  [v64 previewMaxWidth];
  v66 = [v63 previewForWidth:-[CKBalloonChatItem balloonOrientation](self orientation:{"balloonOrientation"), v65}];

  if (!v66)
  {
LABEL_30:
    v111.receiver = self;
    v111.super_class = CKAttachmentMessagePartChatItem;
    [(CKBalloonChatItem *)&v111 loadSizeThatFits:a4 textAlignmentInsets:width, height];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = [v66 image];
    [v67 size];
    v69 = v68;
    v71 = v70;
  }

  else
  {
    [v66 size];
    v69 = v102;
    v71 = v103;
  }

  if (!+[CKApplicationState isResizing])
  {
    v112.receiver = self;
    v112.super_class = CKAttachmentMessagePartChatItem;
    [(CKBalloonChatItem *)&v112 loadSizeThatFits:a4 textAlignmentInsets:width, height];
  }

  [(CKAttachmentMessagePartChatItem *)self _adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:v69, v71];
  v12 = v104;
  v13 = v105;
  if (width < v104 || height < v105)
  {
    v106 = width / v104;
    v107 = 0.0;
    if (v12 == 0.0)
    {
      v106 = 0.0;
    }

    if (v13 != 0.0)
    {
      v107 = height / v13;
    }

    v108 = fmin(v106, v107);
    v12 = ceil(v12 * v108);
    v13 = ceil(v13 * v108);
  }

LABEL_10:
  v17 = v12;
  v18 = v13;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)_adjustedSizeForSensitiveBlurredViewThatFitsSizeIfNeeded:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69A7FC8] sharedManager];
  if ([v6 isFeatureEnabled])
  {
    v7 = [(CKChatItem *)self isCommSafetySensitiveNotViewable];

    if (v7)
    {
      v8 = [MEMORY[0x1E69A7FC8] sharedManager];
      v9 = [v8 enablementGroup];

      v10 = +[CKUIBehavior sharedBehaviors];
      v11 = v10;
      if (v9 == 2)
      {
        [v10 obscuredBalloonMinimumSizeForAdult];
      }

      else
      {
        [v10 obscuredBalloonMinimumSizeForChild];
      }

      v14 = v12;
      v15 = v13;

      width = fmax(width, v14);
      height = fmax(height, v15);
    }
  }

  else
  {
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (Class)cellClass
{
  v3 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_opt_class();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKAttachmentMessagePartChatItem;
    v5 = [(CKBalloonChatItem *)&v7 cellClass];
  }

  return v5;
}

- (CGSize)_transcoderGeneratedSizeFittingSize:(CGSize)a3 sizeExists:(BOOL *)a4
{
  height = a3.height;
  width = a3.width;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v8 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v9 = [v8 transfer];
  if ([v9 isSticker])
  {
    IMClientPreviewStickerConstraints();
  }

  else
  {
    IMClientPreviewConstraints();
  }

  v10 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v21[0] = v23;
  v21[1] = v24;
  v22 = v25;
  [v10 transcoderGeneratedSizeForConstraints:v21];
  v12 = v11;
  v14 = v13;

  if (v12 == *MEMORY[0x1E695F060] && v14 == *(MEMORY[0x1E695F060] + 8))
  {
    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (width < v12 || height < v14)
    {
      v16 = width / v12;
      v17 = 0.0;
      if (v12 == 0.0)
      {
        v16 = 0.0;
      }

      if (v14 != 0.0)
      {
        v17 = height / v14;
      }

      v18 = fmin(v16, v17);
      v12 = ceil(v12 * v18);
      v14 = ceil(v14 * v18);
    }
  }

  v19 = v12;
  v20 = v14;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)canCopy
{
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v4 = [v3 transfer];
  v5 = [v4 isSticker];

  if (v5)
  {
    return 0;
  }

  v7 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v8 = [v7 transfer];
  v9 = [v8 isFileDataReady];

  return v9;
}

- (BOOL)canInlineReply
{
  v2 = self;
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v4 = [v3 transfer];

  LODWORD(v3) = ![CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForCKFileTransfer:v4];
  v6.receiver = v2;
  v6.super_class = CKAttachmentMessagePartChatItem;
  LOBYTE(v2) = [(CKMessagePartChatItem *)&v6 canInlineReply];

  return v2 & v3;
}

- (BOOL)canForward
{
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v4 = [v3 transfer];

  if (+[CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForCKFileTransfer:](CKCommSafetyHelper, "shouldDisableTranscriptCapabilitiesForCKFileTransfer:", v4) || (-[CKAttachmentMessagePartChatItem mediaObject](self, "mediaObject"), v5 = objc_claimAutoreleasedReturnValue(), [v5 transfer], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isSticker"), v6, v5, (v7 & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
    v10 = [v9 transfer];
    v8 = [v10 isFileDataReady];
  }

  return v8;
}

- (BOOL)canExport
{
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = [v2 canExport];

  return v3;
}

- (BOOL)canPerformQuickAction
{
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  if ([v3 canPerformQuickAction])
  {
    v4 = ![(CKChatItem *)self itemIsReplyContextPreview];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)stickersSnapToPoint
{
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (void)setTranscriptTraitCollection:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKAttachmentMessagePartChatItem;
  v4 = a3;
  [(CKChatItem *)&v6 setTranscriptTraitCollection:v4];
  v5 = [(CKAttachmentMessagePartChatItem *)self mediaObject:v6.receiver];
  [v5 setTranscriptTraitCollection:v4];
}

- (Class)balloonViewClass
{
  v3 = [(CKChatItem *)self IMChatItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v6 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 previewMaxWidth];
    v4 = [v6 balloonViewClassForWidth:-[CKBalloonChatItem balloonOrientation](self orientation:{"balloonOrientation"), v8}];
  }

  return v4;
}

- (id)fileURLForAttachment
{
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = [v2 fileURL];

  return v3;
}

- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v9 = [v8 rtfDocumentItemsWithFormatString:v7 selectedTextRange:{location, length}];

  return v9;
}

- (id)dragItemProvider
{
  dragItemProvider = self->_dragItemProvider;
  if (!dragItemProvider)
  {
    v4 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
    v5 = [v4 pasteboardItemProvider];
    v6 = self->_dragItemProvider;
    self->_dragItemProvider = v5;

    dragItemProvider = self->_dragItemProvider;
  }

  return dragItemProvider;
}

- (NSString)transferGUID
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 transferGUID];

  return v3;
}

- (NSURL)momentShareURL
{
  momentShareURL = self->_momentShareURL;
  if (!momentShareURL)
  {
    v4 = [(CKMessagePartChatItem *)self message];
    v5 = IMCoreMomentShareURLForMessage();
    v6 = self->_momentShareURL;
    self->_momentShareURL = v5;

    momentShareURL = self->_momentShareURL;
  }

  return momentShareURL;
}

- (id)compositionWithContext:(id)a3
{
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v4 = [CKComposition compositionWithMediaObject:v3 subject:0];

  return v4;
}

@end
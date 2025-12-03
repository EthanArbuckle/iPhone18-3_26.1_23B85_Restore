@interface CKContactMediaObject
+ (id)UTITypes;
- (BOOL)generatePreviewOutOfProcess;
- (BOOL)supportsBlastDoor;
- (CGSize)bbSize;
- (CNContactVCardSummary)vCardSummary;
- (Class)balloonViewClass;
- (Class)placeholderBalloonViewClass;
- (Class)previewBalloonViewClass;
- (NSDictionary)contactMediaInfo;
- (id)attachmentSummary:(unint64_t)summary;
- (id)contactCardPayloadFileURL:(id)l;
- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)icon;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)subtitle;
- (id)title;
- (id)vCardImageOfSize:(CGSize)size;
- (void)generateOOPPreview;
@end

@implementation CKContactMediaObject

+ (id)UTITypes
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69638D8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Contacts" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
}

- (BOOL)generatePreviewOutOfProcess
{
  if ([(CKMediaObject *)self isFromMe])
  {
    LOBYTE(generatePreviewOutOfProcess) = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKContactMediaObject;
    generatePreviewOutOfProcess = [(CKMediaObject *)&v5 generatePreviewOutOfProcess];
    if (generatePreviewOutOfProcess)
    {
      LOBYTE(generatePreviewOutOfProcess) = [(CKContactMediaObject *)self supportsBlastDoor];
    }
  }

  return generatePreviewOutOfProcess;
}

- (Class)balloonViewClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  contactBalloonViewClass = [v2 contactBalloonViewClass];

  return contactBalloonViewClass;
}

- (Class)previewBalloonViewClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  contactBalloonViewClass = [v2 contactBalloonViewClass];

  return contactBalloonViewClass;
}

- (Class)placeholderBalloonViewClass
{
  if ([(CKMediaObject *)self isFromMe])
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    contactBalloonViewClass = [v2 contactBalloonViewClass];
  }

  else
  {
    contactBalloonViewClass = objc_opt_class();
  }

  return contactBalloonViewClass;
}

- (BOOL)supportsBlastDoor
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Blastdoor is support for vcards", v4, 2u);
    }
  }

  return 1;
}

- (id)title
{
  if (![(CKContactMediaObject *)self generatePreviewOutOfProcess])
  {
    vCardSummary = [(CKContactMediaObject *)self vCardSummary];
    contactMediaInfo = vCardSummary;
    if (vCardSummary && [vCardSummary contactCount])
    {
      avatarContacts = [contactMediaInfo avatarContacts];
      firstObject = [avatarContacts firstObject];

      v12 = +[CKUIBehavior sharedBehaviors];
      useSingleLineForContactVCardNames = [v12 useSingleLineForContactVCardNames];

      if (useSingleLineForContactVCardNames)
      {
        v14 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:0];
      }

      else
      {
        if ([MEMORY[0x1E695CD80] nameOrderForContact:firstObject] == 1)
        {
          [firstObject givenName];
        }

        else
        {
          [firstObject familyName];
        }
        v14 = ;
      }

      v9 = v14;
      if ([firstObject contactType] == 1)
      {
        organizationName = [firstObject organizationName];

        v9 = organizationName;
      }

      goto LABEL_19;
    }

LABEL_12:
    firstObject = 0;
    goto LABEL_20;
  }

  contactMediaInfo = [(CKContactMediaObject *)self contactMediaInfo];
  if (!contactMediaInfo)
  {
    goto LABEL_12;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  useSingleLineForContactVCardNames2 = [v4 useSingleLineForContactVCardNames];

  if (useSingleLineForContactVCardNames2)
  {
    v6 = @"contactFormatterTitle";
  }

  else
  {
    v6 = @"contactNameTitle";
  }

  firstObject = [contactMediaInfo objectForKeyedSubscript:v6];
  v8 = [contactMediaInfo objectForKeyedSubscript:@"organizationNameTitle"];

  if (v8)
  {
    v9 = [contactMediaInfo objectForKeyedSubscript:@"organizationNameTitle"];
LABEL_19:

    firstObject = v9;
  }

LABEL_20:

  if (!firstObject)
  {
    v17.receiver = self;
    v17.super_class = CKContactMediaObject;
    firstObject = [(CKMediaObject *)&v17 title];
  }

  return firstObject;
}

- (id)icon
{
  if (-[CKMediaObject shouldSuppressPreview](self, "shouldSuppressPreview") || (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v3 = objc_claimAutoreleasedReturnValue(), [v3 contactImageSize], -[CKContactMediaObject vCardImageOfSize:](self, "vCardImageOfSize:"), icon = objc_claimAutoreleasedReturnValue(), v3, !icon))
  {
    v6.receiver = self;
    v6.super_class = CKContactMediaObject;
    icon = [(CKMediaObject *)&v6 icon];
  }

  return icon;
}

- (id)subtitle
{
  if ([(CKContactMediaObject *)self generatePreviewOutOfProcess])
  {
    contactMediaInfo = [(CKContactMediaObject *)self contactMediaInfo];
    if (contactMediaInfo)
    {
      v4 = +[CKUIBehavior sharedBehaviors];
      useSingleLineForContactVCardNames = [v4 useSingleLineForContactVCardNames];

      if (useSingleLineForContactVCardNames)
      {
        v6 = @"organizationNameSubtitle";
      }

      else
      {
        v6 = @"contactNameSubtitle";
      }

      v7 = [contactMediaInfo objectForKeyedSubscript:v6];
      goto LABEL_17;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_17;
  }

  vCardSummary = [(CKContactMediaObject *)self vCardSummary];
  contactMediaInfo = vCardSummary;
  if (!vCardSummary || ![vCardSummary contactCount])
  {
    goto LABEL_11;
  }

  avatarContacts = [contactMediaInfo avatarContacts];
  firstObject = [avatarContacts firstObject];

  v11 = +[CKUIBehavior sharedBehaviors];
  useSingleLineForContactVCardNames2 = [v11 useSingleLineForContactVCardNames];

  if (useSingleLineForContactVCardNames2)
  {
    organizationName = [firstObject organizationName];
  }

  else
  {
    if ([MEMORY[0x1E695CD80] nameOrderForContact:firstObject] == 1)
    {
      [firstObject familyName];
    }

    else
    {
      [firstObject givenName];
    }
    organizationName = ;
  }

  v7 = organizationName;

LABEL_17:
  if (v7)
  {
    title = [(CKContactMediaObject *)self title];
    v15 = [title isEqualToString:v7];

    if (v15)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (CGSize)bbSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 contactImageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKContactMediaObject *)self mediaType]== 4)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 contactImageSize];
    v9 = v8;

    v10 = fmin(v9, width);
    v11 = [(CKContactMediaObject *)self vCardImageOfSize:v10, v10];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKContactMediaObject;
    v11 = [(CKMediaObject *)&v13 generateThumbnailForWidth:orientationCopy orientation:width];
  }

  return v11;
}

- (id)previewItemURL
{
  if (CKIsRunningInMacCatalyst())
  {
    fileURL = [(CKMediaObject *)self fileURL];
  }

  else
  {
    fileURL = 0;
  }

  return fileURL;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_CONTACT" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (id)contactCardPayloadFileURL:(id)l
{
  lCopy = l;
  fileURL = [(CKMediaObject *)self fileURL];
  v6 = IMPreviewCachesDirectoryWithAttachmentURL();

  fileURL2 = [(CKMediaObject *)self fileURL];
  lastPathComponent = [fileURL2 lastPathComponent];

  v9 = [v6 URLByAppendingPathComponent:lastPathComponent isDirectory:0];
  v10 = [v9 URLByAppendingPathExtension:lCopy];

  return v10;
}

- (void)generateOOPPreview
{
  v30 = *MEMORY[0x1E69E9840];
  previewCacheKey = [(CKContactMediaObject *)self previewCacheKey];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = previewCacheKey;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Request to generate OOP preview with key %@", buf, 0xCu);
    }
  }

  previewDispatchCache = [(CKContactMediaObject *)self previewDispatchCache];
  if ([previewDispatchCache isGeneratingPreviewForKey:previewCacheKey])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = previewCacheKey;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Already generating OOP preview for key %@", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v7 startTimingForKey:@"OOPPreviewGeneration"];
  v29 = 0;
  *buf = 0u;
  v28 = 0u;
  IMClientPreviewConstraints();
  fileURL = [(CKMediaObject *)self fileURL];
  previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
  v10 = IMAttachmentPreviewFileURL();

  transferGUID = [(CKMediaObject *)self transferGUID];
  if (!v10)
  {
LABEL_13:

    goto LABEL_19;
  }

  [(CKContactMediaObject *)self setOopPreviewRequestCount:[(CKContactMediaObject *)self oopPreviewRequestCount]+ 1];
  oopPreviewRequestCount = [(CKContactMediaObject *)self oopPreviewRequestCount];
  if (oopPreviewRequestCount < [(CKContactMediaObject *)self oopPreviewRequestBudget])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__CKContactMediaObject_generateOOPPreview__block_invoke;
    v16[3] = &unk_1E72F0008;
    v16[4] = self;
    v17 = v10;
    v20 = *buf;
    v21 = v28;
    v22 = v29;
    v18 = transferGUID;
    v19 = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __42__CKContactMediaObject_generateOOPPreview__block_invoke_245;
    v15[3] = &unk_1E72EBA18;
    v15[4] = self;
    [previewDispatchCache enqueueGenerationBlock:v16 completion:v15 withPriority:0 forKey:previewCacheKey];

    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      transferGUID2 = [(CKMediaObject *)self transferGUID];
      *v23 = 136315394;
      v24 = "[CKContactMediaObject generateOOPPreview]";
      v25 = 2112;
      v26 = transferGUID2;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "%s request budget exhausted for %@", v23, 0x16u);
    }
  }

LABEL_19:
}

uint64_t __42__CKContactMediaObject_generateOOPPreview__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) senderContext];
  v5 = [*(a1 + 32) _transcodeControllerSharedInstance];
  v6 = [*(a1 + 32) fileURL];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  *buf = *(a1 + 64);
  v15 = v9;
  v16 = *(a1 + 96);
  LOBYTE(v13) = 1;
  [v5 generatePreview:v6 previewURL:v7 senderContext:v4 constraints:buf balloonBundleID:0 transferGUID:v8 completionBlock:&__block_literal_global_65 blockUntilReply:v13];

  [*(a1 + 56) stopTimingForKey:@"OOPPreviewGeneration"];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 56);
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Preview generation timing %@", buf, 0xCu);
    }
  }

  return 0;
}

void __42__CKContactMediaObject_generateOOPPreview__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a2)
      {
        v6 = @"YES";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "IMTranscoderAgent preview generation completed with success %@ and error %@", &v7, 0x16u);
    }
  }
}

void __42__CKContactMediaObject_generateOOPPreview__block_invoke_245(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__CKContactMediaObject_generateOOPPreview__block_invoke_2_246;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __42__CKContactMediaObject_generateOOPPreview__block_invoke_2_246(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Posting preview change notif for OOP generation completion", v4, 2u);
    }
  }

  return [*(a1 + 32) postPreviewDidChangeNotifications];
}

- (NSDictionary)contactMediaInfo
{
  v18 = *MEMORY[0x1E69E9840];
  contactMediaInfo = self->_contactMediaInfo;
  if (!contactMediaInfo)
  {
    v4 = [(CKContactMediaObject *)self contactCardPayloadFileURL:@"plist"];
    v15 = 0;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v4 error:&v15];
    v6 = v15;
    v7 = self->_contactMediaInfo;
    self->_contactMediaInfo = v5;

    v8 = self->_contactMediaInfo;
    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          path = [v4 path];
          *buf = 138412290;
          v17 = path;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Successfully loaded contactMediaInfo at: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      self->_contactMediaInfo = 0;

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          path2 = [v4 path];
          *buf = 138412290;
          v17 = path2;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed to load contactMediaInfo at: %@", buf, 0xCu);
        }
      }

      [(CKContactMediaObject *)self generateOOPPreview];
    }

    contactMediaInfo = self->_contactMediaInfo;
  }

  return contactMediaInfo;
}

- (CNContactVCardSummary)vCardSummary
{
  vCardSummary = self->_vCardSummary;
  if (!vCardSummary)
  {
    if (self->_vCardParsingFailed)
    {
      vCardSummary = 0;
    }

    else
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__19;
      v20 = __Block_byref_object_dispose__19;
      v21 = 0;
      data = [(CKMediaObject *)self data];
      if (data)
      {
        v5 = dispatch_group_create();
        dispatch_group_enter(v5);
        v6 = +[CKPreviewDispatchCache mapThumbnailQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __36__CKContactMediaObject_vCardSummary__block_invoke;
        block[3] = &unk_1E72EB858;
        v15 = &v16;
        v13 = data;
        v7 = v5;
        v14 = v7;
        dispatch_async(v6, block);

        v8 = dispatch_time(0, 2000000000);
        v9 = dispatch_group_wait(v7, v8);
        v10 = v17[5];
        if (!v9 || v10)
        {
          objc_storeStrong(&self->_vCardSummary, v10);
        }

        else
        {
          self->_vCardParsingFailed = 1;
        }
      }

      _Block_object_dispose(&v16, 8);
      vCardSummary = self->_vCardSummary;
    }
  }

  return vCardSummary;
}

void __36__CKContactMediaObject_vCardSummary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  v3 = [MEMORY[0x1E695CE30] summaryOfVCard:v2 error:&v9];
  v4 = v9;
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)vCardImageOfSize:(CGSize)size
{
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(CKContactMediaObject *)self generatePreviewOutOfProcess:size.width];
  vCardImage = self->_vCardImage;
  if (v5)
  {
    if (vCardImage)
    {
      goto LABEL_19;
    }

    v7 = [(CKContactMediaObject *)self contactCardPayloadFileURL:@"ktx"];
    path = [v7 path];

    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:path];
    v10 = [MEMORY[0x1E69DCAB8] imageWithData:v9 scale:width / 10.0];
    v11 = self->_vCardImage;
    self->_vCardImage = v10;

    v12 = self->_vCardImage;
    v13 = IMOSLoggingEnabled();
    if (v12)
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = path;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Successfully loaded avatar image at: %@", &v28, 0xCu);
        }
      }
    }

    else
    {
      if (v13)
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v28 = 138412290;
          v29 = path;
          _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "Failed to load preview avatar image at: %@", &v28, 0xCu);
        }
      }

      [(CKContactMediaObject *)self generateOOPPreview];
    }
  }

  else if (!vCardImage)
  {
    vCardSummary = [(CKContactMediaObject *)self vCardSummary];
    if (vCardSummary)
    {
      vCardSummary2 = [(CKContactMediaObject *)self vCardSummary];
      contactCount = [vCardSummary2 contactCount];

      if (contactCount)
      {
        vCardSummary3 = [(CKContactMediaObject *)self vCardSummary];
        avatarContacts = [vCardSummary3 avatarContacts];
        firstObject = [avatarContacts firstObject];

        v21 = [CKAddressBook monogrammerWithDiameter:1 style:0 useAppTintColor:0 customFont:width];
        givenName = [firstObject givenName];
        familyName = [firstObject familyName];
        v24 = [v21 monogramForPersonWithFirstName:givenName lastName:familyName];
        v25 = self->_vCardImage;
        self->_vCardImage = v24;
      }
    }
  }

  vCardImage = self->_vCardImage;
LABEL_19:

  return vCardImage;
}

@end
@interface CKPrintController
+ (id)printAttributes:(id)attributes;
+ (id)sharedInstance;
+ (void)printBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor;
+ (void)printResolvedColors:(id *)colors balloonDescriptor:(CKBalloonDescriptor_t *)descriptor coloredBalloonView:(id)view;
- (CKPrintController)init;
- (CNAvatarImageRenderer)avatarImageRenderer;
- (NSCache)avatarCache;
- (id)avatarImageForContact:(id)contact diameter:(double)diameter;
- (void)clearAvatarCache;
- (void)setPrinting:(BOOL)printing;
@end

@implementation CKPrintController

+ (id)sharedInstance
{
  if (sharedInstance_creation_0 != -1)
  {
    +[CKPrintController sharedInstance];
  }

  v3 = sharedInstance_sInstance_2;

  return v3;
}

void __35__CKPrintController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKPrintController);
  v1 = sharedInstance_sInstance_2;
  sharedInstance_sInstance_2 = v0;
}

- (CKPrintController)init
{
  v3.receiver = self;
  v3.super_class = CKPrintController;
  result = [(CKPrintController *)&v3 init];
  if (result)
  {
    result->_isPrinting = 0;
  }

  return result;
}

- (void)setPrinting:(BOOL)printing
{
  printingCopy = printing;
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (self->_isPrinting)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      if (printingCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "set isPrinting from [%@] to [%@]", &v8, 0x16u);
    }
  }

  self->_isPrinting = printingCopy;
}

- (id)avatarImageForContact:(id)contact diameter:(double)diameter
{
  v24 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  identifier = [contactCopy identifier];
  avatarCache = [(CKPrintController *)self avatarCache];
  v9 = [avatarCache objectForKey:identifier];

  if (!v9)
  {
    v12 = MEMORY[0x1E695D0B0];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v15 = [v12 scopeWithPointSize:0 scale:0 rightToLeft:diameter style:{diameter, v14}];

    if (contactCopy)
    {
      v21 = contactCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    }

    else
    {
      v16 = 0;
    }

    avatarImageRenderer = [(CKPrintController *)self avatarImageRenderer];
    v11 = [avatarImageRenderer avatarImageForContacts:v16 scope:v15];

    if (v11)
    {
      avatarCache2 = [(CKPrintController *)self avatarCache];
      [avatarCache2 setObject:v11 forKey:identifier cost:1];

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = identifier;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "avatar cache store for contact [%@]", buf, 0xCu);
        }

LABEL_18:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = identifier;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "avatar fetch fail for contact [%@]", buf, 0xCu);
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = identifier;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "avatar cache hit for contact [%@]", buf, 0xCu);
    }
  }

  v11 = v9;
LABEL_20:

  return v11;
}

- (CNAvatarImageRenderer)avatarImageRenderer
{
  avatarImageRenderer = self->_avatarImageRenderer;
  if (!avatarImageRenderer)
  {
    v4 = objc_alloc(MEMORY[0x1E695D098]);
    defaultSettings = [MEMORY[0x1E695D0A8] defaultSettings];
    v6 = [v4 initWithSettings:defaultSettings];
    v7 = self->_avatarImageRenderer;
    self->_avatarImageRenderer = v6;

    avatarImageRenderer = self->_avatarImageRenderer;
  }

  return avatarImageRenderer;
}

- (NSCache)avatarCache
{
  avatarCache = self->_avatarCache;
  if (!avatarCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = self->_avatarCache;
    self->_avatarCache = v4;

    [(NSCache *)self->_avatarCache setTotalCostLimit:50];
    avatarCache = self->_avatarCache;
  }

  return avatarCache;
}

- (void)clearAvatarCache
{
  avatarCache = self->_avatarCache;
  self->_avatarCache = 0;
}

+ (id)printAttributes:(id)attributes
{
  v3 = [attributes mutableCopy];
  v4 = *MEMORY[0x1E69DB650];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69DB650]];

  if (v5)
  {
    v6 = +[CKPrintController printTranscriptTextColor];
    [v3 setObject:v6 forKeyedSubscript:v4];
  }

  return v3;
}

+ (void)printBalloonDescriptor:(CKBalloonDescriptor_t *)descriptor
{
  descriptor->var2 = 2;
  descriptor->var6 = 4;
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  v6 = [theme unfilledBalloonColorForColorType:0xFFFFFFFFLL];
  [v6 ck_imColorComponents];
  descriptor->var8.red = v7;
  descriptor->var8.green = v8;
  descriptor->var8.blue = v9;
  descriptor->var8.alpha = v10;

  descriptor->var10 = 1;
  descriptor->var0 = 0;
}

+ (void)printResolvedColors:(id *)colors balloonDescriptor:(CKBalloonDescriptor_t *)descriptor coloredBalloonView:(id)view
{
  v13[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v9 = +[CKPrintController printBackgroundColor];
  v13[0] = v9;
  *colors = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  [self printBalloonDescriptor:descriptor];
  [viewCopy setBalloonStyle:2];
  v10 = +[CKUIBehavior sharedBehaviors];
  theme = [v10 theme];
  v12 = [theme unfilledBalloonColorForColorType:0xFFFFFFFFLL];
  [v12 ck_imColorComponents];
  [viewCopy setStrokeColor:?];

  [viewCopy setColor:4];
  [viewCopy setUserInterfaceStyle:1];
}

@end
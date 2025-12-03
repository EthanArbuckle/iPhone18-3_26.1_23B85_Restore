@interface ICWidget
+ (ICWidget)sharedWidget;
- (void)reloadTimelineForKind:(id)kind reason:(id)reason;
- (void)reloadTimelinesWithReason:(id)reason;
@end

@implementation ICWidget

+ (ICWidget)sharedWidget
{
  if (sharedWidget_onceToken != -1)
  {
    +[ICWidget sharedWidget];
  }

  v3 = sharedWidget_sharedWidget;

  return v3;
}

uint64_t __24__ICWidget_sharedWidget__block_invoke()
{
  sharedWidget_sharedWidget = objc_alloc_init(ICWidget);

  return MEMORY[0x1EEE66BB8]();
}

- (void)reloadTimelinesWithReason:(id)reason
{
  reasonCopy = reason;
  [(ICWidget *)self reloadTimelineForKind:@"com.apple.mobilenotes.FolderWidget" reason:reasonCopy];
  [(ICWidget *)self reloadTimelineForKind:@"com.apple.mobilenotes.NoteWidget" reason:reasonCopy];
  [(ICWidget *)self reloadTimelineForKind:@"com.apple.mobilenotes.QuickNoteWidget" reason:reasonCopy];
}

- (void)reloadTimelineForKind:(id)kind reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  reasonCopy = reason;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getCHSTimelineControllerClass_softClass;
  v17 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getCHSTimelineControllerClass_block_invoke;
    v20 = &unk_1E8485448;
    v21 = &v14;
    __getCHSTimelineControllerClass_block_invoke(&buf);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = [v7 alloc];
  v10 = [v9 initWithExtensionBundleIdentifier:@"com.apple.mobilenotes.WidgetExtension" kind:{kindCopy, v14}];
  v11 = [v10 reloadTimelineWithReason:reasonCopy];
  v12 = os_log_create("com.apple.notes", "Widget");
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ICWidget *)kindCopy reloadTimelineForKind:v11 reason:v13];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = kindCopy;
    _os_log_impl(&dword_1D4576000, v13, OS_LOG_TYPE_DEFAULT, "Finished reloading Widget Extension timeline {kind: %@}", &buf, 0xCu);
  }
}

- (void)reloadTimelineForKind:(os_log_t)log reason:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1D4576000, log, OS_LOG_TYPE_ERROR, "Failed to reload Widget Extension timeline {kind %@, error: %@}", &v3, 0x16u);
}

@end
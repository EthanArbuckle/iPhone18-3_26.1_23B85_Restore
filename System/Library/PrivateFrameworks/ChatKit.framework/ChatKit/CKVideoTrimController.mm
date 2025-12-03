@interface CKVideoTrimController
- (CKTrimControllerDelegate)delegate;
- (CKVideoTrimController)initWithMediaObject:(id)object maxTrimDuration:(double)duration;
- (void)dealloc;
- (void)videoEditorController:(id)controller didFailWithError:(id)error;
- (void)videoEditorController:(id)controller didSaveEditedVideoToPath:(id)path;
- (void)videoEditorController:(id)controller didTrimVideoWithOptions:(id)options;
- (void)videoEditorControllerDidCancel:(id)cancel;
@end

@implementation CKVideoTrimController

- (CKVideoTrimController)initWithMediaObject:(id)object maxTrimDuration:(double)duration
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = CKVideoTrimController;
  v7 = [(CKVideoTrimController *)&v19 init];
  v8 = v7;
  if (v7)
  {
    [(CKVideoTrimController *)v7 setOriginalMediaObject:objectCopy];
    v9 = objc_alloc_init(CKUIVideoEditorController);
    editVideoVC = v8->_editVideoVC;
    v8->_editVideoVC = v9;

    [(CKUIVideoEditorController *)v8->_editVideoVC setDelegate:v8];
    [(UIVideoEditorController *)v8->_editVideoVC setVideoQuality:0];
    [(UIVideoEditorController *)v8->_editVideoVC setVideoMaximumDuration:duration];
    v11 = v8->_editVideoVC;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(UIVideoEditorController *)v11 _setValue:v12 forProperty:*MEMORY[0x1E69DE9B0]];

    transcoderUserInfo = [objectCopy transcoderUserInfo];
    v14 = [transcoderUserInfo objectForKey:*MEMORY[0x1E69A6F58]];

    if (v14)
    {
      v15 = v8->_editVideoVC;
      fileURL = [MEMORY[0x1E695DFF8] URLWithString:v14];
      [(UIVideoEditorController *)v15 _setVideoURL:fileURL];
    }

    else
    {
      fileURL = [objectCopy fileURL];
      path = [fileURL path];
      [(UIVideoEditorController *)v8->_editVideoVC setVideoPath:path];
    }
  }

  return v8;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = CKVideoTrimController;
  [(CKVideoTrimController *)&v3 dealloc];
}

- (void)videoEditorController:(id)controller didTrimVideoWithOptions:(id)options
{
  optionsCopy = options;
  originalMediaObject = [(CKVideoTrimController *)self originalMediaObject];
  transcoderUserInfo = [originalMediaObject transcoderUserInfo];
  v7 = [transcoderUserInfo mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = CKTranscoderUserInfoForVideoTrimOptions(optionsCopy);
  [v7 addEntriesFromDictionary:v8];

  v9 = +[CKMediaObjectManager sharedInstance];
  originalMediaObject2 = [(CKVideoTrimController *)self originalMediaObject];
  fileURL = [originalMediaObject2 fileURL];
  v12 = [v9 mediaObjectWithFileURL:fileURL filename:0 transcoderUserInfo:v7];
  [(CKVideoTrimController *)self setTrimmedMediaObject:v12];

  delegate = [(CKVideoTrimController *)self delegate];
  originalMediaObject3 = [(CKVideoTrimController *)self originalMediaObject];
  trimmedMediaObject = [(CKVideoTrimController *)self trimmedMediaObject];
  [delegate trimController:self didFinishTrimmingMediaObject:originalMediaObject3 withReplacementMediaObject:trimmedMediaObject];
}

- (void)videoEditorController:(id)controller didSaveEditedVideoToPath:(id)path
{
  v5 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  stringGUID = [v5 stringGUID];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimmed-%@.mov", stringGUID];
  v10 = [defaultManager im_randomTemporaryFileURLWithFileName:v9];
  path = [v10 path];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  LODWORD(v9) = [defaultManager2 moveItemAtPath:pathCopy toPath:path error:&v22];

  v13 = v22;
  if (v9)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:0];
    v15 = +[CKMediaObjectManager sharedInstance];
    originalMediaObject = [(CKVideoTrimController *)self originalMediaObject];
    transcoderUserInfo = [originalMediaObject transcoderUserInfo];
    v18 = [v15 mediaObjectWithFileURL:v14 filename:0 transcoderUserInfo:transcoderUserInfo];
    [(CKVideoTrimController *)self setTrimmedMediaObject:v18];
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CKVideoTrimController videoEditorController:v13 didSaveEditedVideoToPath:v14];
    }
  }

  delegate = [(CKVideoTrimController *)self delegate];
  originalMediaObject2 = [(CKVideoTrimController *)self originalMediaObject];
  trimmedMediaObject = [(CKVideoTrimController *)self trimmedMediaObject];
  [delegate trimController:self didFinishTrimmingMediaObject:originalMediaObject2 withReplacementMediaObject:trimmedMediaObject];
}

- (void)videoEditorControllerDidCancel:(id)cancel
{
  delegate = [(CKVideoTrimController *)self delegate];
  [delegate trimControllerDidCancel:self];
}

- (void)videoEditorController:(id)controller didFailWithError:(id)error
{
  v5 = [(CKVideoTrimController *)self delegate:controller];
  [v5 trimControllerDidCancel:self];
}

- (CKTrimControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)videoEditorController:(uint64_t)a1 didSaveEditedVideoToPath:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "The rename failed [%@]", &v2, 0xCu);
}

@end
@interface CKVideoTrimController
- (CKTrimControllerDelegate)delegate;
- (CKVideoTrimController)initWithMediaObject:(id)a3 maxTrimDuration:(double)a4;
- (void)dealloc;
- (void)videoEditorController:(id)a3 didFailWithError:(id)a4;
- (void)videoEditorController:(id)a3 didSaveEditedVideoToPath:(id)a4;
- (void)videoEditorController:(id)a3 didTrimVideoWithOptions:(id)a4;
- (void)videoEditorControllerDidCancel:(id)a3;
@end

@implementation CKVideoTrimController

- (CKVideoTrimController)initWithMediaObject:(id)a3 maxTrimDuration:(double)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = CKVideoTrimController;
  v7 = [(CKVideoTrimController *)&v19 init];
  v8 = v7;
  if (v7)
  {
    [(CKVideoTrimController *)v7 setOriginalMediaObject:v6];
    v9 = objc_alloc_init(CKUIVideoEditorController);
    editVideoVC = v8->_editVideoVC;
    v8->_editVideoVC = v9;

    [(CKUIVideoEditorController *)v8->_editVideoVC setDelegate:v8];
    [(UIVideoEditorController *)v8->_editVideoVC setVideoQuality:0];
    [(UIVideoEditorController *)v8->_editVideoVC setVideoMaximumDuration:a4];
    v11 = v8->_editVideoVC;
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [(UIVideoEditorController *)v11 _setValue:v12 forProperty:*MEMORY[0x1E69DE9B0]];

    v13 = [v6 transcoderUserInfo];
    v14 = [v13 objectForKey:*MEMORY[0x1E69A6F58]];

    if (v14)
    {
      v15 = v8->_editVideoVC;
      v16 = [MEMORY[0x1E695DFF8] URLWithString:v14];
      [(UIVideoEditorController *)v15 _setVideoURL:v16];
    }

    else
    {
      v16 = [v6 fileURL];
      v17 = [v16 path];
      [(UIVideoEditorController *)v8->_editVideoVC setVideoPath:v17];
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

- (void)videoEditorController:(id)a3 didTrimVideoWithOptions:(id)a4
{
  v16 = a4;
  v5 = [(CKVideoTrimController *)self originalMediaObject];
  v6 = [v5 transcoderUserInfo];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v8 = CKTranscoderUserInfoForVideoTrimOptions(v16);
  [v7 addEntriesFromDictionary:v8];

  v9 = +[CKMediaObjectManager sharedInstance];
  v10 = [(CKVideoTrimController *)self originalMediaObject];
  v11 = [v10 fileURL];
  v12 = [v9 mediaObjectWithFileURL:v11 filename:0 transcoderUserInfo:v7];
  [(CKVideoTrimController *)self setTrimmedMediaObject:v12];

  v13 = [(CKVideoTrimController *)self delegate];
  v14 = [(CKVideoTrimController *)self originalMediaObject];
  v15 = [(CKVideoTrimController *)self trimmedMediaObject];
  [v13 trimController:self didFinishTrimmingMediaObject:v14 withReplacementMediaObject:v15];
}

- (void)videoEditorController:(id)a3 didSaveEditedVideoToPath:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [v5 stringGUID];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"trimmed-%@.mov", v7];
  v10 = [v8 im_randomTemporaryFileURLWithFileName:v9];
  v11 = [v10 path];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  LODWORD(v9) = [v12 moveItemAtPath:v6 toPath:v11 error:&v22];

  v13 = v22;
  if (v9)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    v15 = +[CKMediaObjectManager sharedInstance];
    v16 = [(CKVideoTrimController *)self originalMediaObject];
    v17 = [v16 transcoderUserInfo];
    v18 = [v15 mediaObjectWithFileURL:v14 filename:0 transcoderUserInfo:v17];
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

  v19 = [(CKVideoTrimController *)self delegate];
  v20 = [(CKVideoTrimController *)self originalMediaObject];
  v21 = [(CKVideoTrimController *)self trimmedMediaObject];
  [v19 trimController:self didFinishTrimmingMediaObject:v20 withReplacementMediaObject:v21];
}

- (void)videoEditorControllerDidCancel:(id)a3
{
  v4 = [(CKVideoTrimController *)self delegate];
  [v4 trimControllerDidCancel:self];
}

- (void)videoEditorController:(id)a3 didFailWithError:(id)a4
{
  v5 = [(CKVideoTrimController *)self delegate:a3];
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
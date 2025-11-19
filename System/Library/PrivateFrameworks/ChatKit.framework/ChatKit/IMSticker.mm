@interface IMSticker
@end

@implementation IMSticker

void __82__IMSticker_CKUtils__stickerViewForStickerChatItem_snapshotEffectView_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [CKBalloonImageView alloc];
  v4 = [(CKBalloonImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v7)
  {
    [(CKBalloonImageView *)v4 setImage:v7];
  }

  else
  {
    v6 = [*(a1 + 32) image];
    [(CKBalloonImageView *)v5 setImage:v6];
  }

  [(CKBalloonImageView *)v5 setContentMode:1];
  [(CKBalloonImageView *)v5 sizeToFit];
  (*(*(a1 + 40) + 16))();
}

void __77__IMSticker_CKUtils__stickerEffectViewSnapshotForStickerChatItem_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__IMSticker_CKUtils__stickerEffectViewSnapshotForStickerChatItem_completion___block_invoke_2;
  v11[3] = &unk_1E72EE5D8;
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
  if (v5)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__IMSticker_CKUtils__stickerEffectViewSnapshotForStickerChatItem_completion___block_invoke_cold_1(v5, v10);
    }
  }
}

void __77__IMSticker_CKUtils__stickerEffectViewSnapshotForStickerChatItem_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Could not snapshot effectView, ecountered error: %@", &v4, 0xCu);
}

@end
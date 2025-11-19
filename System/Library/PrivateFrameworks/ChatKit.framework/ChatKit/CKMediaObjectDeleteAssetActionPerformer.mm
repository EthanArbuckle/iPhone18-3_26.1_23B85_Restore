@interface CKMediaObjectDeleteAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3;
+ (id)createPreviewActionWithActionManager:(id)a3 handler:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)_performRetractScheduledChatItem:(id)a3 completion:(id)a4;
- (void)_performRetractScheduledChatItems:(id)a3 fromAggregateChatItem:(id)a4 completion:(id)a5;
- (void)_presentDeleteConfirmationDialogForTypedCount:(id)a3 completionHandler:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation CKMediaObjectDeleteAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)a3
{
  v3 = a3;
  v4 = [v3 chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 selectionManager];
    v7 = [v6 selectionSnapshot];
    v8 = [v7 isAnyItemSelected];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)performUserInteractionTask
{
  v2 = self;
  v73 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObjectAssetActionPerformer *)self chatItem];
  v4 = [v3 message];
  v5 = [v4 fileTransferGUIDs];
  v6 = [v5 count];

  v7 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
  objc_opt_class();
  LOBYTE(v4) = objc_opt_isKindOfClass();

  if (v4)
  {
    v8 = [(PXAssetActionPerformer *)v2 selectionSnapshot];
    if ([v8 isAnyItemSelected])
    {
      v9 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
      CanBeCancelled = _ChatItemCanBeCancelled(v9);

      if (CanBeCancelled)
      {
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Performing retraction for selected scheduled chat items.", buf, 2u);
        }

        v12 = v8;
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v14 = [v12 allItemsEnumerator];
        v15 = [v14 countByEnumeratingWithState:&v68 objects:buf count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v69;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v69 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v68 + 1) + 8 * i) chatItem];
              if (v19)
              {
                [v13 addObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v68 objects:buf count:16];
          }

          while (v16);
        }

        v20 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke;
        v67[3] = &unk_1E72EBA18;
        v67[4] = v2;
        [(CKMediaObjectDeleteAssetActionPerformer *)v2 _performRetractScheduledChatItems:v13 fromAggregateChatItem:v20 completion:v67];

        goto LABEL_65;
      }

      v58 = v6;
      v12 = v8;
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v27 = [v12 allItemsEnumerator];
      v28 = [v27 countByEnumeratingWithState:&v68 objects:buf count:16];
      if (v28)
      {
        v29 = v28;
        obj = v27;
        v30 = v26;
        v56 = v12;
        v57 = v2;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = *v69;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v68 + 1) + 8 * j);
            v37 = [v36 mediaObject];
            v38 = v37;
            if (v37)
            {
              v39 = [v37 transferGUID];
              [v30 addObject:v39];
            }

            v40 = [v36 mediaType];
            if (v40 == 1)
            {
              v41 = v31;
            }

            else
            {
              v41 = v31 + 1;
            }

            if (v40 == 1)
            {
              v42 = v33 + 1;
            }

            else
            {
              v42 = v33;
            }

            if (v40 == 2)
            {
              ++v32;
            }

            else
            {
              v31 = v41;
            }

            if (v40 != 2)
            {
              v33 = v42;
            }
          }

          v29 = [obj countByEnumeratingWithState:&v68 objects:buf count:16];
        }

        while (v29);

        if (v33)
        {
          v12 = v56;
          v2 = v57;
          v26 = v30;
          if (!(v32 | v31))
          {
            v43 = 1;
LABEL_63:

            if ([v26 count])
            {
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke_2;
              v64[3] = &unk_1E72EEA08;
              v55 = v32 + v33;
              v64[4] = v2;
              v65 = v26;
              v66 = v58;
              v13 = v26;
              [(CKMediaObjectDeleteAssetActionPerformer *)v2 _presentDeleteConfirmationDialogForTypedCount:v55 + v31 completionHandler:v43, v64];

LABEL_65:
              goto LABEL_69;
            }

            v49 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"CKMediaObjectDeleteAssetActionPerformer: Selected items are not media objects"];

            goto LABEL_67;
          }
        }

        else
        {
          v12 = v56;
          v2 = v57;
          v26 = v30;
        }
      }

      else
      {

        v33 = 0;
        v32 = 0;
        v31 = 0;
      }

      if (v32)
      {
        v54 = (v33 | v31) == 0;
      }

      else
      {
        v54 = 0;
      }

      if (v54)
      {
        v43 = 2;
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_63;
    }

    v12 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"CKMediaObjectDeleteAssetActionPerformer: No items selected for delete action"];

LABEL_68:
    [(PXActionPerformer *)v2 completeUserInteractionTaskWithSuccess:0 error:v12];
    goto LABEL_69;
  }

  v21 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v12 = 0;
    goto LABEL_68;
  }

  v12 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
  v23 = [(CKMediaObjectAssetActionPerformer *)v2 chatItem];
  v24 = _ChatItemCanBeCancelled(v23);

  if (v24)
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Performing retraction for scheduled chat item.", buf, 2u);
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke_231;
    v63[3] = &unk_1E72EBA18;
    v63[4] = v2;
    [(CKMediaObjectDeleteAssetActionPerformer *)v2 _performRetractScheduledChatItem:v12 completion:v63];
  }

  else
  {
    v44 = [v12 mediaObject];

    if (!v44)
    {
      v49 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"CKMediaObjectDeleteAssetActionPerformer: attachment part item doesn't have a media object"];
LABEL_67:

      v12 = v49;
      goto LABEL_68;
    }

    v45 = [v12 mediaObject];
    v46 = [v45 mediaType];
    v47 = [v45 transferGUID];

    if (v47)
    {
      if (v46 == 3)
      {
        v48 = 1;
      }

      else
      {
        v48 = 2 * (v46 == 2);
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke_2_232;
      v60[3] = &unk_1E72EEA08;
      v60[4] = v2;
      v61 = v45;
      v62 = v6;
      [(CKMediaObjectDeleteAssetActionPerformer *)v2 _presentDeleteConfirmationDialogForTypedCount:1 completionHandler:v48, v60];
    }

    else
    {
      v50 = MEMORY[0x1E696ABC0];
      v51 = [v12 IMChatItem];
      v52 = [v51 guid];
      v53 = [v50 px_genericErrorWithDebugDescription:{@"CKMediaObjectDeleteAssetActionPerformer: mediaObject has no transferGUID. attachmentChatItem.IMChatItem.guid: %@", v52}];
    }
  }

LABEL_69:
}

uint64_t __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) chatActionHelper];
    [v3 deleteMediaObjectAttachmentGUIDs:*(a1 + 40) originalStackCount:*(a1 + 48)];
  }

  v4 = *(a1 + 32);

  return [v4 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t __69__CKMediaObjectDeleteAssetActionPerformer_performUserInteractionTask__block_invoke_2_232(uint64_t a1, int a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) chatActionHelper];
    v4 = [*(a1 + 40) transferGUID];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [v3 deleteMediaObjectAttachmentGUIDs:v5 originalStackCount:*(a1 + 48)];
  }

  return [*(a1 + 32) completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)_presentDeleteConfirmationDialogForTypedCount:(id)a3 completionHandler:(id)a4
{
  var0 = a3.var0;
  v6 = a4;
  if (v6)
  {
    if (var0)
    {
      v7 = PXLocalizationKeyForMediaType();
      v8 = MEMORY[0x1E696AEC0];
      v9 = CKFrameworkBundle();
      v31 = v7;
      v10 = [v9 localizedStringForKey:v7 value:&stru_1F04268F8 table:@"ChatKit"];
      v11 = [v8 localizedStringWithFormat:v10, var0];

      v12 = [MEMORY[0x1E69DC668] sharedApplication];
      v13 = [v12 userInterfaceLayoutDirection];

      if (v13 == 1)
      {
        v14 = @"\u200F";
      }

      else
      {
        v14 = @"\u200E";
      }

      v15 = [(__CFString *)v14 stringByAppendingString:v11];

      v16 = CKFrameworkBundle();
      v17 = [v16 localizedStringForKey:@"CANCEL" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKIsRunningInMacCatalyst())
      {
        v20 = PXLocalizationKeyForMediaType();
        v21 = CKFrameworkBundle();
        v22 = [v21 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit"];

        v23 = CKFrameworkBundle();
        v24 = [v23 localizedStringForKey:@"DELETE_WARNING" value:&stru_1F04268F8 table:@"ChatKit"];

        v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v22 message:v24 preferredStyle:1];
      }

      else
      {
        v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __107__CKMediaObjectDeleteAssetActionPerformer__presentDeleteConfirmationDialogForTypedCount_completionHandler___block_invoke;
      v34[3] = &unk_1E72EC218;
      v26 = v6;
      v35 = v26;
      v27 = [CKAlertAction actionWithTitle:v15 style:2 handler:v34];
      [v25 addAction:v27];

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __107__CKMediaObjectDeleteAssetActionPerformer__presentDeleteConfirmationDialogForTypedCount_completionHandler___block_invoke_290;
      v32[3] = &unk_1E72EC218;
      v28 = v26;
      v33 = v28;
      v29 = [CKAlertAction actionWithTitle:v17 style:1 handler:v32];
      [v25 addAction:v29];

      if (![(PXActionPerformer *)self presentViewController:v25])
      {
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObjectDeleteAssetActionPerformer _presentDeleteConfirmationDialogForTypedCount:v25 completionHandler:v30];
        }

        (*(v28 + 2))(v28, 0);
      }
    }

    else
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObjectDeleteAssetActionPerformer _presentDeleteConfirmationDialogForTypedCount:v19 completionHandler:?];
      }

      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CKMediaObjectDeleteAssetActionPerformer _presentDeleteConfirmationDialogForTypedCount:v18 completionHandler:?];
    }
  }
}

uint64_t __107__CKMediaObjectDeleteAssetActionPerformer__presentDeleteConfirmationDialogForTypedCount_completionHandler___block_invoke(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Accepted deleting media object attachments", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __107__CKMediaObjectDeleteAssetActionPerformer__presentDeleteConfirmationDialogForTypedCount_completionHandler___block_invoke_290(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Canceled deleting media object attachments", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_performRetractScheduledChatItem:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
  [v7 retractScheduledChatItem:v6];

  v8[2]();
}

- (void)_performRetractScheduledChatItems:(id)a3 fromAggregateChatItem:(id)a4 completion:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(CKMediaObjectAssetActionPerformer *)self chatActionHelper];
  [v10 retractScheduledChatItems:v9 fromAggregateChatItem:v8];

  v11[2]();
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  v4 = [a4 chatItem];
  CanBeCancelled = _ChatItemCanBeCancelled(v4);

  v6 = CKFrameworkBundle();
  v7 = v6;
  if (CanBeCancelled)
  {
    v8 = @"CANCEL";
  }

  else
  {
    v8 = @"DELETE";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];

  return v9;
}

+ (id)createPreviewActionWithActionManager:(id)a3 handler:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___CKMediaObjectDeleteAssetActionPerformer;
  v4 = objc_msgSendSuper2(&v6, sel_createPreviewActionWithActionManager_handler_, a3, a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setAttributes:2];
  }

  return v4;
}

- (void)_presentDeleteConfirmationDialogForTypedCount:(uint64_t)a1 completionHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to present alert (%@) for delete. Cancelling deletion", &v2, 0xCu);
}

@end
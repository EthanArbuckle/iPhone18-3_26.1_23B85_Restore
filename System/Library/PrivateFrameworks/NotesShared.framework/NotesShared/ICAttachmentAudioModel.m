@interface ICAttachmentAudioModel
- (BOOL)isReadyToPresent;
- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4;
- (BOOL)needsTranscription;
- (ICAttachmentAudioModel)initWithAttachment:(id)a3;
- (ICTTAudioDocument)audioDocument;
- (NSArray)composedAudioAssetURLs;
- (id)asset;
- (id)bitFlippeddUUIDWithUuid:(id)a3;
- (id)createSubattachmentForRecordingAndReturnError:(id *)a3;
- (id)searchableTextContent;
- (id)standaloneTitleForNote;
- (void)assetWithCompletion:(id)a3;
- (void)attachmentDidRefresh:(BOOL)a3;
- (void)attachmentWillRefresh:(BOOL)a3;
- (void)attachmentWillTurnIntoFault;
- (void)audioDocument;
- (void)composedAudioAssetURLs;
- (void)transformNewlyAddedMediaAttachment;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3;
- (void)updateFileBasedAttributes;
- (void)writeMergeableData;
@end

@implementation ICAttachmentAudioModel

- (id)searchableTextContent
{
  v2 = [(ICAttachmentAudioModel *)self audioDocument];
  v3 = [v2 transcriptAsPlainText];

  return v3;
}

- (ICAttachmentAudioModel)initWithAttachment:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICAttachmentAudioModel;
  return [(ICAttachmentModel *)&v4 initWithAttachment:a3];
}

- (BOOL)isReadyToPresent
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 isUnsupported];

  return v3 ^ 1;
}

- (ICTTAudioDocument)audioDocument
{
  audioDocument = self->_audioDocument;
  if (audioDocument)
  {
    v3 = audioDocument;
  }

  else
  {
    v5 = [(ICAttachmentModel *)self attachment];
    v6 = [v5 mergeableData];

    v7 = [(ICAttachmentModel *)self currentReplicaID];
    if (v6)
    {
      v8 = [ICTTAudioDocument unarchiveFromData:v6 replicaID:v7];
      if (v8)
      {
        objc_storeStrong(&self->_audioDocument, v8);
      }

      else
      {
        v14 = os_log_create("com.apple.notes", "AudioTranscription");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(ICAttachmentAudioModel *)self audioDocument];
        }
      }
    }

    else
    {
      v9 = [ICTTAudioDocument alloc];
      v10 = [(ICAttachmentModel *)self attachment];
      v11 = [v10 currentReplicaID];
      v12 = [(ICTTAudioDocument *)v9 initWithReplicaID:v11 compatibleDocument:0];
      v13 = self->_audioDocument;
      self->_audioDocument = v12;
    }

    v3 = self->_audioDocument;
  }

  return v3;
}

- (void)attachmentWillTurnIntoFault
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    audioDocument = self->_audioDocument;
    self->_audioDocument = 0;
  }
}

- (void)attachmentWillRefresh:(BOOL)a3
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    audioDocument = self->_audioDocument;
    self->_audioDocument = 0;
  }
}

- (void)attachmentDidRefresh:(BOOL)a3
{
  if (self->_audioDocument)
  {
    if ([(ICAttachmentModel *)self isMergeableDataDirty])
    {
      v4 = [(ICAttachmentModel *)self attachment];
      v5 = [v4 mergeableData];

      if (v5)
      {
        v7 = [(ICAttachmentModel *)self attachment];
        v6 = [v7 mergeableData];
        [(ICAttachmentModel *)self mergeWithMergeableData:v6];
      }
    }
  }
}

- (NSArray)composedAudioAssetURLs
{
  v3 = [(ICAttachmentAudioModel *)self audioDocument];
  v4 = [v3 orderedFragmentUUIDs];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ICAttachmentAudioModel_composedAudioAssetURLs__block_invoke;
  v11[3] = &unk_27819A070;
  v11[4] = self;
  v5 = [v4 ic_compactMap:v11];
  v6 = [(NSArray *)v5 count];
  if (v6 != [v4 count])
  {
    v7 = os_log_create("com.apple.notes", "AudioTranscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentAudioModel *)self composedAudioAssetURLs];
    }
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  return v8;
}

id __48__ICAttachmentAudioModel_composedAudioAssetURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) attachment];
  v5 = [v4 subAttachments];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__ICAttachmentAudioModel_composedAudioAssetURLs__block_invoke_2;
  v13[3] = &unk_27819A048;
  v6 = v3;
  v14 = v6;
  v7 = [v5 ic_objectPassingTest:v13];

  v8 = [v7 media];
  if (![v8 isValid])
  {
    v11 = 0;
    goto LABEL_5;
  }

  v9 = [v7 typeUTI];
  v10 = [ICAttachment typeUTIIsPlayableAudio:v9];

  if (v10)
  {
    v8 = [v7 media];
    v11 = [v8 mediaURL];
LABEL_5:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

uint64_t __48__ICAttachmentAudioModel_composedAudioAssetURLs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)asset
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__58;
  v15 = __Block_byref_object_dispose__58;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__ICAttachmentAudioModel_asset__block_invoke;
  v8[3] = &unk_27819A098;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(ICAttachmentAudioModel *)self assetWithCompletion:v8];
  v5 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __31__ICAttachmentAudioModel_asset__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)assetWithCompletion:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 subAttachments];
  v6 = [v5 count] == 0;

  v7 = [(ICAttachmentModel *)self attachment];
  v8 = v7;
  if (v6)
  {
    v18 = [v7 media];
    v19 = [v18 isValid];

    if (v19 && (-[ICAttachmentModel attachment](self, "attachment"), v20 = objc_claimAutoreleasedReturnValue(), [v20 typeUTI], v21 = objc_claimAutoreleasedReturnValue(), v22 = +[ICAttachment typeUTIIsPlayableAudio:](ICAttachment, "typeUTIIsPlayableAudio:", v21), v21, v20, v22))
    {
      v23 = MEMORY[0x277CE6650];
      v24 = [(ICAttachmentModel *)self attachment];
      v25 = [v24 media];
      v26 = [v25 mediaURL];
      v27 = [v23 ic_safeURLAssetWithURL:v26];

      v28 = v43;
      if (v43)
      {
        (*(v43 + 2))(v43, v27);
      }
    }

    else
    {
      v28 = v43;
      if (v43)
      {
        (*(v43 + 2))(v43, 0);
      }
    }
  }

  else
  {
    v9 = [v7 shortLoggingDescription];

    v10 = [(ICAttachmentAudioModel *)self composedAudioAssetURLs];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke;
    v58[3] = &unk_27819A0C0;
    v46 = v9;
    v59 = v46;
    v44 = [v10 ic_compactMap:v58];

    if ([v44 count])
    {
      v11 = [v44 count];
      v12 = [(ICAttachmentModel *)self attachment];
      v13 = [v12 subAttachments];
      v14 = v11 == [v13 count];

      if (!v14)
      {
        v15 = os_log_create("com.apple.notes", "AudioTranscription");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v39 = [v44 count];
          v40 = [(ICAttachmentModel *)self attachment];
          v41 = [v40 subAttachments];
          v42 = [v41 count];
          *buf = 134218498;
          *&buf[4] = v39;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          *&buf[22] = 2112;
          v62 = v46;
          _os_log_error_impl(&dword_214D51000, v15, OS_LOG_TYPE_ERROR, "Warning: ICAttachmentAudioModelCompositionInfo count %ld does not match subattachment count %ld - {attachment: %@}", buf, 0x20u);
        }
      }

      if ([v44 count] == 1)
      {
        if (v43)
        {
          v16 = [v44 firstObject];
          v17 = [v16 asset];
          (*(v43 + 2))(v43, v17);
        }
      }

      else
      {
        v30 = os_log_create("com.apple.notes", "AudioTranscription");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [ICAttachmentAudioModel assetWithCompletion:];
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v62 = __Block_byref_object_copy__58;
        v63 = __Block_byref_object_dispose__58;
        v64 = dispatch_group_create();
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v44;
        v31 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v31)
        {
          v32 = *v55;
          v33 = *MEMORY[0x277CE5E48];
          do
          {
            v34 = 0;
            do
            {
              if (*v55 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v54 + 1) + 8 * v34);
              dispatch_group_enter(*(*&buf[8] + 40));
              v36 = [v35 asset];
              v51[0] = MEMORY[0x277D85DD0];
              v51[1] = 3221225472;
              v51[2] = __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_58;
              v51[3] = &unk_27819A0E8;
              v51[4] = v35;
              v52 = v46;
              v53 = buf;
              [v36 loadTracksWithMediaType:v33 completionHandler:v51];

              ++v34;
            }

            while (v31 != v34);
            v31 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
          }

          while (v31);
        }

        v37 = *(*&buf[8] + 40);
        v38 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_60;
        block[3] = &unk_278194E38;
        v48 = v46;
        v49 = obj;
        v50 = v43;
        dispatch_group_notify(v37, v38, block);

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      v29 = os_log_create("com.apple.notes", "AudioTranscription");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentAudioModel assetWithCompletion:];
      }

      if (v43)
      {
        (*(v43 + 2))(v43, 0);
      }
    }

    v28 = v43;
  }
}

ICAttachmentAudioModelCompositionInfo *__46__ICAttachmentAudioModel_assetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isReachable])
  {
    v4 = [MEMORY[0x277CE6650] ic_safeURLAssetWithURL:v3];
    if (v4)
    {
      v5 = [[ICAttachmentAudioModelCompositionInfo alloc] initWithURL:v3 asset:v4];
      goto LABEL_10;
    }

    v6 = os_log_create("com.apple.notes", "AudioTranscription");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_cold_2(a1);
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "AudioTranscription");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_cold_1(a1);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = os_log_create("com.apple.notes", "AudioTranscription");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_58_cold_1(a1);
    }
  }

  else
  {
    v7 = [v5 firstObject];
    [*(a1 + 32) setTrack:v7];
  }

  dispatch_group_leave(*(*(*(a1 + 48) + 8) + 40));
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_60(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.notes", "AudioTranscription");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_60_cold_1(a1, v2);
  }

  v3 = objc_alloc_init(MEMORY[0x277CE6548]);
  v35 = **&MEMORY[0x277CC08F0];
  v26 = v3;
  v4 = [v3 addMutableTrackWithMediaType:*MEMORY[0x277CE5E48] preferredTrackID:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = a1;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = os_log_create("com.apple.notes", "AudioTranscription");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v27 + 32);
          v18 = [v9 url];
          LODWORD(range.start.value) = 138412546;
          *(&range.start.value + 4) = v17;
          LOWORD(range.start.flags) = 2112;
          *(&range.start.flags + 2) = v18;
          _os_log_debug_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEBUG, "Splicing audio track into composition {attachment: %@, url: %@}", &range, 0x16u);
        }

        v11 = [v9 track];
        v12 = v11;
        if (v11)
        {
          [v11 timeRange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v13 = [v9 track];
        v29 = v35;
        v30 = 0;
        v14 = [v4 insertTimeRange:&range ofTrack:v13 atTime:&v29 error:&v30];
        v15 = v30;

        if (v14)
        {
          if (v4)
          {
            [v4 timeRange];
          }

          else
          {
            memset(&range, 0, sizeof(range));
          }

          CMTimeRangeGetEnd(&v35, &range);
        }

        else
        {
          v16 = os_log_create("com.apple.notes", "AudioTranscription");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v19 = *(v27 + 32);
            v20 = [v9 url];
            LODWORD(range.start.value) = 138412802;
            *(&range.start.value + 4) = v19;
            LOWORD(range.start.flags) = 2112;
            *(&range.start.flags + 2) = v20;
            HIWORD(range.start.epoch) = 2112;
            range.duration.value = v15;
            _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Failed to splice audio track into composition {attachment: %@, url: %@, error: %@}", &range, 0x20u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v6);
  }

  v21 = os_log_create("com.apple.notes", "AudioTranscription");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(v27 + 32);
    if (v26)
    {
      [v26 duration];
    }

    else
    {
      memset(&range, 0, 24);
    }

    Seconds = CMTimeGetSeconds(&range.start);
    LODWORD(range.start.value) = 138412546;
    *(&range.start.value + 4) = v24;
    LOWORD(range.start.flags) = 2048;
    *(&range.start.flags + 2) = Seconds;
    _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, "Finished composition {attachment: %@, duration: %lu}", &range, 0x16u);
  }

  v22 = *(v27 + 48);
  if (v22)
  {
    v23 = [v26 copy];
    (*(v22 + 16))(v22, v23);
  }
}

- (void)writeMergeableData
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Wrote mergeable data {attachment: %@}", v5, 0xCu);
}

- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4
{
  v5 = a3;
  v6 = [(ICAttachmentAudioModel *)self audioDocument];
  v7 = [(ICAttachmentModel *)self currentReplicaID];
  v8 = [v6 mergeWithMergeableData:v5 replicaID:v7];

  if (v8 == 2)
  {
    v9 = os_log_create("com.apple.notes", "AudioTranscription");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentAudioModel mergeWithMergeableData:v9 mergeableFieldState:?];
    }

    [(ICAttachmentModel *)self setMergeableDataDirty:1];
  }

  return v8 == 2;
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentAudioModel *)self audioDocument];
  [v5 updateAfterLoadWithSubAttachmentIdentifierMap:v4];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
  v6 = [(ICAttachmentModel *)self attachment];
  [v6 saveMergeableDataIfNeeded];
}

- (void)updateFileBasedAttributes
{
  v11.receiver = self;
  v11.super_class = ICAttachmentAudioModel;
  [(ICAttachmentModel *)&v11 updateFileBasedAttributes];
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];

  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 attachmentModel];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ICAttachmentAudioModel_updateFileBasedAttributes__block_invoke;
  v8[3] = &unk_27819A110;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 assetWithCompletion:v8];
}

void __51__ICAttachmentAudioModel_updateFileBasedAttributes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ICAttachmentAudioModel_updateFileBasedAttributes__block_invoke_2;
  v7[3] = &unk_278194AD8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v6 = v3;
  [v5 performBlock:v7];
}

void __51__ICAttachmentAudioModel_updateFileBasedAttributes__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) attachment];
    [v2 duration];
    v4 = v3;
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 duration];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v6 = vabdd_f64(v4, CMTimeGetSeconds(&time));

    if (v6 >= 0.01)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 duration];
        Seconds = 0.0;
        if ((BYTE4(v15) & 0x1D) == 1)
        {
          v9 = *(a1 + 32);
          if (v9)
          {
            [v9 duration];
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          Seconds = CMTimeGetSeconds(&time);
        }
      }

      else
      {
        v14 = 0;
        v15 = 0;
        Seconds = 0.0;
        v16 = 0;
      }

      v10 = [*(a1 + 40) attachment];
      [v10 setDuration:Seconds];

      v11 = [*(a1 + 40) attachment];
      [v11 updateChangeCountWithReason:@"Updated duration from audio asset"];

      v12 = [*(a1 + 40) attachment];
      v13 = [v12 managedObjectContext];
      [v13 ic_save];
    }
  }
}

- (id)standaloneTitleForNote
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 userTitle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(ICAttachmentModel *)self attachment];
    v6 = [v7 title];
  }

  return v6;
}

- (BOOL)needsTranscription
{
  v2 = self;
  v3 = ICAttachmentAudioModel.needsTranscription.getter();

  return v3 & 1;
}

- (void)transformNewlyAddedMediaAttachment
{
  v2 = self;
  ICAttachmentAudioModel.transformNewlyAddedMediaAttachment()();
}

- (id)createSubattachmentForRecordingAndReturnError:(id *)a3
{
  v4 = self;
  ICAttachmentAudioModel.createSubattachmentForRecording()(v5);
  v8 = v7;

  if (v6)
  {
    if (a3)
    {
      v9 = sub_2150A35C0();

      v10 = v9;
      v11 = 0;
      *a3 = v9;
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)bitFlippeddUUIDWithUuid:(id)a3
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_2150A39C0();
  v11 = self;
  sub_2150A39E0();
  sub_2150A39D0();

  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = sub_2150A39A0();
  v12(v10, v4);

  return v13;
}

- (void)audioDocument
{
  v1 = [a1 attachment];
  v2 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)composedAudioAssetURLs
{
  v1 = [a1 attachment];
  v2 = [v1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)assetWithCompletion:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  v3 = v0;
  _os_log_debug_impl(&dword_214D51000, v1, OS_LOG_TYPE_DEBUG, "Composing AVAudioAsset {attachment: %@, infos: %@}", v2, 0x16u);
}

- (void)assetWithCompletion:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Failed to collect any ICAttachmentAudioModelCompositionInfo {attachment: %@}", v1, 0xCu);
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  *v4 = v1;
  OUTLINED_FUNCTION_13(&dword_214D51000, v1, v2, "Audio file is not reachable {attachment: %@, url: %@}", v3, DWORD2(v3), *&v4[2], v5);
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  *v4 = v1;
  OUTLINED_FUNCTION_13(&dword_214D51000, v1, v2, "Failed to create AVURLAsset {attachment: %@, url: %@}", v3, DWORD2(v3), *&v4[2], v5);
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_58_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) url];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __46__ICAttachmentAudioModel_assetWithCompletion___block_invoke_60_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Finished loading audio tracks {attachment: %@}", &v3, 0xCu);
}

- (void)mergeWithMergeableData:(void *)a1 mergeableFieldState:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 attachment];
  v5 = [v4 ic_loggingIdentifier];
  v6 = [a1 audioDocument];
  v7 = [v6 orderedFragmentUUIDs];
  v9 = 138412546;
  v10 = v5;
  OUTLINED_FUNCTION_4_1();
  v11 = v8;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Audio model updated from merge {attachment: %@, fragments: %@}", &v9, 0x16u);
}

@end
@interface CKVDonateTask
- (BOOL)wasLastDonationAccepted;
- (CKVDonateTask)init;
- (CKVDonateTask)initWithDonatorProvider:(id)a3 datasetBridge:(id)a4 timeout:(double)a5 donateOptions:(unsigned __int16)a6;
- (CKVDonateTask)initWithDonatorProvider:(id)a3 deltaDatasetBridge:(id)a4 timeout:(double)a5;
- (CKVDonateTask)initWithDonatorProvider:(id)a3 fullDatasetBridge:(id)a4 timeout:(double)a5;
- (CKVDonateTask)initWithDonatorProvider:(id)a3 multiDatasetBridge:(id)a4 timeout:(double)a5;
- (id)lastDonationAcceptedDate;
- (int64_t)_enumerateAndStreamDeltaDataset:(id)a3 fullStream:(id)a4 incrementalStream:(id)a5;
- (int64_t)_enumerateAndStreamFullDataset:(id)a3 fullStream:(id)a4;
- (void)_donateAllDatasets:(unsigned __int16)a3 withReason:(unsigned __int16)a4 completion:(id)a5;
- (void)_donateDataset:(id)a3 withType:(unsigned __int16)a4 reason:(unsigned __int16)a5 completion:(id)a6;
- (void)runWithType:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5;
@end

@implementation CKVDonateTask

- (BOOL)wasLastDonationAccepted
{
  v3 = [self->_bridge conformsToProtocol:&unk_1F4860D60];
  if (v3)
  {
    bridge = self->_bridge;

    LOBYTE(v3) = [bridge wasLastDonationAccepted];
  }

  return v3;
}

- (id)lastDonationAcceptedDate
{
  if ([self->_bridge conformsToProtocol:&unk_1F4860D60])
  {
    v3 = [self->_bridge lastDonationAcceptedDate];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_enumerateAndStreamDeltaDataset:(id)a3 fullStream:(id)a4 incrementalStream:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31 = &v33;
  v32 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __78__CKVDonateTask__enumerateAndStreamDeltaDataset_fullStream_incrementalStream___block_invoke;
  v27[3] = &unk_1E831E398;
  v28 = v9;
  v29 = v7;
  v10 = v8;
  v30 = v10;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__CKVDonateTask__enumerateAndStreamDeltaDataset_fullStream_incrementalStream___block_invoke_84;
  v23 = &unk_1E831E3C0;
  v26 = &v33;
  v11 = v28;
  v24 = v11;
  v12 = v29;
  v25 = v12;
  v13 = [v12 enumerateDeltaItemsWithError:&v32 addOrUpdateBlock:v27 removeBlock:&v20];
  v14 = v32;
  v15 = v14;
  if (v13)
  {
    v16 = v34[3];
  }

  else
  {
    if (v14)
    {
      v17 = CKLogContextVocabulary;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = [v12 originAppId];
        *buf = 136315650;
        v38 = "[CKVDonateTask _enumerateAndStreamDeltaDataset:fullStream:incrementalStream:]";
        v39 = 2112;
        v40 = v19;
        v41 = 2112;
        v42 = v15;
        _os_log_error_impl(&dword_1C8683000, v17, OS_LOG_TYPE_ERROR, "%s Failed to enumerate delta dataset from app: %@. error: %@", buf, 0x20u);
      }
    }

    v16 = -1;
  }

  _Block_object_dispose(&v33, 8);
  return v16;
}

uint64_t __78__CKVDonateTask__enumerateAndStreamDeltaDataset_fullStream_incrementalStream___block_invoke(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ++*(*(a1[7] + 8) + 24);
  v4 = a1[4];
  if (v4)
  {
    v21 = 0;
    v5 = [v4 addOrUpdateItem:v3 error:&v21];
    v6 = v21;
    if ((v5 & 1) == 0)
    {
      v7 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v14 = a1[5];
        v15 = v7;
        v16 = [v14 originAppId];
        *buf = 136315906;
        v23 = "[CKVDonateTask _enumerateAndStreamDeltaDataset:fullStream:incrementalStream:]_block_invoke";
        v24 = 2112;
        v25 = v3;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v6;
        _os_log_error_impl(&dword_1C8683000, v15, OS_LOG_TYPE_ERROR, "%s Failed to add or update item: %@ from app: %@. error: %@", buf, 0x2Au);
      }

      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = a1[6];
  if (v9)
  {
    v20 = v6;
    v10 = [v9 registerItem:v3 error:&v20];
    v11 = v20;

    if (v10)
    {
      v8 = 1;
    }

    else
    {
      v12 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[5];
        v18 = v12;
        v19 = [v17 originAppId];
        *buf = 136315906;
        v23 = "[CKVDonateTask _enumerateAndStreamDeltaDataset:fullStream:incrementalStream:]_block_invoke";
        v24 = 2112;
        v25 = v3;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v11;
        _os_log_error_impl(&dword_1C8683000, v18, OS_LOG_TYPE_ERROR, "%s Failed to register item: %@ from app: %@. error: %@", buf, 0x2Au);
      }

      v8 = 0;
    }

    v6 = v11;
  }

  else
  {
    v8 = 1;
  }

LABEL_15:

  return v8;
}

uint64_t __78__CKVDonateTask__enumerateAndStreamDeltaDataset_fullStream_incrementalStream___block_invoke_84(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ++*(*(a1[6] + 8) + 24);
  v4 = a1[4];
  v12 = 0;
  v5 = [v4 removeItemWithItemId:v3 error:&v12];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = v7;
      v11 = [v9 originAppId];
      *buf = 136315906;
      v14 = "[CKVDonateTask _enumerateAndStreamDeltaDataset:fullStream:incrementalStream:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to remove item with itemId: %@ from app: %@. error: %@", buf, 0x2Au);
    }
  }

  return v5;
}

- (int64_t)_enumerateAndStreamFullDataset:(id)a3 fullStream:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v21 = &v23;
  v22 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __59__CKVDonateTask__enumerateAndStreamFullDataset_fullStream___block_invoke;
  v18 = &unk_1E831E370;
  v7 = v6;
  v19 = v7;
  v8 = v5;
  v20 = v8;
  v9 = [v8 enumerateItemsWithError:&v22 usingBlock:&v15];
  v10 = v22;
  if (v9)
  {
    v11 = v24[3];
  }

  else
  {
    v12 = CKLogContextVocabulary;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 originAppId];
      *buf = 136315650;
      v28 = "[CKVDonateTask _enumerateAndStreamFullDataset:fullStream:]";
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v10;
      _os_log_error_impl(&dword_1C8683000, v12, OS_LOG_TYPE_ERROR, "%s Failed to enumerate full dataset from app: %@. error: %@", buf, 0x20u);
    }

    v11 = -1;
  }

  _Block_object_dispose(&v23, 8);
  return v11;
}

uint64_t __59__CKVDonateTask__enumerateAndStreamFullDataset_fullStream___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ++*(*(a1[6] + 8) + 24);
  v4 = a1[4];
  v12 = 0;
  v5 = [v4 registerItem:v3 error:&v12];
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v7 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[5];
      v10 = v7;
      v11 = [v9 originAppId];
      *buf = 136315906;
      v14 = "[CKVDonateTask _enumerateAndStreamFullDataset:fullStream:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Failed to stream vocabulary item: %@ from app: %@. error: %@", buf, 0x2Au);
    }
  }

  return v5;
}

- (void)_donateDataset:(id)a3 withType:(unsigned __int16)a4 reason:(unsigned __int16)a5 completion:(id)a6
{
  v31 = a4;
  v32 = a5;
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a6;
  v10 = os_signpost_id_generate(CKLogContextFramework);
  v11 = CKLogContextVocabulary;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8683000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "donateDataset", "", buf, 2u);
  }

  v13 = os_signpost_id_generate(CKLogContextFramework);
  v14 = CKLogContextVocabulary;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8683000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "donateIncrementalDataset", "", buf, 2u);
  }

  v16 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke;
  aBlock[3] = &unk_1E831EA68;
  dsema = v16;
  v63 = dsema;
  v35 = v9;
  v64 = v35;
  v36 = _Block_copy(aBlock);
  v37 = [v8 originAppId];
  donatorProvider = self->_donatorProvider;
  v61 = 0;
  v18 = -[CKVDonatorProvider donatorWithCascadeItemType:originAppId:error:](donatorProvider, "donatorWithCascadeItemType:originAppId:error:", [v8 cascadeItemType], v37, &v61);
  v33 = v61;
  if (v18)
  {
    donateOptions = self->_donateOptions;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__164;
    v73 = __Block_byref_object_dispose__165;
    v74 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__164;
    v55 = __Block_byref_object_dispose__165;
    v56 = 0;
    if ([v8 conformsToProtocol:&unk_1F4860D60])
    {
      v20 = v8;
      v21 = [v20 version];
      v22 = [v20 validity];
      if ([v20 wasLastDonationAccepted])
      {
        donateOptions = donateOptions;
      }

      else
      {
        donateOptions = donateOptions & 0xFFFE;
      }

      [v20 recordDonationAttempt];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = &stru_1F4852890;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke_72;
    v38[3] = &unk_1E831E348;
    v44 = buf;
    v45 = &v51;
    v24 = v37;
    v39 = v24;
    v43 = v36;
    v40 = self;
    v30 = v8;
    v41 = v30;
    v25 = v20;
    v42 = v25;
    v46 = &v57;
    v47 = v10;
    v49 = v31;
    v50 = v32;
    v48 = v13;
    [v18 donateWithOptions:donateOptions version:v21 validity:v22 usingStream:v38];
    v26 = dispatch_time(0, (self->_timeout * 1000000000.0));
    if (dispatch_semaphore_wait(dsema, v26))
    {
      v27 = CKLogContextVocabulary;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
        *v65 = 136315650;
        v66 = "[CKVDonateTask _donateDataset:withType:reason:completion:]";
        v67 = 2112;
        v68 = v24;
        v69 = 2112;
        v70 = v29;
        _os_log_error_impl(&dword_1C8683000, v27, OS_LOG_TYPE_ERROR, "%s Timed out streaming donation from app: %@ timeout: %@ seconds", v65, 0x20u);
      }

      if (v35)
      {
        (*(v35 + 2))(v35, -1);
      }
    }

    if (v25)
    {
      if (*(v58 + 24) == 1)
      {
        [v25 recordDonationAccepted];
      }

      else if (v52[5])
      {
        v28 = CKLogContextVocabulary;
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          *v65 = 136315138;
          v66 = "[CKVDonateTask _donateDataset:withType:reason:completion:]";
          _os_log_impl(&dword_1C8683000, v28, OS_LOG_TYPE_INFO, "%s Incremental donation aborted. Retrying full dataset donation.", v65, 0xCu);
        }

        [(CKVDonateTask *)self _donateDataset:v30 withType:v31 reason:v32 completion:v35];
      }
    }

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v57, 8);
  }

  else
  {
    v23 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[CKVDonateTask _donateDataset:withType:reason:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v37;
      *&buf[22] = 2112;
      v72 = v33;
      _os_log_error_impl(&dword_1C8683000, v23, OS_LOG_TYPE_ERROR, "%s Failed to obtain donator for app: %@ error: %@", buf, 0x20u);
    }

    (*(v36 + 2))(v36, -1);
  }
}

intptr_t __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke(uint64_t a1)
{
  result = dispatch_semaphore_signal(*(a1 + 32));
  if (result)
  {
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

void __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 72;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        *buf = 136315650;
        v29 = "[CKVDonateTask _donateDataset:withType:reason:completion:]_block_invoke";
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v7;
        _os_log_error_impl(&dword_1C8683000, v17, OS_LOG_TYPE_ERROR, "%s Donation rejected for app: %@ error: %@ ", buf, 0x20u);
      }

      goto LABEL_16;
    }

    v8 = 80;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), a2);
  v9 = *(a1 + 40);
  if (v9[17])
  {
    v15 = *(*(*(a1 + 80) + 8) + 40);
    if (!v15)
    {
      v16 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "[CKVDonateTask _donateDataset:withType:reason:completion:]_block_invoke";
        _os_log_impl(&dword_1C8683000, v16, OS_LOG_TYPE_INFO, "%s Incremental donation cannot be made. Falling back to full dataset donation.", buf, 0xCu);
      }

      [*(a1 + 56) resetDeltaState];
      v9 = *(a1 + 40);
      v15 = *(*(*(a1 + 80) + 8) + 40);
    }

    v10 = [v9 _enumerateAndStreamDeltaDataset:*(a1 + 56) fullStream:*(*(*(a1 + 72) + 8) + 40) incrementalStream:v15];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v10 = [v9 _enumerateAndStreamFullDataset:*(a1 + 48) fullStream:*(*(*(a1 + 72) + 8) + 40)];
  if (v10 < 0)
  {
LABEL_13:
    [v6 cancel];
LABEL_16:
    (*(*(a1 + 64) + 16))();
    goto LABEL_17;
  }

LABEL_7:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke_75;
  v19[3] = &unk_1E831E320;
  v25 = v10;
  v20 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 88);
  v21 = v11;
  v27 = *(a1 + 112);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v23 = v12;
  v24 = v13;
  v26 = *(a1 + 96);
  v22 = v14;
  [v6 finish:v19];

LABEL_17:
}

void __59__CKVDonateTask__donateDataset_withType_reason_completion___block_invoke_75(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = *(a1 + 72);
    v7 = v4;
    v8 = [v5 numberWithInteger:v6];
    v9 = [MEMORY[0x1E69AA778] descriptionForTypeIdentifier:{objc_msgSend(*(a1 + 32), "cascadeItemType")}];
    v10 = v9;
    v11 = *(a1 + 40);
    v12 = @"success";
    *v26 = 136316162;
    *&v26[4] = "[CKVDonateTask _donateDataset:withType:reason:completion:]_block_invoke";
    if (v3)
    {
      v12 = v3;
    }

    *&v26[12] = 2112;
    *&v26[14] = v8;
    v27 = 2112;
    *v28 = v9;
    *&v28[8] = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1C8683000, v7, OS_LOG_TYPE_INFO, "%s Finished streaming %@ items of type: %@ from app: %@ result: %@", v26, 0x34u);
  }

  *(*(*(a1 + 56) + 8) + 24) = v3 == 0;
  [CKVAnalytics sendDonateEvent:*(a1 + 96) itemCount:*(a1 + 72) appId:*(a1 + 40) reason:*(a1 + 98) result:*v26];
  v13 = *(*(*(a1 + 64) + 8) + 40);
  v14 = CKLogContextVocabulary;
  v15 = v14;
  if (v13)
  {
    v16 = *(a1 + 80);
    if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
    {
      goto LABEL_13;
    }

    v17 = CKVTaskIdDescription(*(a1 + 96));
    v18 = *(a1 + 40);
    v19 = *(a1 + 98);
    v20 = *(a1 + 72);
    *v26 = 138544130;
    *&v26[4] = v17;
    *&v26[12] = 2114;
    *&v26[14] = v18;
    v27 = 1026;
    *v28 = v19;
    *&v28[4] = 1026;
    *&v28[6] = v20;
    v21 = "donateDataset";
  }

  else
  {
    v16 = *(a1 + 88);
    if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v14))
    {
      goto LABEL_13;
    }

    v17 = CKVTaskIdDescription(*(a1 + 96));
    v22 = *(a1 + 40);
    v23 = *(a1 + 98);
    v24 = *(a1 + 72);
    *v26 = 138544130;
    *&v26[4] = v17;
    *&v26[12] = 2114;
    *&v26[14] = v22;
    v27 = 1026;
    *v28 = v23;
    *&v28[4] = 1026;
    *&v28[6] = v24;
    v21 = "donateIncrementalDataset";
  }

  _os_signpost_emit_with_name_impl(&dword_1C8683000, v15, OS_SIGNPOST_INTERVAL_END, v16, v21, " type=%{public,signpost.telemetry:string1}@  appId=%{public,signpost.telemetry:string2}@  reason=%{public,signpost.telemetry:number1}d  itemCnt=%{public,signpost.telemetry:number2}d  enableTelemetry=YES ", v26, 0x22u);

LABEL_13:
  if (v3)
  {
    v25 = -1;
  }

  else
  {
    v25 = *(a1 + 72);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v25);
}

- (void)_donateAllDatasets:(unsigned __int16)a3 withReason:(unsigned __int16)a4 completion:(id)a5
{
  v8 = a5;
  v9 = os_signpost_id_generate(CKLogContextFramework);
  v10 = CKLogContextVocabulary;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C8683000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "streamDonateMultiDataset", "", buf, 2u);
  }

  v41 = 0;
  *buf = 0;
  v38 = buf;
  v39 = 0x2020000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v12 = dispatch_group_create();
  bridge = self->_bridge;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke;
  v29[3] = &unk_1E831E2D0;
  v14 = v12;
  v30 = v14;
  v31 = self;
  v34 = a3;
  v35 = a4;
  v32 = v36;
  v33 = buf;
  [bridge enumerateAllDatasets:&v41 usingBlock:v29];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  if (_sharedQueue_onceToken != -1)
  {
    dispatch_once(&_sharedQueue_onceToken, &__block_literal_global_174);
  }

  v17 = _sharedQueue_sharedQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke_3;
  v20[3] = &unk_1E831E2F8;
  v27 = a3;
  v28 = a4;
  v23 = v36;
  v24 = buf;
  v25 = v9;
  v26 = v41;
  v21 = v16;
  v22 = v8;
  v18 = v8;
  v19 = v16;
  dispatch_group_notify(v14, v17, v20);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(buf, 8);
}

void __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 64);
  v6 = *(a1 + 66);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke_2;
  v8[3] = &unk_1E831E2A8;
  v10 = *(a1 + 48);
  v7 = *(a1 + 40);
  v9 = *(a1 + 32);
  [v7 _donateDataset:v4 withType:v5 reason:v6 completion:v8];
}

uint64_t __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = CKLogContextVocabulary;
  v3 = v2;
  v4 = *(a1 + 64);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = CKVTaskIdDescription(*(a1 + 80));
    v6 = *(a1 + 82);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    v18 = 138543874;
    v19 = v5;
    v20 = 1026;
    *v21 = v6;
    *&v21[4] = 1026;
    *&v21[6] = v7;
    _os_signpost_emit_with_name_impl(&dword_1C8683000, v3, OS_SIGNPOST_INTERVAL_END, v4, "streamDonateMultiDataset", " type=%{public,signpost.telemetry:string1}@  reason=%{public,signpost.telemetry:number1}d  itemCnt=%{public,signpost.telemetry:number2}d  enableTelemetry=YES ", &v18, 0x18u);
  }

  v8 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x1E696AD98];
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = v8;
    v15 = [v12 numberWithUnsignedInteger:v13];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 48) + 8) + 24)];
    v18 = 136316162;
    v19 = "[CKVDonateTask _donateAllDatasets:withReason:completion:]_block_invoke";
    v20 = 2112;
    *v21 = v11;
    *&v21[8] = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v17;
    _os_log_debug_impl(&dword_1C8683000, v14, OS_LOG_TYPE_DEBUG, "%s Enumerated all datasets from %@ donated datasets: %@ enumerated datasets: %@ total items: %@", &v18, 0x34u);
  }

  result = *(a1 + 40);
  if (result)
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
    }

    else if (*(a1 + 72))
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    return (*(result + 16))(result, v10);
  }

  return result;
}

void __58__CKVDonateTask__donateAllDatasets_withReason_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) += a2;
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)runWithType:(unsigned __int16)a3 reason:(unsigned __int16)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = CKVTaskIdDescription(v6);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v5];
    v13 = 136315650;
    v14 = "[CKVDonateTask runWithType:reason:completion:]";
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1C8683000, v10, OS_LOG_TYPE_INFO, "%s Running donate task: %@ reason: %@", &v13, 0x20u);
  }

  if (self->_isMultiDataset)
  {
    [(CKVDonateTask *)self _donateAllDatasets:v6 withReason:v5 completion:v8];
  }

  else
  {
    [(CKVDonateTask *)self _donateDataset:self->_bridge withType:v6 reason:v5 completion:v8];
  }
}

- (CKVDonateTask)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVDonateTask)initWithDonatorProvider:(id)a3 multiDatasetBridge:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 conformsToProtocol:&unk_1F485BA50])
  {
    self = [(CKVDonateTask *)self initWithDonatorProvider:v8 datasetBridge:v9 timeout:0 donateOptions:a5];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CKVDonateTask)initWithDonatorProvider:(id)a3 deltaDatasetBridge:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 conformsToProtocol:&unk_1F4860D60])
  {
    self = [(CKVDonateTask *)self initWithDonatorProvider:v8 datasetBridge:v9 timeout:1 donateOptions:a5];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CKVDonateTask)initWithDonatorProvider:(id)a3 fullDatasetBridge:(id)a4 timeout:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 conformsToProtocol:&unk_1F485B980])
  {
    self = [(CKVDonateTask *)self initWithDonatorProvider:v8 datasetBridge:v9 timeout:0 donateOptions:a5];
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CKVDonateTask)initWithDonatorProvider:(id)a3 datasetBridge:(id)a4 timeout:(double)a5 donateOptions:(unsigned __int16)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = CKVDonateTask;
  v13 = [(CKVDonateTask *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_donatorProvider, a3);
    if (!v14->_donatorProvider)
    {
      v15 = 0;
      goto LABEL_8;
    }

    objc_storeStrong(&v14->_bridge, a4);
    if ([v14->_bridge conformsToProtocol:&unk_1F485BA50])
    {
      v14->_isMultiDataset = 1;
    }

    v14->_timeout = a5;
    v14->_donateOptions = a6;
  }

  v15 = v14;
LABEL_8:

  return v15;
}

@end
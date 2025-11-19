@interface NMSMutableMediaSyncInfo
+ (id)requiredUserInfoPropertiesForModelKind:(id)a3;
- (BOOL)hasItemsOverStorageLimit;
- (BOOL)hasItemsOverStorageLimitForContainer:(id)a3;
- (BOOL)hasItemsWaitingWithoutPauseReason;
- (float)progress;
- (float)progressForContainer:(id)a3;
- (id)_info;
- (id)_infoForContainer:(id)a3;
- (id)_infoForItem:(id)a3;
- (unint64_t)_persistingOptions;
- (unint64_t)downloadPauseReason;
- (unint64_t)downloadPauseReasonForContainer:(id)a3;
- (unint64_t)playabilityForContainer:(id)a3;
- (unint64_t)status;
- (unint64_t)statusForContainer:(id)a3;
- (void)_notifyInfoChanged;
- (void)_updateAggregateInfoIfNeeded;
- (void)_writeInfo;
- (void)setDownloadPauseReason:(unint64_t)a3 forItem:(id)a4;
- (void)setItems:(id)a3 forContainer:(id)a4;
- (void)setOverStorageLimitBehavior:(unint64_t)a3 forContainer:(id)a4;
- (void)setProgressBytes:(unint64_t)a3 totalBytes:(unint64_t)a4 forItem:(id)a5;
- (void)setStatus:(unint64_t)a3 forItem:(id)a4;
- (void)setUserInfo:(id)a3 forContainer:(id)a4;
- (void)setUserInfo:(id)a3 forItem:(id)a4;
- (void)setUserInfoForModelObject:(id)a3 manuallyPinned:(BOOL)a4;
- (void)synchronize;
@end

@implementation NMSMutableMediaSyncInfo

- (unint64_t)statusForContainer:(id)a3
{
  v4 = a3;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 statusForContainer:v4];

  return v5;
}

- (unint64_t)playabilityForContainer:(id)a3
{
  v4 = a3;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 playabilityForContainer:v4];

  return v5;
}

- (float)progressForContainer:(id)a3
{
  v4 = a3;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v8.receiver = self;
  v8.super_class = NMSMutableMediaSyncInfo;
  [(NMSMediaSyncInfo *)&v8 progressForContainer:v4];
  v6 = v5;

  return v6;
}

- (unint64_t)downloadPauseReasonForContainer:(id)a3
{
  v4 = a3;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 downloadPauseReasonForContainer:v4];

  return v5;
}

- (BOOL)hasItemsOverStorageLimitForContainer:(id)a3
{
  v4 = a3;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v6.receiver = self;
  v6.super_class = NMSMutableMediaSyncInfo;
  LOBYTE(self) = [(NMSMediaSyncInfo *)&v6 hasItemsOverStorageLimitForContainer:v4];

  return self;
}

- (unint64_t)status
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v4.receiver = self;
  v4.super_class = NMSMutableMediaSyncInfo;
  return [(NMSMediaSyncInfo *)&v4 status];
}

- (float)progress
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v4.receiver = self;
  v4.super_class = NMSMutableMediaSyncInfo;
  [(NMSMediaSyncInfo *)&v4 progress];
  return result;
}

- (unint64_t)downloadPauseReason
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v4.receiver = self;
  v4.super_class = NMSMutableMediaSyncInfo;
  return [(NMSMediaSyncInfo *)&v4 downloadPauseReason];
}

- (BOOL)hasItemsWaitingWithoutPauseReason
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v4.receiver = self;
  v4.super_class = NMSMutableMediaSyncInfo;
  return [(NMSMediaSyncInfo *)&v4 hasItemsWaitingWithoutPauseReason];
}

- (BOOL)hasItemsOverStorageLimit
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v4.receiver = self;
  v4.super_class = NMSMutableMediaSyncInfo;
  return [(NMSMediaSyncInfo *)&v4 hasItemsOverStorageLimit];
}

- (void)setItems:(id)a3 forContainer:(id)a4
{
  v6 = a3;
  v10 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:a4];
  [v10 setObject:v6 forKeyedSubscript:@"itemsIdentifiers"];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v6 count];

  v9 = [v7 numberWithUnsignedInteger:v8];
  [v10 setObject:v9 forKeyedSubscript:@"itemCount"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setOverStorageLimitBehavior:(unint64_t)a3 forContainer:(id)a4
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:a4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v6 forKeyedSubscript:@"overStorageLimitBehavior"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setStatus:(unint64_t)a3 forItem:(id)a4
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:a4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v6 forKeyedSubscript:@"status"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setProgressBytes:(unint64_t)a3 totalBytes:(unint64_t)a4 forItem:(id)a5
{
  v10 = [(NMSMutableMediaSyncInfo *)self _infoForItem:a5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v10 setObject:v8 forKeyedSubscript:@"totalBytes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v10 setObject:v9 forKeyedSubscript:@"progressBytes"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setDownloadPauseReason:(unint64_t)a3 forItem:(id)a4
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:a4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v7 setObject:v6 forKeyedSubscript:@"downloadPauseReason"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setUserInfo:(id)a3 forContainer:(id)a4
{
  v6 = a3;
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:a4];
  [v7 setObject:v6 forKeyedSubscript:@"userInfo"];
}

- (void)setUserInfo:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:a4];
  [v7 setObject:v6 forKeyedSubscript:@"userInfo"];
}

- (void)synchronize
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  [(NMSMutableMediaSyncInfo *)self _writeInfo];

  [(NMSMutableMediaSyncInfo *)self _notifyInfoChanged];
}

- (id)_info
{
  v3 = [(NMSMediaSyncInfo *)self info];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(NMSMediaSyncInfo *)self setInfo:v4];
  }

  return [(NMSMediaSyncInfo *)self info];
}

- (id)_infoForContainer:(id)a3
{
  v4 = a3;
  v5 = [(NMSMediaSyncInfo *)self info];
  v6 = [v5 objectForKeyedSubscript:@"containers"];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(NMSMutableMediaSyncInfo *)self _info];
    v9 = [v8 objectForKeyedSubscript:@"containers"];

    if (!v9)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [v8 setObject:v10 forKeyedSubscript:@"containers"];
    }

    v11 = [v8 objectForKeyedSubscript:@"containers"];
    [v11 setObject:v7 forKeyedSubscript:v4];
  }

  return v7;
}

- (id)_infoForItem:(id)a3
{
  v4 = a3;
  v5 = [(NMSMediaSyncInfo *)self info];
  v6 = [v5 objectForKeyedSubscript:@"items"];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(NMSMutableMediaSyncInfo *)self _info];
    v9 = [v8 objectForKeyedSubscript:@"items"];

    if (!v9)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
      [v8 setObject:v10 forKeyedSubscript:@"items"];
    }

    v11 = [v8 objectForKeyedSubscript:@"items"];
    [v11 setObject:v7 forKeyedSubscript:v4];
  }

  return v7;
}

- (void)_updateAggregateInfoIfNeeded
{
  if (self->_needsUpdateAggregateInfo)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v3 = [(NMSMediaSyncInfo *)self info];
    v4 = [v3 objectForKeyedSubscript:@"containers"];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke;
    v46[3] = &unk_27993E350;
    v46[4] = self;
    v46[5] = &v47;
    [v4 enumerateKeysAndObjectsUsingBlock:v46];

    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 1;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v5 = [(NMSMediaSyncInfo *)self info];
    v6 = [v5 objectForKeyedSubscript:@"items"];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke_3;
    v21[3] = &unk_27993E378;
    v21[4] = &v42;
    v21[5] = &v38;
    v21[6] = &v34;
    v21[7] = &v30;
    v21[8] = &v26;
    v21[9] = &v22;
    [v6 enumerateKeysAndObjectsUsingBlock:v21];

    if (v43[3])
    {
      v7 = 4;
    }

    else
    {
      v7 = v39[3];
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v9 = [(NMSMediaSyncInfo *)self info];
    [v9 setObject:v8 forKeyedSubscript:@"status"];

    v11 = v35[3];
    if (v11)
    {
      v12 = v31[3] / v11;
    }

    else
    {
      LOBYTE(v10) = *(v43 + 24);
      v12 = v10;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    v14 = [(NMSMediaSyncInfo *)self info];
    [v14 setObject:v13 forKeyedSubscript:@"cachedProgress"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27[3]];
    v16 = [(NMSMediaSyncInfo *)self info];
    [v16 setObject:v15 forKeyedSubscript:@"downloadPauseReason"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:*(v23 + 24)];
    v18 = [(NMSMediaSyncInfo *)self info];
    [v18 setObject:v17 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v48 + 24)];
    v20 = [(NMSMediaSyncInfo *)self info];
    [v20 setObject:v19 forKeyedSubscript:@"hasItemsOverStorageLimit"];

    self->_needsUpdateAggregateInfo = 0;
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v47, 8);
  }
}

void __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 1;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v7 = [v6 objectForKeyedSubscript:@"overStorageLimitBehavior"];
  v8 = [v7 unsignedIntegerValue];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  if (v8 == 2)
  {
    v9 = [v6 objectForKeyedSubscript:@"itemsIdentifiers"];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  v29 = v10;
  v11 = [v6 objectForKeyedSubscript:@"itemsIdentifiers"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke_2;
  v25[3] = &unk_27993E328;
  v25[4] = *(a1 + 32);
  v25[5] = &v58;
  v25[6] = &v54;
  v25[7] = &v50;
  v25[8] = &v46;
  v25[9] = &v42;
  v25[10] = &v38;
  v25[11] = &v34;
  v25[12] = &v26;
  v25[13] = &v30;
  v25[14] = v8;
  [v11 enumerateObjectsUsingBlock:v25];

  if (v59[3])
  {
    v12 = 4;
  }

  else
  {
    v12 = v55[3];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [v6 setObject:v13 forKeyedSubscript:@"status"];

  v15 = v47[3];
  if (v15)
  {
    v16 = v43[3] / v15;
  }

  else
  {
    LOBYTE(v14) = *(v59 + 24);
    v16 = v14;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [v6 setObject:v17 forKeyedSubscript:@"cachedProgress"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39[3]];
  [v6 setObject:v18 forKeyedSubscript:@"downloadPauseReason"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v35 + 24)];
  [v6 setObject:v19 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51[3]];
  [v6 setObject:v20 forKeyedSubscript:@"playability"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v27 + 24)];
  [v6 setObject:v21 forKeyedSubscript:@"hasItemsOverStorageLimit"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v31 + 24)];
  [v6 setObject:v22 forKeyedSubscript:@"hasDownloadableItemsWithinStorageLimitKey"];

  v23 = *(*(a1 + 40) + 8);
  if (*(v23 + 24))
  {
    v24 = 1;
  }

  else
  {
    v24 = *(v27 + 24);
  }

  *(v23 + 24) = v24 & 1;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
}

void __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 info];
  v6 = [v5 objectForKeyedSubscript:@"items"];
  v21 = [v6 objectForKeyedSubscript:v4];

  v7 = [v21 objectForKeyedSubscript:@"status"];
  v8 = [v7 integerValue];

  if (v8)
  {
    if (v8 == 4)
    {
      *(*(a1[7] + 8) + 24) = 1;
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 0;
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 24);
      if (v10 != 3)
      {
        if (v10 <= v8)
        {
          v10 = v8;
        }

        if (v8 == 3)
        {
          v10 = 3;
        }

        *(v9 + 24) = v10;
      }
    }

    v11 = [v21 objectForKeyedSubscript:@"totalBytes"];
    *(*(a1[8] + 8) + 24) += [v11 unsignedLongLongValue];

    v12 = [v21 objectForKeyedSubscript:@"progressBytes"];
    *(*(a1[9] + 8) + 24) += [v12 unsignedLongLongValue];
  }

  v13 = [v21 objectForKeyedSubscript:@"downloadPauseReason"];
  v14 = [v13 integerValue];

  *(*(a1[10] + 8) + 24) |= v14;
  if (v8 == 2 && v14 == 0)
  {
    *(*(a1[11] + 8) + 24) = 1;
  }

  v16 = [v21 objectForKeyedSubscript:@"overStorageLimit"];
  v17 = [v16 BOOLValue];

  v18 = a1[14];
  if (v18 == 2)
  {
    v19 = v21;
    if (v17)
    {
      goto LABEL_28;
    }

    *(*(a1[12] + 8) + 24) = 0;
  }

  else if (v18 == 1)
  {
    v19 = v21;
    if (v17)
    {
      v20 = 12;
      goto LABEL_27;
    }
  }

  else
  {
    v19 = v21;
    if (v17)
    {
      goto LABEL_28;
    }
  }

  if ((v8 | 4) == 4)
  {
    goto LABEL_28;
  }

  v20 = 13;
LABEL_27:
  *(*(a1[v20] + 8) + 24) = 1;
LABEL_28:
}

void __55__NMSMutableMediaSyncInfo__updateAggregateInfoIfNeeded__block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 objectForKeyedSubscript:@"status"];
  v5 = [v4 integerValue];

  if (v5)
  {
    if (v5 != 4)
    {
      *(*(a1[4] + 8) + 24) = 0;
      v6 = *(a1[5] + 8);
      v7 = *(v6 + 24);
      if (v7 != 3)
      {
        if (v7 <= v5)
        {
          v7 = v5;
        }

        if (v5 == 3)
        {
          v7 = 3;
        }

        *(v6 + 24) = v7;
      }
    }

    v8 = [v12 objectForKeyedSubscript:@"totalBytes"];
    *(*(a1[6] + 8) + 24) += [v8 unsignedLongLongValue];

    v9 = [v12 objectForKeyedSubscript:@"progressBytes"];
    *(*(a1[7] + 8) + 24) += [v9 unsignedLongLongValue];
  }

  v10 = [v12 objectForKeyedSubscript:@"downloadPauseReason"];
  v11 = [v10 integerValue];

  *(*(a1[8] + 8) + 24) |= v11;
  if (v5 == 2 && !v11)
  {
    *(*(a1[9] + 8) + 24) = 1;
  }
}

- (void)_writeInfo
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NMSMutableMediaSyncInfo *)self _persistingOptions];
  v6 = [(NMSMediaSyncInfo *)self info];
  v7 = [v6 objectForKeyedSubscript:@"containers"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __37__NMSMutableMediaSyncInfo__writeInfo__block_invoke;
  v36[3] = &unk_27993E3A0;
  v38 = v5;
  v8 = v4;
  v37 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v36];

  if ([v8 count])
  {
    [v3 setObject:v8 forKeyedSubscript:@"containers"];
  }

  if ((v5 & 4) != 0)
  {
    v9 = [(NMSMediaSyncInfo *)self info];
    v10 = [v9 objectForKeyedSubscript:@"status"];
    [v3 setObject:v10 forKeyedSubscript:@"status"];

    v11 = [(NMSMediaSyncInfo *)self info];
    v12 = [v11 objectForKeyedSubscript:@"cachedProgress"];
    [v3 setObject:v12 forKeyedSubscript:@"cachedProgress"];

    v13 = [(NMSMediaSyncInfo *)self info];
    v14 = [v13 objectForKeyedSubscript:@"downloadPauseReason"];
    [v3 setObject:v14 forKeyedSubscript:@"downloadPauseReason"];

    v15 = [(NMSMediaSyncInfo *)self info];
    v16 = [v15 objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
    [v3 setObject:v16 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

    v17 = MEMORY[0x277CCABB0];
    v18 = [(NMSMediaSyncInfo *)self info];
    v19 = [v18 objectForKeyedSubscript:@"items"];
    v20 = [v17 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    [v3 setObject:v20 forKeyedSubscript:@"itemCount"];

    v21 = [(NMSMediaSyncInfo *)self info];
    v22 = [v21 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    [v3 setObject:v22 forKeyedSubscript:@"hasItemsOverStorageLimit"];
  }

  v23 = +[NMSyncDefaults sharedDefaults];
  v24 = [v23 debugSyncInfoEnabled];

  if (v24)
  {
    v25 = [(NMSMediaSyncInfo *)self info];
    [v3 setObject:v25 forKeyedSubscript:@"debug-info"];
  }

  v26 = +[NMSyncDefaults sharedDefaults];
  v27 = [(NMSMediaSyncInfo *)self target];
  if (v27 > 2)
  {
    if ((v27 - 3) < 2)
    {
      v28 = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
      [v3 writeToFile:v28 atomically:1];
    }
  }

  else if (v27)
  {
    if (v27 == 1)
    {
      [v26 setPodcastsSyncInfo:v3];
      v29 = [(NMSMediaSyncInfo *)self info];
      v30 = [v29 objectForKeyedSubscript:@"items"];
      if (v30)
      {
        v39 = @"items";
        v31 = [(NMSMediaSyncInfo *)self info];
        v32 = [v31 objectForKeyedSubscript:@"items"];
        v40[0] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      }

      else
      {
        v33 = MEMORY[0x277CBEC10];
      }

      v34 = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
      [v33 writeToFile:v34 atomically:1];
    }

    else if (v27 == 2)
    {
      [v26 setAudiobooksSyncInfo:v3];
    }
  }

  else
  {
    [v26 setMusicSyncInfo:v3];
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __37__NMSMutableMediaSyncInfo__writeInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"itemsIdentifiers"];
    [v6 setObject:v8 forKeyedSubscript:@"itemsIdentifiers"];

    v7 = *(a1 + 40);
  }

  if ((v7 & 2) != 0)
  {
    v9 = [v5 objectForKeyedSubscript:@"status"];
    [v6 setObject:v9 forKeyedSubscript:@"status"];

    v10 = [v5 objectForKeyedSubscript:@"playability"];
    [v6 setObject:v10 forKeyedSubscript:@"playability"];

    v11 = [v5 objectForKeyedSubscript:@"cachedProgress"];
    [v6 setObject:v11 forKeyedSubscript:@"cachedProgress"];

    v12 = [v5 objectForKeyedSubscript:@"downloadPauseReason"];
    [v6 setObject:v12 forKeyedSubscript:@"downloadPauseReason"];

    v13 = [v5 objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
    [v6 setObject:v13 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

    v14 = [v5 objectForKeyedSubscript:@"itemCount"];
    [v6 setObject:v14 forKeyedSubscript:@"itemCount"];

    v15 = [v5 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    [v6 setObject:v15 forKeyedSubscript:@"hasItemsOverStorageLimit"];

    v16 = [v5 objectForKeyedSubscript:@"hasDownloadableItemsWithinStorageLimitKey"];
    [v6 setObject:v16 forKeyedSubscript:@"hasDownloadableItemsWithinStorageLimitKey"];

    v17 = [v5 objectForKeyedSubscript:@"userInfo"];
    [v6 setObject:v17 forKeyedSubscript:@"userInfo"];
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v18];
}

- (unint64_t)_persistingOptions
{
  v2 = [(NMSMediaSyncInfo *)self target];
  if (v2 > 4)
  {
    return 0;
  }

  else
  {
    return qword_25B2CEC10[v2];
  }
}

- (void)_notifyInfoChanged
{
  v3 = [(NMSMediaSyncInfo *)self _notificationName];
  v2 = v3;
  notify_post([v3 UTF8String]);
}

+ (id)requiredUserInfoPropertiesForModelKind:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identityKind];
  v5 = [MEMORY[0x277CD5E48] identityKind];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CD6018];
    v8 = *MEMORY[0x277CD5950];
    v20[0] = *MEMORY[0x277CD5960];
    v20[1] = v8;
    v9 = MEMORY[0x277CBEA60];
    v10 = v20;
LABEL_5:
    v15 = [v9 arrayWithObjects:v10 count:2];
    v16 = [v7 propertySetWithProperties:v15];

    goto LABEL_7;
  }

  v11 = [v3 identityKind];
  v12 = [MEMORY[0x277CD5F08] identityKind];
  v13 = [v11 isEqual:v12];

  v7 = MEMORY[0x277CD6018];
  if (v13)
  {
    v14 = *MEMORY[0x277CD59A8];
    v19[0] = *MEMORY[0x277CD59B8];
    v19[1] = v14;
    v9 = MEMORY[0x277CBEA60];
    v10 = v19;
    goto LABEL_5;
  }

  v16 = [MEMORY[0x277CD6018] emptyPropertySet];
LABEL_7:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)setUserInfoForModelObject:(id)a3 manuallyPinned:(BOOL)a4
{
  v33 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v33;
    v8 = MEMORY[0x277D2B598];
    v9 = MEMORY[0x277CCABB0];
    v10 = [v7 identifiers];
    v11 = [v10 library];
    v12 = [v9 numberWithLongLong:{objc_msgSend(v11, "persistentID")}];
    v13 = [v8 midDataFromAlbumPID:v12];
    [v6 setObject:v13 forKey:@"midData"];

    if (a4)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "keepLocalEnableState")}];
      [v6 setObject:v14 forKey:@"keepLocal"];
    }

    else
    {
      [v6 setObject:&unk_286C8D6D0 forKey:@"keepLocal"];
    }

    v23 = [MEMORY[0x277CD5E48] identityKind];
    v24 = [(NMSMediaSyncInfo *)self _syncInfoModelKindForMPModelKind:v23];
    [v6 setObject:v24 forKey:@"modelKind"];

    v25 = [v7 title];

    if (!v25)
    {
      goto LABEL_14;
    }

    v26 = [v7 title];
    v27 = @"title";
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = v33;
  v16 = MEMORY[0x277D2B598];
  v17 = MEMORY[0x277CCABB0];
  v18 = [v15 identifiers];
  v19 = [v18 library];
  v20 = [v17 numberWithLongLong:{objc_msgSend(v19, "persistentID")}];
  v21 = [v16 midDataFromPlaylistPID:v20];
  [v6 setObject:v21 forKey:@"midData"];

  if (a4)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "keepLocalEnableState")}];
    [v6 setObject:v22 forKey:@"keepLocal"];
  }

  else
  {
    [v6 setObject:&unk_286C8D6D0 forKey:@"keepLocal"];
  }

  v28 = [MEMORY[0x277CD5F08] identityKind];
  v29 = [(NMSMediaSyncInfo *)self _syncInfoModelKindForMPModelKind:v28];
  [v6 setObject:v29 forKey:@"modelKind"];

  v30 = [v15 name];

  if (v30)
  {
    v26 = [v15 name];
    v27 = @"name";
LABEL_13:
    [v6 setObject:v26 forKey:v27];
  }

LABEL_14:

LABEL_15:
  v31 = [v6 copy];
  v32 = [v33 nms_syncInfoContainerIdentifier];
  [(NMSMutableMediaSyncInfo *)self setUserInfo:v31 forContainer:v32];
}

@end
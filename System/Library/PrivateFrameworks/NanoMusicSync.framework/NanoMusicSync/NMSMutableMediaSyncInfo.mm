@interface NMSMutableMediaSyncInfo
+ (id)requiredUserInfoPropertiesForModelKind:(id)kind;
- (BOOL)hasItemsOverStorageLimit;
- (BOOL)hasItemsOverStorageLimitForContainer:(id)container;
- (BOOL)hasItemsWaitingWithoutPauseReason;
- (float)progress;
- (float)progressForContainer:(id)container;
- (id)_info;
- (id)_infoForContainer:(id)container;
- (id)_infoForItem:(id)item;
- (unint64_t)_persistingOptions;
- (unint64_t)downloadPauseReason;
- (unint64_t)downloadPauseReasonForContainer:(id)container;
- (unint64_t)playabilityForContainer:(id)container;
- (unint64_t)status;
- (unint64_t)statusForContainer:(id)container;
- (void)_notifyInfoChanged;
- (void)_updateAggregateInfoIfNeeded;
- (void)_writeInfo;
- (void)setDownloadPauseReason:(unint64_t)reason forItem:(id)item;
- (void)setItems:(id)items forContainer:(id)container;
- (void)setOverStorageLimitBehavior:(unint64_t)behavior forContainer:(id)container;
- (void)setProgressBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes forItem:(id)item;
- (void)setStatus:(unint64_t)status forItem:(id)item;
- (void)setUserInfo:(id)info forContainer:(id)container;
- (void)setUserInfo:(id)info forItem:(id)item;
- (void)setUserInfoForModelObject:(id)object manuallyPinned:(BOOL)pinned;
- (void)synchronize;
@end

@implementation NMSMutableMediaSyncInfo

- (unint64_t)statusForContainer:(id)container
{
  containerCopy = container;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 statusForContainer:containerCopy];

  return v5;
}

- (unint64_t)playabilityForContainer:(id)container
{
  containerCopy = container;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 playabilityForContainer:containerCopy];

  return v5;
}

- (float)progressForContainer:(id)container
{
  containerCopy = container;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v8.receiver = self;
  v8.super_class = NMSMutableMediaSyncInfo;
  [(NMSMediaSyncInfo *)&v8 progressForContainer:containerCopy];
  v6 = v5;

  return v6;
}

- (unint64_t)downloadPauseReasonForContainer:(id)container
{
  containerCopy = container;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v7.receiver = self;
  v7.super_class = NMSMutableMediaSyncInfo;
  v5 = [(NMSMediaSyncInfo *)&v7 downloadPauseReasonForContainer:containerCopy];

  return v5;
}

- (BOOL)hasItemsOverStorageLimitForContainer:(id)container
{
  containerCopy = container;
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  v6.receiver = self;
  v6.super_class = NMSMutableMediaSyncInfo;
  LOBYTE(self) = [(NMSMediaSyncInfo *)&v6 hasItemsOverStorageLimitForContainer:containerCopy];

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

- (void)setItems:(id)items forContainer:(id)container
{
  itemsCopy = items;
  v10 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:container];
  [v10 setObject:itemsCopy forKeyedSubscript:@"itemsIdentifiers"];
  v7 = MEMORY[0x277CCABB0];
  v8 = [itemsCopy count];

  v9 = [v7 numberWithUnsignedInteger:v8];
  [v10 setObject:v9 forKeyedSubscript:@"itemCount"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setOverStorageLimitBehavior:(unint64_t)behavior forContainer:(id)container
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:container];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:behavior];
  [v7 setObject:v6 forKeyedSubscript:@"overStorageLimitBehavior"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setStatus:(unint64_t)status forItem:(id)item
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:item];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:status];
  [v7 setObject:v6 forKeyedSubscript:@"status"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setProgressBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes forItem:(id)item
{
  v10 = [(NMSMutableMediaSyncInfo *)self _infoForItem:item];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:totalBytes];
  [v10 setObject:v8 forKeyedSubscript:@"totalBytes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bytes];
  [v10 setObject:v9 forKeyedSubscript:@"progressBytes"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setDownloadPauseReason:(unint64_t)reason forItem:(id)item
{
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:item];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  [v7 setObject:v6 forKeyedSubscript:@"downloadPauseReason"];

  self->_needsUpdateAggregateInfo = 1;
}

- (void)setUserInfo:(id)info forContainer:(id)container
{
  infoCopy = info;
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForContainer:container];
  [v7 setObject:infoCopy forKeyedSubscript:@"userInfo"];
}

- (void)setUserInfo:(id)info forItem:(id)item
{
  infoCopy = info;
  v7 = [(NMSMutableMediaSyncInfo *)self _infoForItem:item];
  [v7 setObject:infoCopy forKeyedSubscript:@"userInfo"];
}

- (void)synchronize
{
  [(NMSMutableMediaSyncInfo *)self _updateAggregateInfoIfNeeded];
  [(NMSMutableMediaSyncInfo *)self _writeInfo];

  [(NMSMutableMediaSyncInfo *)self _notifyInfoChanged];
}

- (id)_info
{
  info = [(NMSMediaSyncInfo *)self info];

  if (!info)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NMSMediaSyncInfo *)self setInfo:dictionary];
  }

  return [(NMSMediaSyncInfo *)self info];
}

- (id)_infoForContainer:(id)container
{
  containerCopy = container;
  info = [(NMSMediaSyncInfo *)self info];
  v6 = [info objectForKeyedSubscript:@"containers"];
  dictionary = [v6 objectForKeyedSubscript:containerCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _info = [(NMSMutableMediaSyncInfo *)self _info];
    v9 = [_info objectForKeyedSubscript:@"containers"];

    if (!v9)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [_info setObject:dictionary2 forKeyedSubscript:@"containers"];
    }

    v11 = [_info objectForKeyedSubscript:@"containers"];
    [v11 setObject:dictionary forKeyedSubscript:containerCopy];
  }

  return dictionary;
}

- (id)_infoForItem:(id)item
{
  itemCopy = item;
  info = [(NMSMediaSyncInfo *)self info];
  v6 = [info objectForKeyedSubscript:@"items"];
  dictionary = [v6 objectForKeyedSubscript:itemCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    _info = [(NMSMutableMediaSyncInfo *)self _info];
    v9 = [_info objectForKeyedSubscript:@"items"];

    if (!v9)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      [_info setObject:dictionary2 forKeyedSubscript:@"items"];
    }

    v11 = [_info objectForKeyedSubscript:@"items"];
    [v11 setObject:dictionary forKeyedSubscript:itemCopy];
  }

  return dictionary;
}

- (void)_updateAggregateInfoIfNeeded
{
  if (self->_needsUpdateAggregateInfo)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    info = [(NMSMediaSyncInfo *)self info];
    v4 = [info objectForKeyedSubscript:@"containers"];
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
    info2 = [(NMSMediaSyncInfo *)self info];
    v6 = [info2 objectForKeyedSubscript:@"items"];
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
    info3 = [(NMSMediaSyncInfo *)self info];
    [info3 setObject:v8 forKeyedSubscript:@"status"];

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
    info4 = [(NMSMediaSyncInfo *)self info];
    [info4 setObject:v13 forKeyedSubscript:@"cachedProgress"];

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27[3]];
    info5 = [(NMSMediaSyncInfo *)self info];
    [info5 setObject:v15 forKeyedSubscript:@"downloadPauseReason"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:*(v23 + 24)];
    info6 = [(NMSMediaSyncInfo *)self info];
    [info6 setObject:v17 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

    v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v48 + 24)];
    info7 = [(NMSMediaSyncInfo *)self info];
    [info7 setObject:v19 forKeyedSubscript:@"hasItemsOverStorageLimit"];

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  _persistingOptions = [(NMSMutableMediaSyncInfo *)self _persistingOptions];
  info = [(NMSMediaSyncInfo *)self info];
  v7 = [info objectForKeyedSubscript:@"containers"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __37__NMSMutableMediaSyncInfo__writeInfo__block_invoke;
  v36[3] = &unk_27993E3A0;
  v38 = _persistingOptions;
  v8 = dictionary2;
  v37 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v36];

  if ([v8 count])
  {
    [dictionary setObject:v8 forKeyedSubscript:@"containers"];
  }

  if ((_persistingOptions & 4) != 0)
  {
    info2 = [(NMSMediaSyncInfo *)self info];
    v10 = [info2 objectForKeyedSubscript:@"status"];
    [dictionary setObject:v10 forKeyedSubscript:@"status"];

    info3 = [(NMSMediaSyncInfo *)self info];
    v12 = [info3 objectForKeyedSubscript:@"cachedProgress"];
    [dictionary setObject:v12 forKeyedSubscript:@"cachedProgress"];

    info4 = [(NMSMediaSyncInfo *)self info];
    v14 = [info4 objectForKeyedSubscript:@"downloadPauseReason"];
    [dictionary setObject:v14 forKeyedSubscript:@"downloadPauseReason"];

    info5 = [(NMSMediaSyncInfo *)self info];
    v16 = [info5 objectForKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];
    [dictionary setObject:v16 forKeyedSubscript:@"hasItemsWaitingWithoutPauseReason"];

    v17 = MEMORY[0x277CCABB0];
    info6 = [(NMSMediaSyncInfo *)self info];
    v19 = [info6 objectForKeyedSubscript:@"items"];
    v20 = [v17 numberWithUnsignedInteger:{objc_msgSend(v19, "count")}];
    [dictionary setObject:v20 forKeyedSubscript:@"itemCount"];

    info7 = [(NMSMediaSyncInfo *)self info];
    v22 = [info7 objectForKeyedSubscript:@"hasItemsOverStorageLimit"];
    [dictionary setObject:v22 forKeyedSubscript:@"hasItemsOverStorageLimit"];
  }

  v23 = +[NMSyncDefaults sharedDefaults];
  debugSyncInfoEnabled = [v23 debugSyncInfoEnabled];

  if (debugSyncInfoEnabled)
  {
    info8 = [(NMSMediaSyncInfo *)self info];
    [dictionary setObject:info8 forKeyedSubscript:@"debug-info"];
  }

  v26 = +[NMSyncDefaults sharedDefaults];
  target = [(NMSMediaSyncInfo *)self target];
  if (target > 2)
  {
    if ((target - 3) < 2)
    {
      _syncInfoFilePath = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
      [dictionary writeToFile:_syncInfoFilePath atomically:1];
    }
  }

  else if (target)
  {
    if (target == 1)
    {
      [v26 setPodcastsSyncInfo:dictionary];
      info9 = [(NMSMediaSyncInfo *)self info];
      v30 = [info9 objectForKeyedSubscript:@"items"];
      if (v30)
      {
        v39 = @"items";
        info10 = [(NMSMediaSyncInfo *)self info];
        v32 = [info10 objectForKeyedSubscript:@"items"];
        v40[0] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      }

      else
      {
        v33 = MEMORY[0x277CBEC10];
      }

      _syncInfoFilePath2 = [(NMSMediaSyncInfo *)self _syncInfoFilePath];
      [v33 writeToFile:_syncInfoFilePath2 atomically:1];
    }

    else if (target == 2)
    {
      [v26 setAudiobooksSyncInfo:dictionary];
    }
  }

  else
  {
    [v26 setMusicSyncInfo:dictionary];
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
  target = [(NMSMediaSyncInfo *)self target];
  if (target > 4)
  {
    return 0;
  }

  else
  {
    return qword_25B2CEC10[target];
  }
}

- (void)_notifyInfoChanged
{
  _notificationName = [(NMSMediaSyncInfo *)self _notificationName];
  v2 = _notificationName;
  notify_post([_notificationName UTF8String]);
}

+ (id)requiredUserInfoPropertiesForModelKind:(id)kind
{
  v20[2] = *MEMORY[0x277D85DE8];
  kindCopy = kind;
  identityKind = [kindCopy identityKind];
  identityKind2 = [MEMORY[0x277CD5E48] identityKind];
  v6 = [identityKind isEqual:identityKind2];

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
    emptyPropertySet = [v7 propertySetWithProperties:v15];

    goto LABEL_7;
  }

  identityKind3 = [kindCopy identityKind];
  identityKind4 = [MEMORY[0x277CD5F08] identityKind];
  v13 = [identityKind3 isEqual:identityKind4];

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

  emptyPropertySet = [MEMORY[0x277CD6018] emptyPropertySet];
LABEL_7:

  v17 = *MEMORY[0x277D85DE8];

  return emptyPropertySet;
}

- (void)setUserInfoForModelObject:(id)object manuallyPinned:(BOOL)pinned
{
  objectCopy = object;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
    v8 = MEMORY[0x277D2B598];
    v9 = MEMORY[0x277CCABB0];
    identifiers = [v7 identifiers];
    library = [identifiers library];
    v12 = [v9 numberWithLongLong:{objc_msgSend(library, "persistentID")}];
    v13 = [v8 midDataFromAlbumPID:v12];
    [v6 setObject:v13 forKey:@"midData"];

    if (pinned)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "keepLocalEnableState")}];
      [v6 setObject:v14 forKey:@"keepLocal"];
    }

    else
    {
      [v6 setObject:&unk_286C8D6D0 forKey:@"keepLocal"];
    }

    identityKind = [MEMORY[0x277CD5E48] identityKind];
    v24 = [(NMSMediaSyncInfo *)self _syncInfoModelKindForMPModelKind:identityKind];
    [v6 setObject:v24 forKey:@"modelKind"];

    title = [v7 title];

    if (!title)
    {
      goto LABEL_14;
    }

    title2 = [v7 title];
    v27 = @"title";
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = objectCopy;
  v16 = MEMORY[0x277D2B598];
  v17 = MEMORY[0x277CCABB0];
  identifiers2 = [v15 identifiers];
  library2 = [identifiers2 library];
  v20 = [v17 numberWithLongLong:{objc_msgSend(library2, "persistentID")}];
  v21 = [v16 midDataFromPlaylistPID:v20];
  [v6 setObject:v21 forKey:@"midData"];

  if (pinned)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "keepLocalEnableState")}];
    [v6 setObject:v22 forKey:@"keepLocal"];
  }

  else
  {
    [v6 setObject:&unk_286C8D6D0 forKey:@"keepLocal"];
  }

  identityKind2 = [MEMORY[0x277CD5F08] identityKind];
  v29 = [(NMSMediaSyncInfo *)self _syncInfoModelKindForMPModelKind:identityKind2];
  [v6 setObject:v29 forKey:@"modelKind"];

  name = [v15 name];

  if (name)
  {
    title2 = [v15 name];
    v27 = @"name";
LABEL_13:
    [v6 setObject:title2 forKey:v27];
  }

LABEL_14:

LABEL_15:
  v31 = [v6 copy];
  nms_syncInfoContainerIdentifier = [objectCopy nms_syncInfoContainerIdentifier];
  [(NMSMutableMediaSyncInfo *)self setUserInfo:v31 forContainer:nms_syncInfoContainerIdentifier];
}

@end
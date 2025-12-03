@interface CPLSharedRecordMerger
- (CPLSharedRecordMerger)initWithMapping:(id)mapping;
- (void)mergeRecord:(id)record isSharedRecord:(BOOL)sharedRecord inPrivateRecord:(id)privateRecord;
@end

@implementation CPLSharedRecordMerger

- (void)mergeRecord:(id)record isSharedRecord:(BOOL)sharedRecord inPrivateRecord:(id)privateRecord
{
  sharedRecordCopy = sharedRecord;
  recordCopy = record;
  privateRecordCopy = privateRecord;
  recordChangeData = [privateRecordCopy recordChangeData];
  v11 = recordChangeData;
  if (sharedRecordCopy)
  {
    recordChangeData2 = [recordCopy recordChangeData];
  }

  else
  {
    if (recordChangeData)
    {
      recordChangeData3 = recordChangeData;
    }

    else
    {
      recordChangeData3 = [recordCopy recordChangeData];
    }

    v14 = recordChangeData3;

    recordChangeData2 = [recordCopy sharingRecordChangeData];
    v11 = v14;
  }

  if (([privateRecordCopy isMasterChange] & 1) == 0)
  {
    if ([privateRecordCopy supportsResources])
    {
      v15 = [privateRecordCopy propertiesForChangeType:8];
    }

    else
    {
      v15 = 0;
    }

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __68__CPLSharedRecordMerger_mergeRecord_isSharedRecord_inPrivateRecord___block_invoke;
    v41[3] = &unk_1E861B750;
    v42 = v15;
    selfCopy = self;
    v44 = privateRecordCopy;
    v16 = v15;
    [v44 cplCopyPropertiesFromObject:recordCopy withCopyBlock:v41];
  }

  [privateRecordCopy setRecordChangeData:v11];
  [privateRecordCopy setSharingRecordChangeData:recordChangeData2];
  inTrash = [privateRecordCopy inTrash];
  if (!sharedRecordCopy)
  {
    if (inTrash)
    {
      dateDeleted = [privateRecordCopy dateDeleted];
      dateDeleted2 = [recordCopy dateDeleted];
      v26 = dateDeleted;
      v27 = dateDeleted2;
      v28 = v27;
      if (v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      v30 = v29;

      [privateRecordCopy setDateDeleted:v30];
    }

    else
    {
      [privateRecordCopy setDateDeleted:0];
    }

    recordModificationDate = [privateRecordCopy recordModificationDate];
    recordModificationDate2 = [recordCopy recordModificationDate];
    v33 = recordModificationDate;
    v34 = recordModificationDate2;
    if (v33)
    {
      goto LABEL_32;
    }

LABEL_33:
    v39 = v34;
    v34 = v39;
    goto LABEL_34;
  }

  if (inTrash)
  {
    dateDeleted3 = [privateRecordCopy dateDeleted];
    dateDeleted4 = [recordCopy dateDeleted];
    v20 = dateDeleted3;
    v21 = dateDeleted4;
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        v23 = [v20 laterDate:v21];
      }

      else
      {
        v23 = v20;
      }
    }

    else
    {
      v23 = v21;
    }

    v35 = v23;

    [privateRecordCopy setDateDeleted:v35];
  }

  else
  {
    [privateRecordCopy setDateDeleted:0];
  }

  recordModificationDate3 = [privateRecordCopy recordModificationDate];
  recordModificationDate4 = [recordCopy recordModificationDate];
  v33 = recordModificationDate3;
  v38 = recordModificationDate4;
  v34 = v38;
  if (!v33)
  {
    goto LABEL_33;
  }

  if (!v38)
  {
LABEL_32:
    v39 = v33;
    v33 = v39;
    goto LABEL_34;
  }

  v39 = [v33 laterDate:v38];
LABEL_34:
  v40 = v39;

  [privateRecordCopy setRecordModificationDate:v40];
}

uint64_t __68__CPLSharedRecordMerger_mergeRecord_isSharedRecord_inPrivateRecord___block_invoke(void *a1, void *a2, void *a3, void *a4, uint64_t a5, char *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (sel_recordModificationDate == a6)
  {
    v17 = [v10 recordModificationDate];
    v18 = [v11 recordModificationDate];
    v19 = v18;
    if ((v17 || !v18) && (!v17 || !v18 || [v17 compare:v18] != -1))
    {

LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }

    [v10 setRecordModificationDate:v19];
  }

  else if (sel_recordChangeData != a6 && sel_sharingRecordChangeData != a6 && sel_sharingScopeIdentifier != a6)
  {
    v15 = a1[4];
    if (v15)
    {
      if ([v15 containsObject:v12])
      {
        goto LABEL_21;
      }
    }

    v16 = a1[6];
    if (([*(a1[5] + 8) shouldUpdatePropertyOnPrivateRecord:v12 recordClass:objc_opt_class()] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v20 = 1;
LABEL_22:

  return v20;
}

- (CPLSharedRecordMerger)initWithMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = CPLSharedRecordMerger;
  v6 = [(CPLSharedRecordMerger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapping, mapping);
  }

  return v7;
}

@end
@interface HDCopyWorkoutTotalsToPrimaryActivity
@end

@implementation HDCopyWorkoutTotalsToPrimaryActivity

uint64_t ___HDCopyWorkoutTotalsToPrimaryActivity_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C90](a2, 1);
  if ([v5 isEqualToString:@"HKIndoorWorkout"])
  {
    v6 = 32;
LABEL_7:
    *(*(*(a1 + v6) + 8) + 24) = v4;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"HKSwimmingLocationType"])
  {
    v6 = 40;
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"HKLapLength"])
  {
    v6 = 48;
    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

BOOL ___HDCopyWorkoutTotalsToPrimaryActivity_block_invoke_602(void *a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x22AAC6CA0](a2, 1);
  v7 = HDSQLiteColumnAsInt64();
  v8 = a1[4];
  v9 = *(*(a1[5] + 8) + 24);
  v10 = *(*(a1[6] + 8) + 24);
  v11 = *(*(a1[7] + 8) + 24);
  v47 = 0;
  v12 = v8;
  v13 = HDSQLiteColumnAsInt64();
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  v63[3] = 3;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v62[3] = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__155;
  v60[4] = __Block_byref_object_dispose__155;
  v61 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_2;
  v59[3] = &__block_descriptor_64_e23_v16__0__sqlite3_stmt__8l;
  v59[4] = v13;
  v59[5] = v9;
  v59[6] = v10;
  v59[7] = v11;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_3;
  v58[3] = &unk_278628020;
  v58[4] = v63;
  v58[5] = v62;
  v58[8] = v10;
  v58[9] = v11;
  v58[6] = v60;
  v58[7] = v9;
  if ([v12 executeCachedStatementForKey:&_HDInsertPrimaryActivityForRowAndMetadata_metadataKey error:&v47 SQLGenerator:&__block_literal_global_187 bindingHandler:v59 enumerationHandler:v58])
  {
    v14 = MEMORY[0x22AAC6C30](a2, 1);
    v15 = HDSQLiteColumnAsInt64();
    v16 = MEMORY[0x22AAC6C50](a2, 3);
    v17 = MEMORY[0x22AAC6C50](a2, 4);
    v18 = MEMORY[0x22AAC6C50](a2, 5);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_5;
    v48[3] = &unk_278628048;
    v19 = v14;
    v53 = v13;
    v54 = v15;
    v49 = v19;
    v50 = v63;
    v51 = v62;
    v52 = v60;
    v55 = v16;
    v56 = v17;
    v57 = v18;
    v20 = [v12 executeCachedStatementForKey:&_HDInsertPrimaryActivityForRowAndMetadata_insertionKey error:&v47 SQLGenerator:&__block_literal_global_636 bindingHandler:v48 enumerationHandler:0];
    if (v20)
    {
      v21 = [v12 lastInsertRowID];
      v22 = [v21 unsignedLongLongValue];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
  }

  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v63, 8);

  v23 = v47;
  if (v20)
  {
    v24 = a1[4];
    v46 = 0;
    v25 = _HDInsertStatisticsForColumnAndDataType(a2, 6, 10, v22, v24, &v46, 1.0);
    v26 = v46;
    v27 = v26;
    if (v25)
    {
      v28 = a1[4];
      v45 = v26;
      v29 = _HDInsertStatisticsForColumnAndDataType(a2, 7, 9, v22, v28, &v45, 1.0);
      v30 = v45;

      if (v29)
      {
        v31 = a1[4];
        v44 = v30;
        v32 = _HDInsertStatisticsForColumnAndDataType(a2, 8, 111, v22, v31, &v44, 1.0);
        v27 = v44;

        if ((v32 & 1) == 0)
        {
          v39 = @"Failed to insert statistics for swimming strokes";
          goto LABEL_16;
        }

        v33 = a1[4];
        v43 = v27;
        v34 = _HDInsertStatisticsForColumnAndDataType(a2, 9, 12, v22, v33, &v43, 1.0);
        v30 = v43;

        if (v34)
        {
          v35 = _HDDistanceTypeCodeForActivityType(v7);
          v36 = a1[4];
          v42 = v30;
          v37 = _HDInsertStatisticsForColumnAndDataType(a2, 10, v35, v22, v36, &v42, 1000.0);
          v27 = v42;

          if (v37)
          {
            ++*(*(a1[8] + 8) + 24);
            v38 = 1;
LABEL_19:

            goto LABEL_20;
          }

          v39 = @"Failed to insert statistics for distance";
LABEL_16:
          v38 = _HDAssignWorkoutDatabaseMigrationError(a3, v39, v27, v6);
          goto LABEL_19;
        }

        v40 = @"Failed to insert statistics for flights climbed";
      }

      else
      {
        v40 = @"Failed to insert statistics for basal energy";
      }

      v38 = _HDAssignWorkoutDatabaseMigrationError(a3, v40, v30, v6);
      v27 = v30;
      goto LABEL_19;
    }

    v39 = @"Failed to insert statistics for active energy";
    goto LABEL_16;
  }

  v38 = _HDAssignWorkoutDatabaseMigrationError(a3, @"Failed to insert primary activity", v23, v6);
LABEL_20:

  return v38;
}

@end
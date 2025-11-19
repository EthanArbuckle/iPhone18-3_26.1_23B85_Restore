@interface HDMigrateECGClassificationAverageHRAndPayload
@end

@implementation HDMigrateECGClassificationAverageHRAndPayload

uint64_t ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v58 = HDSQLiteColumnAsInt64();
  v56 = MEMORY[0x22AAC6C30](a2, 1);
  v4 = MEMORY[0x22AAC6C50](a2, 2);
  v55 = HDSQLiteColumnAsInt64();
  v5 = MEMORY[0x22AAC6C50](a2, 4);
  v6 = MEMORY[0x22AAC6C50](a2, 5);
  v57 = MEMORY[0x22AAC6C30](a2, 6);
  if (MEMORY[0x22AAC6CD0](a2, 7))
  {
    v7 = 0;
  }

  else
  {
    v7 = HDSQLiteColumnAsInt64();
  }

  v8 = MEMORY[0x22AAC6CD0](a2, 8);
  v9 = MEMORY[0x22AAC6C50](a2, 8);
  v10 = MEMORY[0x22AAC6CD0](a2, 9);
  v11 = HDSQLiteColumnAsInt64();
  v12 = [*(a1 + 32) protectedDatabase];
  v13 = *(a1 + 40);
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_2;
  v73[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v73[4] = v58;
  v14 = [v12 executeSQL:v13 error:a3 bindingHandler:v73 enumerationHandler:0];

  if (!v14)
  {
    v50 = 0;
    goto LABEL_82;
  }

  if (v11 > 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10;
  }

  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = v11;
  }

  v17 = [*(a1 + 32) protectedDatabase];
  v18 = *(a1 + 48);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_3;
  v66[3] = &unk_278619DD0;
  v68 = v58;
  v67 = v57;
  v69 = v7;
  v72 = v8 ^ 1;
  v70 = v9;
  v71 = v16;
  v19 = [v17 executeSQL:v18 error:a3 bindingHandler:v66 enumerationHandler:0];

  if (!v19)
  {
    v50 = 0;
    goto LABEL_81;
  }

  if (v11)
  {
    v20 = v10;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    goto LABEL_80;
  }

  v63 = *(a1 + 32);
  v62 = v56;
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v22 = [&unk_283CAEEC0 countByEnumeratingWithState:&v99 objects:v103 count:16];
  if (!v22)
  {
    goto LABEL_49;
  }

  v23 = *v100;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v100 != v23)
      {
        objc_enumerationMutation(&unk_283CAEEC0);
      }

      v25 = *(*(&v99 + 1) + 8 * i);
      v26 = [v25 integerValue];
      if (v26 > 204)
      {
        if (v26 > 206)
        {
          if (v26 == 207)
          {
            if ((v11 & 4) == 0)
            {
              continue;
            }

LABEL_46:
            [v21 setObject:&unk_283CB2448 forKeyedSubscript:v25];
            continue;
          }

          if (v26 == 211 && (v11 & 0x40) != 0)
          {
            goto LABEL_46;
          }
        }

        else if (v26 == 205)
        {
          if ((v11 & 2) != 0)
          {
            goto LABEL_46;
          }
        }

        else if ((v11 & 0x10) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 > 201)
      {
        if (v26 == 202)
        {
          if ((v11 & 0x200) != 0)
          {
            goto LABEL_46;
          }
        }

        else if (v26 == 204 && (v11 & 0x100) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 == 167)
      {
        if ((v11 & 8) != 0)
        {
          goto LABEL_46;
        }
      }

      else if (v26 == 201 && (v11 & 0x80) != 0)
      {
        goto LABEL_46;
      }
    }

    v22 = [&unk_283CAEEC0 countByEnumeratingWithState:&v99 objects:v103 count:16];
  }

  while (v22);
LABEL_49:
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v21;
  v27 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
  if (v27)
  {
    v61 = *v100;
    while (2)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v100 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v99 + 1) + 8 * j);
        v98 = [v29 integerValue];
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:&v98 length:1];
        v31 = [MEMORY[0x277CCAD78] hk_v3UUIDWithNameSpace:v62 name:v30];
        v94 = 0;
        v95 = &v94;
        v96 = 0x2020000000;
        v97 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke;
        aBlock[3] = &unk_278614620;
        aBlock[4] = &v94;
        v32 = _Block_copy(aBlock);
        v33 = [v63 protectedDatabase];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_2;
        v91[3] = &unk_278614860;
        v34 = v31;
        v92 = v34;
        v35 = [v33 executeSQL:@"SELECT COUNT(*) FROM objects WHERE uuid=?" error:a3 bindingHandler:v91 enumerationHandler:v32];

        if (v35)
        {
          if (v95[3] <= 0)
          {
            v37 = [v63 protectedDatabase];
            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_3;
            v87[3] = &unk_278619A20;
            v88 = v34;
            v89 = v55;
            v90 = v4;
            v38 = [v37 executeSQL:@"INSERT INTO objects (uuid error:provenance bindingHandler:creation_date) VALUES (? enumerationHandler:{?, ?)", a3, v87, 0}];

            v39 = [v63 protectedDatabase];
            v40 = [v39 lastInsertRowID];

            if (v40)
            {
              v41 = v38;
            }

            else
            {
              v41 = 0;
            }

            if (v41)
            {
              v42 = [v63 protectedDatabase];
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_4;
              v82[3] = &unk_2786214F8;
              v43 = v40;
              v85 = v5;
              v86 = v6;
              v83 = v43;
              v84 = v29;
              v44 = [v42 executeSQL:@"INSERT INTO samples (data_id error:start_date bindingHandler:end_date enumerationHandler:{data_type) VALUES (?, ?, ?, ?)", a3, v82, 0}];

              if (v44)
              {
                v45 = [v63 protectedDatabase];
                v78[0] = MEMORY[0x277D85DD0];
                v78[1] = 3221225472;
                v78[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_5;
                v78[3] = &unk_278613528;
                v46 = v43;
                v79 = v46;
                v80 = obj;
                v81 = v29;
                v47 = [v45 executeSQL:@"INSERT INTO category_samples (data_id error:value) VALUES (? bindingHandler:?)" enumerationHandler:{a3, v78, 0}];

                if (v47)
                {
                  v48 = [v63 protectedDatabase];
                  v74[0] = MEMORY[0x277D85DD0];
                  v74[1] = 3221225472;
                  v74[2] = ___HDInsertECGSymptomsAndCreateAssociationWithECGSamples_block_invoke_6;
                  v74[3] = &unk_278619A20;
                  v76 = v58;
                  v75 = v46;
                  v77 = v55;
                  v49 = [v48 executeSQL:@"INSERT INTO correlations (correlation error:object bindingHandler:provenance) VALUES (? enumerationHandler:{?, ?)", a3, v74, 0}];

                  v36 = v49 ^ 1;
                }

                else
                {
                  v36 = 1;
                }
              }

              else
              {
                v36 = 1;
              }
            }

            else
            {
              v36 = 1;
            }
          }

          else
          {
            v36 = 3;
          }
        }

        else
        {
          v36 = 1;
        }

        _Block_object_dispose(&v94, 8);
        if (v36 != 3 && v36)
        {
          v50 = 0;
          goto LABEL_79;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v99 objects:v103 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v50 = 1;
LABEL_79:

  if (v50)
  {
LABEL_80:
    v51 = [*(a1 + 32) protectedDatabase];
    v52 = *(a1 + 56);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_4;
    v65[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v65[4] = v58;
    v50 = [v51 executeSQL:v52 error:a3 bindingHandler:v65 enumerationHandler:0];
  }

LABEL_81:

LABEL_82:
  v53 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t ___HDMigrateECGClassificationAverageHRAndPayload_block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  v4 = [*(a1 + 32) bytes];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "";
  }

  sqlite3_bind_blob(a2, 2, v5, [*(a1 + 32) length], 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 3, *(a1 + 48));
  if (*(a1 + 72) == 1)
  {
    sqlite3_bind_double(a2, 4, *(a1 + 56));
  }

  else
  {
    sqlite3_bind_null(a2, 4);
  }

  v6 = *(a1 + 64);

  return sqlite3_bind_int64(a2, 5, v6);
}

@end
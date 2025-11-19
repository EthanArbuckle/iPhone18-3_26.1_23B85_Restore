@interface PDSDaemonListener
- (PDSDaemonListener)initWithClientIDs:(id)a3 entryStore:(id)a4 userTracker:(id)a5;
- (PDSDaemonListener)initWithEntryStore:(id)a3 userTracker:(id)a4;
- (void)activeUsersWithClientID:(id)a3 withCompletion:(id)a4;
- (void)batchUpdateEntries:(id)a3 forClientID:(id)a4 withCompletion:(id)a5;
- (void)entriesForClientID:(id)a3 withCompletion:(id)a4;
- (void)entriesForUser:(id)a3 clientID:(id)a4 withCompletion:(id)a5;
- (void)removeAllEntriesForUser:(id)a3 withClientID:(id)a4 withCompletion:(id)a5;
- (void)storeEntries:(id)a3 deleteEntries:(id)a4 withCompletion:(id)a5;
- (void)usersWithClientID:(id)a3 withCompletion:(id)a4;
@end

@implementation PDSDaemonListener

- (PDSDaemonListener)initWithEntryStore:(id)a3 userTracker:(id)a4
{
  result = [(PDSDaemonListener *)self initWithClientIDs:&unk_286FBBBE8 entryStore:a3 userTracker:a4];
  if (result)
  {
    result->_bypassClientIDCheck = 1;
  }

  return result;
}

- (PDSDaemonListener)initWithClientIDs:(id)a3 entryStore:(id)a4 userTracker:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [PDSDaemonListener initWithClientIDs:entryStore:userTracker:];
  }

  if ([v9 count])
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    [PDSDaemonListener initWithClientIDs:entryStore:userTracker:];
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  [PDSDaemonListener initWithClientIDs:entryStore:userTracker:];
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v11)
  {
    goto LABEL_6;
  }

LABEL_11:
  [PDSDaemonListener initWithClientIDs:entryStore:userTracker:];
LABEL_6:
  v15.receiver = self;
  v15.super_class = PDSDaemonListener;
  v12 = [(PDSDaemonListener *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIDs, a3);
    objc_storeStrong(&v13->_entryStore, a4);
    objc_storeStrong(&v13->_userTracker, a5);
    v13->_bypassClientIDCheck = 0;
  }

  return v13;
}

- (void)storeEntries:(id)a3 deleteEntries:(id)a4 withCompletion:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v60 = v10;
    if ([(PDSDaemonListener *)self bypassClientIDCheck])
    {
      goto LABEL_4;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v40 = v8;
    v41 = [v40 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v80;
LABEL_37:
      v44 = 0;
      while (1)
      {
        if (*v80 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v79 + 1) + 8 * v44);
        v46 = [(PDSDaemonListener *)self clientIDs];
        v47 = [v45 clientID];
        v48 = [v46 containsObject:v47];

        if (!v48)
        {
          break;
        }

        if (v42 == ++v44)
        {
          v42 = [v40 countByEnumeratingWithState:&v79 objects:v87 count:16];
          if (v42)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_43:

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v40 = v9;
      v49 = [v40 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (!v49)
      {
LABEL_51:

LABEL_4:
        if ([v8 count] && objc_msgSend(v9, "count"))
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v12 = v8;
          v13 = [v12 countByEnumeratingWithState:&v71 objects:v85 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v72;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v72 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v71 + 1) + 8 * i) registration];
                [v11 addObject:v17];
              }

              v14 = [v12 countByEnumeratingWithState:&v71 objects:v85 count:16];
            }

            while (v14);
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v18 = v9;
          v19 = [v18 countByEnumeratingWithState:&v67 objects:v84 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v68;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v68 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v67 + 1) + 8 * j) registration];
                v24 = [v11 containsObject:v23];

                if (v24)
                {

                  v57 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-305 userInfo:0];
                  v10 = v60;
                  v60[2](v60, v57);

                  goto LABEL_58;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v67 objects:v84 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }
        }

        v59 = v9;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v25 = v8;
        v26 = [v25 countByEnumeratingWithState:&v63 objects:v83 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v64;
          do
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v64 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v63 + 1) + 8 * k);
              if ([v30 state] == 1)
              {
                v31 = [(PDSDaemonListener *)self userTracker];
                v32 = [v30 user];
                v62 = 0;
                v33 = [v31 validUser:v32 withError:&v62];
                v34 = v62;

                if ((v33 & 1) == 0)
                {
                  v10 = v60;
                  v60[2](v60, v34);

                  v9 = v59;
                  goto LABEL_58;
                }
              }

              else
              {
                v34 = 0;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v63 objects:v83 count:16];
          }

          while (v27);
        }

        v35 = [(PDSDaemonListener *)self entryStore];
        v61 = 0;
        v9 = v59;
        [v35 storeEntries:v25 deleteEntries:v59 withError:&v61];
        v36 = v61;

        if (v36)
        {
          v37 = MEMORY[0x277CCA9B8];
          v38 = [v36 domain];
          v39 = [v37 errorWithDomain:v38 code:objc_msgSend(v36 userInfo:{"code"), 0}];
        }

        else
        {
          v39 = 0;
        }

        v10 = v60;
        v60[2](v60, v39);

        goto LABEL_57;
      }

      v50 = v49;
      v51 = *v76;
LABEL_45:
      v52 = 0;
      while (1)
      {
        if (*v76 != v51)
        {
          objc_enumerationMutation(v40);
        }

        v53 = *(*(&v75 + 1) + 8 * v52);
        v54 = [(PDSDaemonListener *)self clientIDs];
        v55 = [v53 clientID];
        v56 = [v54 containsObject:v55];

        if (!v56)
        {
          break;
        }

        if (v50 == ++v52)
        {
          v50 = [v40 countByEnumeratingWithState:&v75 objects:v86 count:16];
          if (v50)
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }
      }
    }

    v10 = v60;

    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    v10[2](v10, v36);
LABEL_57:

    goto LABEL_58;
  }

  v10[2](v10, 0);
LABEL_58:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)batchUpdateEntries:(id)a3 forClientID:(id)a4 withCompletion:(id)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v55 = v9;
  v54 = a5;
  if (![(PDSDaemonListener *)self bypassClientIDCheck])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v71 objects:v78 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v72;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v72 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v71 + 1) + 8 * i);
          v17 = [(PDSDaemonListener *)self clientIDs];
          v18 = [v16 clientID];
          v19 = [v17 containsObject:v18];

          if (!v19)
          {

            v31 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
            v48 = v54;
            (*(v54 + 2))(v54, v31);
            goto LABEL_46;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v71 objects:v78 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v20 = v10;
  v21 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v68;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v68 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v67 + 1) + 8 * j);
        v26 = [(PDSDaemonListener *)self userTracker];
        v27 = [v25 user];
        v66 = 0;
        v28 = [v26 validUser:v27 withError:&v66];
        v29 = v66;

        if ((v28 & 1) == 0)
        {
          v48 = v54;
          (*(v54 + 2))(v54, v29);

          v31 = v20;
          goto LABEL_46;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v30 = [(PDSDaemonListener *)self entryStore];
  v31 = [v30 entriesWithClientID:v55];

  if ([v31 count])
  {
    v53 = v10;
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v33 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v34 = v31;
    v35 = [v34 countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v62;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v62 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v61 + 1) + 8 * k);
          if (([v20 containsObject:{v39, v53}] & 1) == 0)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v36);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v40 = v20;
    v41 = [v40 countByEnumeratingWithState:&v57 objects:v75 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v58;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v58 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v57 + 1) + 8 * m);
          if (([v34 containsObject:{v45, v53}] & 1) == 0)
          {
            [v32 addObject:v45];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v57 objects:v75 count:16];
      }

      while (v42);
    }

    v46 = [(PDSDaemonListener *)self entryStore];
    v56 = 0;
    [v46 storeEntries:v32 deleteEntries:v33 withError:&v56];
    v47 = v56;

    v10 = v53;
  }

  else
  {
    v32 = [(PDSDaemonListener *)self entryStore];
    v65 = 0;
    [v32 storeEntries:v20 deleteEntries:0 withError:&v65];
    v47 = v65;
  }

  v48 = v54;
  if (v47)
  {
    v49 = MEMORY[0x277CCA9B8];
    v50 = [v47 domain];
    v51 = [v49 errorWithDomain:v50 code:objc_msgSend(v47 userInfo:{"code"), 0}];
  }

  else
  {
    v51 = 0;
  }

  (*(v54 + 2))(v54, v51);

LABEL_46:
  v52 = *MEMORY[0x277D85DE8];
}

- (void)removeAllEntriesForUser:(id)a3 withClientID:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[PDSDaemonListener bypassClientIDCheck](self, "bypassClientIDCheck") || (-[PDSDaemonListener clientIDs](self, "clientIDs"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 containsObject:v9], v11, (v12 & 1) != 0))
  {
    v13 = [(PDSDaemonListener *)self entryStore];
    v18 = 0;
    [v13 updateEntryState:2 forUser:v8 clientID:v9 withError:&v18];
    v14 = v18;

    if (v14)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [v14 domain];
      v17 = [v15 errorWithDomain:v16 code:objc_msgSend(v14 userInfo:{"code"), 0}];
    }

    else
    {
      v17 = 0;
    }

    v10[2](v10, v17);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    v10[2](v10, v14);
  }
}

- (void)activeUsersWithClientID:(id)a3 withCompletion:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (-[PDSDaemonListener bypassClientIDCheck](self, "bypassClientIDCheck") || (-[PDSDaemonListener clientIDs](self, "clientIDs"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v14], v7, (v8 & 1) != 0))
  {
    v9 = [v14 isEqualToString:*MEMORY[0x277D37B10]];
    v10 = [(PDSDaemonListener *)self entryStore];
    v11 = v10;
    if (v9)
    {
      [v10 activeUsers];
    }

    else
    {
      [v10 activeUsersWithClientID:v14];
    }
    v12 = ;

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v6[2](v6, v13, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    (v6)[2](v6, 0, v12);
  }
}

- (void)usersWithClientID:(id)a3 withCompletion:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (-[PDSDaemonListener bypassClientIDCheck](self, "bypassClientIDCheck") || (-[PDSDaemonListener clientIDs](self, "clientIDs"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v14], v7, (v8 & 1) != 0))
  {
    v9 = [v14 isEqualToString:*MEMORY[0x277D37B10]];
    v10 = [(PDSDaemonListener *)self entryStore];
    v11 = v10;
    if (v9)
    {
      [v10 users];
    }

    else
    {
      [v10 usersWithClientID:v14];
    }
    v12 = ;

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    v6[2](v6, v13, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    (v6)[2](v6, 0, v12);
  }
}

- (void)entriesForUser:(id)a3 clientID:(id)a4 withCompletion:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (-[PDSDaemonListener bypassClientIDCheck](self, "bypassClientIDCheck") || (-[PDSDaemonListener clientIDs](self, "clientIDs"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v8], v10, (v11 & 1) != 0))
  {
    v12 = [v8 isEqualToString:*MEMORY[0x277D37B10]];
    v13 = [(PDSDaemonListener *)self entryStore];
    v14 = v13;
    if (v12)
    {
      [v13 entriesForUser:v16];
    }

    else
    {
      [v13 entriesForUser:v16 withClientID:v8];
    }
    v15 = ;

    v9[2](v9, v15, 0);
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    (v9)[2](v9, 0, v15);
  }
}

- (void)entriesForClientID:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (-[PDSDaemonListener bypassClientIDCheck](self, "bypassClientIDCheck") || (-[PDSDaemonListener clientIDs](self, "clientIDs"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v13], v7, (v8 & 1) != 0))
  {
    v9 = [v13 isEqualToString:*MEMORY[0x277D37B10]];
    v10 = [(PDSDaemonListener *)self entryStore];
    v11 = v10;
    if (v9)
    {
      [v10 entries];
    }

    else
    {
      [v10 entriesWithClientID:v13];
    }
    v12 = ;

    v6[2](v6, v12, 0);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B20] code:-303 userInfo:0];
    (v6)[2](v6, 0, v12);
  }
}

- (void)initWithClientIDs:entryStore:userTracker:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"clientIDs" object:? file:? lineNumber:? description:?];
}

- (void)initWithClientIDs:entryStore:userTracker:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"clientIDs.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)initWithClientIDs:entryStore:userTracker:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"entryStore" object:? file:? lineNumber:? description:?];
}

- (void)initWithClientIDs:entryStore:userTracker:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"userTracker" object:? file:? lineNumber:? description:?];
}

@end
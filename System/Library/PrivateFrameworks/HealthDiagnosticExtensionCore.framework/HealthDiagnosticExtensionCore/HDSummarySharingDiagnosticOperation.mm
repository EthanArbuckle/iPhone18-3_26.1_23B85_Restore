@interface HDSummarySharingDiagnosticOperation
- (void)_reportDiagnosticsForProfileIdentifier:(id)a3;
- (void)_reportHeaderWithProfileIdentifiers:(id)a3;
- (void)_reportInvitationsForPrimaryProfile;
- (void)_reportProfileInformationForProfileIdentifier:(id)a3;
- (void)_reportSharedSummariesForProfileIdentifier:(id)a3 committedTransactions:(BOOL)a4;
- (void)run;
@end

@implementation HDSummarySharingDiagnosticOperation

- (void)run
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [objc_alloc(MEMORY[0x277CCD7D0]) initWithHealthStore:v3];
  v5 = dispatch_semaphore_create(0);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__HDSummarySharingDiagnosticOperation_run__block_invoke;
  v17[3] = &unk_2796C0D98;
  v17[4] = self;
  v19 = &v20;
  v6 = v5;
  v18 = v6;
  [v4 fetchAllProfilesWithCompletion:v17];
  v7 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch profiles"];
  }

  [(HDSummarySharingDiagnosticOperation *)self _reportHeaderWithProfileIdentifiers:v21[5]];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v21[5];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v26 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(HDSummarySharingDiagnosticOperation *)self _reportDiagnosticsForProfileIdentifier:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v26 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v20, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __42__HDSummarySharingDiagnosticOperation_run__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    [*(a1 + 32) appendFormat:@"Error listing profiles: %@", a3];
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reportHeaderWithProfileIdentifiers:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HDDiagnosticOperation *)self appendString:@"Active invitations:"];
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCDA78]) initWithHealthStore:v6];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__HDSummarySharingDiagnosticOperation__reportHeaderWithProfileIdentifiers___block_invoke;
  v24[3] = &unk_2796C0DC0;
  v8 = v7;
  v25 = v8;
  v26 = self;
  v9 = v5;
  v27 = v9;
  [v8 fetchSharingEntriesWithCompletion:v24];
  v10 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch active invitations"];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendString:@"Summary Sharing profiles:"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v12)
  {

LABEL_15:
    [(HDDiagnosticOperation *)self appendString:@"No Summary Sharing profiles"];
    goto LABEL_16;
  }

  v13 = v12;
  v19 = v6;
  v14 = 0;
  v15 = *v21;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v21 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v20 + 1) + 8 * i);
      if ([v17 type] == 2)
      {
        [(HDDiagnosticOperation *)self appendFormat:@"%@", v17];
        v14 = 1;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  }

  while (v13);

  v6 = v19;
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendStrongSeparator];

  v18 = *MEMORY[0x277D85DE8];
}

intptr_t __75__HDSummarySharingDiagnosticOperation__reportHeaderWithProfileIdentifiers___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    [*(a1 + 40) appendFormat:@"Error fetching active invitations: %@", a3];
    goto LABEL_18;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) sharingEntries];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {

LABEL_17:
    [*(a1 + 40) appendString:@"There are no active summary sharing invitations"];
    goto LABEL_18;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      if (![v10 type] && (!objc_msgSend(v10, "status") || objc_msgSend(v10, "status") == 1))
      {
        v11 = *(a1 + 40);
        v12 = _HKSummarySharingEntryToDiagnosticsString(v10);
        [v11 appendString:v12];

        v7 = 1;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);

  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  result = dispatch_semaphore_signal(*(a1 + 48));
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_reportDiagnosticsForProfileIdentifier:(id)a3
{
  v4 = a3;
  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendString:@"    ****"];
  [(HDDiagnosticOperation *)self appendFormat:@"    **** %@", v4];
  [(HDDiagnosticOperation *)self appendString:@"    ****"];
  [(HDDiagnosticOperation *)self appendNewline];
  if ([v4 type] == 1)
  {
    [(HDDiagnosticOperation *)self appendSeparator];
    [(HDSummarySharingDiagnosticOperation *)self _reportInvitationsForPrimaryProfile];
  }

  else
  {
    [(HDSummarySharingDiagnosticOperation *)self _reportProfileInformationForProfileIdentifier:v4];
  }

  [(HDDiagnosticOperation *)self appendSeparator];
  [(HDSummarySharingDiagnosticOperation *)self _reportSharedSummariesForProfileIdentifier:v4 committedTransactions:1];
  [(HDSummarySharingDiagnosticOperation *)self _reportSharedSummariesForProfileIdentifier:v4 committedTransactions:0];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
}

- (void)_reportProfileInformationForProfileIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCD7D0]) initWithHealthStore:v6];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __85__HDSummarySharingDiagnosticOperation__reportProfileInformationForProfileIdentifier___block_invoke;
  v13 = &unk_2796C0DE8;
  v14 = self;
  v8 = v5;
  v15 = v8;
  [v7 fetchSharingInformationForProfileIdentifier:v4 completion:&v10];

  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting to fetch profile sharing information", v10, v11, v12, v13, v14];
  }
}

void __85__HDSummarySharingDiagnosticOperation__reportProfileInformationForProfileIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    [*(a1 + 32) appendFormat:@"Creation date: %@", v10];
  }

  if (v7)
  {
    v9 = @"Owner participant set";
LABEL_5:
    [*(a1 + 32) appendString:v9];
    goto LABEL_7;
  }

  if (!v8)
  {
    v9 = @"Owner participant not set";
    goto LABEL_5;
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_reportInvitationsForPrimaryProfile
{
  v55 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Sharing Invitations:"];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x2810000000;
  v50[3] = &unk_2515ECA67;
  v51 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v7 = [objc_alloc(MEMORY[0x277CCDA78]) initWithHealthStore:v6];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke;
  v42[3] = &unk_2796C0E38;
  v43 = v7;
  v23 = v6;
  v44 = v23;
  v8 = v5;
  v45 = v8;
  v49 = v50;
  v25 = v3;
  v46 = v25;
  v47 = self;
  v27 = v4;
  v48 = v27;
  v24 = v43;
  [v43 fetchSharingEntriesWithCompletion:v42];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v8, v9))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect invitations"];
  }

  if ([v25 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v25;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v10)
    {
      v26 = *v39;
      do
      {
        v28 = v10;
        for (i = 0; i != v28; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          v13 = _HKSummarySharingEntryToDiagnosticsString(v12);
          [(HDDiagnosticOperation *)self appendString:v13];

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = [obj objectForKeyedSubscript:v12];
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v53 count:16];
          if (v15)
          {
            v16 = *v35;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v35 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                [(HDDiagnosticOperation *)self appendFormat:@"  %@", *(*(&v34 + 1) + 8 * j), v23];
              }

              v15 = [v14 countByEnumeratingWithState:&v34 objects:v53 count:16];
            }

            while (v15);
          }

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v18 = [v27 objectForKeyedSubscript:v12];
          v19 = [v18 countByEnumeratingWithState:&v30 objects:v52 count:16];
          if (v19)
          {
            v20 = *v31;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                [(HDDiagnosticOperation *)self appendFormat:@"  %@ (delete on commit)", *(*(&v30 + 1) + 8 * k)];
              }

              v19 = [v18 countByEnumeratingWithState:&v30 objects:v52 count:16];
            }

            while (v19);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v10);
    }
  }

  else
  {
    [(HDDiagnosticOperation *)self appendString:@"There are no shared summary invitations in profile"];
  }

  [(HDDiagnosticOperation *)self appendNewline];

  _Block_object_dispose(v50, 8);
  v22 = *MEMORY[0x277D85DE8];
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = [*(a1 + 32) sharingEntries];
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          if (![v9 type])
          {
            v10 = objc_alloc(MEMORY[0x277CCD988]);
            v11 = [v9 UUID];
            v12 = [v10 initForInvitationUUID:v11];

            v13 = [objc_alloc(MEMORY[0x277CCD978]) initWithHealthStore:*(a1 + 40) recipientIdentifier:v12];
            dispatch_group_enter(*(a1 + 48));
            v22[0] = MEMORY[0x277D85DD0];
            v22[1] = 3221225472;
            v22[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_2;
            v22[3] = &unk_2796C0E10;
            v27 = *(a1 + 80);
            v23 = *(a1 + 56);
            v24 = v9;
            v25 = *(a1 + 64);
            v26 = *(a1 + 48);
            [v13 fetchSharingAuthorizationsWithCompletion:v22];
            dispatch_group_enter(*(a1 + 48));
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_3;
            v16[3] = &unk_2796C0E10;
            v14 = *(a1 + 72);
            v21 = *(a1 + 80);
            v17 = v14;
            v18 = v9;
            v19 = *(a1 + 64);
            v20 = *(a1 + 48);
            [v13 fetchSharingAuthorizationsMarkedForDeletionWithCompletion:v16];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [*(a1 + 64) appendFormat:@"Error fetching sharing entries for primary profile: %@", a3];
  }

  dispatch_group_leave(*(a1 + 48));
  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) UUID];
    v8 = [v7 UUIDString];
    [v6 appendFormat:@"Error fetching authorizations for sharing entry %@: %@", v8, v5];
  }

  dispatch_group_leave(*(a1 + 56));
}

void __74__HDSummarySharingDiagnosticOperation__reportInvitationsForPrimaryProfile__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) UUID];
    v8 = [v7 UUIDString];
    [v6 appendFormat:@"Error fetching authorizations marked for deletion for sharing entry %@: %@", v8, v5];
  }

  dispatch_group_leave(*(a1 + 56));
}

- (void)_reportSharedSummariesForProfileIdentifier:(id)a3 committedTransactions:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = @"Uncommitted";
  v36 = v4;
  if (v4)
  {
    v7 = @"Committed";
  }

  [(HDDiagnosticOperation *)self appendFormat:@"Shared Summary %@ Transactions:", v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2810000000;
  v52[3] = &unk_2515ECA67;
  v53 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  [v10 setProfileIdentifier:v6];
  [v10 resume];
  v11 = @"uncommitted";
  if (v4)
  {
    v11 = @"committed";
  }

  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277CCD958]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke;
  v45[3] = &unk_2796C0E88;
  v45[4] = self;
  v33 = v12;
  v46 = v33;
  v31 = v6;
  v47 = v31;
  group = v9;
  v48 = group;
  v51 = v52;
  v14 = v8;
  v49 = v14;
  v15 = v10;
  v50 = v15;
  v16 = [v13 initWithCommittedTransactions:v36 handler:v45];
  [v15 executeQuery:v16];
  v32 = v16;
  v17 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(group, v17))
  {
    [(HDDiagnosticOperation *)self log:@"ERROR: Timed out attempting collect transaction list and summaries"];
  }

  if (![v14 count])
  {
    [(HDDiagnosticOperation *)self appendFormat:@"Found no %@ transactions", v33];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = v14;
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v19)
  {
    v35 = *v42;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        if (v36)
        {
          v22 = [*(*(&v41 + 1) + 8 * i) metadata];
          v23 = [v22 objectForKeyedSubscript:@"HKSharedSummaryTransactionMetadataKeyDateCommitted"];

          v24 = [(HDDiagnosticOperation *)self stringFromDate:v23];
          [(HDDiagnosticOperation *)self appendFormat:@"%@ commit date=%@", v21, v24, v31, v32];
        }

        else
        {
          [(HDDiagnosticOperation *)self appendFormat:@"%@", v21];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v25 = [v18 objectForKeyedSubscript:v21];
        v26 = [v25 countByEnumeratingWithState:&v37 objects:v54 count:16];
        v27 = v15;
        if (v26)
        {
          v28 = *v38;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [(HDDiagnosticOperation *)self appendFormat:@"  %@", *(*(&v37 + 1) + 8 * j)];
            }

            v26 = [v25 countByEnumeratingWithState:&v37 objects:v54 count:16];
          }

          while (v26);
        }

        v15 = v27;
      }

      v19 = [v18 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v19);
  }

  [(HDDiagnosticOperation *)self appendNewline];
  _Block_object_dispose(v52, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [*(a1 + 32) appendFormat:@"Error querying for %@ transactions for profile %@: %@", *(a1 + 40), *(a1 + 48), v8];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        dispatch_group_enter(*(a1 + 56));
        v14 = objc_alloc(MEMORY[0x277CCD938]);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke_2;
        v19[3] = &unk_2796C0E60;
        v24 = *(a1 + 80);
        v20 = *(a1 + 64);
        v21 = v13;
        v22 = *(a1 + 32);
        v23 = *(a1 + 56);
        v15 = [v14 initWithTransaction:v13 package:0 resultsHandler:v19];
        [*(a1 + 72) executeQuery:v15];
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  dispatch_group_leave(*(a1 + 56));
  v16 = *MEMORY[0x277D85DE8];
}

void __104__HDSummarySharingDiagnosticOperation__reportSharedSummariesForProfileIdentifier_committedTransactions___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a3;
  v7 = a5;
  if (v11)
  {
    os_unfair_lock_lock((*(*(a1 + 64) + 8) + 32));
    [*(a1 + 32) setObject:v11 forKeyedSubscript:*(a1 + 40)];
    os_unfair_lock_unlock((*(*(a1 + 64) + 8) + 32));
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) UUID];
    v10 = [v9 UUIDString];
    [v8 appendFormat:@"Error querying summaries for transaction %@: %@", v10, v7];
  }

  dispatch_group_leave(*(a1 + 56));
}

@end
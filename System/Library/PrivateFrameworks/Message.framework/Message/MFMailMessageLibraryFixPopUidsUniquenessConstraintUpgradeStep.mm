@interface MFMailMessageLibraryFixPopUidsUniquenessConstraintUpgradeStep
+ (id)_popUIDsTableSchema;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryFixPopUidsUniquenessConstraintUpgradeStep

+ (id)_popUIDsTableSchema
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E699B958]);
  v3 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"mailbox" nullable:1];
  v4 = [MEMORY[0x1E699B8D0] textColumnWithName:@"uid" collation:1 nullable:{1, v3}];
  v12[1] = v4;
  v5 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date_added" nullable:1];
  v12[2] = v5;
  v6 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flags" nullable:1];
  v12[3] = v6;
  v7 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"del" nullable:1];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [v2 initWithName:@"pop_uids" rowIDType:1 columns:v8];

  [v9 addUniquenessConstraintForColumns:&unk_1F27751F0 conflictResolution:1];
  [v9 addIndexForColumns:&unk_1F2775208];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy executeStatementString:@"ALTER TABLE pop_uids RENAME TO pop_uids_old" errorMessage:@"Moving pop_uids table aside"] & 1) != 0 && (objc_msgSend(self, "_popUIDsTableSchema"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "definitionWithDatabaseName:includeIndexes:", 0, 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", v6, @"Creating new pop_uids table"), v6, v5, (v7) && (objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"INSERT OR REPLACE INTO pop_uids (mailbox, uid, date_added, flags, del) SELECT mailbox, uid, date_added, flags, del FROM pop_uids_old ORDER BY ROWID ASC ", @"Populating pop_uids") & 1) != 0 && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"DROP TABLE pop_uids_old", @"Dropping pop_uids_old"))
  {
    _popUIDsTableSchema = [self _popUIDsTableSchema];
    v9 = [_popUIDsTableSchema indexDefinitionsWithDatabaseName:0];
    v10 = [connectionCopy executeStatementString:v9 errorMessage:@"Creating pop_uids indexes"];

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end
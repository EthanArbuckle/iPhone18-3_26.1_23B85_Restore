@interface EDSearchableMessagesIndexReindexTypeUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDSearchableMessagesIndexReindexTypeUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 executeStatementString:@"DROP INDEX IF EXISTS searchable_messages_message_id_reindex_type_index;" errorMessage:@"Unable to drop index searchable_messages_message_id_reindex_type_index index to searchable_messages"];
  v5 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"reindex_type"];
  v6 = [v5 notEqualTo:&unk_1F45E6A00];

  v7 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"searchable_messages" columnNames:&unk_1F45E6FD0 where:v6 unique:0];
  v8 = [v7 definitionWithDatabaseName:0];
  if (v4)
  {
    [v3 executeStatementString:v8 errorMessage:@"Unable to add index searchable_messages_reindex_type_message_id_index to searchable_messages"];
  }

  return v4 ^ 1;
}

@end
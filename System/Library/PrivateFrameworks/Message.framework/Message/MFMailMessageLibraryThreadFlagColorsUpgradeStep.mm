@interface MFMailMessageLibraryThreadFlagColorsUpgradeStep
+ (id)_threadsTableSchemaWithMessagesTable:(id)a3 conversationsTable:(id)a4 threadScopesTable:(id)a5;
+ (int)runWithConnection:(id)a3;
@end

@implementation MFMailMessageLibraryThreadFlagColorsUpgradeStep

+ (id)_threadsTableSchemaWithMessagesTable:(id)a3 conversationsTable:(id)a4 threadScopesTable:(id)a5
{
  v51[23] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v42 = a4;
  v43 = a5;
  v7 = objc_alloc(MEMORY[0x1E699B958]);
  v41 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"scope" nullable:0];
  v51[0] = v41;
  v40 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"conversation" nullable:0];
  v51[1] = v40;
  v39 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"newest_read_message" nullable:1];
  v51[2] = v39;
  v38 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"display_message" nullable:1];
  v51[3] = v38;
  v37 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"date" nullable:0];
  v51[4] = v37;
  v36 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"read" nullable:0 defaultValue:&unk_1F2775D30];
  v51[5] = v36;
  v35 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"flagged" nullable:0 defaultValue:&unk_1F2775D30];
  v51[6] = v35;
  v34 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_red_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[7] = v34;
  v33 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_orange_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[8] = v33;
  v32 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_yellow_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[9] = v32;
  v31 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_green_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[10] = v31;
  v30 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_blue_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[11] = v30;
  v29 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_purple_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[12] = v29;
  v28 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_gray_flag" nullable:0 defaultValue:&unk_1F2775D30];
  v51[13] = v28;
  v27 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"draft" nullable:0 defaultValue:&unk_1F2775D30];
  v51[14] = v27;
  v8 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"replied" nullable:0 defaultValue:&unk_1F2775D30];
  v51[15] = v8;
  v9 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"forwarded" nullable:0 defaultValue:&unk_1F2775D30];
  v51[16] = v9;
  v10 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"redirected" nullable:0 defaultValue:&unk_1F2775D30];
  v51[17] = v10;
  v11 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level_set_by_user" nullable:0 defaultValue:&unk_1F2775D30];
  v51[18] = v11;
  v12 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"junk_level" nullable:0 defaultValue:&unk_1F2775D30];
  v51[19] = v12;
  v13 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_unflagged" nullable:0 defaultValue:&unk_1F2775D30];
  v51[20] = v13;
  v14 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"has_attachments" nullable:0 defaultValue:&unk_1F2775D30];
  v51[21] = v14;
  v15 = [MEMORY[0x1E699B8D0] integerColumnWithName:@"count" nullable:0];
  v51[22] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:23];
  v17 = [v7 initWithName:@"threads" rowIDType:2 columns:v16];

  v50[0] = @"scope";
  v50[1] = @"conversation";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  [v17 addUniquenessConstraintForColumns:v18 conflictResolution:1];

  v49[0] = @"scope";
  v49[1] = @"date";
  v49[2] = @"conversation";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
  [v17 addIndexForColumns:v19];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __125__MFMailMessageLibraryThreadFlagColorsUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke;
  aBlock[3] = &unk_1E7AA6658;
  v20 = v17;
  v48 = v20;
  v21 = _Block_copy(aBlock);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __125__MFMailMessageLibraryThreadFlagColorsUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke_2;
  v45[3] = &unk_1E7AA6680;
  v22 = v21;
  v46 = v22;
  v23 = _Block_copy(v45);
  v23[2](v23, @"scope", v43);
  v23[2](v23, @"conversation", v42);
  (*(v22 + 2))(v22, @"newest_read_message", v44, 3);
  (*(v22 + 2))(v22, @"display_message", v44, 3);
  v24 = v20;

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

void __125__MFMailMessageLibraryThreadFlagColorsUpgradeStep__threadsTableSchemaWithMessagesTable_conversationsTable_threadScopesTable___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v7 = [*(a1 + 32) columnForName:a2];
  [v7 setAsForeignKeyForTable:v8 onDelete:a4 onUpdate:0];
}

+ (int)runWithConnection:(id)a3
{
  v4 = a3;
  if (([v4 columnExists:@"flag_color" inTable:@"messages" type:0] & 1) == 0 && ((objc_msgSend(v4, "executeStatementString:errorMessage:", @"ALTER TABLE messages ADD COLUMN flag_color INTEGER", @"Adding messages.flag_color") & 1) == 0 || !objc_msgSend(v4, "executeStatementString:errorMessage:", @"CREATE INDEX IF NOT EXISTS messages_mailbox_conversation_id_flag_color_date_received_index ON messages(mailbox, conversation_id, flag_color, date_received)", @"Creating messages_mailbox_conversation_id_flag_color_date_received_index") || !objc_msgSend(v4, "executeStatementString:errorMessage:", @"UPDATE messages SET flag_color = ((flags & (7 << 41)) >> 41) WHERE (flags & 16) != 0", @"Setting flag_color")))
  {
    goto LABEL_17;
  }

  if (([v4 columnExists:@"has_red_flag" inTable:@"threads" type:0] & 1) == 0)
  {
    if (([v4 executeStatementString:@"DROP TABLE threads" errorMessage:@"Dropping threads"] & 1) != 0 && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DROP TABLE thread_flag_colors", @"Dropping thread_flag_colors") && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DELETE FROM thread_mailboxes", @"Clearing thread_mailboxes") && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DELETE FROM thread_senders", @"Clearing thread_senders") && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DELETE FROM thread_recipients", @"Clearing thread_recipients"))
    {
      v6 = objc_alloc(MEMORY[0x1E699B958]);
      v7 = [v6 initWithName:@"messages" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
      v8 = objc_alloc(MEMORY[0x1E699B958]);
      v9 = [v8 initWithName:@"conversations" rowIDType:2 rowIDAlias:@"conversation_id" columns:MEMORY[0x1E695E0F0]];
      v10 = objc_alloc(MEMORY[0x1E699B958]);
      v11 = [v10 initWithName:@"thread_scopes" rowIDType:2 columns:MEMORY[0x1E695E0F0]];
      v12 = [a1 _threadsTableSchemaWithMessagesTable:v7 conversationsTable:v9 threadScopesTable:v11];
      v13 = [v12 definitionWithDatabaseName:0];
      if ([v4 executeStatementString:v13 errorMessage:@"Creating new threads"])
      {
        v14 = [v4 executeStatementString:@"UPDATE thread_scopes SET needs_update = 1" errorMessage:@"Resetting thread_scopes"];

        if (v14)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

LABEL_17:
    v5 = 1;
    goto LABEL_18;
  }

LABEL_3:
  v5 = 0;
LABEL_18:

  return v5;
}

@end
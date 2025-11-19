@interface EDSearchableIndexDiagnosticsSnapshot
- (EDSearchableIndexDiagnosticsSnapshot)initWithDate:(id)a3 indexableMessages:(id)a4 messagesIndexed:(id)a5 messagesToRedonate:(id)a6 turboMode:(BOOL)a7;
- (EDSearchableIndexDiagnosticsSnapshot)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation EDSearchableIndexDiagnosticsSnapshot

- (EDSearchableIndexDiagnosticsSnapshot)initWithDate:(id)a3 indexableMessages:(id)a4 messagesIndexed:(id)a5 messagesToRedonate:(id)a6 turboMode:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  v17 = 0;
  if (v12 && v13 && v14 && v15)
  {
    v22.receiver = self;
    v22.super_class = EDSearchableIndexDiagnosticsSnapshot;
    v18 = [(EDSearchableIndexDiagnosticsSnapshot *)&v22 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_date, a3);
      objc_storeStrong(&v19->_indexableMessages, a4);
      objc_storeStrong(&v19->_messagesIndexed, a5);
      objc_storeStrong(&v19->_messagesToRedonate, a6);
      v19->_turboMode = a7;
    }

    self = v19;
    v17 = self;
  }

  return v17;
}

- (EDSearchableIndexDiagnosticsSnapshot)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Date"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 objectForKeyedSubscript:@"IndexableMessages"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 objectForKeyedSubscript:@"MessagesIndexed"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = [v4 objectForKeyedSubscript:@"MessagesToRedonate"];
        v9 = v8;
        v10 = &unk_1F45E6988;
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v4 objectForKeyedSubscript:@"Turbo"];
          v13 = v12;
          v14 = MEMORY[0x1E695E110];
          if (v12)
          {
            v14 = v12;
          }

          v15 = v14;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self = -[EDSearchableIndexDiagnosticsSnapshot initWithDate:indexableMessages:messagesIndexed:messagesToRedonate:turboMode:](self, "initWithDate:indexableMessages:messagesIndexed:messagesToRedonate:turboMode:", v5, v6, v7, v11, [v15 BOOLValue]);
            v16 = self;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(EDSearchableIndexDiagnosticsSnapshot *)self date];
  [v3 setObject:v4 forKeyedSubscript:@"Date"];

  v5 = [(EDSearchableIndexDiagnosticsSnapshot *)self indexableMessages];
  [v3 setObject:v5 forKeyedSubscript:@"IndexableMessages"];

  v6 = [(EDSearchableIndexDiagnosticsSnapshot *)self messagesIndexed];
  [v3 setObject:v6 forKeyedSubscript:@"MessagesIndexed"];

  v7 = [(EDSearchableIndexDiagnosticsSnapshot *)self messagesToRedonate];
  [v3 setObject:v7 forKeyedSubscript:@"MessagesToRedonate"];

  if ([(EDSearchableIndexDiagnosticsSnapshot *)self turboMode])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[EDSearchableIndexDiagnosticsSnapshot turboMode](self, "turboMode")}];
    [v3 setObject:v8 forKeyedSubscript:@"Turbo"];
  }

  return v3;
}

@end
@interface MKTable
- (MKTable)init;
- (void)addRow:(id)a3;
- (void)writeToDisk:(id)a3;
- (void)writeToLog;
@end

@implementation MKTable

- (MKTable)init
{
  v6.receiver = self;
  v6.super_class = MKTable;
  v2 = [(MKTable *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MKTable *)v2 setRows:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MKTable *)v2 setColumns:v4];
  }

  return v2;
}

- (void)addRow:(id)a3
{
  v14 = a3;
  v4 = [(MKTable *)self columns];
  v5 = [v4 count];
  v6 = [v14 totalColumns];

  if (v5 < v6)
  {
    do
    {
      v7 = [(MKTable *)self columns];
      v8 = objc_alloc_init(MKTableColumn);
      [v7 addObject:v8];

      v9 = [(MKTable *)self columns];
      v10 = [v9 count];
      v11 = [v14 totalColumns];
    }

    while (v10 < v11);
  }

  v12 = [(MKTable *)self columns];
  [v14 adjustColumnsToFit:v12];

  v13 = [(MKTable *)self rows];
  [v13 addObject:v14];
}

- (void)writeToLog
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MKTable *)self rows];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138412290;
    v14 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = +[MKLog log];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(MKTable *)self columns];
          v12 = [v9 asciiRepresentationUsingColumns:v11];
          *buf = v14;
          v20 = v12;
          _os_log_impl(&dword_2592D2000, v10, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)writeToDisk:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(MKTable *)self rows];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * v10) csvRepresentation];
        v12 = v11;
        if (v11)
        {
          [v5 appendFormat:@"%@\n", v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  v18 = 0;
  v13 = [v5 writeToFile:v4 atomically:0 encoding:4 error:&v18];
  v14 = v18;
  v15 = +[MKLog log];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_2592D2000, v16, OS_LOG_TYPE_INFO, "%@: Wrote table to disk at %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(MKTable *)self writeToDisk:v14, v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end
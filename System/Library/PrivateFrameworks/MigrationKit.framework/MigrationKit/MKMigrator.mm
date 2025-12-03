@interface MKMigrator
+ (void)initialize;
- (MKMigrator)init;
- (MKMigratorDelegate)delegate;
- (void)addError:(id)error;
- (void)import;
- (void)migratorDidMeasureImport;
- (void)migratorDidResetImport;
- (void)migratorWillMeasureImport;
- (void)sendAnalytics;
- (void)setType:(int64_t)type;
@end

@implementation MKMigrator

+ (void)initialize
{
  v8[13] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v7[0] = &unk_286AACEC0;
    v7[1] = &unk_286AACEF0;
    v8[0] = &unk_286AACED8;
    v8[1] = &unk_286AACEC0;
    v7[2] = &unk_286AACF08;
    v7[3] = &unk_286AACF20;
    v8[2] = &unk_286AACEF0;
    v8[3] = &unk_286AACF08;
    v7[4] = &unk_286AACF38;
    v7[5] = &unk_286AACF50;
    v8[4] = &unk_286AACF20;
    v8[5] = &unk_286AACF38;
    v7[6] = &unk_286AACF68;
    v7[7] = &unk_286AACF98;
    v8[6] = &unk_286AACF80;
    v8[7] = &unk_286AACF50;
    v7[8] = &unk_286AACFB0;
    v7[9] = &unk_286AACED8;
    v8[8] = &unk_286AACFC8;
    v8[9] = &unk_286AACFE0;
    v7[10] = &unk_286AACFC8;
    v7[11] = &unk_286AAD010;
    v8[10] = &unk_286AACFF8;
    v8[11] = &unk_286AAD010;
    v7[12] = &unk_286AAD028;
    v8[12] = &unk_286AAD040;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:13];
    v5 = importContentTypes;
    importContentTypes = v4;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (MKMigrator)init
{
  v6.receiver = self;
  v6.super_class = MKMigrator;
  v2 = [(MKMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    importErrors = v2->_importErrors;
    v2->_importErrors = v3;
  }

  return v2;
}

- (void)setType:(int64_t)type
{
  self->_type = type;
  v4 = importContentTypes;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v8 = [v4 objectForKeyedSubscript:v5];

  if (v8)
  {
    v6 = -[MKImportAnalytics initWithContentType:]([MKImportAnalytics alloc], "initWithContentType:", [v8 integerValue]);
    analytics = self->_analytics;
    self->_analytics = v6;
  }
}

- (void)import
{
  [(MKMigrator *)self sendAnalytics];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained migratorDidComplete:self];
}

- (void)migratorDidResetImport
{
  self->_importCount = 0;
  self->_importErrorCount = 0;
  self->_size = 0;
  [(NSMutableSet *)self->_importErrors removeAllObjects];
}

- (void)migratorWillMeasureImport
{
  v3 = objc_alloc_init(MKTime);
  importTime = self->_importTime;
  self->_importTime = v3;

  MEMORY[0x2821F96F8]();
}

- (void)migratorDidMeasureImport
{
  [(MKTime *)self->_importTime elapsedTimeInSeconds];
  self->_totalImportTime = v3 + self->_totalImportTime;
  importTime = self->_importTime;
  self->_importTime = 0;
}

- (void)addError:(id)error
{
  if (error)
  {
    v4 = MEMORY[0x277CCACA8];
    errorCopy = error;
    domain = [errorCopy domain];
    code = [errorCopy code];

    v8 = [v4 stringWithFormat:@"%@.%ld", domain, code];

    [(NSMutableSet *)self->_importErrors addObject:v8];
  }
}

- (void)sendAnalytics
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_importCount || [(NSMutableSet *)self->_importErrors count])
  {
    v3 = [(NSMutableSet *)self->_importErrors count];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_importErrors;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(MKImportAnalytics *)self->_analytics send:*(*(&v10 + 1) + 8 * v8++), v10];
        }

        while (v6 != v8);
        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(MKImportAnalytics *)self->_analytics complete:v3 == 0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (MKMigratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
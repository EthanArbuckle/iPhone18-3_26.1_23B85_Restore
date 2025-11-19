@interface BRKAccelerationBufferedFileWriter
- (void)_lock_close;
- (void)_lock_writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6;
- (void)close;
- (void)writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6;
@end

@implementation BRKAccelerationBufferedFileWriter

- (void)writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__BRKAccelerationBufferedFileWriter_writeX_y_z_timestamp___block_invoke;
  v6[3] = &unk_278D27DC0;
  v6[4] = self;
  *&v6[5] = a3;
  *&v6[6] = a4;
  *&v6[7] = a5;
  *&v6[8] = a6;
  [(BRKWriter *)self performWithLock:v6];
}

- (void)_lock_writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (!self->_values)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    values = self->_values;
    self->_values = v11;
  }

  v19[0] = @"timestamp";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
  v20[0] = v13;
  v19[1] = @"x";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v20[1] = v14;
  v19[2] = @"y";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v20[2] = v15;
  v19[3] = @"z";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v20[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];

  [(NSMutableArray *)self->_values addObject:v17];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__BRKAccelerationBufferedFileWriter_close__block_invoke;
  v2[3] = &unk_278D27D78;
  v2[4] = self;
  [(BRKWriter *)self performWithLock:v2];
}

- (void)_lock_close
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_values)
  {
    v3 = [BRKAccelerationFileWriter alloc];
    v4 = [(BRKWriter *)self path];
    v5 = [(BRKWriter *)v3 initWithPath:v4];

    [(BRKAccelerationFileWriter *)v5 openWithDataCount:[(NSMutableArray *)self->_values count]];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = self;
    obj = self->_values;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"timestamp"];
          [v11 doubleValue];
          v13 = v12;

          v14 = [v10 objectForKeyedSubscript:@"x"];
          [v14 doubleValue];
          v16 = v15;

          v17 = [v10 objectForKeyedSubscript:@"y"];
          [v17 doubleValue];
          v19 = v18;

          v20 = [v10 objectForKeyedSubscript:@"z"];
          [v20 doubleValue];
          v22 = v21;

          [(BRKAccelerationFileWriter *)v5 writeX:v16 y:v19 z:v22 timestamp:v13];
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    [(BRKAccelerationFileWriter *)v5 close];
    values = v25->_values;
    v25->_values = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end
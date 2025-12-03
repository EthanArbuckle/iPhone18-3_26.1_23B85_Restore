@interface BRKLogFileWriter
- (void)_lock_close;
- (void)_lock_writeJSON:(id)n;
- (void)close;
- (void)writeJSON:(id)n;
@end

@implementation BRKLogFileWriter

- (void)writeJSON:(id)n
{
  nCopy = n;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__BRKLogFileWriter_writeJSON___block_invoke;
  v6[3] = &unk_278D27E60;
  v6[4] = self;
  v7 = nCopy;
  v5 = nCopy;
  [(BRKWriter *)self performWithLock:v6];
}

- (void)_lock_writeJSON:(id)n
{
  nCopy = n;
  json = self->_json;
  v8 = nCopy;
  if (!json)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_json;
    self->_json = array;

    nCopy = v8;
    json = self->_json;
  }

  [(NSMutableArray *)json addObject:nCopy];
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __25__BRKLogFileWriter_close__block_invoke;
  v2[3] = &unk_278D27D78;
  v2[4] = self;
  [(BRKWriter *)self performWithLock:v2];
}

- (void)_lock_close
{
  json = self->_json;
  if (json)
  {
    v8 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:json options:4 error:&v8];
    v5 = v8;
    path = [(BRKWriter *)self path];
    [v4 writeToFile:path atomically:1];

    v7 = self->_json;
    self->_json = 0;
  }
}

@end
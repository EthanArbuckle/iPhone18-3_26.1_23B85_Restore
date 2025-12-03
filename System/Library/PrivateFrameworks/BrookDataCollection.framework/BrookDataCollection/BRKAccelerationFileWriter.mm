@interface BRKAccelerationFileWriter
- (void)_lock_close;
- (void)_lock_openWithDataCount:(unint64_t)count;
- (void)_lock_writeX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp;
- (void)close;
- (void)openWithDataCount:(unint64_t)count;
- (void)writeX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp;
@end

@implementation BRKAccelerationFileWriter

- (void)writeX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__BRKAccelerationFileWriter_writeX_y_z_timestamp___block_invoke;
  v6[3] = &unk_278D27DC0;
  v6[4] = self;
  *&v6[5] = x;
  *&v6[6] = y;
  *&v6[7] = z;
  *&v6[8] = timestamp;
  [(BRKWriter *)self performWithLock:v6];
}

- (void)_lock_writeX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = timestamp;
  *&v7[1] = x;
  *&v7[2] = y;
  *&v7[3] = z;
  [(NSOutputStream *)self->_outputStream write:v7 maxLength:32];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openWithDataCount:(unint64_t)count
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__BRKAccelerationFileWriter_openWithDataCount___block_invoke;
  v3[3] = &unk_278D27DE8;
  v3[4] = self;
  v3[5] = count;
  [(BRKWriter *)self performWithLock:v3];
}

- (void)_lock_openWithDataCount:(unint64_t)count
{
  v5 = objc_alloc(MEMORY[0x277CBEB78]);
  path = [(BRKWriter *)self path];
  v7 = [v5 initToFileAtPath:path append:0];
  outputStream = self->_outputStream;
  self->_outputStream = v7;

  [(NSOutputStream *)self->_outputStream open];
  countCopy = count;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&countCopy length:8];
  -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v9 bytes], objc_msgSend(v9, "length"));
}

- (void)close
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __34__BRKAccelerationFileWriter_close__block_invoke;
  v2[3] = &unk_278D27D78;
  v2[4] = self;
  [(BRKWriter *)self performWithLock:v2];
}

- (void)_lock_close
{
  [(NSOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;
}

@end
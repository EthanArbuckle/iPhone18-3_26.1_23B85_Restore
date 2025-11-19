@interface BRKAccelerationFileWriter
- (void)_lock_close;
- (void)_lock_openWithDataCount:(unint64_t)a3;
- (void)_lock_writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6;
- (void)close;
- (void)openWithDataCount:(unint64_t)a3;
- (void)writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6;
@end

@implementation BRKAccelerationFileWriter

- (void)writeX:(double)a3 y:(double)a4 z:(double)a5 timestamp:(double)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__BRKAccelerationFileWriter_writeX_y_z_timestamp___block_invoke;
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
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a6;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  [(NSOutputStream *)self->_outputStream write:v7 maxLength:32];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openWithDataCount:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__BRKAccelerationFileWriter_openWithDataCount___block_invoke;
  v3[3] = &unk_278D27DE8;
  v3[4] = self;
  v3[5] = a3;
  [(BRKWriter *)self performWithLock:v3];
}

- (void)_lock_openWithDataCount:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CBEB78]);
  v6 = [(BRKWriter *)self path];
  v7 = [v5 initToFileAtPath:v6 append:0];
  outputStream = self->_outputStream;
  self->_outputStream = v7;

  [(NSOutputStream *)self->_outputStream open];
  v10 = a3;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:8];
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
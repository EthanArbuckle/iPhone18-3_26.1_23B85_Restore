@interface TSUZipReadChannel
- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length;
- (TSUZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c;
- (void)addBarrier:(id)barrier;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler;
- (void)readWithHandler:(id)handler;
- (void)setLowWater:(unint64_t)water;
@end

@implementation TSUZipReadChannel

- (TSUZipReadChannel)initWithEntry:(id)entry archive:(id)archive validateCRC:(BOOL)c
{
  entryCopy = entry;
  archiveCopy = archive;
  v18.receiver = self;
  v18.super_class = TSUZipReadChannel;
  v11 = [(TSUZipReadChannel *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entry, entry);
    objc_storeStrong(&v12->_archive, archive);
    v12->_validateCRC = c;
    newArchiveReadChannel = [archiveCopy newArchiveReadChannel];
    archiveReadChannel = v12->_archiveReadChannel;
    v12->_archiveReadChannel = newArchiveReadChannel;

    if (!v12->_archiveReadChannel)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel initWithEntry:archive:validateCRC:]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipReadChannel.m"];
      [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:38 isFatal:0 description:"Archive is closed"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      v12 = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(TSUZipReadChannel *)self close];
  v3.receiver = self;
  v3.super_class = TSUZipReadChannel;
  [(TSUZipReadChannel *)&v3 dealloc];
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  fileHeaderLength = [(TSUZipEntry *)self->_entry fileHeaderLength];
  if (fileHeaderLength)
  {
    [(TSUZipReadChannel *)self readWithFileHeaderLength:fileHeaderLength handler:handlerCopy];
  }

  else
  {
    nameLength = [(TSUZipEntry *)self->_entry nameLength];
    extraFieldsLength = [(TSUZipEntry *)self->_entry extraFieldsLength];
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__16;
    v26[4] = __Block_byref_object_dispose__16;
    v9 = MEMORY[0x277D85CC8];
    v10 = MEMORY[0x277D85CC8];
    v27 = v9;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v25 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 1;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v21 = crc32(0, 0, 0);
    archiveReadChannel = self->_archiveReadChannel;
    offset = [(TSUZipEntry *)self->_entry offset];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __37__TSUZipReadChannel_readWithHandler___block_invoke_7;
    v13[3] = &unk_2799C73A0;
    v15 = v22;
    v13[4] = self;
    v14 = handlerCopy;
    v16 = v26;
    v17 = v24;
    v18 = v20;
    v19 = nameLength + extraFieldsLength + 30;
    [(TSUReadChannel *)archiveReadChannel readFromOffset:offset length:v19 + compressedSize handler:v13];

    _Block_object_dispose(v20, 8);
    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v26, 8);
  }
}

void __37__TSUZipReadChannel_readWithHandler___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  if (v8 && *(v9 + 24))
  {
    *(v9 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v8];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!*(v9 + 24))
  {
LABEL_12:
    v14 = v7;
    goto LABEL_13;
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  if (!v10)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    concat = dispatch_data_create_concat(v10, v7);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = concat;

    v10 = *(*(*(a1 + 56) + 8) + 40);
  }

  v14 = v10;

  size = dispatch_data_get_size(v14);
  if ((a2 & 1) != 0 || size >= 0x1E)
  {
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    v21 = 0;
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) readFileHeaderFromData:v14 headerLength:&v21];
    v18 = v21;
    *(*(*(a1 + 64) + 8) + 24) = v21 != *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        [*(a1 + 32) readWithFileHeaderLength:v18 handler:*(a1 + 40)];
      }

      else
      {
        v19 = dispatch_data_get_size(v14);
        if (v19 >= v18)
        {
          subrange = dispatch_data_create_subrange(v14, v18, v19 - v18);

          v14 = subrange;
        }

        else
        {
          if (TSUDefaultCat_init_token != -1)
          {
            __37__TSUZipReadChannel_readWithHandler___block_invoke_7_cold_1();
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:0];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_13:
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v14 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }
}

void __37__TSUZipReadChannel_readWithHandler___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  if (offset < 0 || compressedSize < offset)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [TSUZipReadChannel readFromOffset:length:handler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 1, MEMORY[0x277D85CC8], 0);
  }

  else
  {
    if (compressedSize - offset < length)
    {
      length = compressedSize - offset;
    }

    if (offset || length != compressedSize)
    {
      fileHeaderLength = [(TSUZipEntry *)self->_entry fileHeaderLength];
      if (fileHeaderLength)
      {
        [(TSUReadChannel *)self->_archiveReadChannel readFromOffset:fileHeaderLength + offset + [(TSUZipEntry *)self->_entry offset] length:length handler:handlerCopy];
      }

      else
      {
        archiveReadChannel = self->_archiveReadChannel;
        offset = [(TSUZipEntry *)self->_entry offset];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __51__TSUZipReadChannel_readFromOffset_length_handler___block_invoke_3;
        v13[3] = &unk_2799C73C8;
        v13[4] = self;
        offsetCopy = offset;
        lengthCopy = length;
        v14 = handlerCopy;
        [TSUIOUtils readAllFromChannel:archiveReadChannel offset:offset length:30 completion:v13];
      }
    }

    else
    {
      [(TSUZipReadChannel *)self readWithHandler:handlerCopy];
    }
  }
}

void __51__TSUZipReadChannel_readFromOffset_length_handler___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __51__TSUZipReadChannel_readFromOffset_length_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = 0;
  if (v6 || ![*(a1 + 32) readFileHeaderFromData:v5 headerLength:&v10])
  {
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    v9 = [*(v7 + 8) offset];
    [v8 readFromOffset:v10 + *(a1 + 48) + v9 length:*(a1 + 56) handler:*(a1 + 40)];
  }
}

- (BOOL)readFileHeaderFromData:(id)data headerLength:(unint64_t *)length
{
  dataCopy = data;
  size = dispatch_data_get_size(dataCopy);
  if (size == 30)
  {
    subrange = dataCopy;
    goto LABEL_5;
  }

  if (size >= 0x1F)
  {
    subrange = dispatch_data_create_subrange(dataCopy, 0, 0x1EuLL);
LABEL_5:
    v9 = subrange;
    v16 = 0;
    buffer_ptr = 0;
    v10 = dispatch_data_create_map(subrange, &buffer_ptr, &v16);
    v11 = buffer_ptr;
    if (*buffer_ptr == 67324752)
    {
      v12 = *(buffer_ptr + 4);
      if (*(buffer_ptr + 4))
      {
        v13 = v12 == TSUZipDeflateCompressionMethod;
      }

      else
      {
        v13 = 1;
      }

      if (v13 && (((v12 != TSUZipDeflateCompressionMethod) ^ [(TSUZipEntry *)self->_entry isCompressed]) & 1) != 0)
      {
        *length = v11[13] + v11[14] + 30;
        [(TSUZipEntry *)self->_entry setFileHeaderLength:?];
        v14 = 1;
LABEL_17:

        goto LABEL_21;
      }

      if (TSUDefaultCat_init_token == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }

      [TSUZipReadChannel readFileHeaderFromData:headerLength:];
    }

    else
    {
      if (TSUDefaultCat_init_token == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }

      [TSUZipReadChannel readFileHeaderFromData:headerLength:];
    }

    v14 = 0;
    goto LABEL_17;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    [TSUZipReadChannel readFileHeaderFromData:headerLength:];
  }

  v14 = 0;
LABEL_21:

  return v14;
}

void __57__TSUZipReadChannel_readFileHeaderFromData_headerLength___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __57__TSUZipReadChannel_readFileHeaderFromData_headerLength___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __57__TSUZipReadChannel_readFileHeaderFromData_headerLength___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)readWithFileHeaderLength:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = crc32(0, 0, 0);
  archiveReadChannel = self->_archiveReadChannel;
  offset = [(TSUZipEntry *)self->_entry offset];
  compressedSize = [(TSUZipEntry *)self->_entry compressedSize];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__TSUZipReadChannel_readWithFileHeaderLength_handler___block_invoke;
  v11[3] = &unk_2799C73F0;
  v13 = v17;
  v11[4] = self;
  v10 = handlerCopy;
  v12 = v10;
  v14 = v15;
  [(TSUReadChannel *)archiveReadChannel readFromOffset:offset + length length:compressedSize handler:v11];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
}

void __54__TSUZipReadChannel_readWithFileHeaderLength_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (!v7 || !*(v8 + 24))
  {
    if (!*(v8 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(v8 + 24) = 0;
  [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
LABEL_6:
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v9 CRC:*(*(a1 + 56) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_7:
}

- (BOOL)processData:(id)data CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  handlerCopy = handler;
  if (c && self->_validateCRC && (applier[0] = MEMORY[0x277D85DD0], applier[1] = 3221225472, applier[2] = __52__TSUZipReadChannel_processData_CRC_isDone_handler___block_invoke, applier[3] = &__block_descriptor_40_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l, applier[4] = c, dispatch_data_apply(dataCopy, applier), doneCopy) && [(TSUZipEntry *)self->_entry CRC]!= *c)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [TSUZipReadChannel processData:CRC:isDone:handler:];
    }

    [(TSUZipReadChannel *)self handleFailureWithHandler:handlerCopy error:0];
    v12 = 0;
  }

  else
  {
    handlerCopy[2](handlerCopy, doneCopy, dataCopy, 0);
    v12 = 1;
  }

  return v12;
}

uint64_t __52__TSUZipReadChannel_processData_CRC_isDone_handler___block_invoke(uint64_t a1, int a2, int a3, Bytef *buf, unint64_t len)
{
  v7 = **(a1 + 32);
  if (HIDWORD(len))
  {
    __52__TSUZipReadChannel_processData_CRC_isDone_handler___block_invoke_cold_1();
    v8 = -1;
  }

  else
  {
    v8 = len;
  }

  **(a1 + 32) = crc32(v7, buf, v8);
  return 1;
}

void __52__TSUZipReadChannel_processData_CRC_isDone_handler___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  if (error)
  {
    v5 = *(handler + 2);
    handlerCopy = handler;
    v5();
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    handlerCopy2 = handler;
    handlerCopy = [v6 tsu_fileReadCorruptedFileErrorWithUserInfo:0];
    (*(handler + 2))(handlerCopy2, 1, 0);
  }
}

- (void)close
{
  [(TSUReadChannel *)self->_archiveReadChannel close];
  archiveReadChannel = self->_archiveReadChannel;
  self->_archiveReadChannel = 0;

  entry = self->_entry;
  self->_entry = 0;

  archive = self->_archive;
  self->_archive = 0;
}

- (void)setLowWater:(unint64_t)water
{
  if (!self->_archiveReadChannel)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:274 isFatal:0 description:"Already closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if (water <= 0x1D)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel setLowWater:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:275 isFatal:0 description:"Low water is too small"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  archiveReadChannel = self->_archiveReadChannel;

  [(TSUReadChannel *)archiveReadChannel setLowWater:water];
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  archiveReadChannel = self->_archiveReadChannel;
  v8 = barrierCopy;
  if (!archiveReadChannel)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel addBarrier:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:281 isFatal:0 description:"Already closed"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    barrierCopy = v8;
    archiveReadChannel = self->_archiveReadChannel;
  }

  [(TSUReadChannel *)archiveReadChannel addBarrier:barrierCopy];
}

uint64_t __52__TSUZipReadChannel_processData_CRC_isDone_handler___block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipReadChannel processData:CRC:isDone:handler:]_block_invoke"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipReadChannel.m"];
  [OITSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:241 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[OITSUAssertionHandler logBacktraceThrottled];
}

@end
@interface BUIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3;
+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6;
@end

@implementation BUIOUtils

+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_241DB2A24;
  v18[4] = sub_241DB2A34;
  v11 = MEMORY[0x277D85CC8];
  v12 = MEMORY[0x277D85CC8];
  v19 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DB2A3C;
  v15[3] = &unk_278D1D1E0;
  v17 = v18;
  v13 = v10;
  v16 = v13;
  objc_msgSend_readFromOffset_length_handler_(v9, v14, a4, a5, v15);

  _Block_object_dispose(v18, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  CFRetain(v3);
  Sequential = CGDataProviderCreateSequential(v3, &stru_2853F2A00);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [BUReadChannelInputStreamAdapter alloc];
  Channel = objc_msgSend_initWithReadChannel_(v5, v6, v4);

  if (objc_msgSend_canSeek(Channel, v8, v9))
  {
    v11 = objc_msgSend_newCGDataProviderForInputStream_(a1, v10, Channel);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
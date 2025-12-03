@interface BUIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel;
+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion;
@end

@implementation BUIOUtils

+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
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
  v13 = completionCopy;
  v16 = v13;
  objc_msgSend_readFromOffset_length_handler_(channelCopy, v14, offset, length, v15);

  _Block_object_dispose(v18, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream
{
  if (!stream)
  {
    return 0;
  }

  streamCopy = stream;
  CFRetain(streamCopy);
  Sequential = CGDataProviderCreateSequential(streamCopy, &stru_2853F2A00);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel
{
  if (!channel)
  {
    return 0;
  }

  channelCopy = channel;
  v5 = [BUReadChannelInputStreamAdapter alloc];
  Channel = objc_msgSend_initWithReadChannel_(v5, v6, channelCopy);

  if (objc_msgSend_canSeek(Channel, v8, v9))
  {
    v11 = objc_msgSend_newCGDataProviderForInputStream_(self, v10, Channel);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
@interface TSUIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel;
+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion;
@end

@implementation TSUIOUtils

+ (void)readAllFromChannel:(id)channel offset:(int64_t)offset length:(unint64_t)length completion:(id)completion
{
  channelCopy = channel;
  completionCopy = completion;
  v11 = completionCopy;
  if (!channelCopy)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:offset:length:completion:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUIOUtils.m"];
    [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:77 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:offset:length:completion:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUIOUtils.m"];
    [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:78 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__19;
  v22[4] = __Block_byref_object_dispose__19;
  v12 = MEMORY[0x277D85CC8];
  v13 = MEMORY[0x277D85CC8];
  v23 = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__TSUIOUtils_readAllFromChannel_offset_length_completion___block_invoke;
  v19[3] = &unk_2799C74F8;
  v21 = v22;
  v14 = v11;
  v20 = v14;
  [channelCopy readFromOffset:offset length:length handler:v19];

  _Block_object_dispose(v22, 8);
}

void __58__TSUIOUtils_readAllFromChannel_offset_length_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  data2 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_8:
      v9();
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      goto LABEL_9;
    }

    if (data2)
    {
      concat = dispatch_data_create_concat(v8, data2);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = concat;
    }

    if (a2)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_8;
    }
  }

LABEL_9:
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)stream
{
  if (!stream)
  {
    return 0;
  }

  streamCopy = stream;
  CFRetain(streamCopy);
  Sequential = CGDataProviderCreateSequential(streamCopy, &TSUIOUtilsCGDataProviderCallbacks);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)channel
{
  if (!channel)
  {
    return 0;
  }

  channelCopy = channel;
  v5 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:channelCopy];

  if ([(TSUReadChannelInputStreamAdapter *)v5 canSeek])
  {
    v6 = [self newCGDataProviderForInputStream:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils newCGDataProviderForReadChannel:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUIOUtils.m"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:117 isFatal:0 description:"Need a seekable input stream for CGDataProvider"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v6 = 0;
  }

  return v6;
}

@end
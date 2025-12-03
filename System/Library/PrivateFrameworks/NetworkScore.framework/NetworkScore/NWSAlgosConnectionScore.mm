@interface NWSAlgosConnectionScore
+ (id)connectionScore;
- (NWSAlgosConnectionScore)init;
- (void)addConnectionRow:(unint64_t)row ttfb:(double)ttfb ttlb:(double)ttlb basettfb:(double)basettfb basettlb:(double)basettlb weight:(double)weight failed:(int)failed;
- (void)dealloc;
@end

@implementation NWSAlgosConnectionScore

+ (id)connectionScore
{
  v2 = objc_alloc_init(NWSAlgosConnectionScore);

  return v2;
}

- (NWSAlgosConnectionScore)init
{
  v5.receiver = self;
  v5.super_class = NWSAlgosConnectionScore;
  v2 = [(NWSAlgosConnectionScore *)&v5 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  [(NWSAlgosConnectionScore *)v2 setSignificantSize:100000];
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x168BC42DuLL);
  if (result)
  {
    result->super.isa = 0;
    result->connectionData = 0;
    *&result->_debug = 0;
    v3->connectionData = result;
    return v3;
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  connectionData = self->connectionData;
  if (connectionData)
  {
    v4 = *connectionData;
    if (*connectionData)
    {
      connectionData[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x25F8748F0](connectionData, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = NWSAlgosConnectionScore;
  [(NWSAlgosConnectionScore *)&v5 dealloc];
}

- (void)addConnectionRow:(unint64_t)row ttfb:(double)ttfb ttlb:(double)ttlb basettfb:(double)basettfb basettlb:(double)basettlb weight:(double)weight failed:(int)failed
{
  connectionData = self->connectionData;
  AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(v12, row, ttfb, ttlb, basettfb, basettlb, weight, failed);
  v10 = connectionData[1];
  if (v10 >= connectionData[2])
  {
    v11 = std::vector<AlgosScoreConnectionFrameRow>::__emplace_back_slow_path<AlgosScoreConnectionFrameRow>(connectionData, v12);
  }

  else
  {
    AlgosScoreConnectionFrameRow::AlgosScoreConnectionFrameRow(connectionData[1], v12);
    v11 = v10 + 64;
    connectionData[1] = v10 + 64;
  }

  connectionData[1] = v11;
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

uint64_t __49__NWSAlgosConnectionScore_scoreConnection_label___block_invoke_3(uint64_t a1)
{
  v1 = *MEMORY[0x277D85E08];
  v2 = [*(a1 + 32) UTF8String];

  return fputs(v2, v1);
}

@end
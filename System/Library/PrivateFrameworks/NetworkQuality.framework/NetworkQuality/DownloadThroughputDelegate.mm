@interface DownloadThroughputDelegate
- (BOOL)checkLimits;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)updateResultsWithByteCount;
- (void)updateResultsWithFlowCount;
- (void)updateResultsWithThroughput:(int64_t)a3 confidence:(int64_t)a4;
@end

@implementation DownloadThroughputDelegate

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v7 = a5;
  if (!self->super._canceled && !self->super._exitCriteriaMet)
  {
    if ([(NSMutableArray *)self->super._probeSessions indexOfObject:v8]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->super._probeSessions addObject:v8];
    }

    -[ThroughputDelegate addNewThroughputMeasurement:](self, "addNewThroughputMeasurement:", [v7 length]);
  }
}

- (void)updateResultsWithFlowCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSMutableArray count](self->super._tasks, "count")}];
    [(NetworkQualityResult *)self->super._results setDownlinkFlows:v4];
  }
}

- (void)updateResultsWithByteCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setDownlinkBytesTransferred:v4];
  }
}

- (void)updateResultsWithThroughput:(int64_t)a3 confidence:(int64_t)a4
{
  if (!self->super._canceled)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v8 = [(NetworkQualityResult *)self->super._results downlinkCapacity];
    [v8 setValue:v7];

    v9 = [(NetworkQualityResult *)self->super._results downlinkCapacity];
    [v9 updateConfidence:a4];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setDownlinkBytesTransferred:v10];
  }
}

- (BOOL)checkLimits
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkData])
  {
    currentBytesTransferred = self->super._currentBytesTransferred;
    if (currentBytesTransferred > [(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkData])
    {
      netqual_log_init();
      v4 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v5 = self->super._currentBytesTransferred;
        nqConfig = self->super._nqConfig;
        v7 = v4;
        *buf = 136315906;
        v26 = "[DownloadThroughputDelegate checkLimits]";
        v27 = 1024;
        v28 = 551;
        v29 = 2048;
        v30 = *&v5;
        v31 = 2048;
        v32 = [(NetworkQualityConfiguration *)nqConfig maxDownlinkData];
        _os_log_impl(&dword_25B962000, v7, OS_LOG_TYPE_DEFAULT, "%s:%u - Downloaded too many bytes: %ld max: %ld", buf, 0x26u);
      }

      if (!self->super._canceled)
      {
        v18 = objc_alloc(MEMORY[0x277CCA9B8]);
        v23 = *MEMORY[0x277CCA450];
        v24 = @"Datalimit exceeded";
        v8 = 1;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v20 = [v18 initWithDomain:@"NetworkQualityErrorDomain" code:1005 userInfo:v19];
        error = self->super._error;
        self->super._error = v20;

        v22 = self->super._error;
        (*(self->super._completionHandler + 2))();
        goto LABEL_16;
      }

      goto LABEL_6;
    }
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  if (self->super._exitCriteriaMet || (v10 = v9, ![(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkThroughput]) || [(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkThroughput]>= v10)
  {
    v8 = 0;
    goto LABEL_16;
  }

  netqual_log_init();
  v11 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->super._nqConfig;
    v13 = v11;
    *buf = 136315906;
    v26 = "[DownloadThroughputDelegate checkLimits]";
    v27 = 1024;
    v28 = 569;
    v29 = 2048;
    v30 = vcvtd_n_f64_s64(v10, 0x14uLL);
    v31 = 2048;
    v32 = vcvtd_n_f64_s64([(NetworkQualityConfiguration *)v12 maxDownlinkThroughput], 0x14uLL);
    _os_log_impl(&dword_25B962000, v13, OS_LOG_TYPE_DEFAULT, "%s:%u - Downlink throughput exceeded: %.3f Mbps max: %.3f Mbps", buf, 0x26u);
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  [(DownloadThroughputDelegate *)self updateResultsWithThroughput:v14 confidence:2];
  v8 = 1;
  self->super._exitCriteriaMet = 1;
  if (!self->super._saturationReached)
  {
    saturationHandler = self->super._saturationHandler;
    if (saturationHandler)
    {
      saturationHandler[2]();
    }

LABEL_6:
    v8 = 1;
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

@end
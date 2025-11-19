@interface VCPLegacyChangeEntry
- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange;
- (void)publish;
- (void)setSummaryTimeRange:(id *)a3;
@end

@implementation VCPLegacyChangeEntry

- (void)publish
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      v4 = [(PHAsset *)self->_asset localIdentifier];
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "   [%@] Publishing PHAssetPropertySetMediaAnalysis", buf, 0xCu);
    }
  }

  v5 = +[MADStateHandler sharedStateHandler];
  v6 = [(PHAsset *)self->_asset localIdentifier];
  [v5 addBreadcrumb:{@"[%@] Publishing PHAssetPropertySetMediaAnalysis", v6}];

  v7 = [PHAssetChangeRequest changeRequestForAsset:self->_asset];
  v8 = [(PHAsset *)self->_asset vcp_modificationDate];
  [v7 setMediaAnalysisTimeStamp:v8];

  [v7 setMediaAnalysisVersion:self->_mediaAnalysisVersion];
  [v7 setMediaAnalysisImageVersion:SLOWORD(self->_mediaAnalysisVersion)];
  v9 = *&self->_summaryTimeRange.start.epoch;
  *buf = *&self->_summaryTimeRange.start.value;
  *&buf[16] = v9;
  v16 = *&self->_summaryTimeRange.duration.timescale;
  [v7 setBestVideoTimeRange:buf];
  *&v10 = self->_autoplayScore;
  [v7 setAutoplaySuggestionScore:v10];
  if ([(PHAsset *)self->_asset mad_isEligibleForComputeSync])
  {
    [v7 setLocalAnalysisStage:self->_analysisStage];
    [v7 setComputeSyncMediaAnalysisPayload:self->_computeSyncPayload];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v11 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        v12 = [(PHAsset *)self->_asset localIdentifier];
        analysisStage = self->_analysisStage;
        v14 = [(NSData *)self->_computeSyncPayload length];
        *buf = 138412802;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = analysisStage;
        *&buf[18] = 1024;
        *&buf[20] = v14;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[%@] publish analysis stage (%d) and compute sync payload (%d bytes)", buf, 0x18u);
      }
    }
  }
}

- ($66BD1C5E7A9131B7E50B573777372F49)summaryTimeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (void)setSummaryTimeRange:(id *)a3
{
  v3 = *&a3->var0.var0;
  v4 = *&a3->var0.var3;
  *&self->_summaryTimeRange.duration.timescale = *&a3->var1.var1;
  *&self->_summaryTimeRange.start.epoch = v4;
  *&self->_summaryTimeRange.start.value = v3;
}

@end
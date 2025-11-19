@interface HMDCloudSyncAnalysisResultLogEvent
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDCloudSyncAnalysisResultLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCloudSyncAnalysisResultLogEvent uploadMaximumDelayReached](self, "uploadMaximumDelayReached")}];
  [v3 setObject:v4 forKeyedSubscript:@"uploadMaximumDelayReached"];

  v5 = +[HMDLogEventHistograms lowVolumeHistogram];
  v6 = [v5 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent decryptionFailedCount](self, "decryptionFailedCount")}];
  [v3 setObject:v6 forKeyedSubscript:@"decryptionFailedCount"];

  v7 = +[HMDLogEventHistograms lowVolumeHistogram];
  v8 = [v7 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent incomingPushCount](self, "incomingPushCount")}];
  [v3 setObject:v8 forKeyedSubscript:@"incomingPushCount"];

  v9 = +[HMDLogEventHistograms lowVolumeHistogram];
  v10 = [v9 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent fetchCount](self, "fetchCount")}];
  [v3 setObject:v10 forKeyedSubscript:@"fetchCount"];

  v11 = +[HMDLogEventHistograms lowVolumeHistogram];
  v12 = [v11 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent fetchErrorCount](self, "fetchErrorCount")}];
  [v3 setObject:v12 forKeyedSubscript:@"fetchErrorCount"];

  v13 = +[HMDLogEventHistograms lowVolumeHistogram];
  v14 = [v13 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent legacyFetchCount](self, "legacyFetchCount")}];
  [v3 setObject:v14 forKeyedSubscript:@"legacyFetchCount"];

  v15 = +[HMDLogEventHistograms lowVolumeHistogram];
  v16 = [v15 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent legacyFetchErrorCount](self, "legacyFetchErrorCount")}];
  [v3 setObject:v16 forKeyedSubscript:@"legacyFetchErrorCount"];

  v17 = +[HMDLogEventHistograms lowVolumeHistogram];
  v18 = [v17 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent uploadCount](self, "uploadCount")}];
  [v3 setObject:v18 forKeyedSubscript:@"uploadCount"];

  v19 = +[HMDLogEventHistograms lowVolumeHistogram];
  v20 = [v19 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent legacyUploadCount](self, "legacyUploadCount")}];
  [v3 setObject:v20 forKeyedSubscript:@"legacyUploadCount"];

  v21 = [(HMDCloudSyncAnalysisResultLogEvent *)self legacyUploadReasonCountMap];
  v22 = [v21 keysSortedByValueUsingComparator:&__block_literal_global_140839];

  v23 = [v22 count];
  if (v23 >= 3)
  {
    v24 = 3;
  }

  else
  {
    v24 = v23;
  }

  v25 = [v22 subarrayWithRange:{0, v24}];

  v100 = v25;
  if ([v25 count])
  {
    v26 = 0;
    do
    {
      v27 = [v25 objectAtIndexedSubscript:v26];
      v28 = v26 + 1;
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"topLegacyUploadReason%d", v26 + 1];
      [v3 setObject:v27 forKeyedSubscript:v29];

      v30 = [(HMDCloudSyncAnalysisResultLogEvent *)self legacyUploadReasonCountMap];
      v31 = [v25 objectAtIndexedSubscript:v26];
      v32 = [v30 objectForKeyedSubscript:v31];
      v33 = self;
      v34 = [v32 unsignedIntegerValue];

      v35 = +[HMDLogEventHistograms lowVolumeHistogram];
      v36 = v34;
      self = v33;
      v25 = v100;
      v37 = [v35 intervalIndexForValue:v36];
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"topLegacyUploadReasonCount%d", v28];
      [v3 setObject:v37 forKeyedSubscript:v38];

      v26 = v28;
    }

    while ([v100 count] > v28);
  }

  v39 = +[HMDLogEventHistograms lowVolumeHistogram];
  v40 = [v39 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent uploadErrorCount](self, "uploadErrorCount")}];
  [v3 setObject:v40 forKeyedSubscript:@"uploadErrorCount"];

  v41 = [(HMDCloudSyncAnalysisResultLogEvent *)self uploadErrorCountMap];
  v42 = [v41 keysSortedByValueUsingComparator:&__block_literal_global_114_140841];

  v43 = [v42 count];
  if (v43 >= 3)
  {
    v44 = 3;
  }

  else
  {
    v44 = v43;
  }

  v45 = [v42 subarrayWithRange:{0, v44}];

  v46 = self;
  v101 = v45;
  if ([v45 count])
  {
    v47 = 0;
    do
    {
      v48 = [v45 objectAtIndexedSubscript:v47];
      v49 = v47 + 1;
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"topUploadError%d", v47 + 1];
      [v3 setObject:v48 forKeyedSubscript:v50];

      v51 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 uploadErrorCountMap];
      v52 = [v101 objectAtIndexedSubscript:v47];
      v53 = [v51 objectForKeyedSubscript:v52];
      v54 = [v53 unsignedIntegerValue];

      v55 = +[HMDLogEventHistograms lowVolumeHistogram];
      v56 = [v55 intervalIndexForValue:v54];
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"topUploadErrorCount%d", v49];
      [v3 setObject:v56 forKeyedSubscript:v57];

      v45 = v101;
      v47 = v49;
    }

    while ([v101 count] > v49);
  }

  v58 = +[HMDLogEventHistograms lowVolumeHistogram];
  v59 = [v58 intervalIndexForValue:{-[HMDCloudSyncAnalysisResultLogEvent legacyUploadErrorCount](v46, "legacyUploadErrorCount")}];
  [v3 setObject:v59 forKeyedSubscript:@"legacyUploadErrorCount"];

  v60 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyUploadErrorCountMap];
  v61 = [v60 keysSortedByValueUsingComparator:&__block_literal_global_125_140846];

  v62 = [v61 count];
  if (v62 >= 3)
  {
    v63 = 3;
  }

  else
  {
    v63 = v62;
  }

  v64 = [v61 subarrayWithRange:{0, v63}];

  if ([v64 count])
  {
    p_info = HMDRemoteKeyedArchiver.info;
    v66 = 0;
    do
    {
      v67 = [v64 objectAtIndexedSubscript:v66];
      v68 = v66 + 1;
      [MEMORY[0x277CCACA8] stringWithFormat:@"topLegacyUploadError%d", v66 + 1];
      v70 = v69 = p_info;
      [v3 setObject:v67 forKeyedSubscript:v70];

      v71 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyUploadErrorCountMap];
      v72 = [v64 objectAtIndexedSubscript:v66];
      v73 = [v71 objectForKeyedSubscript:v72];
      v74 = [v73 unsignedIntegerValue];

      p_info = v69;
      v75 = [v69 + 371 lowVolumeHistogram];
      v76 = [v75 intervalIndexForValue:v74];
      v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"topLegacyUploadErrorCount%d", v68];
      [v3 setObject:v76 forKeyedSubscript:v77];

      v66 = v68;
    }

    while ([v64 count] > v68);
  }

  v78 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 bytesFetched];
  v79 = MEMORY[0x277CCABB0];
  v80 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 bytesFetched];
  if (v78 >> 21 <= 2)
  {
    v81 = v80 >> 20;
  }

  else
  {
    v81 = v80 / 0x500000 + 5;
  }

  v82 = [v79 numberWithUnsignedInteger:v81];
  [v3 setObject:v82 forKeyedSubscript:@"bytesFetched"];

  v83 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 bytesPushed];
  v84 = MEMORY[0x277CCABB0];
  v85 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 bytesPushed];
  if (v83 > 0x5FFFFF)
  {
    v86 = v85 / 0x500000 + 5;
  }

  else
  {
    v86 = v85 >> 20;
  }

  v87 = [v84 numberWithUnsignedInteger:v86];
  [v3 setObject:v87 forKeyedSubscript:@"bytesPushed"];

  v88 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyBytesFetched];
  v89 = MEMORY[0x277CCABB0];
  v90 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyBytesFetched];
  if (v88 > 0x5FFFFF)
  {
    v91 = v90 / 0x500000 + 5;
  }

  else
  {
    v91 = v90 >> 20;
  }

  v92 = [v89 numberWithUnsignedInteger:v91];
  [v3 setObject:v92 forKeyedSubscript:@"legacyBytesFetched"];

  v93 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyBytesPushed];
  v94 = MEMORY[0x277CCABB0];
  v95 = [(HMDCloudSyncAnalysisResultLogEvent *)v46 legacyBytesPushed];
  if (v93 > 0x5FFFFF)
  {
    v96 = v95 / 0x500000 + 5;
  }

  else
  {
    v96 = v95 >> 20;
  }

  v97 = [v94 numberWithUnsignedInteger:v96];
  [v3 setObject:v97 forKeyedSubscript:@"legacyBytesPushed"];

  v98 = [v3 copy];

  return v98;
}

@end
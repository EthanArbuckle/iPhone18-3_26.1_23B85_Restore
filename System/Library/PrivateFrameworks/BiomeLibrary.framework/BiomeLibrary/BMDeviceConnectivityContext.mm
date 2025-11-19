@interface BMDeviceConnectivityContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceConnectivityContext)initWithGeohash:(id)a3 counter:(id)a4 event:(id)a5 ratType:(id)a6 rrcState:(id)a7 cellNsaEnabled:(id)a8 isFR1:(id)a9 cellARFCN:(id)a10 cellBandInfo:(id)a11 cellChannelBW:(id)a12 cellRsrp:(id)a13 cellSinr:(id)a14 cellLteRSRQ:(id)a15 cellNrRSRP:(id)a16 cellNrRSRQ:(id)a17 cellNrSNR:(id)a18 maxDLCAConfigured:(id)a19 totalConfiguredBw:(id)a20 nrConfiguredBw:(id)a21 nrTotalScheduledMimoLayers:(id)a22 totalConfiguredMimoLayers:(id)a23 lteMaxScheduledMimoLayersInACell:(id)a24 nrMaxDlModulation:(id)a25 actualHighBandwidth:(id)a26 actualLowBandwidth:(id)a27 pActualLowBandwidth:(id)a28 maxOfActualLowBandwidth:(id)a29 estimatedHighBandwidth:(id)a30 estimatedLowBandwidth:(id)a31 movingAvgHighBandwidth:(id)a32 movingAvgLowBandwidth:(id)a33 cmDataSentCount:(id)a34 cmDataSentDuration:(id)a35 tcpRTTAvg:(id)a36 tcpRTTvar:(id)a37 videoStreamingStallTime:(id)a38 numStall:(id)a39 stallDuration:(id)a40 cellEstimatedBW:(id)a41 cellLoad:(id)a42 cellModelConfidenceLevel:(id)a43 mlPredictedCellBW:(id)a44 qbssLoad:(id)a45 lqmScorecellular:(id)a46;
- (BMDeviceConnectivityContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceConnectivityContext

+ (id)columns
{
  v49[44] = *MEMORY[0x1E69E9840];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geohash" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"counter" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"event" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rrcState" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNsaEnabled" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFR1" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellARFCN" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellBandInfo" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellChannelBW" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellRsrp" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellSinr" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellLteRSRQ" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrRSRP" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrRSRQ" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrSNR" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxDLCAConfigured" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalConfiguredBw" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrConfiguredBw" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrTotalScheduledMimoLayers" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalConfiguredMimoLayers" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lteMaxScheduledMimoLayersInACell" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrMaxDlModulation" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actualHighBandwidth" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pActualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxOfActualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedHighBandwidth" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedLowBandwidth" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movingAvgHighBandwidth" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movingAvgLowBandwidth" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cmDataSentCount" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cmDataSentDuration" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tcpRTTAvg" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tcpRTTvar" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"videoStreamingStallTime" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numStall" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stallDuration" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellEstimatedBW" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellLoad" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellModelConfidenceLevel" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mlPredictedCellBW" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qbssLoad" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lqmScorecellular" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:4 convertedType:0];
  v49[0] = v48;
  v49[1] = v47;
  v49[2] = v46;
  v49[3] = v45;
  v49[4] = v44;
  v49[5] = v43;
  v49[6] = v42;
  v49[7] = v41;
  v49[8] = v40;
  v49[9] = v39;
  v49[10] = v38;
  v49[11] = v37;
  v49[12] = v36;
  v49[13] = v35;
  v49[14] = v34;
  v49[15] = v33;
  v49[16] = v32;
  v49[17] = v31;
  v49[18] = v30;
  v49[19] = v29;
  v49[20] = v28;
  v49[21] = v27;
  v49[22] = v26;
  v49[23] = v25;
  v49[24] = v24;
  v49[25] = v23;
  v49[26] = v22;
  v49[27] = v21;
  v49[28] = v20;
  v49[29] = v19;
  v49[30] = v18;
  v49[31] = v17;
  v49[32] = v16;
  v49[33] = v15;
  v49[34] = v2;
  v49[35] = v3;
  v49[36] = v4;
  v49[37] = v5;
  v49[38] = v6;
  v49[39] = v7;
  v49[40] = v8;
  v49[41] = v9;
  v49[42] = v14;
  v49[43] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:44];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceConnectivityContext *)self geohash];
    v7 = [v5 geohash];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceConnectivityContext *)self geohash];
      v10 = [v5 geohash];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_221;
      }
    }

    if (-[BMDeviceConnectivityContext hasCounter](self, "hasCounter") || [v5 hasCounter])
    {
      if (![(BMDeviceConnectivityContext *)self hasCounter])
      {
        goto LABEL_221;
      }

      if (![v5 hasCounter])
      {
        goto LABEL_221;
      }

      v13 = [(BMDeviceConnectivityContext *)self counter];
      if (v13 != [v5 counter])
      {
        goto LABEL_221;
      }
    }

    if (-[BMDeviceConnectivityContext hasEvent](self, "hasEvent") || [v5 hasEvent])
    {
      if (![(BMDeviceConnectivityContext *)self hasEvent])
      {
        goto LABEL_221;
      }

      if (![v5 hasEvent])
      {
        goto LABEL_221;
      }

      v14 = [(BMDeviceConnectivityContext *)self event];
      if (v14 != [v5 event])
      {
        goto LABEL_221;
      }
    }

    v15 = [(BMDeviceConnectivityContext *)self ratType];
    v16 = [v5 ratType];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(BMDeviceConnectivityContext *)self ratType];
      v19 = [v5 ratType];
      v20 = [v18 isEqual:v19];

      if (!v20)
      {
        goto LABEL_221;
      }
    }

    if (!-[BMDeviceConnectivityContext hasRrcState](self, "hasRrcState") && ![v5 hasRrcState] || -[BMDeviceConnectivityContext hasRrcState](self, "hasRrcState") && objc_msgSend(v5, "hasRrcState") && (v21 = -[BMDeviceConnectivityContext rrcState](self, "rrcState"), v21 == objc_msgSend(v5, "rrcState")))
    {
      if (!-[BMDeviceConnectivityContext hasCellNsaEnabled](self, "hasCellNsaEnabled") && ![v5 hasCellNsaEnabled] || -[BMDeviceConnectivityContext hasCellNsaEnabled](self, "hasCellNsaEnabled") && objc_msgSend(v5, "hasCellNsaEnabled") && (v22 = -[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled"), v22 == objc_msgSend(v5, "cellNsaEnabled")))
      {
        if (!-[BMDeviceConnectivityContext hasIsFR1](self, "hasIsFR1") && ![v5 hasIsFR1] || -[BMDeviceConnectivityContext hasIsFR1](self, "hasIsFR1") && objc_msgSend(v5, "hasIsFR1") && (v23 = -[BMDeviceConnectivityContext isFR1](self, "isFR1"), v23 == objc_msgSend(v5, "isFR1")))
        {
          if (!-[BMDeviceConnectivityContext hasCellARFCN](self, "hasCellARFCN") && ![v5 hasCellARFCN] || -[BMDeviceConnectivityContext hasCellARFCN](self, "hasCellARFCN") && objc_msgSend(v5, "hasCellARFCN") && (v24 = -[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN"), v24 == objc_msgSend(v5, "cellARFCN")))
          {
            if (!-[BMDeviceConnectivityContext hasCellBandInfo](self, "hasCellBandInfo") && ![v5 hasCellBandInfo] || -[BMDeviceConnectivityContext hasCellBandInfo](self, "hasCellBandInfo") && objc_msgSend(v5, "hasCellBandInfo") && (v25 = -[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo"), v25 == objc_msgSend(v5, "cellBandInfo")))
            {
              if (!-[BMDeviceConnectivityContext hasCellChannelBW](self, "hasCellChannelBW") && ![v5 hasCellChannelBW] || -[BMDeviceConnectivityContext hasCellChannelBW](self, "hasCellChannelBW") && objc_msgSend(v5, "hasCellChannelBW") && (v26 = -[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW"), v26 == objc_msgSend(v5, "cellChannelBW")))
              {
                if (!-[BMDeviceConnectivityContext hasCellRsrp](self, "hasCellRsrp") && ![v5 hasCellRsrp] || -[BMDeviceConnectivityContext hasCellRsrp](self, "hasCellRsrp") && objc_msgSend(v5, "hasCellRsrp") && (v27 = -[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp"), v27 == objc_msgSend(v5, "cellRsrp")))
                {
                  if (!-[BMDeviceConnectivityContext hasCellSinr](self, "hasCellSinr") && ![v5 hasCellSinr] || -[BMDeviceConnectivityContext hasCellSinr](self, "hasCellSinr") && objc_msgSend(v5, "hasCellSinr") && (v28 = -[BMDeviceConnectivityContext cellSinr](self, "cellSinr"), v28 == objc_msgSend(v5, "cellSinr")))
                  {
                    if (!-[BMDeviceConnectivityContext hasCellLteRSRQ](self, "hasCellLteRSRQ") && ![v5 hasCellLteRSRQ] || -[BMDeviceConnectivityContext hasCellLteRSRQ](self, "hasCellLteRSRQ") && objc_msgSend(v5, "hasCellLteRSRQ") && (v29 = -[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ"), v29 == objc_msgSend(v5, "cellLteRSRQ")))
                    {
                      if (!-[BMDeviceConnectivityContext hasCellNrRSRP](self, "hasCellNrRSRP") && ![v5 hasCellNrRSRP] || -[BMDeviceConnectivityContext hasCellNrRSRP](self, "hasCellNrRSRP") && objc_msgSend(v5, "hasCellNrRSRP") && (v30 = -[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP"), v30 == objc_msgSend(v5, "cellNrRSRP")))
                      {
                        if (!-[BMDeviceConnectivityContext hasCellNrRSRQ](self, "hasCellNrRSRQ") && ![v5 hasCellNrRSRQ] || -[BMDeviceConnectivityContext hasCellNrRSRQ](self, "hasCellNrRSRQ") && objc_msgSend(v5, "hasCellNrRSRQ") && (v31 = -[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ"), v31 == objc_msgSend(v5, "cellNrRSRQ")))
                        {
                          if (!-[BMDeviceConnectivityContext hasCellNrSNR](self, "hasCellNrSNR") && ![v5 hasCellNrSNR] || -[BMDeviceConnectivityContext hasCellNrSNR](self, "hasCellNrSNR") && objc_msgSend(v5, "hasCellNrSNR") && (v32 = -[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR"), v32 == objc_msgSend(v5, "cellNrSNR")))
                          {
                            if (!-[BMDeviceConnectivityContext hasMaxDLCAConfigured](self, "hasMaxDLCAConfigured") && ![v5 hasMaxDLCAConfigured] || -[BMDeviceConnectivityContext hasMaxDLCAConfigured](self, "hasMaxDLCAConfigured") && objc_msgSend(v5, "hasMaxDLCAConfigured") && (v33 = -[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured"), v33 == objc_msgSend(v5, "maxDLCAConfigured")))
                            {
                              if (!-[BMDeviceConnectivityContext hasTotalConfiguredBw](self, "hasTotalConfiguredBw") && ![v5 hasTotalConfiguredBw] || -[BMDeviceConnectivityContext hasTotalConfiguredBw](self, "hasTotalConfiguredBw") && objc_msgSend(v5, "hasTotalConfiguredBw") && (v34 = -[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw"), v34 == objc_msgSend(v5, "totalConfiguredBw")))
                              {
                                if (!-[BMDeviceConnectivityContext hasNrConfiguredBw](self, "hasNrConfiguredBw") && ![v5 hasNrConfiguredBw] || -[BMDeviceConnectivityContext hasNrConfiguredBw](self, "hasNrConfiguredBw") && objc_msgSend(v5, "hasNrConfiguredBw") && (v35 = -[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw"), v35 == objc_msgSend(v5, "nrConfiguredBw")))
                                {
                                  if (!-[BMDeviceConnectivityContext hasNrTotalScheduledMimoLayers](self, "hasNrTotalScheduledMimoLayers") && ![v5 hasNrTotalScheduledMimoLayers] || -[BMDeviceConnectivityContext hasNrTotalScheduledMimoLayers](self, "hasNrTotalScheduledMimoLayers") && objc_msgSend(v5, "hasNrTotalScheduledMimoLayers") && (v36 = -[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers"), v36 == objc_msgSend(v5, "nrTotalScheduledMimoLayers")))
                                  {
                                    if (!-[BMDeviceConnectivityContext hasTotalConfiguredMimoLayers](self, "hasTotalConfiguredMimoLayers") && ![v5 hasTotalConfiguredMimoLayers] || -[BMDeviceConnectivityContext hasTotalConfiguredMimoLayers](self, "hasTotalConfiguredMimoLayers") && objc_msgSend(v5, "hasTotalConfiguredMimoLayers") && (v37 = -[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers"), v37 == objc_msgSend(v5, "totalConfiguredMimoLayers")))
                                    {
                                      if (!-[BMDeviceConnectivityContext hasLteMaxScheduledMimoLayersInACell](self, "hasLteMaxScheduledMimoLayersInACell") && ![v5 hasLteMaxScheduledMimoLayersInACell] || -[BMDeviceConnectivityContext hasLteMaxScheduledMimoLayersInACell](self, "hasLteMaxScheduledMimoLayersInACell") && objc_msgSend(v5, "hasLteMaxScheduledMimoLayersInACell") && (v38 = -[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell"), v38 == objc_msgSend(v5, "lteMaxScheduledMimoLayersInACell")))
                                      {
                                        if (!-[BMDeviceConnectivityContext hasNrMaxDlModulation](self, "hasNrMaxDlModulation") && ![v5 hasNrMaxDlModulation] || -[BMDeviceConnectivityContext hasNrMaxDlModulation](self, "hasNrMaxDlModulation") && objc_msgSend(v5, "hasNrMaxDlModulation") && (v39 = -[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation"), v39 == objc_msgSend(v5, "nrMaxDlModulation")))
                                        {
                                          if (!-[BMDeviceConnectivityContext hasActualHighBandwidth](self, "hasActualHighBandwidth") && ![v5 hasActualHighBandwidth] || -[BMDeviceConnectivityContext hasActualHighBandwidth](self, "hasActualHighBandwidth") && objc_msgSend(v5, "hasActualHighBandwidth") && (v40 = -[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth"), v40 == objc_msgSend(v5, "actualHighBandwidth")))
                                          {
                                            if (!-[BMDeviceConnectivityContext hasActualLowBandwidth](self, "hasActualLowBandwidth") && ![v5 hasActualLowBandwidth] || -[BMDeviceConnectivityContext hasActualLowBandwidth](self, "hasActualLowBandwidth") && objc_msgSend(v5, "hasActualLowBandwidth") && (v41 = -[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth"), v41 == objc_msgSend(v5, "actualLowBandwidth")))
                                            {
                                              if (!-[BMDeviceConnectivityContext hasPActualLowBandwidth](self, "hasPActualLowBandwidth") && ![v5 hasPActualLowBandwidth] || -[BMDeviceConnectivityContext hasPActualLowBandwidth](self, "hasPActualLowBandwidth") && objc_msgSend(v5, "hasPActualLowBandwidth") && (v42 = -[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth"), v42 == objc_msgSend(v5, "pActualLowBandwidth")))
                                              {
                                                if (!-[BMDeviceConnectivityContext hasMaxOfActualLowBandwidth](self, "hasMaxOfActualLowBandwidth") && ![v5 hasMaxOfActualLowBandwidth] || -[BMDeviceConnectivityContext hasMaxOfActualLowBandwidth](self, "hasMaxOfActualLowBandwidth") && objc_msgSend(v5, "hasMaxOfActualLowBandwidth") && (v43 = -[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth"), v43 == objc_msgSend(v5, "maxOfActualLowBandwidth")))
                                                {
                                                  if (!-[BMDeviceConnectivityContext hasEstimatedHighBandwidth](self, "hasEstimatedHighBandwidth") && ![v5 hasEstimatedHighBandwidth] || -[BMDeviceConnectivityContext hasEstimatedHighBandwidth](self, "hasEstimatedHighBandwidth") && objc_msgSend(v5, "hasEstimatedHighBandwidth") && (v44 = -[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth"), v44 == objc_msgSend(v5, "estimatedHighBandwidth")))
                                                  {
                                                    if (!-[BMDeviceConnectivityContext hasEstimatedLowBandwidth](self, "hasEstimatedLowBandwidth") && ![v5 hasEstimatedLowBandwidth] || -[BMDeviceConnectivityContext hasEstimatedLowBandwidth](self, "hasEstimatedLowBandwidth") && objc_msgSend(v5, "hasEstimatedLowBandwidth") && (v45 = -[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth"), v45 == objc_msgSend(v5, "estimatedLowBandwidth")))
                                                    {
                                                      if (!-[BMDeviceConnectivityContext hasMovingAvgHighBandwidth](self, "hasMovingAvgHighBandwidth") && ![v5 hasMovingAvgHighBandwidth] || -[BMDeviceConnectivityContext hasMovingAvgHighBandwidth](self, "hasMovingAvgHighBandwidth") && objc_msgSend(v5, "hasMovingAvgHighBandwidth") && (v46 = -[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth"), v46 == objc_msgSend(v5, "movingAvgHighBandwidth")))
                                                      {
                                                        if (!-[BMDeviceConnectivityContext hasMovingAvgLowBandwidth](self, "hasMovingAvgLowBandwidth") && ![v5 hasMovingAvgLowBandwidth] || -[BMDeviceConnectivityContext hasMovingAvgLowBandwidth](self, "hasMovingAvgLowBandwidth") && objc_msgSend(v5, "hasMovingAvgLowBandwidth") && (v47 = -[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth"), v47 == objc_msgSend(v5, "movingAvgLowBandwidth")))
                                                        {
                                                          if (!-[BMDeviceConnectivityContext hasCmDataSentCount](self, "hasCmDataSentCount") && ![v5 hasCmDataSentCount] || -[BMDeviceConnectivityContext hasCmDataSentCount](self, "hasCmDataSentCount") && objc_msgSend(v5, "hasCmDataSentCount") && (v48 = -[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount"), v48 == objc_msgSend(v5, "cmDataSentCount")))
                                                          {
                                                            if (!-[BMDeviceConnectivityContext hasCmDataSentDuration](self, "hasCmDataSentDuration") && ![v5 hasCmDataSentDuration] || -[BMDeviceConnectivityContext hasCmDataSentDuration](self, "hasCmDataSentDuration") && objc_msgSend(v5, "hasCmDataSentDuration") && (v49 = -[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration"), v49 == objc_msgSend(v5, "cmDataSentDuration")))
                                                            {
                                                              if (!-[BMDeviceConnectivityContext hasTcpRTTAvg](self, "hasTcpRTTAvg") && ![v5 hasTcpRTTAvg] || -[BMDeviceConnectivityContext hasTcpRTTAvg](self, "hasTcpRTTAvg") && objc_msgSend(v5, "hasTcpRTTAvg") && (v50 = -[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg"), v50 == objc_msgSend(v5, "tcpRTTAvg")))
                                                              {
                                                                if (!-[BMDeviceConnectivityContext hasTcpRTTvar](self, "hasTcpRTTvar") && ![v5 hasTcpRTTvar] || -[BMDeviceConnectivityContext hasTcpRTTvar](self, "hasTcpRTTvar") && objc_msgSend(v5, "hasTcpRTTvar") && (v51 = -[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar"), v51 == objc_msgSend(v5, "tcpRTTvar")))
                                                                {
                                                                  if (!-[BMDeviceConnectivityContext hasVideoStreamingStallTime](self, "hasVideoStreamingStallTime") && ![v5 hasVideoStreamingStallTime] || -[BMDeviceConnectivityContext hasVideoStreamingStallTime](self, "hasVideoStreamingStallTime") && objc_msgSend(v5, "hasVideoStreamingStallTime") && (v52 = -[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime"), v52 == objc_msgSend(v5, "videoStreamingStallTime")))
                                                                  {
                                                                    if (!-[BMDeviceConnectivityContext hasNumStall](self, "hasNumStall") && ![v5 hasNumStall] || -[BMDeviceConnectivityContext hasNumStall](self, "hasNumStall") && objc_msgSend(v5, "hasNumStall") && (v53 = -[BMDeviceConnectivityContext numStall](self, "numStall"), v53 == objc_msgSend(v5, "numStall")))
                                                                    {
                                                                      if (!-[BMDeviceConnectivityContext hasStallDuration](self, "hasStallDuration") && ![v5 hasStallDuration] || -[BMDeviceConnectivityContext hasStallDuration](self, "hasStallDuration") && objc_msgSend(v5, "hasStallDuration") && (v54 = -[BMDeviceConnectivityContext stallDuration](self, "stallDuration"), v54 == objc_msgSend(v5, "stallDuration")))
                                                                      {
                                                                        if (!-[BMDeviceConnectivityContext hasCellEstimatedBW](self, "hasCellEstimatedBW") && ![v5 hasCellEstimatedBW] || -[BMDeviceConnectivityContext hasCellEstimatedBW](self, "hasCellEstimatedBW") && objc_msgSend(v5, "hasCellEstimatedBW") && (v55 = -[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW"), v55 == objc_msgSend(v5, "cellEstimatedBW")))
                                                                        {
                                                                          if (!-[BMDeviceConnectivityContext hasCellLoad](self, "hasCellLoad") && ![v5 hasCellLoad] || -[BMDeviceConnectivityContext hasCellLoad](self, "hasCellLoad") && objc_msgSend(v5, "hasCellLoad") && (v56 = -[BMDeviceConnectivityContext cellLoad](self, "cellLoad"), v56 == objc_msgSend(v5, "cellLoad")))
                                                                          {
                                                                            if (!-[BMDeviceConnectivityContext hasCellModelConfidenceLevel](self, "hasCellModelConfidenceLevel") && ![v5 hasCellModelConfidenceLevel] || -[BMDeviceConnectivityContext hasCellModelConfidenceLevel](self, "hasCellModelConfidenceLevel") && objc_msgSend(v5, "hasCellModelConfidenceLevel") && (v57 = -[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel"), v57 == objc_msgSend(v5, "cellModelConfidenceLevel")))
                                                                            {
                                                                              if (!-[BMDeviceConnectivityContext hasMlPredictedCellBW](self, "hasMlPredictedCellBW") && ![v5 hasMlPredictedCellBW] || -[BMDeviceConnectivityContext hasMlPredictedCellBW](self, "hasMlPredictedCellBW") && objc_msgSend(v5, "hasMlPredictedCellBW") && (v58 = -[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW"), v58 == objc_msgSend(v5, "mlPredictedCellBW")))
                                                                              {
                                                                                if (!-[BMDeviceConnectivityContext hasQbssLoad](self, "hasQbssLoad") && ![v5 hasQbssLoad] || -[BMDeviceConnectivityContext hasQbssLoad](self, "hasQbssLoad") && objc_msgSend(v5, "hasQbssLoad") && (v59 = -[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad"), v59 == objc_msgSend(v5, "qbssLoad")))
                                                                                {
                                                                                  if (!-[BMDeviceConnectivityContext hasLqmScorecellular](self, "hasLqmScorecellular") && ![v5 hasLqmScorecellular])
                                                                                  {
                                                                                    v12 = 1;
                                                                                    goto LABEL_222;
                                                                                  }

                                                                                  if (-[BMDeviceConnectivityContext hasLqmScorecellular](self, "hasLqmScorecellular") && [v5 hasLqmScorecellular])
                                                                                  {
                                                                                    v60 = [(BMDeviceConnectivityContext *)self lqmScorecellular];
                                                                                    v12 = v60 == [v5 lqmScorecellular];
LABEL_222:

                                                                                    goto LABEL_223;
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_221:
    v12 = 0;
    goto LABEL_222;
  }

  v12 = 0;
LABEL_223:

  return v12;
}

- (id)jsonDictionary
{
  v143[44] = *MEMORY[0x1E69E9840];
  v3 = [(BMDeviceConnectivityContext *)self geohash];
  if ([(BMDeviceConnectivityContext *)self hasCounter])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext counter](self, "counter")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEvent])
  {
    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext event](self, "event")}];
  }

  else
  {
    v105 = 0;
  }

  v5 = [(BMDeviceConnectivityContext *)self ratType];
  if ([(BMDeviceConnectivityContext *)self hasRrcState])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext rrcState](self, "rrcState")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNsaEnabled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasIsFR1])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext isFR1](self, "isFR1")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellARFCN])
  {
    v141 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN")}];
  }

  else
  {
    v141 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellBandInfo])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo")}];
  }

  else
  {
    v140 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellChannelBW])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW")}];
  }

  else
  {
    v139 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellRsrp])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellSinr])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellSinr](self, "cellSinr")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellLteRSRQ])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrRSRP])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrRSRQ])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrSNR])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMaxDLCAConfigured])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTotalConfiguredBw])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrConfiguredBw])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw")}];
  }

  else
  {
    v130 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrTotalScheduledMimoLayers])
  {
    v129 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers")}];
  }

  else
  {
    v129 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTotalConfiguredMimoLayers])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers")}];
  }

  else
  {
    v128 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasLteMaxScheduledMimoLayersInACell])
  {
    v127 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell")}];
  }

  else
  {
    v127 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrMaxDlModulation])
  {
    v126 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation")}];
  }

  else
  {
    v126 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasActualHighBandwidth])
  {
    v125 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth")}];
  }

  else
  {
    v125 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasActualLowBandwidth])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasPActualLowBandwidth])
  {
    v123 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth")}];
  }

  else
  {
    v123 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMaxOfActualLowBandwidth])
  {
    v122 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth")}];
  }

  else
  {
    v122 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEstimatedHighBandwidth])
  {
    v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth")}];
  }

  else
  {
    v121 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEstimatedLowBandwidth])
  {
    v120 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth")}];
  }

  else
  {
    v120 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMovingAvgHighBandwidth])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth")}];
  }

  else
  {
    v119 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMovingAvgLowBandwidth])
  {
    v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth")}];
  }

  else
  {
    v118 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCmDataSentCount])
  {
    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount")}];
  }

  else
  {
    v117 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCmDataSentDuration])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration")}];
  }

  else
  {
    v116 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTcpRTTAvg])
  {
    v115 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg")}];
  }

  else
  {
    v115 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTcpRTTvar])
  {
    v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar")}];
  }

  else
  {
    v114 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasVideoStreamingStallTime])
  {
    v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime")}];
  }

  else
  {
    v113 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNumStall])
  {
    v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext numStall](self, "numStall")}];
  }

  else
  {
    v112 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasStallDuration])
  {
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext stallDuration](self, "stallDuration")}];
  }

  else
  {
    v111 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellEstimatedBW])
  {
    v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW")}];
  }

  else
  {
    v110 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellLoad])
  {
    v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellLoad](self, "cellLoad")}];
  }

  else
  {
    v109 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellModelConfidenceLevel])
  {
    v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel")}];
  }

  else
  {
    v108 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMlPredictedCellBW])
  {
    v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW")}];
  }

  else
  {
    v107 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasQbssLoad])
  {
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad")}];
  }

  else
  {
    v106 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasLqmScorecellular])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lqmScorecellular](self, "lqmScorecellular")}];
  }

  else
  {
    v9 = 0;
  }

  v142[0] = @"geohash";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v10;
  v143[0] = v10;
  v142[1] = @"counter";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = v11;
  v143[1] = v11;
  v142[2] = @"event";
  v12 = v105;
  if (!v105)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v12;
  v143[2] = v12;
  v142[3] = @"ratType";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = v13;
  v143[3] = v13;
  v142[4] = @"rrcState";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v14;
  v143[4] = v14;
  v142[5] = @"cellNsaEnabled";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = v15;
  v143[5] = v15;
  v142[6] = @"isFR1";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = v16;
  v143[6] = v16;
  v142[7] = @"cellARFCN";
  v17 = v141;
  if (!v141)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v143[7] = v17;
  v142[8] = @"cellBandInfo";
  v18 = v140;
  if (!v140)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v143[8] = v18;
  v142[9] = @"cellChannelBW";
  v19 = v139;
  if (!v139)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v5;
  v99 = v19;
  v143[9] = v19;
  v142[10] = @"cellRsrp";
  v21 = v138;
  if (!v138)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v3;
  v98 = v21;
  v143[10] = v21;
  v142[11] = @"cellSinr";
  v23 = v137;
  if (!v137)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v23;
  v143[11] = v23;
  v142[12] = @"cellLteRSRQ";
  v25 = v136;
  if (!v136)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v25;
  v143[12] = v25;
  v142[13] = @"cellNrRSRP";
  v26 = v135;
  if (!v135)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v26;
  v143[13] = v26;
  v142[14] = @"cellNrRSRQ";
  v27 = v134;
  if (!v134)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v27;
  v143[14] = v27;
  v142[15] = @"cellNrSNR";
  v28 = v133;
  if (!v133)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v28;
  v143[15] = v28;
  v142[16] = @"maxDLCAConfigured";
  v29 = v132;
  if (!v132)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v29;
  v143[16] = v29;
  v142[17] = @"totalConfiguredBw";
  v30 = v131;
  if (!v131)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v30;
  v143[17] = v30;
  v142[18] = @"nrConfiguredBw";
  v31 = v130;
  if (!v130)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v31;
  v143[18] = v31;
  v142[19] = @"nrTotalScheduledMimoLayers";
  v32 = v129;
  if (!v129)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v32;
  v143[19] = v32;
  v142[20] = @"totalConfiguredMimoLayers";
  v33 = v128;
  if (!v128)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v33;
  v143[20] = v33;
  v142[21] = @"lteMaxScheduledMimoLayersInACell";
  v34 = v127;
  if (!v127)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v34;
  v143[21] = v34;
  v142[22] = @"nrMaxDlModulation";
  v35 = v126;
  if (!v126)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v35;
  v143[22] = v35;
  v142[23] = @"actualHighBandwidth";
  v36 = v125;
  if (!v125)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v36;
  v143[23] = v36;
  v142[24] = @"actualLowBandwidth";
  v37 = v124;
  if (!v124)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v37;
  v143[24] = v37;
  v142[25] = @"pActualLowBandwidth";
  v38 = v123;
  if (!v123)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v38;
  v143[25] = v38;
  v142[26] = @"maxOfActualLowBandwidth";
  v39 = v122;
  if (!v122)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v39;
  v143[26] = v39;
  v142[27] = @"estimatedHighBandwidth";
  v40 = v121;
  if (!v121)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v40;
  v143[27] = v40;
  v142[28] = @"estimatedLowBandwidth";
  v41 = v120;
  if (!v120)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v41;
  v143[28] = v41;
  v142[29] = @"movingAvgHighBandwidth";
  v42 = v119;
  if (!v119)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v42;
  v143[29] = v42;
  v142[30] = @"movingAvgLowBandwidth";
  v43 = v118;
  if (!v118)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v43;
  v143[30] = v43;
  v142[31] = @"cmDataSentCount";
  v44 = v117;
  if (!v117)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v44;
  v143[31] = v44;
  v142[32] = @"cmDataSentDuration";
  v45 = v116;
  if (!v116)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v45;
  v143[32] = v45;
  v142[33] = @"tcpRTTAvg";
  v46 = v115;
  if (!v115)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v46;
  v143[33] = v46;
  v142[34] = @"tcpRTTvar";
  v47 = v114;
  if (!v114)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v4;
  v65 = v47;
  v143[34] = v47;
  v142[35] = @"videoStreamingStallTime";
  v48 = v113;
  if (!v113)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v6;
  v64 = v48;
  v143[35] = v48;
  v142[36] = @"numStall";
  v49 = v112;
  if (!v112)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v17;
  v63 = v49;
  v143[36] = v49;
  v142[37] = @"stallDuration";
  v50 = v111;
  if (!v111)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v7;
  v61 = v50;
  v143[37] = v50;
  v142[38] = @"cellEstimatedBW";
  v51 = v110;
  if (!v110)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v22;
  v143[38] = v51;
  v142[39] = @"cellLoad";
  v52 = v109;
  if (!v109)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = v18;
  v104 = v9;
  v143[39] = v52;
  v142[40] = @"cellModelConfidenceLevel";
  v53 = v108;
  if (!v108)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v143[40] = v53;
  v142[41] = @"mlPredictedCellBW";
  v54 = v107;
  if (!v107)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v8;
  v143[41] = v54;
  v142[42] = @"qbssLoad";
  v56 = v106;
  if (!v106)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v143[42] = v56;
  v142[43] = @"lqmScorecellular";
  v57 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v143[43] = v9;
  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v143 forKeys:v142 count:{44, v61}];
  if (!v57)
  {
  }

  v58 = v24;
  if (!v106)
  {

    v58 = v24;
  }

  if (!v107)
  {

    v58 = v24;
  }

  if (!v108)
  {

    v58 = v24;
  }

  if (!v109)
  {

    v58 = v24;
  }

  if (!v110)
  {

    v58 = v24;
  }

  if (!v111)
  {

    v58 = v24;
  }

  if (!v112)
  {

    v58 = v24;
  }

  if (!v113)
  {

    v58 = v24;
  }

  if (!v114)
  {

    v58 = v24;
  }

  if (!v115)
  {

    v58 = v24;
  }

  if (!v116)
  {

    v58 = v24;
  }

  if (!v117)
  {

    v58 = v24;
  }

  if (!v118)
  {

    v58 = v24;
  }

  if (!v119)
  {

    v58 = v24;
  }

  if (!v120)
  {

    v58 = v24;
  }

  if (!v121)
  {

    v58 = v24;
  }

  if (!v122)
  {

    v58 = v24;
  }

  if (!v123)
  {

    v58 = v24;
  }

  if (!v124)
  {

    v58 = v24;
  }

  if (!v125)
  {

    v58 = v24;
  }

  if (!v126)
  {

    v58 = v24;
  }

  if (!v127)
  {

    v58 = v24;
  }

  if (!v128)
  {

    v58 = v24;
  }

  if (!v129)
  {

    v58 = v24;
  }

  if (!v130)
  {

    v58 = v24;
  }

  if (!v131)
  {

    v58 = v24;
  }

  if (!v132)
  {

    v58 = v24;
  }

  if (!v133)
  {

    v58 = v24;
  }

  if (!v134)
  {

    v58 = v24;
  }

  if (!v135)
  {

    v58 = v24;
  }

  if (!v136)
  {

    v58 = v24;
  }

  if (!v137)
  {
  }

  if (!v138)
  {
  }

  if (!v139)
  {
  }

  if (!v140)
  {
  }

  if (v141)
  {
    if (v55)
    {
      goto LABEL_289;
    }
  }

  else
  {

    if (v55)
    {
LABEL_289:
      if (v101)
      {
        goto LABEL_290;
      }

      goto LABEL_300;
    }
  }

  if (v101)
  {
LABEL_290:
    if (v102)
    {
      goto LABEL_291;
    }

    goto LABEL_301;
  }

LABEL_300:

  if (v102)
  {
LABEL_291:
    if (v20)
    {
      goto LABEL_292;
    }

    goto LABEL_302;
  }

LABEL_301:

  if (v20)
  {
LABEL_292:
    if (v105)
    {
      goto LABEL_293;
    }

    goto LABEL_303;
  }

LABEL_302:

  if (v105)
  {
LABEL_293:
    if (v103)
    {
      goto LABEL_294;
    }

LABEL_304:

    if (v100)
    {
      goto LABEL_295;
    }

    goto LABEL_305;
  }

LABEL_303:

  if (!v103)
  {
    goto LABEL_304;
  }

LABEL_294:
  if (v100)
  {
    goto LABEL_295;
  }

LABEL_305:

LABEL_295:
  v59 = *MEMORY[0x1E69E9840];

  return v97;
}

- (BMDeviceConnectivityContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v492[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v404 = [v6 objectForKeyedSubscript:@"geohash"];
  if (!v404 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v402 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v402 = v404;
LABEL_4:
    v403 = [v6 objectForKeyedSubscript:@"counter"];
    if (!v403 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v401 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v401 = v403;
LABEL_7:
      v7 = [v6 objectForKeyedSubscript:@"event"];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = a4;
        a4 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = a4;
        a4 = v7;
LABEL_10:
        v9 = [v6 objectForKeyedSubscript:@"ratType"];
        if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v399 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v399 = v9;
LABEL_13:
          v10 = [v6 objectForKeyedSubscript:@"rrcState"];
          v396 = self;
          if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v393 = v10;
            v397 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v393 = v10;
            v397 = v10;
LABEL_16:
            v400 = [v6 objectForKeyedSubscript:@"cellNsaEnabled"];
            if (!v400 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v395 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v395 = v400;
LABEL_19:
              v398 = [v6 objectForKeyedSubscript:@"isFR1"];
              v390 = a4;
              if (!v398 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v392 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v392 = v398;
LABEL_22:
                v11 = [v6 objectForKeyedSubscript:@"cellARFCN"];
                v391 = v11;
                if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v389 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v389 = v12;
LABEL_25:
                  v13 = [v6 objectForKeyedSubscript:@"cellBandInfo"];
                  v350 = v13;
                  if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v349 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v349 = v14;
LABEL_28:
                    v15 = [v6 objectForKeyedSubscript:@"cellChannelBW"];
                    v347 = v15;
                    if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v346 = 0;
LABEL_31:
                      v17 = [v6 objectForKeyedSubscript:@"cellRsrp"];
                      v345 = v17;
                      if (!v17)
                      {
                        goto LABEL_69;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v17 = 0;
                        goto LABEL_69;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v17 = v17;
LABEL_69:
                        [v6 objectForKeyedSubscript:@"cellSinr"];
                        v49 = v48 = v8;
                        v343 = v17;
                        if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v342 = 0;
                          goto LABEL_72;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v342 = v49;
LABEL_72:
                          v50 = [v6 objectForKeyedSubscript:@"cellLteRSRQ"];
                          v344 = v50;
                          if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v337 = 0;
                            goto LABEL_75;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v337 = v51;
LABEL_75:
                            v52 = [v6 objectForKeyedSubscript:@"cellNrRSRP"];
                            v338 = v52;
                            if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v54 = v49;
                              v339 = 0;
                              goto LABEL_78;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v54 = v49;
                              v339 = v53;
LABEL_78:
                              v55 = [v6 objectForKeyedSubscript:@"cellNrRSRQ"];
                              v334 = v54;
                              v336 = v55;
                              if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v57 = 0;
                                goto LABEL_81;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v57 = v56;
LABEL_81:
                                v58 = [v6 objectForKeyedSubscript:@"cellNrSNR"];
                                v335 = v58;
                                if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v330 = v48;
                                  v340 = 0;
LABEL_84:
                                  v331 = v57;
                                  v60 = [v6 objectForKeyedSubscript:@"maxDLCAConfigured"];
                                  v332 = v60;
                                  if (!v60)
                                  {
                                    v333 = 0;
                                    v63 = v340;
                                    goto LABEL_119;
                                  }

                                  v61 = v60;
                                  objc_opt_class();
                                  v62 = v340;
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v63 = v340;
                                    v333 = 0;
                                    goto LABEL_119;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v63 = v340;
                                    v333 = v61;
LABEL_119:
                                    v89 = [v6 objectForKeyedSubscript:@"totalConfiguredBw"];
                                    v329 = v89;
                                    if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v91 = 0;
LABEL_122:
                                      [v6 objectForKeyedSubscript:@"nrConfiguredBw"];
                                      v92 = v62 = v63;
                                      v328 = v92;
                                      v341 = v62;
                                      if (!v92)
                                      {
                                        goto LABEL_137;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v92 = 0;
                                        goto LABEL_137;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v92 = v92;
LABEL_137:
                                        v101 = v91;
                                        v102 = [v6 objectForKeyedSubscript:@"nrTotalScheduledMimoLayers"];
                                        v326 = v102;
                                        v327 = v92;
                                        if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v325 = 0;
LABEL_140:
                                          v104 = [v6 objectForKeyedSubscript:@"totalConfiguredMimoLayers"];
                                          v105 = v101;
                                          v324 = v104;
                                          if (!v104)
                                          {
                                            v323 = 0;
                                            v62 = v341;
                                            goto LABEL_156;
                                          }

                                          v106 = v104;
                                          objc_opt_class();
                                          v62 = v341;
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v323 = 0;
                                            goto LABEL_156;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v323 = v106;
LABEL_156:
                                            v115 = [v6 objectForKeyedSubscript:@"lteMaxScheduledMimoLayersInACell"];
                                            v322 = v115;
                                            if (!v115 || (v116 = v115, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v321 = 0;
                                              goto LABEL_159;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v321 = v116;
LABEL_159:
                                              v117 = [v6 objectForKeyedSubscript:@"nrMaxDlModulation"];
                                              v320 = v117;
                                              if (!v117 || (v118 = v117, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v319 = 0;
                                                goto LABEL_162;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v319 = v118;
LABEL_162:
                                                v119 = [v6 objectForKeyedSubscript:@"actualHighBandwidth"];
                                                v318 = v119;
                                                if (!v119 || (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v317 = 0;
                                                  goto LABEL_165;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v317 = v120;
LABEL_165:
                                                  v121 = [v6 objectForKeyedSubscript:@"actualLowBandwidth"];
                                                  v316 = v121;
                                                  if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v315 = 0;
                                                    goto LABEL_168;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v315 = v122;
LABEL_168:
                                                    v123 = [v6 objectForKeyedSubscript:@"pActualLowBandwidth"];
                                                    v314 = v123;
                                                    if (!v123 || (v124 = v123, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v313 = 0;
                                                      goto LABEL_171;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v313 = v124;
LABEL_171:
                                                      v125 = [v6 objectForKeyedSubscript:@"maxOfActualLowBandwidth"];
                                                      v312 = v125;
                                                      if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v311 = 0;
                                                        goto LABEL_174;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v311 = v126;
LABEL_174:
                                                        v127 = [v6 objectForKeyedSubscript:@"estimatedHighBandwidth"];
                                                        v310 = v127;
                                                        if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v309 = 0;
                                                          goto LABEL_177;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v309 = v128;
LABEL_177:
                                                          v129 = [v6 objectForKeyedSubscript:@"estimatedLowBandwidth"];
                                                          v308 = v129;
                                                          if (!v129 || (v130 = v129, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v307 = 0;
                                                            goto LABEL_180;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v307 = v130;
LABEL_180:
                                                            v131 = [v6 objectForKeyedSubscript:@"movingAvgHighBandwidth"];
                                                            v306 = v131;
                                                            if (!v131 || (v132 = v131, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v305 = 0;
                                                              goto LABEL_183;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v305 = v132;
LABEL_183:
                                                              v133 = [v6 objectForKeyedSubscript:@"movingAvgLowBandwidth"];
                                                              v304 = v133;
                                                              if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v303 = 0;
                                                                goto LABEL_186;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v303 = v134;
LABEL_186:
                                                                v135 = [v6 objectForKeyedSubscript:@"cmDataSentCount"];
                                                                v301 = v135;
                                                                if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v302 = 0;
                                                                  goto LABEL_189;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v302 = v136;
LABEL_189:
                                                                  v137 = [v6 objectForKeyedSubscript:@"cmDataSentDuration"];
                                                                  v299 = v137;
                                                                  if (!v137 || (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v300 = 0;
                                                                    goto LABEL_192;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v300 = v138;
LABEL_192:
                                                                    v139 = [v6 objectForKeyedSubscript:@"tcpRTTAvg"];
                                                                    v297 = v139;
                                                                    if (!v139 || (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v298 = 0;
LABEL_195:
                                                                      v141 = [v6 objectForKeyedSubscript:@"tcpRTTvar"];
                                                                      v295 = v141;
                                                                      if (v141 && (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          v235 = v105;
                                                                          if (!v330)
                                                                          {
                                                                            v296 = 0;
                                                                            v20 = 0;
                                                                            v37 = v393;
                                                                            v82 = v342;
                                                                            v48 = v337;
                                                                            v57 = v331;
                                                                            v62 = v341;
                                                                            goto LABEL_365;
                                                                          }

                                                                          v236 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v381 = v9;
                                                                          v237 = *MEMORY[0x1E698F240];
                                                                          v423 = *MEMORY[0x1E696A578];
                                                                          v294 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tcpRTTvar"];
                                                                          v424 = v294;
                                                                          v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v424 forKeys:&v423 count:1];
                                                                          v239 = v237;
                                                                          v9 = v381;
                                                                          v296 = 0;
                                                                          v20 = 0;
                                                                          *v330 = [v236 initWithDomain:v239 code:2 userInfo:v238];
                                                                          v240 = v238;
                                                                          v37 = v393;
                                                                          v82 = v342;
                                                                          v48 = v337;
                                                                          v57 = v331;
                                                                          v105 = v235;
                                                                          v62 = v341;
LABEL_364:

LABEL_365:
                                                                          v234 = v295;
                                                                          goto LABEL_366;
                                                                        }

                                                                        v296 = v142;
                                                                      }

                                                                      else
                                                                      {
                                                                        v296 = 0;
                                                                      }

                                                                      v143 = [v6 objectForKeyedSubscript:@"videoStreamingStallTime"];
                                                                      v292 = v143;
                                                                      if (v143 && (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          v241 = v105;
                                                                          if (!v330)
                                                                          {
                                                                            v294 = 0;
                                                                            v20 = 0;
                                                                            v37 = v393;
                                                                            v82 = v342;
                                                                            v48 = v337;
                                                                            v57 = v331;
                                                                            v62 = v341;
                                                                            goto LABEL_363;
                                                                          }

                                                                          v242 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v382 = v9;
                                                                          v243 = *MEMORY[0x1E698F240];
                                                                          v421 = *MEMORY[0x1E696A578];
                                                                          v293 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"videoStreamingStallTime"];
                                                                          v422 = v293;
                                                                          v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v422 forKeys:&v421 count:1];
                                                                          v245 = v243;
                                                                          v9 = v382;
                                                                          v294 = 0;
                                                                          v20 = 0;
                                                                          *v330 = [v242 initWithDomain:v245 code:2 userInfo:v244];
                                                                          v246 = v244;
                                                                          v37 = v393;
                                                                          v82 = v342;
                                                                          v48 = v337;
                                                                          v57 = v331;
                                                                          v105 = v241;
                                                                          v62 = v341;
LABEL_362:

LABEL_363:
                                                                          v240 = v292;
                                                                          goto LABEL_364;
                                                                        }

                                                                        v294 = v144;
                                                                      }

                                                                      else
                                                                      {
                                                                        v294 = 0;
                                                                      }

                                                                      v145 = [v6 objectForKeyedSubscript:@"numStall"];
                                                                      v290 = v145;
                                                                      if (v145 && (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!v330)
                                                                          {
                                                                            v293 = 0;
                                                                            v20 = 0;
                                                                            v37 = v393;
                                                                            v82 = v342;
                                                                            v48 = v337;
                                                                            v57 = v331;
                                                                            v62 = v341;
                                                                            goto LABEL_361;
                                                                          }

                                                                          v247 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v383 = v9;
                                                                          v248 = *MEMORY[0x1E698F240];
                                                                          v419 = *MEMORY[0x1E696A578];
                                                                          v291 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numStall"];
                                                                          v420 = v291;
                                                                          v249 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v420 forKeys:&v419 count:1];
                                                                          v250 = v248;
                                                                          v9 = v383;
                                                                          v289 = v249;
                                                                          v293 = 0;
                                                                          v20 = 0;
                                                                          *v330 = [v247 initWithDomain:v250 code:2 userInfo:?];
                                                                          goto LABEL_413;
                                                                        }

                                                                        v293 = v146;
                                                                      }

                                                                      else
                                                                      {
                                                                        v293 = 0;
                                                                      }

                                                                      v147 = [v6 objectForKeyedSubscript:@"stallDuration"];
                                                                      v289 = v147;
                                                                      if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v291 = 0;
                                                                        goto LABEL_207;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v291 = v148;
LABEL_207:
                                                                        v149 = [v6 objectForKeyedSubscript:@"cellEstimatedBW"];
                                                                        v287 = v149;
                                                                        if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v288 = 0;
                                                                          goto LABEL_210;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v288 = v150;
LABEL_210:
                                                                          v151 = [v6 objectForKeyedSubscript:@"cellLoad"];
                                                                          v285 = v151;
                                                                          if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v286 = 0;
                                                                            goto LABEL_213;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v286 = v152;
LABEL_213:
                                                                            v153 = [v6 objectForKeyedSubscript:@"cellModelConfidenceLevel"];
                                                                            v282 = v153;
                                                                            if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v284 = 0;
LABEL_216:
                                                                              v155 = [v6 objectForKeyedSubscript:@"mlPredictedCellBW"];
                                                                              v281 = v155;
                                                                              if (v155 && (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                              {
                                                                                objc_opt_class();
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  if (!v330)
                                                                                  {
                                                                                    v283 = 0;
                                                                                    v20 = 0;
                                                                                    v37 = v393;
                                                                                    v82 = v342;
                                                                                    v48 = v337;
                                                                                    v62 = v341;
                                                                                    v57 = v331;
                                                                                    goto LABEL_356;
                                                                                  }

                                                                                  v269 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v270 = *MEMORY[0x1E698F240];
                                                                                  v409 = *MEMORY[0x1E696A578];
                                                                                  v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mlPredictedCellBW"];
                                                                                  v410 = v394;
                                                                                  v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v410 forKeys:&v409 count:1];
                                                                                  v271 = [v269 initWithDomain:v270 code:2 userInfo:?];
                                                                                  v283 = 0;
                                                                                  v20 = 0;
                                                                                  *v330 = v271;
                                                                                  goto LABEL_425;
                                                                                }

                                                                                v283 = v156;
                                                                              }

                                                                              else
                                                                              {
                                                                                v283 = 0;
                                                                              }

                                                                              v157 = [v6 objectForKeyedSubscript:@"qbssLoad"];
                                                                              v348 = v157;
                                                                              if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v394 = 0;
LABEL_222:
                                                                                v159 = [v6 objectForKeyedSubscript:@"lqmScorecellular"];
                                                                                v57 = v331;
                                                                                v280 = v159;
                                                                                if (v159)
                                                                                {
                                                                                  v160 = v159;
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v159 = 0;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      v388 = v9;
                                                                                      if (v330)
                                                                                      {
                                                                                        v275 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v276 = *MEMORY[0x1E698F240];
                                                                                        v405 = *MEMORY[0x1E696A578];
                                                                                        v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lqmScorecellular"];
                                                                                        v406 = v277;
                                                                                        v278 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v406 forKeys:&v405 count:1];
                                                                                        *v330 = [v275 initWithDomain:v276 code:2 userInfo:v278];
                                                                                      }

                                                                                      v279 = 0;
                                                                                      v20 = 0;
                                                                                      v9 = v388;
                                                                                      v37 = v393;
                                                                                      v82 = v342;
                                                                                      v48 = v337;
                                                                                      goto LABEL_354;
                                                                                    }

                                                                                    v159 = v160;
                                                                                  }
                                                                                }

                                                                                v37 = v393;
                                                                                v279 = v159;
                                                                                v48 = v337;
                                                                                v82 = v342;
                                                                                v20 = [(BMDeviceConnectivityContext *)v396 initWithGeohash:v402 counter:v401 event:v390 ratType:v399 rrcState:v397 cellNsaEnabled:v395 isFR1:v392 cellARFCN:v389 cellBandInfo:v349 cellChannelBW:v346 cellRsrp:v343 cellSinr:v342 cellLteRSRQ:v337 cellNrRSRP:v339 cellNrRSRQ:v331 cellNrSNR:v62 maxDLCAConfigured:v333 totalConfiguredBw:v105 nrConfiguredBw:v327 nrTotalScheduledMimoLayers:v325 totalConfiguredMimoLayers:v323 lteMaxScheduledMimoLayersInACell:v321 nrMaxDlModulation:v319 actualHighBandwidth:v317 actualLowBandwidth:v315 pActualLowBandwidth:v313 maxOfActualLowBandwidth:v311 estimatedHighBandwidth:v309 estimatedLowBandwidth:v307 movingAvgHighBandwidth:v305 movingAvgLowBandwidth:v303 cmDataSentCount:v302 cmDataSentDuration:v300 tcpRTTAvg:v298 tcpRTTvar:v296 videoStreamingStallTime:v294 numStall:v293 stallDuration:v291 cellEstimatedBW:v288 cellLoad:v286 cellModelConfidenceLevel:v284 mlPredictedCellBW:v283 qbssLoad:v394 lqmScorecellular:v159];
                                                                                v396 = v20;
LABEL_354:

LABEL_355:
LABEL_356:

LABEL_357:
LABEL_358:

LABEL_359:
LABEL_360:

LABEL_361:
                                                                                v246 = v290;
                                                                                goto LABEL_362;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v394 = v158;
                                                                                goto LABEL_222;
                                                                              }

                                                                              if (v330)
                                                                              {
                                                                                v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v273 = *MEMORY[0x1E698F240];
                                                                                v407 = *MEMORY[0x1E696A578];
                                                                                v279 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qbssLoad"];
                                                                                v408 = v279;
                                                                                v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v408 forKeys:&v407 count:1];
                                                                                v274 = [v272 initWithDomain:v273 code:2 userInfo:?];
                                                                                v394 = 0;
                                                                                v20 = 0;
                                                                                *v330 = v274;
                                                                                v37 = v393;
                                                                                v82 = v342;
                                                                                v48 = v337;
                                                                                v62 = v341;
                                                                                v57 = v331;
                                                                                goto LABEL_354;
                                                                              }

                                                                              v394 = 0;
                                                                              v20 = 0;
LABEL_425:
                                                                              v37 = v393;
                                                                              v82 = v342;
                                                                              v48 = v337;
                                                                              v62 = v341;
                                                                              v57 = v331;
                                                                              goto LABEL_355;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v284 = v154;
                                                                              goto LABEL_216;
                                                                            }

                                                                            if (v330)
                                                                            {
                                                                              v265 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v387 = v9;
                                                                              v266 = *MEMORY[0x1E698F240];
                                                                              v411 = *MEMORY[0x1E696A578];
                                                                              v283 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellModelConfidenceLevel"];
                                                                              v412 = v283;
                                                                              v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v412 forKeys:&v411 count:1];
                                                                              v268 = v266;
                                                                              v9 = v387;
                                                                              v281 = v267;
                                                                              v284 = 0;
                                                                              v20 = 0;
                                                                              *v330 = [v265 initWithDomain:v268 code:2 userInfo:?];
                                                                              v37 = v393;
                                                                              v82 = v342;
                                                                              v48 = v337;
                                                                              v57 = v331;
                                                                              v62 = v341;
                                                                              goto LABEL_356;
                                                                            }

                                                                            v284 = 0;
                                                                            v20 = 0;
LABEL_422:
                                                                            v37 = v393;
                                                                            v82 = v342;
                                                                            v48 = v337;
                                                                            v57 = v331;
                                                                            v62 = v341;
                                                                            goto LABEL_357;
                                                                          }

                                                                          if (v330)
                                                                          {
                                                                            v261 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v386 = v9;
                                                                            v262 = *MEMORY[0x1E698F240];
                                                                            v413 = *MEMORY[0x1E696A578];
                                                                            v284 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellLoad"];
                                                                            v414 = v284;
                                                                            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v414 forKeys:&v413 count:1];
                                                                            v264 = v262;
                                                                            v9 = v386;
                                                                            v282 = v263;
                                                                            v286 = 0;
                                                                            v20 = 0;
                                                                            *v330 = [v261 initWithDomain:v264 code:2 userInfo:?];
                                                                            goto LABEL_422;
                                                                          }

                                                                          v286 = 0;
                                                                          v20 = 0;
LABEL_420:
                                                                          v37 = v393;
                                                                          v82 = v342;
                                                                          v48 = v337;
                                                                          v57 = v331;
                                                                          v62 = v341;
                                                                          goto LABEL_358;
                                                                        }

                                                                        if (v330)
                                                                        {
                                                                          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v385 = v9;
                                                                          v256 = *MEMORY[0x1E698F240];
                                                                          v415 = *MEMORY[0x1E696A578];
                                                                          v286 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellEstimatedBW"];
                                                                          v416 = v286;
                                                                          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v416 forKeys:&v415 count:1];
                                                                          v258 = v256;
                                                                          v9 = v385;
                                                                          v285 = v257;
                                                                          v288 = 0;
                                                                          v20 = 0;
                                                                          *v330 = [v255 initWithDomain:v258 code:2 userInfo:?];
                                                                          goto LABEL_420;
                                                                        }

                                                                        v288 = 0;
                                                                        v20 = 0;
LABEL_418:
                                                                        v37 = v393;
                                                                        v82 = v342;
                                                                        v48 = v337;
                                                                        v57 = v331;
                                                                        v62 = v341;
                                                                        goto LABEL_359;
                                                                      }

                                                                      if (v330)
                                                                      {
                                                                        v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v384 = v9;
                                                                        v252 = *MEMORY[0x1E698F240];
                                                                        v417 = *MEMORY[0x1E696A578];
                                                                        v288 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stallDuration"];
                                                                        v418 = v288;
                                                                        v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v418 forKeys:&v417 count:1];
                                                                        v254 = v252;
                                                                        v9 = v384;
                                                                        v287 = v253;
                                                                        v291 = 0;
                                                                        v20 = 0;
                                                                        *v330 = [v251 initWithDomain:v254 code:2 userInfo:?];
                                                                        goto LABEL_418;
                                                                      }

                                                                      v291 = 0;
                                                                      v20 = 0;
LABEL_413:
                                                                      v37 = v393;
                                                                      v82 = v342;
                                                                      v48 = v337;
                                                                      v57 = v331;
                                                                      v62 = v341;
                                                                      goto LABEL_360;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v298 = v140;
                                                                      goto LABEL_195;
                                                                    }

                                                                    v229 = v105;
                                                                    if (v330)
                                                                    {
                                                                      v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v380 = v9;
                                                                      v231 = *MEMORY[0x1E698F240];
                                                                      v425 = *MEMORY[0x1E696A578];
                                                                      v296 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tcpRTTAvg"];
                                                                      v426 = v296;
                                                                      v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v426 forKeys:&v425 count:1];
                                                                      v233 = v231;
                                                                      v9 = v380;
                                                                      v298 = 0;
                                                                      v20 = 0;
                                                                      *v330 = [v230 initWithDomain:v233 code:2 userInfo:v232];
                                                                      v234 = v232;
                                                                      v37 = v393;
                                                                      v82 = v342;
                                                                      v48 = v337;
                                                                      v57 = v331;
                                                                      v105 = v229;
                                                                      v62 = v341;
LABEL_366:

                                                                      goto LABEL_367;
                                                                    }

                                                                    v298 = 0;
                                                                    v20 = 0;
                                                                    v37 = v393;
                                                                    v82 = v342;
                                                                    v48 = v337;
                                                                    v57 = v331;
LABEL_350:
                                                                    v62 = v341;
LABEL_367:

                                                                    goto LABEL_368;
                                                                  }

                                                                  if (v330)
                                                                  {
                                                                    v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v379 = v9;
                                                                    v226 = *MEMORY[0x1E698F240];
                                                                    v427 = *MEMORY[0x1E696A578];
                                                                    v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cmDataSentDuration"];
                                                                    v428 = v298;
                                                                    v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v428 forKeys:&v427 count:1];
                                                                    v228 = v226;
                                                                    v9 = v379;
                                                                    v297 = v227;
                                                                    v300 = 0;
                                                                    v20 = 0;
                                                                    *v330 = [v225 initWithDomain:v228 code:2 userInfo:?];
                                                                    v37 = v393;
                                                                    v82 = v342;
                                                                    v48 = v337;
                                                                    v57 = v331;
                                                                    goto LABEL_350;
                                                                  }

                                                                  v300 = 0;
                                                                  v20 = 0;
LABEL_344:
                                                                  v37 = v393;
                                                                  v82 = v342;
                                                                  v48 = v337;
                                                                  v57 = v331;
                                                                  v62 = v341;
LABEL_368:

                                                                  goto LABEL_369;
                                                                }

                                                                if (v330)
                                                                {
                                                                  v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v378 = v9;
                                                                  v222 = *MEMORY[0x1E698F240];
                                                                  v429 = *MEMORY[0x1E696A578];
                                                                  v300 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cmDataSentCount"];
                                                                  v430 = v300;
                                                                  v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v430 forKeys:&v429 count:1];
                                                                  v224 = v222;
                                                                  v9 = v378;
                                                                  v299 = v223;
                                                                  v302 = 0;
                                                                  v20 = 0;
                                                                  *v330 = [v221 initWithDomain:v224 code:2 userInfo:?];
                                                                  goto LABEL_344;
                                                                }

                                                                v302 = 0;
                                                                v20 = 0;
LABEL_338:
                                                                v37 = v393;
                                                                v82 = v342;
                                                                v48 = v337;
                                                                v57 = v331;
                                                                v62 = v341;
LABEL_369:

                                                                goto LABEL_370;
                                                              }

                                                              if (v330)
                                                              {
                                                                v217 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v377 = v9;
                                                                v218 = *MEMORY[0x1E698F240];
                                                                v431 = *MEMORY[0x1E696A578];
                                                                v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movingAvgLowBandwidth"];
                                                                v432 = v302;
                                                                v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v432 forKeys:&v431 count:1];
                                                                v220 = v218;
                                                                v9 = v377;
                                                                v301 = v219;
                                                                v303 = 0;
                                                                v20 = 0;
                                                                *v330 = [v217 initWithDomain:v220 code:2 userInfo:?];
                                                                goto LABEL_338;
                                                              }

                                                              v303 = 0;
                                                              v20 = 0;
LABEL_332:
                                                              v37 = v393;
                                                              v82 = v342;
                                                              v48 = v337;
                                                              v57 = v331;
                                                              v62 = v341;
LABEL_370:

                                                              goto LABEL_371;
                                                            }

                                                            if (v330)
                                                            {
                                                              v213 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v376 = v9;
                                                              v214 = *MEMORY[0x1E698F240];
                                                              v433 = *MEMORY[0x1E696A578];
                                                              v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movingAvgHighBandwidth"];
                                                              v434 = v303;
                                                              v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v434 forKeys:&v433 count:1];
                                                              v216 = v214;
                                                              v9 = v376;
                                                              v304 = v215;
                                                              v305 = 0;
                                                              v20 = 0;
                                                              *v330 = [v213 initWithDomain:v216 code:2 userInfo:?];
                                                              goto LABEL_332;
                                                            }

                                                            v305 = 0;
                                                            v20 = 0;
LABEL_326:
                                                            v37 = v393;
                                                            v82 = v342;
                                                            v48 = v337;
                                                            v57 = v331;
                                                            v62 = v341;
LABEL_371:

                                                            goto LABEL_372;
                                                          }

                                                          if (v330)
                                                          {
                                                            v209 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v375 = v9;
                                                            v210 = *MEMORY[0x1E698F240];
                                                            v435 = *MEMORY[0x1E696A578];
                                                            v305 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"estimatedLowBandwidth"];
                                                            v436 = v305;
                                                            v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v436 forKeys:&v435 count:1];
                                                            v212 = v210;
                                                            v9 = v375;
                                                            v306 = v211;
                                                            v307 = 0;
                                                            v20 = 0;
                                                            *v330 = [v209 initWithDomain:v212 code:2 userInfo:?];
                                                            goto LABEL_326;
                                                          }

                                                          v307 = 0;
                                                          v20 = 0;
LABEL_320:
                                                          v37 = v393;
                                                          v82 = v342;
                                                          v48 = v337;
                                                          v57 = v331;
                                                          v62 = v341;
LABEL_372:

                                                          goto LABEL_373;
                                                        }

                                                        if (v330)
                                                        {
                                                          v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v374 = v9;
                                                          v206 = *MEMORY[0x1E698F240];
                                                          v437 = *MEMORY[0x1E696A578];
                                                          v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"estimatedHighBandwidth"];
                                                          v438 = v307;
                                                          v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v438 forKeys:&v437 count:1];
                                                          v208 = v206;
                                                          v9 = v374;
                                                          v308 = v207;
                                                          v309 = 0;
                                                          v20 = 0;
                                                          *v330 = [v205 initWithDomain:v208 code:2 userInfo:?];
                                                          goto LABEL_320;
                                                        }

                                                        v309 = 0;
                                                        v20 = 0;
LABEL_314:
                                                        v37 = v393;
                                                        v82 = v342;
                                                        v48 = v337;
                                                        v57 = v331;
                                                        v62 = v341;
LABEL_373:

                                                        goto LABEL_374;
                                                      }

                                                      if (v330)
                                                      {
                                                        v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v373 = v9;
                                                        v202 = *MEMORY[0x1E698F240];
                                                        v439 = *MEMORY[0x1E696A578];
                                                        v309 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxOfActualLowBandwidth"];
                                                        v440 = v309;
                                                        v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v440 forKeys:&v439 count:1];
                                                        v204 = v202;
                                                        v9 = v373;
                                                        v310 = v203;
                                                        v311 = 0;
                                                        v20 = 0;
                                                        *v330 = [v201 initWithDomain:v204 code:2 userInfo:?];
                                                        goto LABEL_314;
                                                      }

                                                      v311 = 0;
                                                      v20 = 0;
LABEL_308:
                                                      v37 = v393;
                                                      v82 = v342;
                                                      v48 = v337;
                                                      v57 = v331;
                                                      v62 = v341;
LABEL_374:

                                                      goto LABEL_375;
                                                    }

                                                    if (v330)
                                                    {
                                                      v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v372 = v9;
                                                      v198 = *MEMORY[0x1E698F240];
                                                      v441 = *MEMORY[0x1E696A578];
                                                      v311 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pActualLowBandwidth"];
                                                      v442 = v311;
                                                      v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v442 forKeys:&v441 count:1];
                                                      v200 = v198;
                                                      v9 = v372;
                                                      v312 = v199;
                                                      v313 = 0;
                                                      v20 = 0;
                                                      *v330 = [v197 initWithDomain:v200 code:2 userInfo:?];
                                                      goto LABEL_308;
                                                    }

                                                    v313 = 0;
                                                    v20 = 0;
LABEL_302:
                                                    v37 = v393;
                                                    v82 = v342;
                                                    v48 = v337;
                                                    v57 = v331;
                                                    v62 = v341;
LABEL_375:

                                                    goto LABEL_376;
                                                  }

                                                  if (v330)
                                                  {
                                                    v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v371 = v9;
                                                    v194 = *MEMORY[0x1E698F240];
                                                    v443 = *MEMORY[0x1E696A578];
                                                    v313 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actualLowBandwidth"];
                                                    v444 = v313;
                                                    v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v444 forKeys:&v443 count:1];
                                                    v196 = v194;
                                                    v9 = v371;
                                                    v314 = v195;
                                                    v315 = 0;
                                                    v20 = 0;
                                                    *v330 = [v193 initWithDomain:v196 code:2 userInfo:?];
                                                    goto LABEL_302;
                                                  }

                                                  v315 = 0;
                                                  v20 = 0;
LABEL_296:
                                                  v37 = v393;
                                                  v82 = v342;
                                                  v48 = v337;
                                                  v57 = v331;
                                                  v62 = v341;
LABEL_376:

                                                  goto LABEL_377;
                                                }

                                                if (v330)
                                                {
                                                  v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v370 = v9;
                                                  v190 = *MEMORY[0x1E698F240];
                                                  v445 = *MEMORY[0x1E696A578];
                                                  v315 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actualHighBandwidth"];
                                                  v446 = v315;
                                                  v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v446 forKeys:&v445 count:1];
                                                  v192 = v190;
                                                  v9 = v370;
                                                  v316 = v191;
                                                  v317 = 0;
                                                  v20 = 0;
                                                  *v330 = [v189 initWithDomain:v192 code:2 userInfo:?];
                                                  goto LABEL_296;
                                                }

                                                v317 = 0;
                                                v20 = 0;
LABEL_290:
                                                v37 = v393;
                                                v82 = v342;
                                                v48 = v337;
                                                v57 = v331;
                                                v62 = v341;
LABEL_377:

                                                goto LABEL_378;
                                              }

                                              if (v330)
                                              {
                                                v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v369 = v9;
                                                v186 = *MEMORY[0x1E698F240];
                                                v447 = *MEMORY[0x1E696A578];
                                                v317 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrMaxDlModulation"];
                                                v448 = v317;
                                                v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v448 forKeys:&v447 count:1];
                                                v188 = v186;
                                                v9 = v369;
                                                v318 = v187;
                                                v319 = 0;
                                                v20 = 0;
                                                *v330 = [v185 initWithDomain:v188 code:2 userInfo:?];
                                                goto LABEL_290;
                                              }

                                              v319 = 0;
                                              v20 = 0;
LABEL_284:
                                              v37 = v393;
                                              v82 = v342;
                                              v48 = v337;
                                              v57 = v331;
                                              v62 = v341;
LABEL_378:

                                              goto LABEL_379;
                                            }

                                            if (v330)
                                            {
                                              v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v368 = v9;
                                              v182 = *MEMORY[0x1E698F240];
                                              v449 = *MEMORY[0x1E696A578];
                                              v319 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lteMaxScheduledMimoLayersInACell"];
                                              v450 = v319;
                                              v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v450 forKeys:&v449 count:1];
                                              v184 = v182;
                                              v9 = v368;
                                              v320 = v183;
                                              v321 = 0;
                                              v20 = 0;
                                              *v330 = [v181 initWithDomain:v184 code:2 userInfo:?];
                                              goto LABEL_284;
                                            }

                                            v321 = 0;
                                            v20 = 0;
                                            v37 = v393;
                                            v82 = v342;
                                            v48 = v337;
                                            v57 = v331;
                                            v62 = v341;
LABEL_379:

                                            goto LABEL_380;
                                          }

                                          if (v330)
                                          {
                                            v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v367 = v9;
                                            v178 = *MEMORY[0x1E698F240];
                                            v451 = *MEMORY[0x1E696A578];
                                            v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalConfiguredMimoLayers"];
                                            v452 = v321;
                                            v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v452 forKeys:&v451 count:1];
                                            v180 = v178;
                                            v9 = v367;
                                            v322 = v179;
                                            v323 = 0;
                                            v20 = 0;
                                            *v330 = [v177 initWithDomain:v180 code:2 userInfo:?];
                                            v37 = v393;
                                            v82 = v342;
                                            v48 = v337;
                                            v57 = v331;
                                            goto LABEL_379;
                                          }

                                          v323 = 0;
                                          v20 = 0;
                                          v37 = v393;
                                          v82 = v342;
                                          v48 = v337;
                                          v57 = v331;
LABEL_380:

                                          goto LABEL_381;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v325 = v103;
                                          goto LABEL_140;
                                        }

                                        if (v330)
                                        {
                                          v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v366 = v9;
                                          v174 = *MEMORY[0x1E698F240];
                                          v453 = *MEMORY[0x1E696A578];
                                          v323 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrTotalScheduledMimoLayers"];
                                          v454 = v323;
                                          v175 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v454 forKeys:&v453 count:1];
                                          v176 = v174;
                                          v9 = v366;
                                          v324 = v175;
                                          v325 = 0;
                                          v20 = 0;
                                          *v330 = [v173 initWithDomain:v176 code:2 userInfo:?];
                                          v37 = v393;
                                          v82 = v342;
                                          v48 = v337;
                                          v57 = v331;
                                          v105 = v101;
                                          v62 = v341;
                                          goto LABEL_380;
                                        }

                                        v325 = 0;
                                        v20 = 0;
                                        v37 = v393;
                                        v82 = v342;
                                        v48 = v337;
                                        v57 = v331;
                                        v105 = v101;
                                        v62 = v341;
LABEL_381:

                                        goto LABEL_382;
                                      }

                                      if (v330)
                                      {
                                        v169 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v365 = v9;
                                        v170 = *MEMORY[0x1E698F240];
                                        v455 = *MEMORY[0x1E696A578];
                                        v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrConfiguredBw"];
                                        v456 = v325;
                                        v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v456 forKeys:&v455 count:1];
                                        v172 = v170;
                                        v9 = v365;
                                        v326 = v171;
                                        v327 = 0;
                                        v20 = 0;
                                        *v330 = [v169 initWithDomain:v172 code:2 userInfo:?];
                                        v37 = v393;
                                        v82 = v342;
                                        v48 = v337;
                                        v105 = v91;
                                        v57 = v331;
                                        goto LABEL_381;
                                      }

                                      v327 = 0;
                                      v20 = 0;
                                      v37 = v393;
                                      v82 = v342;
                                      v48 = v337;
                                      v105 = v91;
                                      v57 = v331;
LABEL_382:

                                      goto LABEL_383;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v91 = v90;
                                      goto LABEL_122;
                                    }

                                    if (v330)
                                    {
                                      v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v364 = v9;
                                      v166 = *MEMORY[0x1E698F240];
                                      v457 = *MEMORY[0x1E696A578];
                                      v327 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalConfiguredBw"];
                                      v458 = v327;
                                      v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v458 forKeys:&v457 count:1];
                                      v168 = v166;
                                      v9 = v364;
                                      v328 = v167;
                                      v20 = 0;
                                      *v330 = [v165 initWithDomain:v168 code:2 userInfo:?];
                                      v37 = v393;
                                      v82 = v342;
                                      v48 = v337;
                                      v62 = v63;
                                      v105 = 0;
                                      goto LABEL_382;
                                    }

                                    v20 = 0;
                                    v37 = v393;
                                    v82 = v342;
                                    v48 = v337;
                                    v62 = v63;
                                    v105 = 0;
LABEL_383:

                                    goto LABEL_384;
                                  }

                                  if (v330)
                                  {
                                    v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v363 = v9;
                                    v162 = *MEMORY[0x1E698F240];
                                    v459 = *MEMORY[0x1E696A578];
                                    v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxDLCAConfigured"];
                                    v460 = v105;
                                    v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v460 forKeys:&v459 count:1];
                                    v164 = v162;
                                    v9 = v363;
                                    v329 = v163;
                                    v333 = 0;
                                    v20 = 0;
                                    *v330 = [v161 initWithDomain:v164 code:2 userInfo:?];
                                    v37 = v393;
                                    v82 = v342;
                                    v48 = v337;
                                    goto LABEL_383;
                                  }

                                  v333 = 0;
                                  v20 = 0;
                                  v37 = v393;
                                  v82 = v342;
                                  v48 = v337;
LABEL_384:

                                  goto LABEL_385;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v330 = v48;
                                  v340 = v59;
                                  goto LABEL_84;
                                }

                                if (v48)
                                {
                                  v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v362 = v9;
                                  v112 = *MEMORY[0x1E698F240];
                                  v461 = *MEMORY[0x1E696A578];
                                  v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrSNR"];
                                  v462 = v333;
                                  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                                  v114 = v112;
                                  v9 = v362;
                                  v332 = v113;
                                  v20 = 0;
                                  *v48 = [v111 initWithDomain:v114 code:2 userInfo:?];
                                  v37 = v393;
                                  v82 = v342;
                                  v48 = v337;
                                  v62 = 0;
                                  goto LABEL_384;
                                }

                                v20 = 0;
                                v37 = v393;
                                v82 = v342;
                                v48 = v337;
                                v62 = 0;
LABEL_385:

                                v49 = v334;
                                goto LABEL_386;
                              }

                              if (v48)
                              {
                                v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v361 = v9;
                                v108 = *MEMORY[0x1E698F240];
                                v463 = *MEMORY[0x1E696A578];
                                v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrRSRQ"];
                                v464 = v62;
                                v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                                v110 = v108;
                                v9 = v361;
                                v335 = v109;
                                v57 = 0;
                                v20 = 0;
                                *v48 = [v107 initWithDomain:v110 code:2 userInfo:?];
                                v37 = v393;
                                v82 = v342;
                                v48 = v337;
                                goto LABEL_385;
                              }

                              v57 = 0;
                              v20 = 0;
                              v37 = v393;
                              v82 = v342;
                              v48 = v337;
                              v49 = v54;
LABEL_386:

                              goto LABEL_387;
                            }

                            if (v48)
                            {
                              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v360 = v9;
                              v98 = *MEMORY[0x1E698F240];
                              v465 = *MEMORY[0x1E696A578];
                              v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrRSRP"];
                              v466 = v57;
                              v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v466 forKeys:&v465 count:1];
                              v100 = v98;
                              v9 = v360;
                              v336 = v99;
                              v339 = 0;
                              v20 = 0;
                              *v48 = [v97 initWithDomain:v100 code:2 userInfo:?];
                              v37 = v393;
                              v82 = v342;
                              v48 = v337;
                              goto LABEL_386;
                            }

                            v339 = 0;
                            v20 = 0;
                            v37 = v393;
                            v82 = v342;
                            v48 = v337;
LABEL_387:

                            goto LABEL_388;
                          }

                          if (v48)
                          {
                            v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v359 = v9;
                            v94 = *MEMORY[0x1E698F240];
                            v467 = *MEMORY[0x1E696A578];
                            v339 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellLteRSRQ"];
                            v468 = v339;
                            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v468 forKeys:&v467 count:1];
                            v96 = v94;
                            v9 = v359;
                            v338 = v95;
                            v20 = 0;
                            *v48 = [v93 initWithDomain:v96 code:2 userInfo:?];
                            v48 = 0;
                            v37 = v393;
                            v82 = v342;
                            goto LABEL_387;
                          }

                          v20 = 0;
                          v37 = v393;
                          v82 = v342;
LABEL_388:

                          v17 = v343;
                          goto LABEL_389;
                        }

                        if (v48)
                        {
                          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v358 = v9;
                          v85 = *MEMORY[0x1E698F240];
                          v469 = *MEMORY[0x1E696A578];
                          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellSinr"];
                          v470 = v86;
                          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v470 forKeys:&v469 count:1];
                          v88 = v85;
                          v9 = v358;
                          v344 = v87;
                          v82 = 0;
                          v20 = 0;
                          *v48 = [v84 initWithDomain:v88 code:2 userInfo:?];
                          v48 = v86;
                          v37 = v393;
                          goto LABEL_388;
                        }

                        v82 = 0;
                        v20 = 0;
LABEL_228:
                        v37 = v393;
LABEL_389:

                        goto LABEL_390;
                      }

                      v17 = v8;
                      if (v8)
                      {
                        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v357 = v9;
                        v81 = *MEMORY[0x1E698F240];
                        v471 = *MEMORY[0x1E696A578];
                        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellRsrp"];
                        v472 = v82;
                        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v471 count:1];
                        v83 = v81;
                        v9 = v357;
                        v20 = 0;
                        *v17 = [v80 initWithDomain:v83 code:2 userInfo:v49];
                        v17 = 0;
                        goto LABEL_228;
                      }

                      v20 = 0;
LABEL_153:
                      v37 = v393;
LABEL_390:

                      goto LABEL_391;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v346 = v16;
                      goto LABEL_31;
                    }

                    if (v8)
                    {
                      v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v356 = v9;
                      v77 = *MEMORY[0x1E698F240];
                      v473 = *MEMORY[0x1E696A578];
                      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellChannelBW"];
                      v474 = v17;
                      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v474 forKeys:&v473 count:1];
                      v79 = v77;
                      v9 = v356;
                      v345 = v78;
                      v346 = 0;
                      v20 = 0;
                      *v8 = [v76 initWithDomain:v79 code:2 userInfo:?];
                      goto LABEL_153;
                    }

                    v346 = 0;
                    v20 = 0;
LABEL_146:
                    v37 = v393;
LABEL_391:

                    goto LABEL_392;
                  }

                  if (v8)
                  {
                    v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v355 = v9;
                    v73 = *MEMORY[0x1E698F240];
                    v475 = *MEMORY[0x1E696A578];
                    v346 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellBandInfo"];
                    v476 = v346;
                    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v476 forKeys:&v475 count:1];
                    v75 = v73;
                    v9 = v355;
                    v347 = v74;
                    v349 = 0;
                    v20 = 0;
                    *v8 = [v72 initWithDomain:v75 code:2 userInfo:?];
                    goto LABEL_146;
                  }

                  v349 = 0;
                  v20 = 0;
LABEL_134:
                  v37 = v393;
LABEL_392:

                  goto LABEL_393;
                }

                if (v8)
                {
                  v68 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v354 = v9;
                  v69 = *MEMORY[0x1E698F240];
                  v477 = *MEMORY[0x1E696A578];
                  v349 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellARFCN"];
                  v478 = v349;
                  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v478 forKeys:&v477 count:1];
                  v71 = v69;
                  v9 = v354;
                  v350 = v70;
                  v389 = 0;
                  v20 = 0;
                  *v8 = [v68 initWithDomain:v71 code:2 userInfo:?];
                  goto LABEL_134;
                }

                v389 = 0;
                v20 = 0;
LABEL_128:
                v37 = v393;
LABEL_393:

                a4 = v390;
                goto LABEL_394;
              }

              if (v8)
              {
                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v353 = v9;
                v65 = *MEMORY[0x1E698F240];
                v479 = *MEMORY[0x1E696A578];
                v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFR1"];
                v480 = v389;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v480 forKeys:&v479 count:1];
                v67 = v65;
                v9 = v353;
                v391 = v66;
                v392 = 0;
                v20 = 0;
                *v8 = [v64 initWithDomain:v67 code:2 userInfo:?];
                goto LABEL_128;
              }

              v392 = 0;
              v20 = 0;
LABEL_116:
              v37 = v393;
LABEL_394:

              goto LABEL_395;
            }

            if (v8)
            {
              v44 = objc_alloc(MEMORY[0x1E696ABC0]);
              v352 = v9;
              v45 = *MEMORY[0x1E698F240];
              v481 = *MEMORY[0x1E696A578];
              v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNsaEnabled"];
              v482 = v392;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v482 forKeys:&v481 count:1];
              v47 = v45;
              v9 = v352;
              v398 = v46;
              v395 = 0;
              v20 = 0;
              *v8 = [v44 initWithDomain:v47 code:2 userInfo:?];
              goto LABEL_116;
            }

            v395 = 0;
            v20 = 0;
            v37 = v393;
LABEL_395:

            self = v396;
            goto LABEL_396;
          }

          v37 = v10;
          if (v8)
          {
            v38 = a4;
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v351 = v9;
            v40 = *MEMORY[0x1E698F240];
            v483 = *MEMORY[0x1E696A578];
            v395 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rrcState"];
            v484 = v395;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v484 forKeys:&v483 count:1];
            v42 = v39;
            a4 = v38;
            v43 = v40;
            v9 = v351;
            v400 = v41;
            v397 = 0;
            v20 = 0;
            *v8 = [v42 initWithDomain:v43 code:2 userInfo:?];
            goto LABEL_395;
          }

          v397 = 0;
          v20 = 0;
LABEL_396:

          goto LABEL_397;
        }

        v32 = v9;
        if (v8)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v485 = *MEMORY[0x1E696A578];
          v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ratType"];
          v486 = v397;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v486 forKeys:&v485 count:1];
          v36 = v34;
          v37 = v35;
          v399 = 0;
          v20 = 0;
          *v8 = [v33 initWithDomain:v36 code:2 userInfo:v35];
          v9 = v32;
          goto LABEL_396;
        }

        v399 = 0;
        v20 = 0;
LABEL_397:

        goto LABEL_398;
      }

      if (a4)
      {
        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = self;
        v28 = *MEMORY[0x1E698F240];
        v487 = *MEMORY[0x1E696A578];
        v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"event"];
        v488 = v399;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v488 forKeys:&v487 count:1];
        v30 = v26;
        v9 = v29;
        v31 = v28;
        self = v27;
        a4 = 0;
        v20 = 0;
        *v25 = [v30 initWithDomain:v31 code:2 userInfo:v29];
        goto LABEL_397;
      }

      v20 = 0;
LABEL_398:

      goto LABEL_399;
    }

    if (a4)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v489 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"counter"];
      v490 = v23;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v490 forKeys:&v489 count:1];
      v24 = a4;
      a4 = v23;
      v401 = 0;
      v20 = 0;
      *v24 = [v21 initWithDomain:v22 code:2 userInfo:v7];
      goto LABEL_398;
    }

    v401 = 0;
    v20 = 0;
LABEL_399:

    goto LABEL_400;
  }

  if (a4)
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v491 = *MEMORY[0x1E696A578];
    v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geohash"];
    v492[0] = v401;
    v403 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v492 forKeys:&v491 count:1];
    v402 = 0;
    v20 = 0;
    *a4 = [v18 initWithDomain:v19 code:2 userInfo:?];
    goto LABEL_399;
  }

  v402 = 0;
  v20 = 0;
LABEL_400:

  v259 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceConnectivityContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v47 = v4;
  if (self->_geohash)
  {
    PBDataWriterWriteStringField();
    v4 = v47;
  }

  if (self->_hasCounter)
  {
    counter = self->_counter;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasEvent)
  {
    event = self->_event;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_ratType)
  {
    PBDataWriterWriteStringField();
    v4 = v47;
  }

  if (self->_hasRrcState)
  {
    rrcState = self->_rrcState;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellNsaEnabled)
  {
    cellNsaEnabled = self->_cellNsaEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v47;
  }

  if (self->_hasIsFR1)
  {
    isFR1 = self->_isFR1;
    PBDataWriterWriteBOOLField();
    v4 = v47;
  }

  if (self->_hasCellARFCN)
  {
    cellARFCN = self->_cellARFCN;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellBandInfo)
  {
    cellBandInfo = self->_cellBandInfo;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellChannelBW)
  {
    cellChannelBW = self->_cellChannelBW;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellRsrp)
  {
    cellRsrp = self->_cellRsrp;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasCellSinr)
  {
    cellSinr = self->_cellSinr;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasCellLteRSRQ)
  {
    cellLteRSRQ = self->_cellLteRSRQ;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasCellNrRSRP)
  {
    cellNrRSRP = self->_cellNrRSRP;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasCellNrRSRQ)
  {
    cellNrRSRQ = self->_cellNrRSRQ;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasCellNrSNR)
  {
    cellNrSNR = self->_cellNrSNR;
    PBDataWriterWriteInt32Field();
    v4 = v47;
  }

  if (self->_hasMaxDLCAConfigured)
  {
    maxDLCAConfigured = self->_maxDLCAConfigured;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasTotalConfiguredBw)
  {
    totalConfiguredBw = self->_totalConfiguredBw;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasNrConfiguredBw)
  {
    nrConfiguredBw = self->_nrConfiguredBw;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasNrTotalScheduledMimoLayers)
  {
    nrTotalScheduledMimoLayers = self->_nrTotalScheduledMimoLayers;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasTotalConfiguredMimoLayers)
  {
    totalConfiguredMimoLayers = self->_totalConfiguredMimoLayers;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasLteMaxScheduledMimoLayersInACell)
  {
    lteMaxScheduledMimoLayersInACell = self->_lteMaxScheduledMimoLayersInACell;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasNrMaxDlModulation)
  {
    nrMaxDlModulation = self->_nrMaxDlModulation;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasActualHighBandwidth)
  {
    actualHighBandwidth = self->_actualHighBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasActualLowBandwidth)
  {
    actualLowBandwidth = self->_actualLowBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasPActualLowBandwidth)
  {
    pActualLowBandwidth = self->_pActualLowBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasMaxOfActualLowBandwidth)
  {
    maxOfActualLowBandwidth = self->_maxOfActualLowBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasEstimatedHighBandwidth)
  {
    estimatedHighBandwidth = self->_estimatedHighBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasEstimatedLowBandwidth)
  {
    estimatedLowBandwidth = self->_estimatedLowBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasMovingAvgHighBandwidth)
  {
    movingAvgHighBandwidth = self->_movingAvgHighBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasMovingAvgLowBandwidth)
  {
    movingAvgLowBandwidth = self->_movingAvgLowBandwidth;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCmDataSentCount)
  {
    cmDataSentCount = self->_cmDataSentCount;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCmDataSentDuration)
  {
    cmDataSentDuration = self->_cmDataSentDuration;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasTcpRTTAvg)
  {
    tcpRTTAvg = self->_tcpRTTAvg;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasTcpRTTvar)
  {
    tcpRTTvar = self->_tcpRTTvar;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasVideoStreamingStallTime)
  {
    videoStreamingStallTime = self->_videoStreamingStallTime;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasNumStall)
  {
    numStall = self->_numStall;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasStallDuration)
  {
    stallDuration = self->_stallDuration;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellEstimatedBW)
  {
    cellEstimatedBW = self->_cellEstimatedBW;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellLoad)
  {
    cellLoad = self->_cellLoad;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasCellModelConfidenceLevel)
  {
    cellModelConfidenceLevel = self->_cellModelConfidenceLevel;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasMlPredictedCellBW)
  {
    mlPredictedCellBW = self->_mlPredictedCellBW;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasQbssLoad)
  {
    qbssLoad = self->_qbssLoad;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }

  if (self->_hasLqmScorecellular)
  {
    lqmScorecellular = self->_lqmScorecellular;
    PBDataWriterWriteUint32Field();
    v4 = v47;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMDeviceConnectivityContext;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMDeviceConnectivityContextReadFrom(v5, v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v48 = [(BMDeviceConnectivityContext *)self geohash];
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext counter](self, "counter")}];
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext event](self, "event")}];
  v49 = [(BMDeviceConnectivityContext *)self ratType];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext rrcState](self, "rrcState")}];
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled")}];
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext isFR1](self, "isFR1")}];
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN")}];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo")}];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellSinr](self, "cellSinr")}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw")}];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw")}];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers")}];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers")}];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell")}];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth")}];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth")}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext numStall](self, "numStall")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext stallDuration](self, "stallDuration")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellLoad](self, "cellLoad")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lqmScorecellular](self, "lqmScorecellular")}];
  v20 = [v19 initWithFormat:@"BMDeviceConnectivityContext with geohash: %@, counter: %@, event: %@, ratType: %@, rrcState: %@, cellNsaEnabled: %@, isFR1: %@, cellARFCN: %@, cellBandInfo: %@, cellChannelBW: %@, cellRsrp: %@, cellSinr: %@, cellLteRSRQ: %@, cellNrRSRP: %@, cellNrRSRQ: %@, cellNrSNR: %@, maxDLCAConfigured: %@, totalConfiguredBw: %@, nrConfiguredBw: %@, nrTotalScheduledMimoLayers: %@, totalConfiguredMimoLayers: %@, lteMaxScheduledMimoLayersInACell: %@, nrMaxDlModulation: %@, actualHighBandwidth: %@, actualLowBandwidth: %@, pActualLowBandwidth: %@, maxOfActualLowBandwidth: %@, estimatedHighBandwidth: %@, estimatedLowBandwidth: %@, movingAvgHighBandwidth: %@, movingAvgLowBandwidth: %@, cmDataSentCount: %@, cmDataSentDuration: %@, tcpRTTAvg: %@, tcpRTTvar: %@, videoStreamingStallTime: %@, numStall: %@, stallDuration: %@, cellEstimatedBW: %@, cellLoad: %@, cellModelConfidenceLevel: %@, mlPredictedCellBW: %@, qbssLoad: %@, lqmScorecellular: %@", v48, v45, v47, v49, v44, v46, v41, v43, v40, v38, v42, v39, v35, v37, v34, v32, v36, v31, v33, v29, v30, v27, v26, v28, v25, v23, v24, v18, v22, v17, v16, v21, v15, v12, v14, v11, v13, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMDeviceConnectivityContext)initWithGeohash:(id)a3 counter:(id)a4 event:(id)a5 ratType:(id)a6 rrcState:(id)a7 cellNsaEnabled:(id)a8 isFR1:(id)a9 cellARFCN:(id)a10 cellBandInfo:(id)a11 cellChannelBW:(id)a12 cellRsrp:(id)a13 cellSinr:(id)a14 cellLteRSRQ:(id)a15 cellNrRSRP:(id)a16 cellNrRSRQ:(id)a17 cellNrSNR:(id)a18 maxDLCAConfigured:(id)a19 totalConfiguredBw:(id)a20 nrConfiguredBw:(id)a21 nrTotalScheduledMimoLayers:(id)a22 totalConfiguredMimoLayers:(id)a23 lteMaxScheduledMimoLayersInACell:(id)a24 nrMaxDlModulation:(id)a25 actualHighBandwidth:(id)a26 actualLowBandwidth:(id)a27 pActualLowBandwidth:(id)a28 maxOfActualLowBandwidth:(id)a29 estimatedHighBandwidth:(id)a30 estimatedLowBandwidth:(id)a31 movingAvgHighBandwidth:(id)a32 movingAvgLowBandwidth:(id)a33 cmDataSentCount:(id)a34 cmDataSentDuration:(id)a35 tcpRTTAvg:(id)a36 tcpRTTvar:(id)a37 videoStreamingStallTime:(id)a38 numStall:(id)a39 stallDuration:(id)a40 cellEstimatedBW:(id)a41 cellLoad:(id)a42 cellModelConfidenceLevel:(id)a43 mlPredictedCellBW:(id)a44 qbssLoad:(id)a45 lqmScorecellular:(id)a46
{
  v106 = a3;
  v140 = a4;
  v136 = a5;
  v103 = a6;
  v105 = a6;
  v137 = a7;
  v139 = a8;
  v135 = a9;
  v134 = a10;
  v133 = a11;
  v132 = a12;
  v131 = a13;
  v50 = a14;
  v51 = a15;
  v52 = a16;
  v53 = a17;
  v54 = a18;
  v55 = a19;
  v56 = a20;
  v57 = a21;
  v58 = a22;
  v130 = a23;
  v129 = a24;
  v128 = a25;
  v127 = a26;
  v126 = a27;
  v125 = a28;
  v124 = a29;
  v123 = a30;
  v122 = a31;
  v121 = a32;
  v120 = a33;
  v119 = a34;
  v118 = a35;
  v117 = a36;
  v116 = a37;
  v115 = a38;
  v114 = a39;
  v113 = a40;
  v112 = a41;
  v111 = a42;
  v110 = a43;
  v109 = a44;
  v108 = a45;
  v107 = a46;
  v141.receiver = self;
  v141.super_class = BMDeviceConnectivityContext;
  v59 = [(BMEventBase *)&v141 init];

  if (v59)
  {
    v59->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v59->_geohash, a3);
    if (v140)
    {
      v59->_hasCounter = 1;
      v60 = [v140 unsignedIntValue];
    }

    else
    {
      v60 = 0;
      v59->_hasCounter = 0;
    }

    v59->_counter = v60;
    if (v136)
    {
      v59->_hasEvent = 1;
      v61 = [v136 unsignedIntValue];
    }

    else
    {
      v61 = 0;
      v59->_hasEvent = 0;
    }

    v59->_event = v61;
    objc_storeStrong(&v59->_ratType, v103);
    if (v137)
    {
      v59->_hasRrcState = 1;
      v62 = [v137 unsignedIntValue];
    }

    else
    {
      v62 = 0;
      v59->_hasRrcState = 0;
    }

    v59->_rrcState = v62;
    if (v139)
    {
      v59->_hasCellNsaEnabled = 1;
      v59->_cellNsaEnabled = [v139 BOOLValue];
    }

    else
    {
      v59->_hasCellNsaEnabled = 0;
      v59->_cellNsaEnabled = 0;
    }

    if (v135)
    {
      v59->_hasIsFR1 = 1;
      v59->_isFR1 = [v135 BOOLValue];
    }

    else
    {
      v59->_hasIsFR1 = 0;
      v59->_isFR1 = 0;
    }

    v63 = v134;
    if (v134)
    {
      v59->_hasCellARFCN = 1;
      v63 = [v134 unsignedIntValue];
    }

    else
    {
      v59->_hasCellARFCN = 0;
    }

    v59->_cellARFCN = v63;
    v64 = v133;
    if (v133)
    {
      v59->_hasCellBandInfo = 1;
      v64 = [v133 unsignedIntValue];
    }

    else
    {
      v59->_hasCellBandInfo = 0;
    }

    v59->_cellBandInfo = v64;
    v65 = v132;
    if (v132)
    {
      v59->_hasCellChannelBW = 1;
      v65 = [v132 unsignedIntValue];
    }

    else
    {
      v59->_hasCellChannelBW = 0;
    }

    v59->_cellChannelBW = v65;
    if (v131)
    {
      v59->_hasCellRsrp = 1;
      v66 = [v131 intValue];
    }

    else
    {
      v59->_hasCellRsrp = 0;
      v66 = -1;
    }

    v59->_cellRsrp = v66;
    if (v50)
    {
      v59->_hasCellSinr = 1;
      v67 = [v50 intValue];
    }

    else
    {
      v59->_hasCellSinr = 0;
      v67 = -1;
    }

    v59->_cellSinr = v67;
    if (v51)
    {
      v59->_hasCellLteRSRQ = 1;
      v68 = [v51 intValue];
    }

    else
    {
      v59->_hasCellLteRSRQ = 0;
      v68 = -1;
    }

    v59->_cellLteRSRQ = v68;
    if (v52)
    {
      v59->_hasCellNrRSRP = 1;
      v69 = [v52 intValue];
    }

    else
    {
      v59->_hasCellNrRSRP = 0;
      v69 = -1;
    }

    v59->_cellNrRSRP = v69;
    if (v53)
    {
      v59->_hasCellNrRSRQ = 1;
      v70 = [v53 intValue];
    }

    else
    {
      v59->_hasCellNrRSRQ = 0;
      v70 = -1;
    }

    v59->_cellNrRSRQ = v70;
    if (v54)
    {
      v59->_hasCellNrSNR = 1;
      v71 = [v54 intValue];
    }

    else
    {
      v59->_hasCellNrSNR = 0;
      v71 = -1;
    }

    v59->_cellNrSNR = v71;
    if (v55)
    {
      v59->_hasMaxDLCAConfigured = 1;
      v72 = [v55 unsignedIntValue];
    }

    else
    {
      v72 = 0;
      v59->_hasMaxDLCAConfigured = 0;
    }

    v59->_maxDLCAConfigured = v72;
    if (v56)
    {
      v59->_hasTotalConfiguredBw = 1;
      v73 = [v56 unsignedIntValue];
    }

    else
    {
      v73 = 0;
      v59->_hasTotalConfiguredBw = 0;
    }

    v59->_totalConfiguredBw = v73;
    if (v57)
    {
      v59->_hasNrConfiguredBw = 1;
      v74 = [v57 unsignedIntValue];
    }

    else
    {
      v74 = 0;
      v59->_hasNrConfiguredBw = 0;
    }

    v59->_nrConfiguredBw = v74;
    if (v58)
    {
      v59->_hasNrTotalScheduledMimoLayers = 1;
      v75 = [v58 unsignedIntValue];
    }

    else
    {
      v75 = 0;
      v59->_hasNrTotalScheduledMimoLayers = 0;
    }

    v59->_nrTotalScheduledMimoLayers = v75;
    v76 = v130;
    if (v130)
    {
      v59->_hasTotalConfiguredMimoLayers = 1;
      v76 = [v130 unsignedIntValue];
    }

    else
    {
      v59->_hasTotalConfiguredMimoLayers = 0;
    }

    v59->_totalConfiguredMimoLayers = v76;
    v77 = v129;
    if (v129)
    {
      v59->_hasLteMaxScheduledMimoLayersInACell = 1;
      v77 = [v129 unsignedIntValue];
    }

    else
    {
      v59->_hasLteMaxScheduledMimoLayersInACell = 0;
    }

    v59->_lteMaxScheduledMimoLayersInACell = v77;
    v78 = v128;
    if (v128)
    {
      v59->_hasNrMaxDlModulation = 1;
      v78 = [v128 unsignedIntValue];
    }

    else
    {
      v59->_hasNrMaxDlModulation = 0;
    }

    v59->_nrMaxDlModulation = v78;
    v79 = v127;
    if (v127)
    {
      v59->_hasActualHighBandwidth = 1;
      v79 = [v127 unsignedIntValue];
    }

    else
    {
      v59->_hasActualHighBandwidth = 0;
    }

    v59->_actualHighBandwidth = v79;
    v80 = v126;
    if (v126)
    {
      v59->_hasActualLowBandwidth = 1;
      v80 = [v126 unsignedIntValue];
    }

    else
    {
      v59->_hasActualLowBandwidth = 0;
    }

    v59->_actualLowBandwidth = v80;
    v81 = v125;
    if (v125)
    {
      v59->_hasPActualLowBandwidth = 1;
      v81 = [v125 unsignedIntValue];
    }

    else
    {
      v59->_hasPActualLowBandwidth = 0;
    }

    v59->_pActualLowBandwidth = v81;
    v82 = v124;
    if (v124)
    {
      v59->_hasMaxOfActualLowBandwidth = 1;
      v82 = [v124 unsignedIntValue];
    }

    else
    {
      v59->_hasMaxOfActualLowBandwidth = 0;
    }

    v59->_maxOfActualLowBandwidth = v82;
    v83 = v123;
    if (v123)
    {
      v59->_hasEstimatedHighBandwidth = 1;
      v83 = [v123 unsignedIntValue];
    }

    else
    {
      v59->_hasEstimatedHighBandwidth = 0;
    }

    v59->_estimatedHighBandwidth = v83;
    v84 = v122;
    if (v122)
    {
      v59->_hasEstimatedLowBandwidth = 1;
      v84 = [v122 unsignedIntValue];
    }

    else
    {
      v59->_hasEstimatedLowBandwidth = 0;
    }

    v59->_estimatedLowBandwidth = v84;
    v85 = v121;
    if (v121)
    {
      v59->_hasMovingAvgHighBandwidth = 1;
      v85 = [v121 unsignedIntValue];
    }

    else
    {
      v59->_hasMovingAvgHighBandwidth = 0;
    }

    v59->_movingAvgHighBandwidth = v85;
    v86 = v120;
    if (v120)
    {
      v59->_hasMovingAvgLowBandwidth = 1;
      v86 = [v120 unsignedIntValue];
    }

    else
    {
      v59->_hasMovingAvgLowBandwidth = 0;
    }

    v59->_movingAvgLowBandwidth = v86;
    v87 = v119;
    if (v119)
    {
      v59->_hasCmDataSentCount = 1;
      v87 = [v119 unsignedIntValue];
    }

    else
    {
      v59->_hasCmDataSentCount = 0;
    }

    v59->_cmDataSentCount = v87;
    v88 = v118;
    if (v118)
    {
      v59->_hasCmDataSentDuration = 1;
      v88 = [v118 unsignedIntValue];
    }

    else
    {
      v59->_hasCmDataSentDuration = 0;
    }

    v59->_cmDataSentDuration = v88;
    v89 = v117;
    if (v117)
    {
      v59->_hasTcpRTTAvg = 1;
      v89 = [v117 unsignedIntValue];
    }

    else
    {
      v59->_hasTcpRTTAvg = 0;
    }

    v59->_tcpRTTAvg = v89;
    v90 = v116;
    if (v116)
    {
      v59->_hasTcpRTTvar = 1;
      v90 = [v116 unsignedIntValue];
    }

    else
    {
      v59->_hasTcpRTTvar = 0;
    }

    v59->_tcpRTTvar = v90;
    v91 = v115;
    if (v115)
    {
      v59->_hasVideoStreamingStallTime = 1;
      v91 = [v115 unsignedIntValue];
    }

    else
    {
      v59->_hasVideoStreamingStallTime = 0;
    }

    v59->_videoStreamingStallTime = v91;
    v92 = v114;
    if (v114)
    {
      v59->_hasNumStall = 1;
      v92 = [v114 unsignedIntValue];
    }

    else
    {
      v59->_hasNumStall = 0;
    }

    v59->_numStall = v92;
    v93 = v113;
    if (v113)
    {
      v59->_hasStallDuration = 1;
      v93 = [v113 unsignedIntValue];
    }

    else
    {
      v59->_hasStallDuration = 0;
    }

    v59->_stallDuration = v93;
    v94 = v112;
    if (v112)
    {
      v59->_hasCellEstimatedBW = 1;
      v94 = [v112 unsignedIntValue];
    }

    else
    {
      v59->_hasCellEstimatedBW = 0;
    }

    v59->_cellEstimatedBW = v94;
    v95 = v111;
    if (v111)
    {
      v59->_hasCellLoad = 1;
      v95 = [v111 unsignedIntValue];
    }

    else
    {
      v59->_hasCellLoad = 0;
    }

    v59->_cellLoad = v95;
    v96 = v110;
    if (v110)
    {
      v59->_hasCellModelConfidenceLevel = 1;
      v96 = [v110 unsignedIntValue];
    }

    else
    {
      v59->_hasCellModelConfidenceLevel = 0;
    }

    v59->_cellModelConfidenceLevel = v96;
    v97 = v109;
    if (v109)
    {
      v59->_hasMlPredictedCellBW = 1;
      v97 = [v109 unsignedIntValue];
    }

    else
    {
      v59->_hasMlPredictedCellBW = 0;
    }

    v59->_mlPredictedCellBW = v97;
    v98 = v108;
    if (v108)
    {
      v59->_hasQbssLoad = 1;
      v98 = [v108 unsignedIntValue];
    }

    else
    {
      v59->_hasQbssLoad = 0;
    }

    v59->_qbssLoad = v98;
    v99 = v107;
    if (v107)
    {
      v59->_hasLqmScorecellular = 1;
      v99 = [v107 unsignedIntValue];
    }

    else
    {
      v59->_hasLqmScorecellular = 0;
    }

    v59->_lqmScorecellular = v99;
  }

  v100 = v59;

  return v100;
}

+ (id)protoFields
{
  v49[44] = *MEMORY[0x1E69E9840];
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geohash" number:1 type:13 subMessageClass:0];
  v49[0] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"counter" number:2 type:4 subMessageClass:0];
  v49[1] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"event" number:3 type:4 subMessageClass:0];
  v49[2] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratType" number:4 type:13 subMessageClass:0];
  v49[3] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rrcState" number:5 type:4 subMessageClass:0];
  v49[4] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNsaEnabled" number:6 type:12 subMessageClass:0];
  v49[5] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFR1" number:7 type:12 subMessageClass:0];
  v49[6] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellARFCN" number:8 type:4 subMessageClass:0];
  v49[7] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellBandInfo" number:9 type:4 subMessageClass:0];
  v49[8] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellChannelBW" number:10 type:4 subMessageClass:0];
  v49[9] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellRsrp" number:11 type:2 subMessageClass:0];
  v49[10] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellSinr" number:12 type:2 subMessageClass:0];
  v49[11] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellLteRSRQ" number:13 type:2 subMessageClass:0];
  v49[12] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrRSRP" number:14 type:2 subMessageClass:0];
  v49[13] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrRSRQ" number:15 type:2 subMessageClass:0];
  v49[14] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrSNR" number:16 type:2 subMessageClass:0];
  v49[15] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxDLCAConfigured" number:17 type:4 subMessageClass:0];
  v49[16] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalConfiguredBw" number:18 type:4 subMessageClass:0];
  v49[17] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrConfiguredBw" number:19 type:4 subMessageClass:0];
  v49[18] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrTotalScheduledMimoLayers" number:20 type:4 subMessageClass:0];
  v49[19] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalConfiguredMimoLayers" number:21 type:4 subMessageClass:0];
  v49[20] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lteMaxScheduledMimoLayersInACell" number:22 type:4 subMessageClass:0];
  v49[21] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrMaxDlModulation" number:23 type:4 subMessageClass:0];
  v49[22] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actualHighBandwidth" number:24 type:4 subMessageClass:0];
  v49[23] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actualLowBandwidth" number:25 type:4 subMessageClass:0];
  v49[24] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pActualLowBandwidth" number:26 type:4 subMessageClass:0];
  v49[25] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxOfActualLowBandwidth" number:27 type:4 subMessageClass:0];
  v49[26] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedHighBandwidth" number:28 type:4 subMessageClass:0];
  v49[27] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedLowBandwidth" number:29 type:4 subMessageClass:0];
  v49[28] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movingAvgHighBandwidth" number:30 type:4 subMessageClass:0];
  v49[29] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movingAvgLowBandwidth" number:31 type:4 subMessageClass:0];
  v49[30] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cmDataSentCount" number:32 type:4 subMessageClass:0];
  v49[31] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cmDataSentDuration" number:33 type:4 subMessageClass:0];
  v49[32] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tcpRTTAvg" number:34 type:4 subMessageClass:0];
  v49[33] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tcpRTTvar" number:35 type:4 subMessageClass:0];
  v49[34] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"videoStreamingStallTime" number:36 type:4 subMessageClass:0];
  v49[35] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numStall" number:37 type:4 subMessageClass:0];
  v49[36] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stallDuration" number:38 type:4 subMessageClass:0];
  v49[37] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellEstimatedBW" number:39 type:4 subMessageClass:0];
  v49[38] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellLoad" number:40 type:4 subMessageClass:0];
  v49[39] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellModelConfidenceLevel" number:41 type:4 subMessageClass:0];
  v49[40] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mlPredictedCellBW" number:42 type:4 subMessageClass:0];
  v49[41] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qbssLoad" number:43 type:4 subMessageClass:0];
  v49[42] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lqmScorecellular" number:44 type:4 subMessageClass:0];
  v49[43] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:44];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMDeviceConnectivityContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[15] = 0;
    }
  }

  return v4;
}

@end
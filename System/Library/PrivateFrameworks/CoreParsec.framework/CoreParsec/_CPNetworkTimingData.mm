@interface _CPNetworkTimingData
+ (id)startMetricsForNormalization;
- (BOOL)isEqual:(id)equal;
- (_CPNetworkTimingData)initWithTelemetryDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPNetworkTimingData

- (unint64_t)hash
{
  v3 = [(NSString *)self->_interfaceIdentifier hash];
  v4 = [(NSData *)self->_peerAddress hash]^ v3 ^ (2654435761 * self->_connectionRace);
  v5 = 2654435761 * self->_connectionReused;
  v6 = v4 ^ v5 ^ [(_CPTCPInfo *)self->_startTimeCounts hash];
  v7 = [(_CPTCPInfo *)self->_stopTimeCounts hash];
  v8 = v7 ^ [(NSString *)self->_connectionUUID hash];
  v9 = [(NSString *)self->_networkProtocolName hash];
  timingDataInit = self->_timingDataInit;
  if (timingDataInit < 0.0)
  {
    timingDataInit = -timingDataInit;
  }

  *v10.i64 = round(timingDataInit);
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  return v6 ^ v8 ^ v9 ^ (2654435761 * self->_QUICWhitelistedDomain) ^ (2654435761 * self->_redirectCount) ^ (2654435761 * self->_redirectCountW3C) ^ (2654435761 * self->_requestHeaderSize) ^ (2654435761 * self->_responseBodyBytesDecoded) ^ (2654435761 * self->_responseBodyBytesReceived) ^ (2654435761 * self->_responseHeaderSize) ^ (2654435761 * self->_TFOSuccess) ^ (2654435761 * self->_connectStart) ^ (2654435761 * self->_connectEnd) ^ (2654435761 * self->_domainLookupStart) ^ (2654435761 * self->_domainLookupEnd) ^ (2654435761 * self->_fetchStart) ^ (2654435761 * self->_redirectStart) ^ (2654435761 * self->_redirectEnd) ^ (2654435761 * self->_requestStart) ^ (2654435761 * self->_requestEnd) ^ (2654435761 * self->_responseStart) ^ (2654435761 * self->_responseEnd) ^ (2654435761 * self->_secureConnectStart) ^ ((*vbslq_s8(vnegq_f64(v13), v11, v10).i64 * 2654435760.0) + vcvtd_n_u64_f64(timingDataInit - *v10.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self interfaceIdentifier];
  interfaceIdentifier2 = [equalCopy interfaceIdentifier];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  interfaceIdentifier3 = [(_CPNetworkTimingData *)self interfaceIdentifier];
  if (interfaceIdentifier3)
  {
    v8 = interfaceIdentifier3;
    interfaceIdentifier4 = [(_CPNetworkTimingData *)self interfaceIdentifier];
    interfaceIdentifier5 = [equalCopy interfaceIdentifier];
    v11 = [interfaceIdentifier4 isEqual:interfaceIdentifier5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self peerAddress];
  interfaceIdentifier2 = [equalCopy peerAddress];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  peerAddress = [(_CPNetworkTimingData *)self peerAddress];
  if (peerAddress)
  {
    v13 = peerAddress;
    peerAddress2 = [(_CPNetworkTimingData *)self peerAddress];
    peerAddress3 = [equalCopy peerAddress];
    v16 = [peerAddress2 isEqual:peerAddress3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  connectionRace = self->_connectionRace;
  if (connectionRace != [equalCopy connectionRace])
  {
    goto LABEL_34;
  }

  connectionReused = self->_connectionReused;
  if (connectionReused != [equalCopy connectionReused])
  {
    goto LABEL_34;
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self startTimeCounts];
  interfaceIdentifier2 = [equalCopy startTimeCounts];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  startTimeCounts = [(_CPNetworkTimingData *)self startTimeCounts];
  if (startTimeCounts)
  {
    v20 = startTimeCounts;
    startTimeCounts2 = [(_CPNetworkTimingData *)self startTimeCounts];
    startTimeCounts3 = [equalCopy startTimeCounts];
    v23 = [startTimeCounts2 isEqual:startTimeCounts3];

    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self stopTimeCounts];
  interfaceIdentifier2 = [equalCopy stopTimeCounts];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  stopTimeCounts = [(_CPNetworkTimingData *)self stopTimeCounts];
  if (stopTimeCounts)
  {
    v25 = stopTimeCounts;
    stopTimeCounts2 = [(_CPNetworkTimingData *)self stopTimeCounts];
    stopTimeCounts3 = [equalCopy stopTimeCounts];
    v28 = [stopTimeCounts2 isEqual:stopTimeCounts3];

    if (!v28)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self connectionUUID];
  interfaceIdentifier2 = [equalCopy connectionUUID];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
    goto LABEL_33;
  }

  connectionUUID = [(_CPNetworkTimingData *)self connectionUUID];
  if (connectionUUID)
  {
    v30 = connectionUUID;
    connectionUUID2 = [(_CPNetworkTimingData *)self connectionUUID];
    connectionUUID3 = [equalCopy connectionUUID];
    v33 = [connectionUUID2 isEqual:connectionUUID3];

    if (!v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  interfaceIdentifier = [(_CPNetworkTimingData *)self networkProtocolName];
  interfaceIdentifier2 = [equalCopy networkProtocolName];
  if ((interfaceIdentifier != 0) == (interfaceIdentifier2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  networkProtocolName = [(_CPNetworkTimingData *)self networkProtocolName];
  if (networkProtocolName)
  {
    v35 = networkProtocolName;
    networkProtocolName2 = [(_CPNetworkTimingData *)self networkProtocolName];
    networkProtocolName3 = [equalCopy networkProtocolName];
    v38 = [networkProtocolName2 isEqual:networkProtocolName3];

    if (!v38)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  QUICWhitelistedDomain = self->_QUICWhitelistedDomain;
  if (QUICWhitelistedDomain == [equalCopy QUICWhitelistedDomain])
  {
    redirectCount = self->_redirectCount;
    if (redirectCount == [equalCopy redirectCount])
    {
      redirectCountW3C = self->_redirectCountW3C;
      if (redirectCountW3C == [equalCopy redirectCountW3C])
      {
        requestHeaderSize = self->_requestHeaderSize;
        if (requestHeaderSize == [equalCopy requestHeaderSize])
        {
          responseBodyBytesDecoded = self->_responseBodyBytesDecoded;
          if (responseBodyBytesDecoded == [equalCopy responseBodyBytesDecoded])
          {
            responseBodyBytesReceived = self->_responseBodyBytesReceived;
            if (responseBodyBytesReceived == [equalCopy responseBodyBytesReceived])
            {
              responseHeaderSize = self->_responseHeaderSize;
              if (responseHeaderSize == [equalCopy responseHeaderSize])
              {
                TFOSuccess = self->_TFOSuccess;
                if (TFOSuccess == [equalCopy TFOSuccess])
                {
                  timingDataInit = self->_timingDataInit;
                  [equalCopy timingDataInit];
                  if (timingDataInit == v50)
                  {
                    connectStart = self->_connectStart;
                    if (connectStart == [equalCopy connectStart])
                    {
                      connectEnd = self->_connectEnd;
                      if (connectEnd == [equalCopy connectEnd])
                      {
                        domainLookupStart = self->_domainLookupStart;
                        if (domainLookupStart == [equalCopy domainLookupStart])
                        {
                          domainLookupEnd = self->_domainLookupEnd;
                          if (domainLookupEnd == [equalCopy domainLookupEnd])
                          {
                            fetchStart = self->_fetchStart;
                            if (fetchStart == [equalCopy fetchStart])
                            {
                              redirectStart = self->_redirectStart;
                              if (redirectStart == [equalCopy redirectStart])
                              {
                                redirectEnd = self->_redirectEnd;
                                if (redirectEnd == [equalCopy redirectEnd])
                                {
                                  requestStart = self->_requestStart;
                                  if (requestStart == [equalCopy requestStart])
                                  {
                                    requestEnd = self->_requestEnd;
                                    if (requestEnd == [equalCopy requestEnd])
                                    {
                                      responseStart = self->_responseStart;
                                      if (responseStart == [equalCopy responseStart])
                                      {
                                        responseEnd = self->_responseEnd;
                                        if (responseEnd == [equalCopy responseEnd])
                                        {
                                          secureConnectStart = self->_secureConnectStart;
                                          v39 = secureConnectStart == [equalCopy secureConnectStart];
                                          goto LABEL_35;
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

LABEL_34:
  v39 = 0;
LABEL_35:

  return v39;
}

- (void)writeTo:(id)to
{
  to;
  interfaceIdentifier = [(_CPNetworkTimingData *)self interfaceIdentifier];

  if (interfaceIdentifier)
  {
    interfaceIdentifier = self->_interfaceIdentifier;
    PBDataWriterWriteStringField();
  }

  peerAddress = [(_CPNetworkTimingData *)self peerAddress];

  if (peerAddress)
  {
    peerAddress = self->_peerAddress;
    PBDataWriterWriteDataField();
  }

  if ([(_CPNetworkTimingData *)self connectionRace])
  {
    connectionRace = self->_connectionRace;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPNetworkTimingData *)self connectionReused])
  {
    connectionReused = self->_connectionReused;
    PBDataWriterWriteBOOLField();
  }

  startTimeCounts = [(_CPNetworkTimingData *)self startTimeCounts];

  if (startTimeCounts)
  {
    startTimeCounts2 = [(_CPNetworkTimingData *)self startTimeCounts];
    PBDataWriterWriteSubmessage();
  }

  stopTimeCounts = [(_CPNetworkTimingData *)self stopTimeCounts];

  if (stopTimeCounts)
  {
    stopTimeCounts2 = [(_CPNetworkTimingData *)self stopTimeCounts];
    PBDataWriterWriteSubmessage();
  }

  connectionUUID = [(_CPNetworkTimingData *)self connectionUUID];

  if (connectionUUID)
  {
    connectionUUID = self->_connectionUUID;
    PBDataWriterWriteStringField();
  }

  networkProtocolName = [(_CPNetworkTimingData *)self networkProtocolName];

  if (networkProtocolName)
  {
    networkProtocolName = self->_networkProtocolName;
    PBDataWriterWriteStringField();
  }

  if ([(_CPNetworkTimingData *)self QUICWhitelistedDomain])
  {
    QUICWhitelistedDomain = self->_QUICWhitelistedDomain;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPNetworkTimingData *)self redirectCount])
  {
    redirectCount = self->_redirectCount;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectCountW3C])
  {
    redirectCountW3C = self->_redirectCountW3C;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestHeaderSize])
  {
    requestHeaderSize = self->_requestHeaderSize;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseBodyBytesDecoded])
  {
    responseBodyBytesDecoded = self->_responseBodyBytesDecoded;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseBodyBytesReceived])
  {
    responseBodyBytesReceived = self->_responseBodyBytesReceived;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseHeaderSize])
  {
    responseHeaderSize = self->_responseHeaderSize;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self TFOSuccess])
  {
    TFOSuccess = self->_TFOSuccess;
    PBDataWriterWriteBOOLField();
  }

  [(_CPNetworkTimingData *)self timingDataInit];
  if (v26 != 0.0)
  {
    timingDataInit = self->_timingDataInit;
    PBDataWriterWriteDoubleField();
  }

  if ([(_CPNetworkTimingData *)self connectStart])
  {
    connectStart = self->_connectStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self connectEnd])
  {
    connectEnd = self->_connectEnd;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self domainLookupStart])
  {
    domainLookupStart = self->_domainLookupStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self domainLookupEnd])
  {
    domainLookupEnd = self->_domainLookupEnd;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self fetchStart])
  {
    fetchStart = self->_fetchStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectStart])
  {
    redirectStart = self->_redirectStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self redirectEnd])
  {
    redirectEnd = self->_redirectEnd;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestStart])
  {
    requestStart = self->_requestStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self requestEnd])
  {
    requestEnd = self->_requestEnd;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseStart])
  {
    responseStart = self->_responseStart;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self responseEnd])
  {
    responseEnd = self->_responseEnd;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPNetworkTimingData *)self secureConnectStart])
  {
    secureConnectStart = self->_secureConnectStart;
    PBDataWriterWriteUint32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPNetworkTimingData)initWithTelemetryDictionary:(id)dictionary
{
  v94 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(_CPNetworkTimingData *)self init];
  v6 = v5;
  if (v5)
  {
    v80 = v5;
    startMetricsForNormalization = [objc_opt_class() startMetricsForNormalization];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v8 = [startMetricsForNormalization countByEnumeratingWithState:&v86 objects:v93 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v87;
      v11 = 1.79769313e308;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v87 != v10)
          {
            objc_enumerationMutation(startMetricsForNormalization);
          }

          v13 = [dictionaryCopy parsec_numberForKey:*(*(&v86 + 1) + 8 * i)];
          [v13 doubleValue];
          v15 = v14;

          if (v15 < v11 && v15 != 0.0)
          {
            v11 = v15;
          }
        }

        v9 = [startMetricsForNormalization countByEnumeratingWithState:&v86 objects:v93 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 1.79769313e308;
    }

    v78 = dictionaryCopy;
    v79 = startMetricsForNormalization;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v17 = dictionaryCopy;
    v18 = [v17 countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = @"timing_data_key_unknown";
      v21 = @"_kCFNTimingDataConnectionReused";
      v22 = *v83;
      v81 = *v83;
      do
      {
        v23 = 0;
        do
        {
          if (*v83 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = *(*(&v82 + 1) + 8 * v23);
          if (![v24 compare:v20 options:3])
          {
LABEL_70:

            goto LABEL_154;
          }

          if (![v24 compare:v21 options:3])
          {
            v25 = 1;
LABEL_72:
            v26 = 0x1E696AD98;
            goto LABEL_79;
          }

          if (![v24 compare:@"_kCFNTimingDataConnectionPeerAddress" options:3])
          {
            v25 = 2;
            v26 = 0x1E695DEF0;
            goto LABEL_79;
          }

          v25 = 3;
          if (![v24 compare:@"_kCFNTimingDataConnectionInterfaceIdentifier" options:3])
          {
            goto LABEL_75;
          }

          if (![v24 compare:@"omit" options:3])
          {
            v25 = 4;
LABEL_75:
            v26 = 0x1E696AEC0;
            goto LABEL_79;
          }

          if ([v24 compare:@"_kCFNTimingDataConnectionStartTimeCounts" options:3])
          {
            if ([v24 compare:@"_kCFNTimingDataConnectionStopTimeCounts" options:3])
            {
              if (![v24 compare:@"_kCFNTimingDataNStatRXPackets" options:3] || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXDuplicateBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatRXOutOfOrderBytes", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatTXRetransmit", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatConnectAttempts", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatConnectSuccesses", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatMinRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatAvgRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatVarRTT", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatCellRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatCellTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWifiRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWifiTXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWiredRXPackets", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataNStatWiredTXPackets", 3))
              {
                goto LABEL_70;
              }

              if ([v24 compare:@"_kCFNTimingDataTCPFastOpenStats" options:3])
              {
                if (![v24 compare:@"_kCFNTimingDataTCPInfoAtStart" options:3] || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataTCPInfoAtStop", 3) || !objc_msgSend(v24, "compare:options:", @"omit", 3) || !objc_msgSend(v24, "compare:options:", @"_kCFNTimingDataRemoteAddressAndPort", 3))
                {
                  goto LABEL_70;
                }

                if ([v24 compare:@"_kCFNTimingDataNetworkProtocolName" options:3])
                {
                  if ([v24 compare:@"_kCFNTimingDataConnectionRace" options:3])
                  {
                    if ([v24 compare:@"_kCFNTimingDataQUICWhitelistedDomain" options:3])
                    {
                      if ([v24 compare:@"_kCFNTimingDataRequestHeaderSize" options:3])
                      {
                        if ([v24 compare:@"_kCFNTimingDataResponseHeaderSize" options:3])
                        {
                          if ([v24 compare:@"_kCFNTimingDataResponseBodyBytesReceived" options:3])
                          {
                            if ([v24 compare:@"_kCFNTimingDataResponseBodyBytesDecoded" options:3])
                            {
                              if ([v24 compare:@"_kCFNTimingDataFetchStart" options:3])
                              {
                                if ([v24 compare:@"_kCFNTimingDataDomainLookupStart" options:3])
                                {
                                  if ([v24 compare:@"_kCFNTimingDataDomainLookupEnd" options:3])
                                  {
                                    if ([v24 compare:@"_kCFNTimingDataConnectStart" options:3])
                                    {
                                      if ([v24 compare:@"_kCFNTimingDataSecureConnectionStart" options:3])
                                      {
                                        if ([v24 compare:@"_kCFNTimingDataConnectEnd" options:3])
                                        {
                                          if ([v24 compare:@"_kCFNTimingDataRequestStart" options:3])
                                          {
                                            if ([v24 compare:@"_kCFNTimingDataRequestEnd" options:3])
                                            {
                                              if ([v24 compare:@"_kCFNTimingDataResponseStart" options:3])
                                              {
                                                if ([v24 compare:@"_kCFNTimingDataResponseEnd" options:3])
                                                {
                                                  if ([v24 compare:@"_kCFNTimingDataRedirectStart" options:3])
                                                  {
                                                    if ([v24 compare:@"_kCFNTimingDataRedirectEnd" options:3])
                                                    {
                                                      goto LABEL_70;
                                                    }

                                                    v25 = 48;
                                                  }

                                                  else
                                                  {
                                                    v25 = 47;
                                                  }
                                                }

                                                else
                                                {
                                                  v25 = 46;
                                                }
                                              }

                                              else
                                              {
                                                v25 = 45;
                                              }
                                            }

                                            else
                                            {
                                              v25 = 44;
                                            }
                                          }

                                          else
                                          {
                                            v25 = 43;
                                          }
                                        }

                                        else
                                        {
                                          v25 = 42;
                                        }
                                      }

                                      else
                                      {
                                        v25 = 41;
                                      }
                                    }

                                    else
                                    {
                                      v25 = 40;
                                    }
                                  }

                                  else
                                  {
                                    v25 = 39;
                                  }
                                }

                                else
                                {
                                  v25 = 38;
                                }
                              }

                              else
                              {
                                v25 = 37;
                              }
                            }

                            else
                            {
                              v25 = 36;
                            }
                          }

                          else
                          {
                            v25 = 35;
                          }
                        }

                        else
                        {
                          v25 = 34;
                        }
                      }

                      else
                      {
                        v25 = 33;
                      }
                    }

                    else
                    {
                      v25 = 32;
                    }
                  }

                  else
                  {
                    v25 = 31;
                  }

                  goto LABEL_72;
                }

                v25 = 30;
                goto LABEL_75;
              }

              v25 = 25;
            }

            else
            {
              v25 = 6;
            }
          }

          else
          {
            v25 = 5;
          }

          v26 = 0x1E695DF20;
LABEL_79:

          v27 = *v26;
          objc_opt_self();
          if (objc_claimAutoreleasedReturnValue())
          {
            v28 = [v17 objectForKey:v24];
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v30 = v21;
              v31 = v20;
              v32 = [v17 parsec_numberForKey:v24];
              v33 = [v17 parsec_dictionaryForKey:v24];
              v34 = [v17 parsec_stringForKey:v24];
              v35 = [v17 parsec_dataForKey:v24];
              switch(v25)
              {
                case 1:
                  -[_CPNetworkTimingData setConnectionReused:](v80, "setConnectionReused:", [v32 BOOLValue]);
                  break;
                case 2:
                  [(_CPNetworkTimingData *)v80 setPeerAddress:v35];
                  break;
                case 3:
                  [(_CPNetworkTimingData *)v80 setInterfaceIdentifier:v34];
                  break;
                case 4:
                  [(_CPNetworkTimingData *)v80 setConnectionUUID:v34];
                  break;
                case 5:
                  if (v33)
                  {
                    v49 = [[_CPTCPInfo alloc] initWithTelemetryDictionary:v33];
                    [(_CPNetworkTimingData *)v80 setStartTimeCounts:v49];
                    goto LABEL_128;
                  }

                  break;
                case 6:
                  if (v33)
                  {
                    v49 = [[_CPTCPInfo alloc] initWithTelemetryDictionary:v33];
                    [(_CPNetworkTimingData *)v80 setStopTimeCounts:v49];
                    goto LABEL_128;
                  }

                  break;
                case 25:
                  if (v33)
                  {
                    v49 = [v33 parsec_numberForKey:@"TFOSuccess"];
                    [(_CPNetworkTimingData *)v80 setTFOSuccess:[(_CPTCPInfo *)v49 BOOLValue]];
LABEL_128:
                  }

                  break;
                case 30:
                  if ([v34 length])
                  {
                    [(_CPNetworkTimingData *)v80 setNetworkProtocolName:v34];
                  }

                  break;
                case 31:
                  -[_CPNetworkTimingData setConnectionRace:](v80, "setConnectionRace:", [v32 BOOLValue]);
                  break;
                case 32:
                  -[_CPNetworkTimingData setQUICWhitelistedDomain:](v80, "setQUICWhitelistedDomain:", [v32 BOOLValue]);
                  break;
                case 33:
                  -[_CPNetworkTimingData setRequestHeaderSize:](v80, "setRequestHeaderSize:", [v32 unsignedIntegerValue]);
                  break;
                case 34:
                  -[_CPNetworkTimingData setResponseHeaderSize:](v80, "setResponseHeaderSize:", [v32 unsignedIntegerValue]);
                  break;
                case 35:
                  -[_CPNetworkTimingData setResponseBodyBytesReceived:](v80, "setResponseBodyBytesReceived:", [v32 unsignedIntegerValue]);
                  break;
                case 36:
                  -[_CPNetworkTimingData setResponseBodyBytesDecoded:](v80, "setResponseBodyBytesDecoded:", [v32 unsignedIntegerValue]);
                  break;
                case 37:
                  [v32 doubleValue];
                  v60 = vcvtad_u64_f64((v59 - v11) * 1000.0);
                  if (v59 <= v11)
                  {
                    v61 = 0;
                  }

                  else
                  {
                    v61 = v60;
                  }

                  [(_CPNetworkTimingData *)v80 setFetchStart:v61, v78];
                  break;
                case 38:
                  [v32 doubleValue];
                  v63 = vcvtad_u64_f64((v62 - v11) * 1000.0);
                  if (v62 <= v11)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = v63;
                  }

                  [(_CPNetworkTimingData *)v80 setDomainLookupStart:v64, v78];
                  break;
                case 39:
                  [v32 doubleValue];
                  v69 = vcvtad_u64_f64((v68 - v11) * 1000.0);
                  if (v68 <= v11)
                  {
                    v70 = 0;
                  }

                  else
                  {
                    v70 = v69;
                  }

                  [(_CPNetworkTimingData *)v80 setDomainLookupEnd:v70, v78];
                  break;
                case 40:
                  [v32 doubleValue];
                  v66 = vcvtad_u64_f64((v65 - v11) * 1000.0);
                  if (v65 <= v11)
                  {
                    v67 = 0;
                  }

                  else
                  {
                    v67 = v66;
                  }

                  [(_CPNetworkTimingData *)v80 setConnectStart:v67, v78];
                  break;
                case 41:
                  [v32 doubleValue];
                  v38 = vcvtad_u64_f64((v37 - v11) * 1000.0);
                  if (v37 <= v11)
                  {
                    v39 = 0;
                  }

                  else
                  {
                    v39 = v38;
                  }

                  [(_CPNetworkTimingData *)v80 setSecureConnectStart:v39, v78];
                  break;
                case 42:
                  [v32 doubleValue];
                  v54 = vcvtad_u64_f64((v53 - v11) * 1000.0);
                  if (v53 <= v11)
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = v54;
                  }

                  [(_CPNetworkTimingData *)v80 setConnectEnd:v55, v78];
                  break;
                case 43:
                  [v32 doubleValue];
                  v72 = vcvtad_u64_f64((v71 - v11) * 1000.0);
                  if (v71 <= v11)
                  {
                    v73 = 0;
                  }

                  else
                  {
                    v73 = v72;
                  }

                  [(_CPNetworkTimingData *)v80 setRequestStart:v73, v78, v79];
                  break;
                case 44:
                  [v32 doubleValue];
                  v41 = vcvtad_u64_f64((v40 - v11) * 1000.0);
                  if (v40 <= v11)
                  {
                    v42 = 0;
                  }

                  else
                  {
                    v42 = v41;
                  }

                  [(_CPNetworkTimingData *)v80 setRequestEnd:v42, v78];
                  break;
                case 45:
                  [v32 doubleValue];
                  v51 = vcvtad_u64_f64((v50 - v11) * 1000.0);
                  if (v50 <= v11)
                  {
                    v52 = 0;
                  }

                  else
                  {
                    v52 = v51;
                  }

                  [(_CPNetworkTimingData *)v80 setResponseStart:v52, v78];
                  break;
                case 46:
                  [v32 doubleValue];
                  v47 = vcvtad_u64_f64((v46 - v11) * 1000.0);
                  if (v46 <= v11)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v48 = v47;
                  }

                  [(_CPNetworkTimingData *)v80 setResponseEnd:v48, v78];
                  break;
                case 47:
                  [v32 doubleValue];
                  v57 = vcvtad_u64_f64((v56 - v11) * 1000.0);
                  if (v56 <= v11)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  [(_CPNetworkTimingData *)v80 setRedirectStart:v58, v78];
                  break;
                case 48:
                  [v32 doubleValue];
                  v44 = vcvtad_u64_f64((v43 - v11) * 1000.0);
                  if (v43 <= v11)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = v44;
                  }

                  [(_CPNetworkTimingData *)v80 setRedirectEnd:v45, v78];
                  break;
                default:
                  break;
              }

              v20 = v31;
              v21 = v30;
              v22 = v81;
            }

            else
            {
              if (PARLogHandleForCategory_onceToken_1349 != -1)
              {
                dispatch_once(&PARLogHandleForCategory_onceToken_1349, &__block_literal_global_155);
              }

              v36 = PARLogHandleForCategory_logHandles_2_1350;
              if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1350, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v91 = v24;
                _os_log_error_impl(&dword_1B1064000, v36, OS_LOG_TYPE_ERROR, "Got data of unexpected type for metric %@.", buf, 0xCu);
              }
            }
          }

LABEL_154:
          ++v23;
        }

        while (v19 != v23);
        v74 = [v17 countByEnumeratingWithState:&v82 objects:v92 count:16];
        v19 = v74;
      }

      while (v74);
    }

    v6 = v80;
    v75 = v80;

    dictionaryCopy = v78;
  }

  v76 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)startMetricsForNormalization
{
  if (startMetricsForNormalization_onceToken != -1)
  {
    dispatch_once(&startMetricsForNormalization_onceToken, &__block_literal_global_1364);
  }

  v3 = startMetricsForNormalization_startMetricNames;

  return v3;
}

@end
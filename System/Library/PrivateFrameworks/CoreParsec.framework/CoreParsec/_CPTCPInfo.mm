@interface _CPTCPInfo
- (BOOL)isEqual:(id)equal;
- (_CPTCPInfo)initWithTelemetryDictionary:(id)dictionary;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPTCPInfo

- (unint64_t)hash
{
  v2 = (2654435761u * self->_cellRXPackets) ^ (2654435761 * self->_avgRTT) ^ (2654435761u * self->_cellTXPackets) ^ (2654435761 * self->_connectAttempts) ^ (2654435761 * self->_connectSuccesses) ^ (2654435761 * self->_minRTT) ^ (2654435761u * self->_rxBytes) ^ (2654435761u * self->_rxDuplicateBytes) ^ (2654435761u * self->_rxOutOfOrderBytes) ^ (2654435761u * self->_rxPackets) ^ (2654435761u * self->_txBytes) ^ (2654435761u * self->_txPackets) ^ (2654435761u * self->_txRetransmitPackets) ^ (2654435761 * self->_varRTT) ^ (2654435761u * self->_wifiRXPackets) ^ (2654435761u * self->_wifiTXPackets) ^ (2654435761u * self->_wiredRXPackets);
  v3 = 2654435761u * self->_wiredTXPackets;
  return v2 ^ v3 ^ [(NSString *)self->_statsType hash]^ (2654435761u * self->_txRetransmitBytes);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    avgRTT = self->_avgRTT;
    if (avgRTT == [equalCopy avgRTT])
    {
      cellRXPackets = self->_cellRXPackets;
      if (cellRXPackets == [equalCopy cellRXPackets])
      {
        cellTXPackets = self->_cellTXPackets;
        if (cellTXPackets == [equalCopy cellTXPackets])
        {
          connectAttempts = self->_connectAttempts;
          if (connectAttempts == [equalCopy connectAttempts])
          {
            connectSuccesses = self->_connectSuccesses;
            if (connectSuccesses == [equalCopy connectSuccesses])
            {
              minRTT = self->_minRTT;
              if (minRTT == [equalCopy minRTT])
              {
                rxBytes = self->_rxBytes;
                if (rxBytes == [equalCopy rxBytes])
                {
                  rxDuplicateBytes = self->_rxDuplicateBytes;
                  if (rxDuplicateBytes == [equalCopy rxDuplicateBytes])
                  {
                    rxOutOfOrderBytes = self->_rxOutOfOrderBytes;
                    if (rxOutOfOrderBytes == [equalCopy rxOutOfOrderBytes])
                    {
                      rxPackets = self->_rxPackets;
                      if (rxPackets == [equalCopy rxPackets])
                      {
                        txBytes = self->_txBytes;
                        if (txBytes == [equalCopy txBytes])
                        {
                          txPackets = self->_txPackets;
                          if (txPackets == [equalCopy txPackets])
                          {
                            txRetransmitPackets = self->_txRetransmitPackets;
                            if (txRetransmitPackets == [equalCopy txRetransmitPackets])
                            {
                              varRTT = self->_varRTT;
                              if (varRTT == [equalCopy varRTT])
                              {
                                wifiRXPackets = self->_wifiRXPackets;
                                if (wifiRXPackets == [equalCopy wifiRXPackets])
                                {
                                  wifiTXPackets = self->_wifiTXPackets;
                                  if (wifiTXPackets == [equalCopy wifiTXPackets])
                                  {
                                    wiredRXPackets = self->_wiredRXPackets;
                                    if (wiredRXPackets == [equalCopy wiredRXPackets])
                                    {
                                      wiredTXPackets = self->_wiredTXPackets;
                                      if (wiredTXPackets == [equalCopy wiredTXPackets])
                                      {
                                        statsType = [(_CPTCPInfo *)self statsType];
                                        statsType2 = [equalCopy statsType];
                                        v25 = statsType2;
                                        if ((statsType != 0) != (statsType2 == 0))
                                        {
                                          statsType3 = [(_CPTCPInfo *)self statsType];
                                          if (!statsType3)
                                          {

LABEL_28:
                                            txRetransmitBytes = self->_txRetransmitBytes;
                                            v31 = txRetransmitBytes == [equalCopy txRetransmitBytes];
                                            goto LABEL_26;
                                          }

                                          v27 = statsType3;
                                          statsType4 = [(_CPTCPInfo *)self statsType];
                                          statsType5 = [equalCopy statsType];
                                          v30 = [statsType4 isEqual:statsType5];

                                          if (v30)
                                          {
                                            goto LABEL_28;
                                          }
                                        }

                                        else
                                        {
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

  v31 = 0;
LABEL_26:

  return v31;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPTCPInfo *)self avgRTT])
  {
    avgRTT = self->_avgRTT;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPTCPInfo *)self cellRXPackets])
  {
    cellRXPackets = self->_cellRXPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self cellTXPackets])
  {
    cellTXPackets = self->_cellTXPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self connectAttempts])
  {
    connectAttempts = self->_connectAttempts;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPTCPInfo *)self connectSuccesses])
  {
    connectSuccesses = self->_connectSuccesses;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPTCPInfo *)self minRTT])
  {
    minRTT = self->_minRTT;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPTCPInfo *)self rxBytes])
  {
    rxBytes = self->_rxBytes;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self rxDuplicateBytes])
  {
    rxDuplicateBytes = self->_rxDuplicateBytes;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self rxOutOfOrderBytes])
  {
    rxOutOfOrderBytes = self->_rxOutOfOrderBytes;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self rxPackets])
  {
    rxPackets = self->_rxPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self txBytes])
  {
    txBytes = self->_txBytes;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self txPackets])
  {
    txPackets = self->_txPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self txRetransmitPackets])
  {
    txRetransmitPackets = self->_txRetransmitPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self varRTT])
  {
    varRTT = self->_varRTT;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPTCPInfo *)self wifiRXPackets])
  {
    wifiRXPackets = self->_wifiRXPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self wifiTXPackets])
  {
    wifiTXPackets = self->_wifiTXPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self wiredRXPackets])
  {
    wiredRXPackets = self->_wiredRXPackets;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPTCPInfo *)self wiredTXPackets])
  {
    wiredTXPackets = self->_wiredTXPackets;
    PBDataWriterWriteUint64Field();
  }

  statsType = [(_CPTCPInfo *)self statsType];

  if (statsType)
  {
    statsType = self->_statsType;
    PBDataWriterWriteStringField();
  }

  if ([(_CPTCPInfo *)self txRetransmitBytes])
  {
    txRetransmitBytes = self->_txRetransmitBytes;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPTCPInfo)initWithTelemetryDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(_CPTCPInfo *)self init];
  if (v5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = dictionaryCopy;
    v6 = dictionaryCopy;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          if ([v11 compare:@"timing_data_key_unknown" options:3])
          {
            if ([v11 compare:@"_kCFNTimingDataConnectionReused" options:3])
            {
              if ([v11 compare:@"_kCFNTimingDataConnectionPeerAddress" options:3])
              {
                v12 = 3;
                if ([v11 compare:@"_kCFNTimingDataConnectionInterfaceIdentifier" options:3])
                {
                  if ([v11 compare:@"omit" options:3])
                  {
                    if ([v11 compare:@"_kCFNTimingDataConnectionStartTimeCounts" options:3])
                    {
                      if ([v11 compare:@"_kCFNTimingDataConnectionStopTimeCounts" options:3])
                      {
                        if ([v11 compare:@"_kCFNTimingDataNStatRXPackets" options:3])
                        {
                          if ([v11 compare:@"_kCFNTimingDataNStatRXBytes" options:3])
                          {
                            if ([v11 compare:@"_kCFNTimingDataNStatTXPackets" options:3])
                            {
                              if ([v11 compare:@"_kCFNTimingDataNStatTXBytes" options:3])
                              {
                                if ([v11 compare:@"_kCFNTimingDataNStatRXDuplicateBytes" options:3])
                                {
                                  if ([v11 compare:@"_kCFNTimingDataNStatRXOutOfOrderBytes" options:3])
                                  {
                                    if ([v11 compare:@"_kCFNTimingDataNStatTXRetransmit" options:3])
                                    {
                                      if ([v11 compare:@"_kCFNTimingDataNStatConnectAttempts" options:3])
                                      {
                                        if ([v11 compare:@"_kCFNTimingDataNStatConnectSuccesses" options:3])
                                        {
                                          if ([v11 compare:@"_kCFNTimingDataNStatMinRTT" options:3])
                                          {
                                            if ([v11 compare:@"_kCFNTimingDataNStatAvgRTT" options:3])
                                            {
                                              if ([v11 compare:@"_kCFNTimingDataNStatVarRTT" options:3])
                                              {
                                                if ([v11 compare:@"_kCFNTimingDataNStatCellRXPackets" options:3])
                                                {
                                                  if ([v11 compare:@"_kCFNTimingDataNStatCellTXPackets" options:3])
                                                  {
                                                    if ([v11 compare:@"_kCFNTimingDataNStatWifiRXPackets" options:3])
                                                    {
                                                      if ([v11 compare:@"_kCFNTimingDataNStatWifiTXPackets" options:3])
                                                      {
                                                        if ([v11 compare:@"_kCFNTimingDataNStatWiredRXPackets" options:3])
                                                        {
                                                          if ([v11 compare:@"_kCFNTimingDataNStatWiredTXPackets" options:3])
                                                          {
                                                            if ([v11 compare:@"_kCFNTimingDataTCPFastOpenStats" options:3])
                                                            {
                                                              if ([v11 compare:@"_kCFNTimingDataTCPInfoAtStart" options:3])
                                                              {
                                                                if ([v11 compare:@"_kCFNTimingDataTCPInfoAtStop" options:3])
                                                                {
                                                                  if ([v11 compare:@"omit" options:3])
                                                                  {
                                                                    if ([v11 compare:@"_kCFNTimingDataRemoteAddressAndPort" options:3])
                                                                    {
                                                                      if ([v11 compare:@"_kCFNTimingDataNetworkProtocolName" options:3])
                                                                      {
                                                                        if ([v11 compare:@"_kCFNTimingDataConnectionRace" options:3])
                                                                        {
                                                                          if ([v11 compare:@"_kCFNTimingDataQUICWhitelistedDomain" options:3])
                                                                          {
                                                                            if ([v11 compare:@"_kCFNTimingDataRequestHeaderSize" options:3])
                                                                            {
                                                                              if ([v11 compare:@"_kCFNTimingDataResponseHeaderSize" options:3])
                                                                              {
                                                                                if ([v11 compare:@"_kCFNTimingDataResponseBodyBytesReceived" options:3])
                                                                                {
                                                                                  if ([v11 compare:@"_kCFNTimingDataResponseBodyBytesDecoded" options:3])
                                                                                  {
                                                                                    if ([v11 compare:@"_kCFNTimingDataFetchStart" options:3])
                                                                                    {
                                                                                      if ([v11 compare:@"_kCFNTimingDataDomainLookupStart" options:3])
                                                                                      {
                                                                                        if ([v11 compare:@"_kCFNTimingDataDomainLookupEnd" options:3])
                                                                                        {
                                                                                          if ([v11 compare:@"_kCFNTimingDataConnectStart" options:3])
                                                                                          {
                                                                                            if ([v11 compare:@"_kCFNTimingDataSecureConnectionStart" options:3])
                                                                                            {
                                                                                              if ([v11 compare:@"_kCFNTimingDataConnectEnd" options:3])
                                                                                              {
                                                                                                if ([v11 compare:@"_kCFNTimingDataRequestStart" options:3])
                                                                                                {
                                                                                                  if ([v11 compare:@"_kCFNTimingDataRequestEnd" options:3])
                                                                                                  {
                                                                                                    if ([v11 compare:@"_kCFNTimingDataResponseStart" options:3])
                                                                                                    {
                                                                                                      if ([v11 compare:@"_kCFNTimingDataResponseEnd" options:3])
                                                                                                      {
                                                                                                        if ([v11 compare:@"_kCFNTimingDataRedirectStart" options:3])
                                                                                                        {
                                                                                                          if ([v11 compare:@"_kCFNTimingDataRedirectEnd" options:3])
                                                                                                          {
                                                                                                            v12 = 0;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v12 = 48;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v12 = 47;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v12 = 46;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v12 = 45;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v12 = 44;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v12 = 43;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v12 = 42;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v12 = 41;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v12 = 40;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v12 = 39;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v12 = 38;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v12 = 37;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v12 = 36;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v12 = 35;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v12 = 34;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v12 = 33;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v12 = 32;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v12 = 31;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v12 = 30;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v12 = 29;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v12 = 28;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v12 = 27;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v12 = 26;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v12 = 25;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v12 = 24;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v12 = 23;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v12 = 22;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v12 = 21;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v12 = 20;
                                                  }
                                                }

                                                else
                                                {
                                                  v12 = 19;
                                                }
                                              }

                                              else
                                              {
                                                v12 = 18;
                                              }
                                            }

                                            else
                                            {
                                              v12 = 17;
                                            }
                                          }

                                          else
                                          {
                                            v12 = 16;
                                          }
                                        }

                                        else
                                        {
                                          v12 = 15;
                                        }
                                      }

                                      else
                                      {
                                        v12 = 14;
                                      }
                                    }

                                    else
                                    {
                                      v12 = 13;
                                    }
                                  }

                                  else
                                  {
                                    v12 = 12;
                                  }
                                }

                                else
                                {
                                  v12 = 11;
                                }
                              }

                              else
                              {
                                v12 = 10;
                              }
                            }

                            else
                            {
                              v12 = 9;
                            }
                          }

                          else
                          {
                            v12 = 8;
                          }
                        }

                        else
                        {
                          v12 = 7;
                        }
                      }

                      else
                      {
                        v12 = 6;
                      }
                    }

                    else
                    {
                      v12 = 5;
                    }
                  }

                  else
                  {
                    v12 = 4;
                  }
                }
              }

              else
              {
                v12 = 2;
              }
            }

            else
            {
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = [v6 objectForKeyedSubscript:v11];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            unsignedIntegerValue = [v13 unsignedIntegerValue];
            switch(v12)
            {
              case 7:
                [(_CPTCPInfo *)v5 setRxPackets:unsignedIntegerValue];
                break;
              case 8:
                [(_CPTCPInfo *)v5 setRxBytes:unsignedIntegerValue];
                break;
              case 9:
                [(_CPTCPInfo *)v5 setTxPackets:unsignedIntegerValue];
                break;
              case 10:
                [(_CPTCPInfo *)v5 setTxBytes:unsignedIntegerValue];
                break;
              case 11:
                [(_CPTCPInfo *)v5 setRxDuplicateBytes:unsignedIntegerValue];
                break;
              case 12:
                [(_CPTCPInfo *)v5 setRxOutOfOrderBytes:unsignedIntegerValue];
                break;
              case 13:
                [(_CPTCPInfo *)v5 setTxRetransmitPackets:unsignedIntegerValue];
                break;
              case 14:
                [(_CPTCPInfo *)v5 setConnectAttempts:unsignedIntegerValue];
                break;
              case 15:
                [(_CPTCPInfo *)v5 setConnectSuccesses:unsignedIntegerValue];
                break;
              case 16:
                [(_CPTCPInfo *)v5 setMinRTT:unsignedIntegerValue];
                break;
              case 17:
                [(_CPTCPInfo *)v5 setAvgRTT:unsignedIntegerValue];
                break;
              case 18:
                [(_CPTCPInfo *)v5 setVarRTT:unsignedIntegerValue];
                break;
              case 19:
                [(_CPTCPInfo *)v5 setCellRXPackets:unsignedIntegerValue];
                break;
              case 20:
                [(_CPTCPInfo *)v5 setCellTXPackets:unsignedIntegerValue];
                break;
              case 21:
                [(_CPTCPInfo *)v5 setWifiRXPackets:unsignedIntegerValue];
                break;
              case 22:
                [(_CPTCPInfo *)v5 setWifiTXPackets:unsignedIntegerValue];
                break;
              case 23:
                [(_CPTCPInfo *)v5 setWiredRXPackets:unsignedIntegerValue];
                break;
              case 24:
                [(_CPTCPInfo *)v5 setWiredTXPackets:unsignedIntegerValue];
                break;
              default:
                break;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = v5;
    dictionaryCopy = v18;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
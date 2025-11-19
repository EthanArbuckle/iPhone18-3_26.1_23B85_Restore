@interface C2MPNetworkEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNetworkPathInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasNetworkConnectionReused:(BOOL)a3;
- (void)setHasNetworkIsDiscretionary:(BOOL)a3;
- (void)setHasNetworkPreviousAttemptCount:(BOOL)a3;
- (void)setHasNetworkRequestHeaderSize:(BOOL)a3;
- (void)setHasNetworkResponseBodyBytesReceived:(BOOL)a3;
- (void)setHasNetworkResponseHeaderSize:(BOOL)a3;
- (void)setHasNetworkStatusCode:(BOOL)a3;
- (void)setHasOptionsAllowCellularAccess:(BOOL)a3;
- (void)setHasOptionsAllowExpensiveAccess:(BOOL)a3;
- (void)setHasOptionsAllowPowerNapScheduling:(BOOL)a3;
- (void)setHasOptionsAppleIdContext:(BOOL)a3;
- (void)setHasOptionsOutOfProcess:(BOOL)a3;
- (void)setHasOptionsOutOfProcessForceDiscretionary:(BOOL)a3;
- (void)setHasOptionsTimeoutIntervalForRequest:(BOOL)a3;
- (void)setHasOptionsTimeoutIntervalForResource:(BOOL)a3;
- (void)setHasOptionsTlsPinningRequired:(BOOL)a3;
- (void)setHasReportFrequency:(BOOL)a3;
- (void)setHasReportFrequencyBase:(BOOL)a3;
- (void)setHasTimestampC2Init:(BOOL)a3;
- (void)setHasTimestampC2Now:(BOOL)a3;
- (void)setHasTimestampC2Start:(BOOL)a3;
- (void)setHasTimestampDnsEnd:(BOOL)a3;
- (void)setHasTimestampDnsStart:(BOOL)a3;
- (void)setHasTimestampRequestEnd:(BOOL)a3;
- (void)setHasTimestampRequestStart:(BOOL)a3;
- (void)setHasTimestampResponseEnd:(BOOL)a3;
- (void)setHasTimestampResponseStart:(BOOL)a3;
- (void)setHasTimestampSslStart:(BOOL)a3;
- (void)setHasTimestampTcpEnd:(BOOL)a3;
- (void)setHasTimestampTcpStart:(BOOL)a3;
- (void)setHasTriggers:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPNetworkEvent

- (id)dictionaryRepresentation
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_triggers];
    [v3 setObject:v44 forKey:@"triggers"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportFrequency];
  [v3 setObject:v45 forKey:@"report_frequency"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportFrequencyBase];
    [v3 setObject:v5 forKey:@"report_frequency_base"];
  }

LABEL_5:
  networkTaskDescription = self->_networkTaskDescription;
  if (networkTaskDescription)
  {
    [v3 setObject:networkTaskDescription forKey:@"network_task_description"];
  }

  networkHostname = self->_networkHostname;
  if (networkHostname)
  {
    [v3 setObject:networkHostname forKey:@"network_hostname"];
  }

  networkRemoteAddresssAndPort = self->_networkRemoteAddresssAndPort;
  if (networkRemoteAddresssAndPort)
  {
    [v3 setObject:networkRemoteAddresssAndPort forKey:@"network_remote_addresss_and_port"];
  }

  networkConnectionUuid = self->_networkConnectionUuid;
  if (networkConnectionUuid)
  {
    [v3 setObject:networkConnectionUuid forKey:@"network_connection_uuid"];
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_networkConnectionReused];
    [v3 setObject:v10 forKey:@"network_connection_reused"];
  }

  networkInterfaceIdentifier = self->_networkInterfaceIdentifier;
  if (networkInterfaceIdentifier)
  {
    [v3 setObject:networkInterfaceIdentifier forKey:@"network_interface_identifier"];
  }

  networkProtocolName = self->_networkProtocolName;
  if (networkProtocolName)
  {
    [v3 setObject:networkProtocolName forKey:@"network_protocol_name"];
  }

  v13 = self->_has;
  if ((*&v13 & 0x80000) != 0)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_networkRequestHeaderSize];
    [v3 setObject:v46 forKey:@"network_request_header_size"];

    v13 = self->_has;
    if ((*&v13 & 1) == 0)
    {
LABEL_21:
      if ((*&v13 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_86;
    }
  }

  else if ((*&v13 & 1) == 0)
  {
    goto LABEL_21;
  }

  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_networkRequestBodyBytesSent];
  [v3 setObject:v47 forKey:@"network_request_body_bytes_sent"];

  v13 = self->_has;
  if ((*&v13 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v13 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_87;
  }

LABEL_86:
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_networkResponseHeaderSize];
  [v3 setObject:v48 forKey:@"network_response_header_size"];

  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_23:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_87:
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_networkResponseBodyBytesReceived];
  [v3 setObject:v49 forKey:@"network_response_body_bytes_received"];

  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_networkPreviousAttemptCount];
    [v3 setObject:v14 forKey:@"network_previous_attempt_count"];
  }

LABEL_25:
  networkFatalError = self->_networkFatalError;
  if (networkFatalError)
  {
    v16 = [(C2MPError *)networkFatalError dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"network_fatal_error"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_networkStatusCode];
    [v3 setObject:v17 forKey:@"network_status_code"];
  }

  networkRequestUri = self->_networkRequestUri;
  if (networkRequestUri)
  {
    [v3 setObject:networkRequestUri forKey:@"network_request_uri"];
  }

  if (*(&self->_has + 3))
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_networkIsDiscretionary];
    [v3 setObject:v19 forKey:@"network_is_discretionary"];
  }

  networkNegotiatedTlsProtocolVersion = self->_networkNegotiatedTlsProtocolVersion;
  if (networkNegotiatedTlsProtocolVersion)
  {
    [v3 setObject:networkNegotiatedTlsProtocolVersion forKey:@"network_negotiated_tls_protocol_version"];
  }

  if ([(NSMutableArray *)self->_networkPathInfos count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_networkPathInfos, "count")}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v22 = self->_networkPathInfos;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v67;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v67 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v66 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKey:@"network_path_info"];
  }

  v28 = self->_has;
  if ((*&v28 & 0x20) != 0)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestampC2Init];
    [v3 setObject:v50 forKey:@"timestamp_c2_init"];

    v28 = self->_has;
    if ((*&v28 & 0x80) == 0)
    {
LABEL_46:
      if ((*&v28 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_91;
    }
  }

  else if ((*&v28 & 0x80) == 0)
  {
    goto LABEL_46;
  }

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampC2Start, v66}];
  [v3 setObject:v51 forKey:@"timestamp_c2_start"];

  v28 = self->_has;
  if ((*&v28 & 0x40) == 0)
  {
LABEL_47:
    if ((*&v28 & 0x200) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampC2Now, v66}];
  [v3 setObject:v52 forKey:@"timestamp_c2_now"];

  v28 = self->_has;
  if ((*&v28 & 0x200) == 0)
  {
LABEL_48:
    if ((*&v28 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

LABEL_92:
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampDnsStart, v66}];
  [v3 setObject:v53 forKey:@"timestamp_dns_start"];

  v28 = self->_has;
  if ((*&v28 & 0x100) == 0)
  {
LABEL_49:
    if ((*&v28 & 0x10000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

LABEL_93:
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampDnsEnd, v66}];
  [v3 setObject:v54 forKey:@"timestamp_dns_end"];

  v28 = self->_has;
  if ((*&v28 & 0x10000) == 0)
  {
LABEL_50:
    if ((*&v28 & 0x8000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_95;
  }

LABEL_94:
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampTcpStart, v66}];
  [v3 setObject:v55 forKey:@"timestamp_tcp_start"];

  v28 = self->_has;
  if ((*&v28 & 0x8000) == 0)
  {
LABEL_51:
    if ((*&v28 & 0x4000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_96;
  }

LABEL_95:
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampTcpEnd, v66}];
  [v3 setObject:v56 forKey:@"timestamp_tcp_end"];

  v28 = self->_has;
  if ((*&v28 & 0x4000) == 0)
  {
LABEL_52:
    if ((*&v28 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_97;
  }

LABEL_96:
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampSslStart, v66}];
  [v3 setObject:v57 forKey:@"timestamp_ssl_start"];

  v28 = self->_has;
  if ((*&v28 & 0x800) == 0)
  {
LABEL_53:
    if ((*&v28 & 0x400) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_98;
  }

LABEL_97:
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampRequestStart, v66}];
  [v3 setObject:v58 forKey:@"timestamp_request_start"];

  v28 = self->_has;
  if ((*&v28 & 0x400) == 0)
  {
LABEL_54:
    if ((*&v28 & 0x2000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

LABEL_98:
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampRequestEnd, v66}];
  [v3 setObject:v59 forKey:@"timestamp_request_end"];

  v28 = self->_has;
  if ((*&v28 & 0x2000) == 0)
  {
LABEL_55:
    if ((*&v28 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_99:
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampResponseStart, v66}];
  [v3 setObject:v60 forKey:@"timestamp_response_start"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_56:
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_timestampResponseEnd, v66}];
    [v3 setObject:v29 forKey:@"timestamp_response_end"];
  }

LABEL_57:
  optionsQualityOfService = self->_optionsQualityOfService;
  if (optionsQualityOfService)
  {
    [v3 setObject:optionsQualityOfService forKey:@"options_quality_of_service"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x20000000) != 0)
  {
    v61 = [MEMORY[0x277CCABB0] numberWithBool:self->_optionsOutOfProcess];
    [v3 setObject:v61 forKey:@"options_out_of_process"];

    v31 = self->_has;
    if ((*&v31 & 0x40000000) == 0)
    {
LABEL_61:
      if ((*&v31 & 0x4000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_103;
    }
  }

  else if ((*&v31 & 0x40000000) == 0)
  {
    goto LABEL_61;
  }

  v62 = [MEMORY[0x277CCABB0] numberWithBool:{self->_optionsOutOfProcessForceDiscretionary, v66}];
  [v3 setObject:v62 forKey:@"options_out_of_process_force_discretionary"];

  v31 = self->_has;
  if ((*&v31 & 0x4000000) == 0)
  {
LABEL_62:
    if ((*&v31 & 0x8000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_104;
  }

LABEL_103:
  v63 = [MEMORY[0x277CCABB0] numberWithBool:{self->_optionsAllowExpensiveAccess, v66}];
  [v3 setObject:v63 forKey:@"options_allow_expensive_access"];

  v31 = self->_has;
  if ((*&v31 & 0x8000000) == 0)
  {
LABEL_63:
    if ((*&v31 & 0x200000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_105;
  }

LABEL_104:
  v64 = [MEMORY[0x277CCABB0] numberWithBool:{self->_optionsAllowPowerNapScheduling, v66}];
  [v3 setObject:v64 forKey:@"options_allow_power_nap_scheduling"];

  v31 = self->_has;
  if ((*&v31 & 0x200000) == 0)
  {
LABEL_64:
    if ((*&v31 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_105:
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_optionsTimeoutIntervalForRequest, v66}];
  [v3 setObject:v65 forKey:@"options_timeout_interval_for_request"];

  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_65:
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_optionsTimeoutIntervalForResource, v66}];
    [v3 setObject:v32 forKey:@"options_timeout_interval_for_resource"];
  }

LABEL_66:
  optionsSourceApplicationBundleIdentifier = self->_optionsSourceApplicationBundleIdentifier;
  if (optionsSourceApplicationBundleIdentifier)
  {
    [v3 setObject:optionsSourceApplicationBundleIdentifier forKey:@"options_source_application_bundle_identifier"];
  }

  optionsSourceApplicationSecondaryIdentifier = self->_optionsSourceApplicationSecondaryIdentifier;
  if (optionsSourceApplicationSecondaryIdentifier)
  {
    [v3 setObject:optionsSourceApplicationSecondaryIdentifier forKey:@"options_source_application_secondary_identifier"];
  }

  v35 = self->_has;
  if ((*&v35 & 0x10000000) != 0)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_optionsAppleIdContext];
    [v3 setObject:v36 forKey:@"options_apple_id_context"];

    v35 = self->_has;
  }

  if ((*&v35 & 0x80000000) != 0)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_optionsTlsPinningRequired];
    [v3 setObject:v37 forKey:@"options_tls_pinning_required"];
  }

  optionsDiscretionaryNetworkBehavior = self->_optionsDiscretionaryNetworkBehavior;
  if (optionsDiscretionaryNetworkBehavior)
  {
    [v3 setObject:optionsDiscretionaryNetworkBehavior forKey:@"options_discretionary_network_behavior"];
  }

  optionsDuetPreClearedMode = self->_optionsDuetPreClearedMode;
  if (optionsDuetPreClearedMode)
  {
    [v3 setObject:optionsDuetPreClearedMode forKey:@"options_duet_pre_cleared_mode"];
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_optionsAllowCellularAccess];
    [v3 setObject:v40 forKey:@"options_allow_cellular_access"];
  }

  v41 = v3;

  v42 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)setHasTriggers:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasReportFrequency:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasReportFrequencyBase:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasNetworkConnectionReused:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasNetworkRequestHeaderSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasNetworkResponseHeaderSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasNetworkResponseBodyBytesReceived:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasNetworkPreviousAttemptCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasNetworkStatusCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasNetworkIsDiscretionary:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)addNetworkPathInfo:(id)a3
{
  v4 = a3;
  networkPathInfos = self->_networkPathInfos;
  v8 = v4;
  if (!networkPathInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_networkPathInfos;
    self->_networkPathInfos = v6;

    v4 = v8;
    networkPathInfos = self->_networkPathInfos;
  }

  [(NSMutableArray *)networkPathInfos addObject:v4];
}

- (void)setHasTimestampC2Init:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTimestampC2Start:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasTimestampC2Now:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasTimestampDnsStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasTimestampDnsEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasTimestampTcpStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasTimestampTcpEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasTimestampSslStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasTimestampRequestStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasTimestampRequestEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTimestampResponseStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasTimestampResponseEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasOptionsOutOfProcess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasOptionsOutOfProcessForceDiscretionary:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xBFFFFFFF | v3);
}

- (void)setHasOptionsAllowExpensiveAccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasOptionsAllowPowerNapScheduling:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasOptionsTimeoutIntervalForRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasOptionsTimeoutIntervalForResource:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasOptionsAppleIdContext:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (void)setHasOptionsTlsPinningRequired:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (v3 & 0x80000000 | *&self->_has & 0x7FFFFFFF);
}

- (void)setHasOptionsAllowCellularAccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPNetworkEvent;
  v4 = [(C2MPNetworkEvent *)&v8 description];
  v5 = [(C2MPNetworkEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)writeTo:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    triggers = self->_triggers;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  reportFrequency = self->_reportFrequency;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    reportFrequencyBase = self->_reportFrequencyBase;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_networkTaskDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkHostname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkRemoteAddresssAndPort)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkConnectionUuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    networkConnectionReused = self->_networkConnectionReused;
    PBDataWriterWriteBOOLField();
  }

  if (self->_networkInterfaceIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_networkProtocolName)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    networkRequestHeaderSize = self->_networkRequestHeaderSize;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((*&v8 & 1) == 0)
    {
LABEL_21:
      if ((*&v8 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_84;
    }
  }

  else if ((*&v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  networkRequestBodyBytesSent = self->_networkRequestBodyBytesSent;
  PBDataWriterWriteUint64Field();
  v8 = self->_has;
  if ((*&v8 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v8 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_85;
  }

LABEL_84:
  networkResponseHeaderSize = self->_networkResponseHeaderSize;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 2) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_85:
  networkResponseBodyBytesReceived = self->_networkResponseBodyBytesReceived;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    networkPreviousAttemptCount = self->_networkPreviousAttemptCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_networkFatalError)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    networkStatusCode = self->_networkStatusCode;
    PBDataWriterWriteUint64Field();
  }

  if (self->_networkRequestUri)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_has + 3))
  {
    networkIsDiscretionary = self->_networkIsDiscretionary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_networkNegotiatedTlsProtocolVersion)
  {
    PBDataWriterWriteStringField();
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_networkPathInfos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v14);
  }

  v18 = self->_has;
  if ((*&v18 & 0x20) != 0)
  {
    timestampC2Init = self->_timestampC2Init;
    PBDataWriterWriteUint64Field();
    v18 = self->_has;
    if ((*&v18 & 0x80) == 0)
    {
LABEL_44:
      if ((*&v18 & 0x40) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_89;
    }
  }

  else if ((*&v18 & 0x80) == 0)
  {
    goto LABEL_44;
  }

  timestampC2Start = self->_timestampC2Start;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x40) == 0)
  {
LABEL_45:
    if ((*&v18 & 0x200) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  timestampC2Now = self->_timestampC2Now;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x200) == 0)
  {
LABEL_46:
    if ((*&v18 & 0x100) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_90:
  timestampDnsStart = self->_timestampDnsStart;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x100) == 0)
  {
LABEL_47:
    if ((*&v18 & 0x10000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_92;
  }

LABEL_91:
  timestampDnsEnd = self->_timestampDnsEnd;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x10000) == 0)
  {
LABEL_48:
    if ((*&v18 & 0x8000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

LABEL_92:
  timestampTcpStart = self->_timestampTcpStart;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x8000) == 0)
  {
LABEL_49:
    if ((*&v18 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

LABEL_93:
  timestampTcpEnd = self->_timestampTcpEnd;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x4000) == 0)
  {
LABEL_50:
    if ((*&v18 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_95;
  }

LABEL_94:
  timestampSslStart = self->_timestampSslStart;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x800) == 0)
  {
LABEL_51:
    if ((*&v18 & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_96;
  }

LABEL_95:
  timestampRequestStart = self->_timestampRequestStart;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x400) == 0)
  {
LABEL_52:
    if ((*&v18 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_97;
  }

LABEL_96:
  timestampRequestEnd = self->_timestampRequestEnd;
  PBDataWriterWriteUint64Field();
  v18 = self->_has;
  if ((*&v18 & 0x2000) == 0)
  {
LABEL_53:
    if ((*&v18 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_97:
  timestampResponseStart = self->_timestampResponseStart;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_54:
    timestampResponseEnd = self->_timestampResponseEnd;
    PBDataWriterWriteUint64Field();
  }

LABEL_55:
  if (self->_optionsQualityOfService)
  {
    PBDataWriterWriteStringField();
  }

  v20 = self->_has;
  if ((*&v20 & 0x20000000) != 0)
  {
    optionsOutOfProcess = self->_optionsOutOfProcess;
    PBDataWriterWriteBOOLField();
    v20 = self->_has;
    if ((*&v20 & 0x40000000) == 0)
    {
LABEL_59:
      if ((*&v20 & 0x4000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }
  }

  else if ((*&v20 & 0x40000000) == 0)
  {
    goto LABEL_59;
  }

  optionsOutOfProcessForceDiscretionary = self->_optionsOutOfProcessForceDiscretionary;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x4000000) == 0)
  {
LABEL_60:
    if ((*&v20 & 0x8000000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_102;
  }

LABEL_101:
  optionsAllowExpensiveAccess = self->_optionsAllowExpensiveAccess;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x8000000) == 0)
  {
LABEL_61:
    if ((*&v20 & 0x200000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_103;
  }

LABEL_102:
  optionsAllowPowerNapScheduling = self->_optionsAllowPowerNapScheduling;
  PBDataWriterWriteBOOLField();
  v20 = self->_has;
  if ((*&v20 & 0x200000) == 0)
  {
LABEL_62:
    if ((*&v20 & 0x400000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_103:
  optionsTimeoutIntervalForRequest = self->_optionsTimeoutIntervalForRequest;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_63:
    optionsTimeoutIntervalForResource = self->_optionsTimeoutIntervalForResource;
    PBDataWriterWriteUint32Field();
  }

LABEL_64:
  if (self->_optionsSourceApplicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_optionsSourceApplicationSecondaryIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v22 = self->_has;
  if ((*&v22 & 0x10000000) != 0)
  {
    optionsAppleIdContext = self->_optionsAppleIdContext;
    PBDataWriterWriteBOOLField();
    v22 = self->_has;
  }

  if ((*&v22 & 0x80000000) != 0)
  {
    optionsTlsPinningRequired = self->_optionsTlsPinningRequired;
    PBDataWriterWriteBOOLField();
  }

  if (self->_optionsDiscretionaryNetworkBehavior)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_optionsDuetPreClearedMode)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    optionsAllowCellularAccess = self->_optionsAllowCellularAccess;
    PBDataWriterWriteBOOLField();
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    v4[18] = self->_triggers;
    *(v4 + 79) |= 0x20000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_reportFrequency;
  *(v4 + 79) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4[5] = self->_reportFrequencyBase;
    *(v4 + 79) |= 0x10u;
  }

LABEL_5:
  v15 = v4;
  if (self->_networkTaskDescription)
  {
    [v4 setNetworkTaskDescription:?];
    v4 = v15;
  }

  if (self->_networkHostname)
  {
    [v15 setNetworkHostname:?];
    v4 = v15;
  }

  if (self->_networkRemoteAddresssAndPort)
  {
    [v15 setNetworkRemoteAddresssAndPort:?];
    v4 = v15;
  }

  if (self->_networkConnectionUuid)
  {
    [v15 setNetworkConnectionUuid:?];
    v4 = v15;
  }

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v4 + 304) = self->_networkConnectionReused;
    *(v4 + 79) |= 0x800000u;
  }

  if (self->_networkInterfaceIdentifier)
  {
    [v15 setNetworkInterfaceIdentifier:?];
    v4 = v15;
  }

  if (self->_networkProtocolName)
  {
    [v15 setNetworkProtocolName:?];
    v4 = v15;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    *(v4 + 56) = self->_networkRequestHeaderSize;
    *(v4 + 79) |= 0x80000u;
    v6 = self->_has;
    if ((*&v6 & 1) == 0)
    {
LABEL_21:
      if ((*&v6 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_83;
    }
  }

  else if ((*&v6 & 1) == 0)
  {
    goto LABEL_21;
  }

  v4[1] = self->_networkRequestBodyBytesSent;
  *(v4 + 79) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v4 + 60) = self->_networkResponseHeaderSize;
  *(v4 + 79) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_84:
  v4[2] = self->_networkResponseBodyBytesReceived;
  *(v4 + 79) |= 2u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_24:
    *(v4 + 50) = self->_networkPreviousAttemptCount;
    *(v4 + 79) |= 0x40000u;
  }

LABEL_25:
  if (self->_networkFatalError)
  {
    [v15 setNetworkFatalError:?];
    v4 = v15;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[3] = self->_networkStatusCode;
    *(v4 + 79) |= 4u;
  }

  if (self->_networkRequestUri)
  {
    [v15 setNetworkRequestUri:?];
    v4 = v15;
  }

  if (*(&self->_has + 3))
  {
    *(v4 + 305) = self->_networkIsDiscretionary;
    *(v4 + 79) |= 0x1000000u;
  }

  if (self->_networkNegotiatedTlsProtocolVersion)
  {
    [v15 setNetworkNegotiatedTlsProtocolVersion:?];
  }

  if ([(C2MPNetworkEvent *)self networkPathInfosCount])
  {
    [v15 clearNetworkPathInfos];
    v7 = [(C2MPNetworkEvent *)self networkPathInfosCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(C2MPNetworkEvent *)self networkPathInfoAtIndex:i];
        [v15 addNetworkPathInfo:v10];
      }
    }
  }

  v11 = self->_has;
  v12 = v15;
  if ((*&v11 & 0x20) != 0)
  {
    v15[6] = self->_timestampC2Init;
    *(v15 + 79) |= 0x20u;
    v11 = self->_has;
    if ((*&v11 & 0x80) == 0)
    {
LABEL_41:
      if ((*&v11 & 0x40) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_88;
    }
  }

  else if ((*&v11 & 0x80) == 0)
  {
    goto LABEL_41;
  }

  v15[8] = self->_timestampC2Start;
  *(v15 + 79) |= 0x80u;
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_42:
    if ((*&v11 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_89;
  }

LABEL_88:
  v15[7] = self->_timestampC2Now;
  *(v15 + 79) |= 0x40u;
  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_43:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_90;
  }

LABEL_89:
  v15[10] = self->_timestampDnsStart;
  *(v15 + 79) |= 0x200u;
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_44:
    if ((*&v11 & 0x10000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_91;
  }

LABEL_90:
  v15[9] = self->_timestampDnsEnd;
  *(v15 + 79) |= 0x100u;
  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_45:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_92;
  }

LABEL_91:
  v15[17] = self->_timestampTcpStart;
  *(v15 + 79) |= 0x10000u;
  v11 = self->_has;
  if ((*&v11 & 0x8000) == 0)
  {
LABEL_46:
    if ((*&v11 & 0x4000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_93;
  }

LABEL_92:
  v15[16] = self->_timestampTcpEnd;
  *(v15 + 79) |= 0x8000u;
  v11 = self->_has;
  if ((*&v11 & 0x4000) == 0)
  {
LABEL_47:
    if ((*&v11 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

LABEL_93:
  v15[15] = self->_timestampSslStart;
  *(v15 + 79) |= 0x4000u;
  v11 = self->_has;
  if ((*&v11 & 0x800) == 0)
  {
LABEL_48:
    if ((*&v11 & 0x400) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_95;
  }

LABEL_94:
  v15[12] = self->_timestampRequestStart;
  *(v15 + 79) |= 0x800u;
  v11 = self->_has;
  if ((*&v11 & 0x400) == 0)
  {
LABEL_49:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_96;
  }

LABEL_95:
  v15[11] = self->_timestampRequestEnd;
  *(v15 + 79) |= 0x400u;
  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_50:
    if ((*&v11 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_96:
  v15[14] = self->_timestampResponseStart;
  *(v15 + 79) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_51:
    v15[13] = self->_timestampResponseEnd;
    *(v15 + 79) |= 0x1000u;
  }

LABEL_52:
  if (self->_optionsQualityOfService)
  {
    [v15 setOptionsQualityOfService:?];
    v12 = v15;
  }

  v13 = self->_has;
  if ((*&v13 & 0x20000000) != 0)
  {
    v12[310] = self->_optionsOutOfProcess;
    *(v12 + 79) |= 0x20000000u;
    v13 = self->_has;
    if ((*&v13 & 0x40000000) == 0)
    {
LABEL_56:
      if ((*&v13 & 0x4000000) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_100;
    }
  }

  else if ((*&v13 & 0x40000000) == 0)
  {
    goto LABEL_56;
  }

  v12[311] = self->_optionsOutOfProcessForceDiscretionary;
  *(v12 + 79) |= 0x40000000u;
  v13 = self->_has;
  if ((*&v13 & 0x4000000) == 0)
  {
LABEL_57:
    if ((*&v13 & 0x8000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_101;
  }

LABEL_100:
  v12[307] = self->_optionsAllowExpensiveAccess;
  *(v12 + 79) |= 0x4000000u;
  v13 = self->_has;
  if ((*&v13 & 0x8000000) == 0)
  {
LABEL_58:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_102;
  }

LABEL_101:
  v12[308] = self->_optionsAllowPowerNapScheduling;
  *(v12 + 79) |= 0x8000000u;
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_59:
    if ((*&v13 & 0x400000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_102:
  *(v12 + 74) = self->_optionsTimeoutIntervalForRequest;
  *(v12 + 79) |= 0x200000u;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_60:
    *(v12 + 75) = self->_optionsTimeoutIntervalForResource;
    *(v12 + 79) |= 0x400000u;
  }

LABEL_61:
  if (self->_optionsSourceApplicationBundleIdentifier)
  {
    [v15 setOptionsSourceApplicationBundleIdentifier:?];
    v12 = v15;
  }

  if (self->_optionsSourceApplicationSecondaryIdentifier)
  {
    [v15 setOptionsSourceApplicationSecondaryIdentifier:?];
    v12 = v15;
  }

  v14 = self->_has;
  if ((*&v14 & 0x10000000) != 0)
  {
    v12[309] = self->_optionsAppleIdContext;
    *(v12 + 79) |= 0x10000000u;
    v14 = self->_has;
  }

  if ((*&v14 & 0x80000000) != 0)
  {
    v12[312] = self->_optionsTlsPinningRequired;
    *(v12 + 79) |= 0x80000000;
  }

  if (self->_optionsDiscretionaryNetworkBehavior)
  {
    [v15 setOptionsDiscretionaryNetworkBehavior:?];
    v12 = v15;
  }

  if (self->_optionsDuetPreClearedMode)
  {
    [v15 setOptionsDuetPreClearedMode:?];
    v12 = v15;
  }

  if ((*(&self->_has + 3) & 2) != 0)
  {
    v12[306] = self->_optionsAllowCellularAccess;
    *(v12 + 79) |= 0x2000000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x20000) != 0)
  {
    *(v5 + 144) = self->_triggers;
    *(v5 + 316) |= 0x20000u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_reportFrequency;
  *(v5 + 316) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_reportFrequencyBase;
    *(v5 + 316) |= 0x10u;
  }

LABEL_5:
  v8 = [(NSString *)self->_networkTaskDescription copyWithZone:a3];
  v9 = *(v6 + 248);
  *(v6 + 248) = v8;

  v10 = [(NSString *)self->_networkHostname copyWithZone:a3];
  v11 = *(v6 + 168);
  *(v6 + 168) = v10;

  v12 = [(NSString *)self->_networkRemoteAddresssAndPort copyWithZone:a3];
  v13 = *(v6 + 216);
  *(v6 + 216) = v12;

  v14 = [(NSString *)self->_networkConnectionUuid copyWithZone:a3];
  v15 = *(v6 + 152);
  *(v6 + 152) = v14;

  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    *(v6 + 304) = self->_networkConnectionReused;
    *(v6 + 316) |= 0x800000u;
  }

  v16 = [(NSString *)self->_networkInterfaceIdentifier copyWithZone:a3];
  v17 = *(v6 + 176);
  *(v6 + 176) = v16;

  v18 = [(NSString *)self->_networkProtocolName copyWithZone:a3];
  v19 = *(v6 + 208);
  *(v6 + 208) = v18;

  v20 = self->_has;
  if ((*&v20 & 0x80000) != 0)
  {
    *(v6 + 224) = self->_networkRequestHeaderSize;
    *(v6 + 316) |= 0x80000u;
    v20 = self->_has;
    if ((*&v20 & 1) == 0)
    {
LABEL_9:
      if ((*&v20 & 0x100000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_56;
    }
  }

  else if ((*&v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  *(v6 + 8) = self->_networkRequestBodyBytesSent;
  *(v6 + 316) |= 1u;
  v20 = self->_has;
  if ((*&v20 & 0x100000) == 0)
  {
LABEL_10:
    if ((*&v20 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 240) = self->_networkResponseHeaderSize;
  *(v6 + 316) |= 0x100000u;
  v20 = self->_has;
  if ((*&v20 & 2) == 0)
  {
LABEL_11:
    if ((*&v20 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_57:
  *(v6 + 16) = self->_networkResponseBodyBytesReceived;
  *(v6 + 316) |= 2u;
  if ((*&self->_has & 0x40000) != 0)
  {
LABEL_12:
    *(v6 + 200) = self->_networkPreviousAttemptCount;
    *(v6 + 316) |= 0x40000u;
  }

LABEL_13:
  v21 = [(C2MPError *)self->_networkFatalError copyWithZone:a3];
  v22 = *(v6 + 160);
  *(v6 + 160) = v21;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 24) = self->_networkStatusCode;
    *(v6 + 316) |= 4u;
  }

  v23 = [(NSString *)self->_networkRequestUri copyWithZone:a3];
  v24 = *(v6 + 232);
  *(v6 + 232) = v23;

  if (*(&self->_has + 3))
  {
    *(v6 + 305) = self->_networkIsDiscretionary;
    *(v6 + 316) |= 0x1000000u;
  }

  v25 = [(NSString *)self->_networkNegotiatedTlsProtocolVersion copyWithZone:a3];
  v26 = *(v6 + 184);
  *(v6 + 184) = v25;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v27 = self->_networkPathInfos;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v50;
    do
    {
      v31 = 0;
      do
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v49 + 1) + 8 * v31) copyWithZone:{a3, v49}];
        [v6 addNetworkPathInfo:v32];

        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v29);
  }

  v33 = self->_has;
  if ((*&v33 & 0x20) != 0)
  {
    *(v6 + 48) = self->_timestampC2Init;
    *(v6 + 316) |= 0x20u;
    v33 = self->_has;
    if ((*&v33 & 0x80) == 0)
    {
LABEL_26:
      if ((*&v33 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_61;
    }
  }

  else if ((*&v33 & 0x80) == 0)
  {
    goto LABEL_26;
  }

  *(v6 + 64) = self->_timestampC2Start;
  *(v6 + 316) |= 0x80u;
  v33 = self->_has;
  if ((*&v33 & 0x40) == 0)
  {
LABEL_27:
    if ((*&v33 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 56) = self->_timestampC2Now;
  *(v6 + 316) |= 0x40u;
  v33 = self->_has;
  if ((*&v33 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v33 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 80) = self->_timestampDnsStart;
  *(v6 + 316) |= 0x200u;
  v33 = self->_has;
  if ((*&v33 & 0x100) == 0)
  {
LABEL_29:
    if ((*&v33 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 72) = self->_timestampDnsEnd;
  *(v6 + 316) |= 0x100u;
  v33 = self->_has;
  if ((*&v33 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v33 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 136) = self->_timestampTcpStart;
  *(v6 + 316) |= 0x10000u;
  v33 = self->_has;
  if ((*&v33 & 0x8000) == 0)
  {
LABEL_31:
    if ((*&v33 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 128) = self->_timestampTcpEnd;
  *(v6 + 316) |= 0x8000u;
  v33 = self->_has;
  if ((*&v33 & 0x4000) == 0)
  {
LABEL_32:
    if ((*&v33 & 0x800) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 120) = self->_timestampSslStart;
  *(v6 + 316) |= 0x4000u;
  v33 = self->_has;
  if ((*&v33 & 0x800) == 0)
  {
LABEL_33:
    if ((*&v33 & 0x400) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 96) = self->_timestampRequestStart;
  *(v6 + 316) |= 0x800u;
  v33 = self->_has;
  if ((*&v33 & 0x400) == 0)
  {
LABEL_34:
    if ((*&v33 & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 88) = self->_timestampRequestEnd;
  *(v6 + 316) |= 0x400u;
  v33 = self->_has;
  if ((*&v33 & 0x2000) == 0)
  {
LABEL_35:
    if ((*&v33 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_69:
  *(v6 + 112) = self->_timestampResponseStart;
  *(v6 + 316) |= 0x2000u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_36:
    *(v6 + 104) = self->_timestampResponseEnd;
    *(v6 + 316) |= 0x1000u;
  }

LABEL_37:
  v34 = [(NSString *)self->_optionsQualityOfService copyWithZone:a3, v49];
  v35 = *(v6 + 272);
  *(v6 + 272) = v34;

  v36 = self->_has;
  if ((*&v36 & 0x20000000) != 0)
  {
    *(v6 + 310) = self->_optionsOutOfProcess;
    *(v6 + 316) |= 0x20000000u;
    v36 = self->_has;
    if ((*&v36 & 0x40000000) == 0)
    {
LABEL_39:
      if ((*&v36 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v36 & 0x40000000) == 0)
  {
    goto LABEL_39;
  }

  *(v6 + 311) = self->_optionsOutOfProcessForceDiscretionary;
  *(v6 + 316) |= 0x40000000u;
  v36 = self->_has;
  if ((*&v36 & 0x4000000) == 0)
  {
LABEL_40:
    if ((*&v36 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 307) = self->_optionsAllowExpensiveAccess;
  *(v6 + 316) |= 0x4000000u;
  v36 = self->_has;
  if ((*&v36 & 0x8000000) == 0)
  {
LABEL_41:
    if ((*&v36 & 0x200000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 308) = self->_optionsAllowPowerNapScheduling;
  *(v6 + 316) |= 0x8000000u;
  v36 = self->_has;
  if ((*&v36 & 0x200000) == 0)
  {
LABEL_42:
    if ((*&v36 & 0x400000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_75:
  *(v6 + 296) = self->_optionsTimeoutIntervalForRequest;
  *(v6 + 316) |= 0x200000u;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_43:
    *(v6 + 300) = self->_optionsTimeoutIntervalForResource;
    *(v6 + 316) |= 0x400000u;
  }

LABEL_44:
  v37 = [(NSString *)self->_optionsSourceApplicationBundleIdentifier copyWithZone:a3];
  v38 = *(v6 + 280);
  *(v6 + 280) = v37;

  v39 = [(NSString *)self->_optionsSourceApplicationSecondaryIdentifier copyWithZone:a3];
  v40 = *(v6 + 288);
  *(v6 + 288) = v39;

  v41 = self->_has;
  if ((*&v41 & 0x10000000) != 0)
  {
    *(v6 + 309) = self->_optionsAppleIdContext;
    *(v6 + 316) |= 0x10000000u;
    v41 = self->_has;
  }

  if ((*&v41 & 0x80000000) != 0)
  {
    *(v6 + 312) = self->_optionsTlsPinningRequired;
    *(v6 + 316) |= 0x80000000;
  }

  v42 = [(NSString *)self->_optionsDiscretionaryNetworkBehavior copyWithZone:a3];
  v43 = *(v6 + 256);
  *(v6 + 256) = v42;

  v44 = [(NSString *)self->_optionsDuetPreClearedMode copyWithZone:a3];
  v45 = *(v6 + 264);
  *(v6 + 264) = v44;

  if ((*(&self->_has + 3) & 2) != 0)
  {
    *(v6 + 306) = self->_optionsAllowCellularAccess;
    *(v6 + 316) |= 0x2000000u;
  }

  v46 = v6;

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = *(v4 + 79);
  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_triggers != *(v4 + 18))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_reportFrequency != *(v4 + 4))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_35;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_reportFrequencyBase != *(v4 + 5))
    {
      goto LABEL_35;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_35;
  }

  networkTaskDescription = self->_networkTaskDescription;
  if (networkTaskDescription | *(v4 + 31) && ![(NSString *)networkTaskDescription isEqual:?])
  {
    goto LABEL_35;
  }

  networkHostname = self->_networkHostname;
  if (networkHostname | *(v4 + 21))
  {
    if (![(NSString *)networkHostname isEqual:?])
    {
      goto LABEL_35;
    }
  }

  networkRemoteAddresssAndPort = self->_networkRemoteAddresssAndPort;
  if (networkRemoteAddresssAndPort | *(v4 + 27))
  {
    if (![(NSString *)networkRemoteAddresssAndPort isEqual:?])
    {
      goto LABEL_35;
    }
  }

  networkConnectionUuid = self->_networkConnectionUuid;
  if (networkConnectionUuid | *(v4 + 19))
  {
    if (![(NSString *)networkConnectionUuid isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v11 = *(v4 + 79);
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    v18 = *(v4 + 304);
    if (self->_networkConnectionReused)
    {
      if ((*(v4 + 304) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 304))
    {
      goto LABEL_35;
    }
  }

  else if ((v11 & 0x800000) != 0)
  {
    goto LABEL_35;
  }

  networkInterfaceIdentifier = self->_networkInterfaceIdentifier;
  if (networkInterfaceIdentifier | *(v4 + 22) && ![(NSString *)networkInterfaceIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  networkProtocolName = self->_networkProtocolName;
  if (networkProtocolName | *(v4 + 26))
  {
    if (![(NSString *)networkProtocolName isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v14 = self->_has;
  v15 = *(v4 + 79);
  if ((*&v14 & 0x80000) != 0)
  {
    if ((v15 & 0x80000) == 0 || self->_networkRequestHeaderSize != *(v4 + 56))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x80000) != 0)
  {
    goto LABEL_35;
  }

  if (*&v14)
  {
    if ((v15 & 1) == 0 || self->_networkRequestBodyBytesSent != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (v15)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x100000) != 0)
  {
    if ((v15 & 0x100000) == 0 || self->_networkResponseHeaderSize != *(v4 + 60))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x100000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 2) != 0)
  {
    if ((v15 & 2) == 0 || self->_networkResponseBodyBytesReceived != *(v4 + 2))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 2) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v14 & 0x40000) != 0)
  {
    if ((v15 & 0x40000) == 0 || self->_networkPreviousAttemptCount != *(v4 + 50))
    {
      goto LABEL_35;
    }
  }

  else if ((v15 & 0x40000) != 0)
  {
    goto LABEL_35;
  }

  networkFatalError = self->_networkFatalError;
  if (networkFatalError | *(v4 + 20))
  {
    if (![(C2MPError *)networkFatalError isEqual:?])
    {
      goto LABEL_35;
    }

    v14 = self->_has;
  }

  v20 = *(v4 + 79);
  if ((*&v14 & 4) != 0)
  {
    if ((v20 & 4) == 0 || self->_networkStatusCode != *(v4 + 3))
    {
      goto LABEL_35;
    }
  }

  else if ((v20 & 4) != 0)
  {
    goto LABEL_35;
  }

  networkRequestUri = self->_networkRequestUri;
  if (networkRequestUri | *(v4 + 29))
  {
    if (![(NSString *)networkRequestUri isEqual:?])
    {
      goto LABEL_35;
    }

    v14 = self->_has;
  }

  v22 = *(v4 + 79);
  if ((*&v14 & 0x1000000) != 0)
  {
    if ((v22 & 0x1000000) == 0)
    {
      goto LABEL_35;
    }

    v27 = *(v4 + 305);
    if (self->_networkIsDiscretionary)
    {
      if ((*(v4 + 305) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 305))
    {
      goto LABEL_35;
    }
  }

  else if ((v22 & 0x1000000) != 0)
  {
    goto LABEL_35;
  }

  networkNegotiatedTlsProtocolVersion = self->_networkNegotiatedTlsProtocolVersion;
  if (networkNegotiatedTlsProtocolVersion | *(v4 + 23) && ![(NSString *)networkNegotiatedTlsProtocolVersion isEqual:?])
  {
    goto LABEL_35;
  }

  networkPathInfos = self->_networkPathInfos;
  if (networkPathInfos | *(v4 + 24))
  {
    if (![(NSMutableArray *)networkPathInfos isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v25 = self->_has;
  v26 = *(v4 + 79);
  if ((*&v25 & 0x20) != 0)
  {
    if ((v26 & 0x20) == 0 || self->_timestampC2Init != *(v4 + 6))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x20) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x80) != 0)
  {
    if ((v26 & 0x80) == 0 || self->_timestampC2Start != *(v4 + 8))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x80) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x40) != 0)
  {
    if ((v26 & 0x40) == 0 || self->_timestampC2Now != *(v4 + 7))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x40) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x200) != 0)
  {
    if ((v26 & 0x200) == 0 || self->_timestampDnsStart != *(v4 + 10))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x200) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x100) != 0)
  {
    if ((v26 & 0x100) == 0 || self->_timestampDnsEnd != *(v4 + 9))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x10000) != 0)
  {
    if ((v26 & 0x10000) == 0 || self->_timestampTcpStart != *(v4 + 17))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x10000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x8000) != 0)
  {
    if ((v26 & 0x8000) == 0 || self->_timestampTcpEnd != *(v4 + 16))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x8000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x4000) != 0)
  {
    if ((v26 & 0x4000) == 0 || self->_timestampSslStart != *(v4 + 15))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x4000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x800) != 0)
  {
    if ((v26 & 0x800) == 0 || self->_timestampRequestStart != *(v4 + 12))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x800) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x400) != 0)
  {
    if ((v26 & 0x400) == 0 || self->_timestampRequestEnd != *(v4 + 11))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x400) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x2000) != 0)
  {
    if ((v26 & 0x2000) == 0 || self->_timestampResponseStart != *(v4 + 14))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x2000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x1000) != 0)
  {
    if ((v26 & 0x1000) == 0 || self->_timestampResponseEnd != *(v4 + 13))
    {
      goto LABEL_35;
    }
  }

  else if ((v26 & 0x1000) != 0)
  {
    goto LABEL_35;
  }

  optionsQualityOfService = self->_optionsQualityOfService;
  if (optionsQualityOfService | *(v4 + 34))
  {
    if (![(NSString *)optionsQualityOfService isEqual:?])
    {
      goto LABEL_35;
    }

    v25 = self->_has;
  }

  v29 = *(v4 + 79);
  if ((*&v25 & 0x20000000) != 0)
  {
    if ((v29 & 0x20000000) == 0)
    {
      goto LABEL_35;
    }

    v30 = *(v4 + 310);
    if (self->_optionsOutOfProcess)
    {
      if ((*(v4 + 310) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 310))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x20000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x40000000) != 0)
  {
    if ((v29 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    v31 = *(v4 + 311);
    if (self->_optionsOutOfProcessForceDiscretionary)
    {
      if ((*(v4 + 311) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 311))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x40000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x4000000) != 0)
  {
    if ((v29 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    v32 = *(v4 + 307);
    if (self->_optionsAllowExpensiveAccess)
    {
      if ((*(v4 + 307) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 307))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x4000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x8000000) != 0)
  {
    if ((v29 & 0x8000000) == 0)
    {
      goto LABEL_35;
    }

    v33 = *(v4 + 308);
    if (self->_optionsAllowPowerNapScheduling)
    {
      if ((*(v4 + 308) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 308))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x8000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x200000) != 0)
  {
    if ((v29 & 0x200000) == 0 || self->_optionsTimeoutIntervalForRequest != *(v4 + 74))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x200000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v25 & 0x400000) != 0)
  {
    if ((v29 & 0x400000) == 0 || self->_optionsTimeoutIntervalForResource != *(v4 + 75))
    {
      goto LABEL_35;
    }
  }

  else if ((v29 & 0x400000) != 0)
  {
    goto LABEL_35;
  }

  optionsSourceApplicationBundleIdentifier = self->_optionsSourceApplicationBundleIdentifier;
  if (optionsSourceApplicationBundleIdentifier | *(v4 + 35) && ![(NSString *)optionsSourceApplicationBundleIdentifier isEqual:?])
  {
    goto LABEL_35;
  }

  optionsSourceApplicationSecondaryIdentifier = self->_optionsSourceApplicationSecondaryIdentifier;
  if (optionsSourceApplicationSecondaryIdentifier | *(v4 + 36))
  {
    if (![(NSString *)optionsSourceApplicationSecondaryIdentifier isEqual:?])
    {
      goto LABEL_35;
    }
  }

  v36 = self->_has;
  v37 = *(v4 + 79);
  if ((*&v36 & 0x10000000) != 0)
  {
    if ((v37 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    v41 = *(v4 + 309);
    if (self->_optionsAppleIdContext)
    {
      if ((*(v4 + 309) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 309))
    {
      goto LABEL_35;
    }
  }

  else if ((v37 & 0x10000000) != 0)
  {
    goto LABEL_35;
  }

  if ((*&v36 & 0x80000000) != 0)
  {
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    v42 = *(v4 + 312);
    if (self->_optionsTlsPinningRequired)
    {
      if ((*(v4 + 312) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (*(v4 + 312))
    {
      goto LABEL_35;
    }
  }

  else if (v37 < 0)
  {
    goto LABEL_35;
  }

  optionsDiscretionaryNetworkBehavior = self->_optionsDiscretionaryNetworkBehavior;
  if (!(optionsDiscretionaryNetworkBehavior | *(v4 + 32)) || [(NSString *)optionsDiscretionaryNetworkBehavior isEqual:?])
  {
    optionsDuetPreClearedMode = self->_optionsDuetPreClearedMode;
    if (!(optionsDuetPreClearedMode | *(v4 + 33)) || [(NSString *)optionsDuetPreClearedMode isEqual:?])
    {
      v40 = *(v4 + 79);
      if ((*(&self->_has + 3) & 2) == 0)
      {
        v16 = (v40 & 0x2000000) == 0;
        goto LABEL_36;
      }

      if ((v40 & 0x2000000) != 0)
      {
        if (self->_optionsAllowCellularAccess)
        {
          if (*(v4 + 306))
          {
            goto LABEL_223;
          }
        }

        else if (!*(v4 + 306))
        {
LABEL_223:
          v16 = 1;
          goto LABEL_36;
        }
      }
    }
  }

LABEL_35:
  v16 = 0;
LABEL_36:

  return v16;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
    v55 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v54 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v55 = 2654435761u * self->_triggers;
  if ((*&has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v54 = 2654435761u * self->_reportFrequency;
  if ((*&has & 0x10) != 0)
  {
LABEL_4:
    v53 = 2654435761u * self->_reportFrequencyBase;
    goto LABEL_8;
  }

LABEL_7:
  v53 = 0;
LABEL_8:
  v52 = [(NSString *)self->_networkTaskDescription hash];
  v51 = [(NSString *)self->_networkHostname hash];
  v50 = [(NSString *)self->_networkRemoteAddresssAndPort hash];
  v49 = [(NSString *)self->_networkConnectionUuid hash];
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    v48 = 2654435761 * self->_networkConnectionReused;
  }

  else
  {
    v48 = 0;
  }

  v47 = [(NSString *)self->_networkInterfaceIdentifier hash];
  v46 = [(NSString *)self->_networkProtocolName hash];
  v4 = self->_has;
  if ((*&v4 & 0x80000) != 0)
  {
    v45 = 2654435761 * self->_networkRequestHeaderSize;
    if (*&v4)
    {
LABEL_13:
      v44 = 2654435761u * self->_networkRequestBodyBytesSent;
      if ((*&v4 & 0x100000) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v45 = 0;
    if (*&v4)
    {
      goto LABEL_13;
    }
  }

  v44 = 0;
  if ((*&v4 & 0x100000) != 0)
  {
LABEL_14:
    v43 = 2654435761 * self->_networkResponseHeaderSize;
    if ((*&v4 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v42 = 0;
    if ((*&v4 & 0x40000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_19:
  v43 = 0;
  if ((*&v4 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v42 = 2654435761u * self->_networkResponseBodyBytesReceived;
  if ((*&v4 & 0x40000) != 0)
  {
LABEL_16:
    v41 = 2654435761 * self->_networkPreviousAttemptCount;
    goto LABEL_22;
  }

LABEL_21:
  v41 = 0;
LABEL_22:
  v40 = [(C2MPError *)self->_networkFatalError hash];
  if ((*&self->_has & 4) != 0)
  {
    v39 = 2654435761u * self->_networkStatusCode;
  }

  else
  {
    v39 = 0;
  }

  v38 = [(NSString *)self->_networkRequestUri hash];
  if (*(&self->_has + 3))
  {
    v37 = 2654435761 * self->_networkIsDiscretionary;
  }

  else
  {
    v37 = 0;
  }

  v36 = [(NSString *)self->_networkNegotiatedTlsProtocolVersion hash];
  v35 = [(NSMutableArray *)self->_networkPathInfos hash];
  v5 = self->_has;
  if ((*&v5 & 0x20) != 0)
  {
    v34 = 2654435761u * self->_timestampC2Init;
    if ((*&v5 & 0x80) != 0)
    {
LABEL_30:
      v33 = 2654435761u * self->_timestampC2Start;
      if ((*&v5 & 0x40) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v34 = 0;
    if ((*&v5 & 0x80) != 0)
    {
      goto LABEL_30;
    }
  }

  v33 = 0;
  if ((*&v5 & 0x40) != 0)
  {
LABEL_31:
    v32 = 2654435761u * self->_timestampC2Now;
    if ((*&v5 & 0x200) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

LABEL_43:
  v32 = 0;
  if ((*&v5 & 0x200) != 0)
  {
LABEL_32:
    v31 = 2654435761u * self->_timestampDnsStart;
    if ((*&v5 & 0x100) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_45;
  }

LABEL_44:
  v31 = 0;
  if ((*&v5 & 0x100) != 0)
  {
LABEL_33:
    v30 = 2654435761u * self->_timestampDnsEnd;
    if ((*&v5 & 0x10000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_46;
  }

LABEL_45:
  v30 = 0;
  if ((*&v5 & 0x10000) != 0)
  {
LABEL_34:
    v29 = 2654435761u * self->_timestampTcpStart;
    if ((*&v5 & 0x8000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_47;
  }

LABEL_46:
  v29 = 0;
  if ((*&v5 & 0x8000) != 0)
  {
LABEL_35:
    v28 = 2654435761u * self->_timestampTcpEnd;
    if ((*&v5 & 0x4000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

LABEL_47:
  v28 = 0;
  if ((*&v5 & 0x4000) != 0)
  {
LABEL_36:
    v27 = 2654435761u * self->_timestampSslStart;
    if ((*&v5 & 0x800) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_48:
  v27 = 0;
  if ((*&v5 & 0x800) != 0)
  {
LABEL_37:
    v26 = 2654435761u * self->_timestampRequestStart;
    if ((*&v5 & 0x400) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

LABEL_49:
  v26 = 0;
  if ((*&v5 & 0x400) != 0)
  {
LABEL_38:
    v25 = 2654435761u * self->_timestampRequestEnd;
    if ((*&v5 & 0x2000) != 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v24 = 0;
    if ((*&v5 & 0x1000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_50:
  v25 = 0;
  if ((*&v5 & 0x2000) == 0)
  {
    goto LABEL_51;
  }

LABEL_39:
  v24 = 2654435761u * self->_timestampResponseStart;
  if ((*&v5 & 0x1000) != 0)
  {
LABEL_40:
    v23 = 2654435761u * self->_timestampResponseEnd;
    goto LABEL_53;
  }

LABEL_52:
  v23 = 0;
LABEL_53:
  v22 = [(NSString *)self->_optionsQualityOfService hash];
  v6 = self->_has;
  if ((*&v6 & 0x20000000) != 0)
  {
    v21 = 2654435761 * self->_optionsOutOfProcess;
    if ((*&v6 & 0x40000000) != 0)
    {
LABEL_55:
      v20 = 2654435761 * self->_optionsOutOfProcessForceDiscretionary;
      if ((*&v6 & 0x4000000) != 0)
      {
        goto LABEL_56;
      }

      goto LABEL_62;
    }
  }

  else
  {
    v21 = 0;
    if ((*&v6 & 0x40000000) != 0)
    {
      goto LABEL_55;
    }
  }

  v20 = 0;
  if ((*&v6 & 0x4000000) != 0)
  {
LABEL_56:
    v19 = 2654435761 * self->_optionsAllowExpensiveAccess;
    if ((*&v6 & 0x8000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_63;
  }

LABEL_62:
  v19 = 0;
  if ((*&v6 & 0x8000000) != 0)
  {
LABEL_57:
    v18 = 2654435761 * self->_optionsAllowPowerNapScheduling;
    if ((*&v6 & 0x200000) != 0)
    {
      goto LABEL_58;
    }

LABEL_64:
    v7 = 0;
    if ((*&v6 & 0x400000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_63:
  v18 = 0;
  if ((*&v6 & 0x200000) == 0)
  {
    goto LABEL_64;
  }

LABEL_58:
  v7 = 2654435761 * self->_optionsTimeoutIntervalForRequest;
  if ((*&v6 & 0x400000) != 0)
  {
LABEL_59:
    v8 = 2654435761 * self->_optionsTimeoutIntervalForResource;
    goto LABEL_66;
  }

LABEL_65:
  v8 = 0;
LABEL_66:
  v9 = [(NSString *)self->_optionsSourceApplicationBundleIdentifier hash];
  v10 = [(NSString *)self->_optionsSourceApplicationSecondaryIdentifier hash];
  v11 = self->_has;
  if ((*&v11 & 0x10000000) != 0)
  {
    v12 = 2654435761 * self->_optionsAppleIdContext;
    if ((*&v11 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v12 = 0;
    if ((*&v11 & 0x80000000) != 0)
    {
LABEL_68:
      v13 = 2654435761 * self->_optionsTlsPinningRequired;
      goto LABEL_71;
    }
  }

  v13 = 0;
LABEL_71:
  v14 = [(NSString *)self->_optionsDiscretionaryNetworkBehavior hash];
  v15 = [(NSString *)self->_optionsDuetPreClearedMode hash];
  if ((*(&self->_has + 3) & 2) != 0)
  {
    v16 = 2654435761 * self->_optionsAllowCellularAccess;
  }

  else
  {
    v16 = 0;
  }

  return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 79);
  if ((v6 & 0x20000) != 0)
  {
    self->_triggers = v4[18];
    *&self->_has |= 0x20000u;
    v6 = *(v4 + 79);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_reportFrequency = v4[4];
  *&self->_has |= 8u;
  if ((*(v4 + 79) & 0x10) != 0)
  {
LABEL_4:
    self->_reportFrequencyBase = v4[5];
    *&self->_has |= 0x10u;
  }

LABEL_5:
  if (v4[31])
  {
    [(C2MPNetworkEvent *)self setNetworkTaskDescription:?];
  }

  if (v5[21])
  {
    [(C2MPNetworkEvent *)self setNetworkHostname:?];
  }

  if (v5[27])
  {
    [(C2MPNetworkEvent *)self setNetworkRemoteAddresssAndPort:?];
  }

  if (v5[19])
  {
    [(C2MPNetworkEvent *)self setNetworkConnectionUuid:?];
  }

  if ((*(v5 + 318) & 0x80) != 0)
  {
    self->_networkConnectionReused = *(v5 + 304);
    *&self->_has |= 0x800000u;
  }

  if (v5[22])
  {
    [(C2MPNetworkEvent *)self setNetworkInterfaceIdentifier:?];
  }

  if (v5[26])
  {
    [(C2MPNetworkEvent *)self setNetworkProtocolName:?];
  }

  v7 = *(v5 + 79);
  if ((v7 & 0x80000) != 0)
  {
    self->_networkRequestHeaderSize = *(v5 + 56);
    *&self->_has |= 0x80000u;
    v7 = *(v5 + 79);
    if ((v7 & 1) == 0)
    {
LABEL_21:
      if ((v7 & 0x100000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_21;
  }

  self->_networkRequestBodyBytesSent = v5[1];
  *&self->_has |= 1u;
  v7 = *(v5 + 79);
  if ((v7 & 0x100000) == 0)
  {
LABEL_22:
    if ((v7 & 2) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_networkResponseHeaderSize = *(v5 + 60);
  *&self->_has |= 0x100000u;
  v7 = *(v5 + 79);
  if ((v7 & 2) == 0)
  {
LABEL_23:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_34:
  self->_networkResponseBodyBytesReceived = v5[2];
  *&self->_has |= 2u;
  if ((*(v5 + 79) & 0x40000) != 0)
  {
LABEL_24:
    self->_networkPreviousAttemptCount = *(v5 + 50);
    *&self->_has |= 0x40000u;
  }

LABEL_25:
  networkFatalError = self->_networkFatalError;
  v9 = v5[20];
  if (networkFatalError)
  {
    if (v9)
    {
      [(C2MPError *)networkFatalError mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(C2MPNetworkEvent *)self setNetworkFatalError:?];
  }

  if ((*(v5 + 316) & 4) != 0)
  {
    self->_networkStatusCode = v5[3];
    *&self->_has |= 4u;
  }

  if (v5[29])
  {
    [(C2MPNetworkEvent *)self setNetworkRequestUri:?];
  }

  if (*(v5 + 319))
  {
    self->_networkIsDiscretionary = *(v5 + 305);
    *&self->_has |= 0x1000000u;
  }

  if (v5[23])
  {
    [(C2MPNetworkEvent *)self setNetworkNegotiatedTlsProtocolVersion:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v5[24];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(C2MPNetworkEvent *)self addNetworkPathInfo:*(*(&v19 + 1) + 8 * i), v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v15 = *(v5 + 79);
  if ((v15 & 0x20) != 0)
  {
    self->_timestampC2Init = v5[6];
    *&self->_has |= 0x20u;
    v15 = *(v5 + 79);
    if ((v15 & 0x80) == 0)
    {
LABEL_55:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_92;
    }
  }

  else if ((v15 & 0x80) == 0)
  {
    goto LABEL_55;
  }

  self->_timestampC2Start = v5[8];
  *&self->_has |= 0x80u;
  v15 = *(v5 + 79);
  if ((v15 & 0x40) == 0)
  {
LABEL_56:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_timestampC2Now = v5[7];
  *&self->_has |= 0x40u;
  v15 = *(v5 + 79);
  if ((v15 & 0x200) == 0)
  {
LABEL_57:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_timestampDnsStart = v5[10];
  *&self->_has |= 0x200u;
  v15 = *(v5 + 79);
  if ((v15 & 0x100) == 0)
  {
LABEL_58:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_timestampDnsEnd = v5[9];
  *&self->_has |= 0x100u;
  v15 = *(v5 + 79);
  if ((v15 & 0x10000) == 0)
  {
LABEL_59:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_timestampTcpStart = v5[17];
  *&self->_has |= 0x10000u;
  v15 = *(v5 + 79);
  if ((v15 & 0x8000) == 0)
  {
LABEL_60:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_timestampTcpEnd = v5[16];
  *&self->_has |= 0x8000u;
  v15 = *(v5 + 79);
  if ((v15 & 0x4000) == 0)
  {
LABEL_61:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_timestampSslStart = v5[15];
  *&self->_has |= 0x4000u;
  v15 = *(v5 + 79);
  if ((v15 & 0x800) == 0)
  {
LABEL_62:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_99;
  }

LABEL_98:
  self->_timestampRequestStart = v5[12];
  *&self->_has |= 0x800u;
  v15 = *(v5 + 79);
  if ((v15 & 0x400) == 0)
  {
LABEL_63:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_100;
  }

LABEL_99:
  self->_timestampRequestEnd = v5[11];
  *&self->_has |= 0x400u;
  v15 = *(v5 + 79);
  if ((v15 & 0x2000) == 0)
  {
LABEL_64:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_100:
  self->_timestampResponseStart = v5[14];
  *&self->_has |= 0x2000u;
  if ((*(v5 + 79) & 0x1000) != 0)
  {
LABEL_65:
    self->_timestampResponseEnd = v5[13];
    *&self->_has |= 0x1000u;
  }

LABEL_66:
  if (v5[34])
  {
    [(C2MPNetworkEvent *)self setOptionsQualityOfService:?];
  }

  v16 = *(v5 + 79);
  if ((v16 & 0x20000000) != 0)
  {
    self->_optionsOutOfProcess = *(v5 + 310);
    *&self->_has |= 0x20000000u;
    v16 = *(v5 + 79);
    if ((v16 & 0x40000000) == 0)
    {
LABEL_70:
      if ((v16 & 0x4000000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_104;
    }
  }

  else if ((v16 & 0x40000000) == 0)
  {
    goto LABEL_70;
  }

  self->_optionsOutOfProcessForceDiscretionary = *(v5 + 311);
  *&self->_has |= 0x40000000u;
  v16 = *(v5 + 79);
  if ((v16 & 0x4000000) == 0)
  {
LABEL_71:
    if ((v16 & 0x8000000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_105;
  }

LABEL_104:
  self->_optionsAllowExpensiveAccess = *(v5 + 307);
  *&self->_has |= 0x4000000u;
  v16 = *(v5 + 79);
  if ((v16 & 0x8000000) == 0)
  {
LABEL_72:
    if ((v16 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_106;
  }

LABEL_105:
  self->_optionsAllowPowerNapScheduling = *(v5 + 308);
  *&self->_has |= 0x8000000u;
  v16 = *(v5 + 79);
  if ((v16 & 0x200000) == 0)
  {
LABEL_73:
    if ((v16 & 0x400000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_106:
  self->_optionsTimeoutIntervalForRequest = *(v5 + 74);
  *&self->_has |= 0x200000u;
  if ((*(v5 + 79) & 0x400000) != 0)
  {
LABEL_74:
    self->_optionsTimeoutIntervalForResource = *(v5 + 75);
    *&self->_has |= 0x400000u;
  }

LABEL_75:
  if (v5[35])
  {
    [(C2MPNetworkEvent *)self setOptionsSourceApplicationBundleIdentifier:?];
  }

  if (v5[36])
  {
    [(C2MPNetworkEvent *)self setOptionsSourceApplicationSecondaryIdentifier:?];
  }

  v17 = *(v5 + 79);
  if ((v17 & 0x10000000) != 0)
  {
    self->_optionsAppleIdContext = *(v5 + 309);
    *&self->_has |= 0x10000000u;
    v17 = *(v5 + 79);
  }

  if (v17 < 0)
  {
    self->_optionsTlsPinningRequired = *(v5 + 312);
    *&self->_has |= 0x80000000;
  }

  if (v5[32])
  {
    [(C2MPNetworkEvent *)self setOptionsDiscretionaryNetworkBehavior:?];
  }

  if (v5[33])
  {
    [(C2MPNetworkEvent *)self setOptionsDuetPreClearedMode:?];
  }

  if ((*(v5 + 319) & 2) != 0)
  {
    self->_optionsAllowCellularAccess = *(v5 + 306);
    *&self->_has |= 0x2000000u;
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end
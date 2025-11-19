@interface C2MPMetric
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMetricType:(id)a3;
- (int)metricType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMetricType:(BOOL)a3;
- (void)setHasReportFrequencyBase:(BOOL)a3;
- (void)setHasReportTransportAllowExpensiveAccess:(BOOL)a3;
- (void)setHasReportTransportAllowPowerNapScheduling:(BOOL)a3;
- (void)setHasTriggers:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation C2MPMetric

- (int)metricType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_metricType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasMetricType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsMetricType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"none_type"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"network_event_type"])
  {
    v4 = 200;
  }

  else if ([v3 isEqualToString:@"generic_event_type"])
  {
    v4 = 201;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTriggers:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasReportFrequencyBase:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasReportTransportAllowExpensiveAccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasReportTransportAllowPowerNapScheduling:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = C2MPMetric;
  v4 = [(C2MPMetric *)&v8 description];
  v5 = [(C2MPMetric *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    metricType = self->_metricType;
    if (metricType)
    {
      if (metricType == 201)
      {
        v5 = @"generic_event_type";
      }

      else if (metricType == 200)
      {
        v5 = @"network_event_type";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_metricType];
      }
    }

    else
    {
      v5 = @"none_type";
    }

    [v3 setObject:v5 forKey:@"metric_type"];
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v7 = [(C2MPDeviceInfo *)deviceInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"device_info"];
  }

  cloudkitInfo = self->_cloudkitInfo;
  if (cloudkitInfo)
  {
    v9 = [(C2MPCloudKitInfo *)cloudkitInfo dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"cloudkit_info"];
  }

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    v11 = [(C2MPServerInfo *)serverInfo dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"server_info"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_triggers];
    [v3 setObject:v21 forKey:@"triggers"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_18:
      if ((has & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportFrequency];
  [v3 setObject:v22 forKey:@"report_frequency"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_19:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_reportFrequencyBase];
  [v3 setObject:v23 forKey:@"report_frequency_base"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_20:
    if ((has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_36:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportTransportAllowExpensiveAccess];
  [v3 setObject:v24 forKey:@"report_transport_allow_expensive_access"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_21:
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportTransportAllowPowerNapScheduling];
    [v3 setObject:v13 forKey:@"report_transport_allow_power_nap_scheduling"];
  }

LABEL_22:
  reportTransportSourceApplicationBundleIdentifier = self->_reportTransportSourceApplicationBundleIdentifier;
  if (reportTransportSourceApplicationBundleIdentifier)
  {
    [v3 setObject:reportTransportSourceApplicationBundleIdentifier forKey:@"report_transport_source_application_bundle_identifier"];
  }

  reportTransportSourceApplicationSecondaryIdentifier = self->_reportTransportSourceApplicationSecondaryIdentifier;
  if (reportTransportSourceApplicationSecondaryIdentifier)
  {
    [v3 setObject:reportTransportSourceApplicationSecondaryIdentifier forKey:@"report_transport_source_application_secondary_identifier"];
  }

  networkEvent = self->_networkEvent;
  if (networkEvent)
  {
    v17 = [(C2MPNetworkEvent *)networkEvent dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"network_event"];
  }

  genericEvent = self->_genericEvent;
  if (genericEvent)
  {
    v19 = [(C2MPGenericEvent *)genericEvent dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"generic_event"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if ((*&self->_has & 8) != 0)
  {
    metricType = self->_metricType;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_deviceInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_cloudkitInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_serverInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    triggers = self->_triggers;
    PBDataWriterWriteUint64Field();
    v4 = v12;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  reportFrequency = self->_reportFrequency;
  PBDataWriterWriteUint64Field();
  v4 = v12;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  reportFrequencyBase = self->_reportFrequencyBase;
  PBDataWriterWriteUint64Field();
  v4 = v12;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  reportTransportAllowExpensiveAccess = self->_reportTransportAllowExpensiveAccess;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    reportTransportAllowPowerNapScheduling = self->_reportTransportAllowPowerNapScheduling;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_15:
  if (self->_reportTransportSourceApplicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_reportTransportSourceApplicationSecondaryIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_networkEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_genericEvent)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 8) != 0)
  {
    v4[14] = self->_metricType;
    *(v4 + 100) |= 8u;
  }

  v6 = v4;
  if (self->_deviceInfo)
  {
    [v4 setDeviceInfo:?];
    v4 = v6;
  }

  if (self->_cloudkitInfo)
  {
    [v6 setCloudkitInfo:?];
    v4 = v6;
  }

  if (self->_serverInfo)
  {
    [v6 setServerInfo:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_triggers;
    *(v4 + 100) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_11:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 1) = self->_reportFrequency;
  *(v4 + 100) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 2) = self->_reportFrequencyBase;
  *(v4 + 100) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  *(v4 + 96) = self->_reportTransportAllowExpensiveAccess;
  *(v4 + 100) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_14:
    *(v4 + 97) = self->_reportTransportAllowPowerNapScheduling;
    *(v4 + 100) |= 0x20u;
  }

LABEL_15:
  if (self->_reportTransportSourceApplicationBundleIdentifier)
  {
    [v6 setReportTransportSourceApplicationBundleIdentifier:?];
    v4 = v6;
  }

  if (self->_reportTransportSourceApplicationSecondaryIdentifier)
  {
    [v6 setReportTransportSourceApplicationSecondaryIdentifier:?];
    v4 = v6;
  }

  if (self->_networkEvent)
  {
    [v6 setNetworkEvent:?];
    v4 = v6;
  }

  if (self->_genericEvent)
  {
    [v6 setGenericEvent:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 56) = self->_metricType;
    *(v5 + 100) |= 8u;
  }

  v7 = [(C2MPDeviceInfo *)self->_deviceInfo copyWithZone:a3];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v9 = [(C2MPCloudKitInfo *)self->_cloudkitInfo copyWithZone:a3];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  v11 = [(C2MPServerInfo *)self->_serverInfo copyWithZone:a3];
  v12 = *(v6 + 88);
  *(v6 + 88) = v11;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_triggers;
    *(v6 + 100) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 8) = self->_reportFrequency;
  *(v6 + 100) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 96) = self->_reportTransportAllowExpensiveAccess;
    *(v6 + 100) |= 0x10u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 16) = self->_reportFrequencyBase;
  *(v6 + 100) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 97) = self->_reportTransportAllowPowerNapScheduling;
    *(v6 + 100) |= 0x20u;
  }

LABEL_9:
  v14 = [(NSString *)self->_reportTransportSourceApplicationBundleIdentifier copyWithZone:a3];
  v15 = *(v6 + 72);
  *(v6 + 72) = v14;

  v16 = [(NSString *)self->_reportTransportSourceApplicationSecondaryIdentifier copyWithZone:a3];
  v17 = *(v6 + 80);
  *(v6 + 80) = v16;

  v18 = [(C2MPNetworkEvent *)self->_networkEvent copyWithZone:a3];
  v19 = *(v6 + 64);
  *(v6 + 64) = v18;

  v20 = [(C2MPGenericEvent *)self->_genericEvent copyWithZone:a3];
  v21 = *(v6 + 48);
  *(v6 + 48) = v20;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = *(v4 + 100);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 100) & 8) == 0 || self->_metricType != *(v4 + 14))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 100) & 8) != 0)
  {
    goto LABEL_51;
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo | *(v4 + 5) && ![(C2MPDeviceInfo *)deviceInfo isEqual:?])
  {
    goto LABEL_51;
  }

  cloudkitInfo = self->_cloudkitInfo;
  if (cloudkitInfo | *(v4 + 4))
  {
    if (![(C2MPCloudKitInfo *)cloudkitInfo isEqual:?])
    {
      goto LABEL_51;
    }
  }

  serverInfo = self->_serverInfo;
  if (serverInfo | *(v4 + 11))
  {
    if (![(C2MPServerInfo *)serverInfo isEqual:?])
    {
      goto LABEL_51;
    }
  }

  v9 = *(v4 + 100);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 100) & 4) == 0 || self->_triggers != *(v4 + 3))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 100) & 4) != 0)
  {
    goto LABEL_51;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 100) & 1) == 0 || self->_reportFrequency != *(v4 + 1))
    {
      goto LABEL_51;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 100) & 2) == 0 || self->_reportFrequencyBase != *(v4 + 2))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 100) & 2) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 100) & 0x10) == 0)
    {
      goto LABEL_51;
    }

    v15 = *(v4 + 96);
    if (self->_reportTransportAllowExpensiveAccess)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_51;
    }
  }

  else if ((*(v4 + 100) & 0x10) != 0)
  {
    goto LABEL_51;
  }

  if ((*&self->_has & 0x20) == 0)
  {
    if ((*(v4 + 100) & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_51:
    v14 = 0;
    goto LABEL_52;
  }

  if ((*(v4 + 100) & 0x20) == 0)
  {
    goto LABEL_51;
  }

  v16 = *(v4 + 97);
  if (self->_reportTransportAllowPowerNapScheduling)
  {
    if ((*(v4 + 97) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (*(v4 + 97))
  {
    goto LABEL_51;
  }

LABEL_32:
  reportTransportSourceApplicationBundleIdentifier = self->_reportTransportSourceApplicationBundleIdentifier;
  if (reportTransportSourceApplicationBundleIdentifier | *(v4 + 9) && ![(NSString *)reportTransportSourceApplicationBundleIdentifier isEqual:?])
  {
    goto LABEL_51;
  }

  reportTransportSourceApplicationSecondaryIdentifier = self->_reportTransportSourceApplicationSecondaryIdentifier;
  if (reportTransportSourceApplicationSecondaryIdentifier | *(v4 + 10))
  {
    if (![(NSString *)reportTransportSourceApplicationSecondaryIdentifier isEqual:?])
    {
      goto LABEL_51;
    }
  }

  networkEvent = self->_networkEvent;
  if (networkEvent | *(v4 + 8))
  {
    if (![(C2MPNetworkEvent *)networkEvent isEqual:?])
    {
      goto LABEL_51;
    }
  }

  genericEvent = self->_genericEvent;
  if (genericEvent | *(v4 + 6))
  {
    v14 = [(C2MPGenericEvent *)genericEvent isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_52:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_metricType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(C2MPDeviceInfo *)self->_deviceInfo hash];
  v5 = [(C2MPCloudKitInfo *)self->_cloudkitInfo hash];
  v6 = [(C2MPServerInfo *)self->_serverInfo hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761u * self->_triggers;
    if (*&self->_has)
    {
LABEL_6:
      v8 = 2654435761u * self->_reportFrequency;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v9 = 2654435761u * self->_reportFrequencyBase;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v10 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v9 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = 2654435761 * self->_reportTransportAllowExpensiveAccess;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v11 = 2654435761 * self->_reportTransportAllowPowerNapScheduling;
LABEL_15:
  v12 = v4 ^ v3 ^ v5 ^ v6;
  v13 = v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_reportTransportSourceApplicationBundleIdentifier hash];
  v14 = v12 ^ v13 ^ [(NSString *)self->_reportTransportSourceApplicationSecondaryIdentifier hash];
  v15 = [(C2MPNetworkEvent *)self->_networkEvent hash];
  return v14 ^ v15 ^ [(C2MPGenericEvent *)self->_genericEvent hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[25] & 8) != 0)
  {
    self->_metricType = v4[14];
    *&self->_has |= 8u;
  }

  deviceInfo = self->_deviceInfo;
  v7 = *(v5 + 5);
  v17 = v5;
  if (deviceInfo)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(C2MPDeviceInfo *)deviceInfo mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(C2MPMetric *)self setDeviceInfo:?];
  }

  v5 = v17;
LABEL_9:
  cloudkitInfo = self->_cloudkitInfo;
  v9 = *(v5 + 4);
  if (cloudkitInfo)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(C2MPCloudKitInfo *)cloudkitInfo mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(C2MPMetric *)self setCloudkitInfo:?];
  }

  v5 = v17;
LABEL_15:
  serverInfo = self->_serverInfo;
  v11 = *(v5 + 11);
  if (serverInfo)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(C2MPServerInfo *)serverInfo mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(C2MPMetric *)self setServerInfo:?];
  }

  v5 = v17;
LABEL_21:
  v12 = *(v5 + 100);
  if ((v12 & 4) != 0)
  {
    self->_triggers = *(v5 + 3);
    *&self->_has |= 4u;
    v12 = *(v5 + 100);
    if ((v12 & 1) == 0)
    {
LABEL_23:
      if ((v12 & 2) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }
  }

  else if ((v5[25] & 1) == 0)
  {
    goto LABEL_23;
  }

  self->_reportFrequency = *(v5 + 1);
  *&self->_has |= 1u;
  v12 = *(v5 + 100);
  if ((v12 & 2) == 0)
  {
LABEL_24:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_reportFrequencyBase = *(v5 + 2);
  *&self->_has |= 2u;
  v12 = *(v5 + 100);
  if ((v12 & 0x10) == 0)
  {
LABEL_25:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_37:
  self->_reportTransportAllowExpensiveAccess = *(v5 + 96);
  *&self->_has |= 0x10u;
  if ((v5[25] & 0x20) != 0)
  {
LABEL_26:
    self->_reportTransportAllowPowerNapScheduling = *(v5 + 97);
    *&self->_has |= 0x20u;
  }

LABEL_27:
  if (*(v5 + 9))
  {
    [(C2MPMetric *)self setReportTransportSourceApplicationBundleIdentifier:?];
    v5 = v17;
  }

  if (*(v5 + 10))
  {
    [(C2MPMetric *)self setReportTransportSourceApplicationSecondaryIdentifier:?];
    v5 = v17;
  }

  networkEvent = self->_networkEvent;
  v14 = *(v5 + 8);
  if (networkEvent)
  {
    if (!v14)
    {
      goto LABEL_42;
    }

    [(C2MPNetworkEvent *)networkEvent mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_42;
    }

    [(C2MPMetric *)self setNetworkEvent:?];
  }

  v5 = v17;
LABEL_42:
  genericEvent = self->_genericEvent;
  v16 = *(v5 + 6);
  if (genericEvent)
  {
    if (v16)
    {
      [(C2MPGenericEvent *)genericEvent mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(C2MPMetric *)self setGenericEvent:?];
  }

  MEMORY[0x2821F96F8]();
}

@end
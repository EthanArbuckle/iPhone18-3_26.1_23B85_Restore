@interface BMNotificationEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMNotificationEvent)initWithDKEvent:(id)event;
- (BMNotificationEvent)initWithProto:(id)proto;
- (BMNotificationEvent)initWithProtoData:(id)data;
- (BMNotificationEvent)initWithUniqueID:(id)d absoluteTimestamp:(double)timestamp usageType:(unint64_t)type bundleID:(id)iD notificationID:(id)notificationID deviceID:(id)deviceID title:(id)title subtitle:(id)self0 badge:(unint64_t)self1 threadID:(id)self2 categoryID:(id)self3 sectionID:(id)self4 contactIDs:(id)self5 isGroupMessage:(BOOL)self6;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMNotificationEvent

- (BMNotificationEvent)initWithUniqueID:(id)d absoluteTimestamp:(double)timestamp usageType:(unint64_t)type bundleID:(id)iD notificationID:(id)notificationID deviceID:(id)deviceID title:(id)title subtitle:(id)self0 badge:(unint64_t)self1 threadID:(id)self2 categoryID:(id)self3 sectionID:(id)self4 contactIDs:(id)self5 isGroupMessage:(BOOL)self6
{
  dCopy = d;
  iDCopy = iD;
  notificationIDCopy = notificationID;
  deviceIDCopy = deviceID;
  titleCopy = title;
  subtitleCopy = subtitle;
  v25 = notificationIDCopy;
  threadIDCopy = threadID;
  categoryIDCopy = categoryID;
  sectionIDCopy = sectionID;
  dsCopy = ds;
  v56.receiver = self;
  v56.super_class = BMNotificationEvent;
  v30 = [(BMEventBase *)&v56 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_uniqueID, d);
    v31->_absoluteTimestamp = timestamp;
    v31->_usageType = type;
    v32 = [iDCopy copy];
    bundleID = v31->_bundleID;
    v31->_bundleID = v32;

    v34 = [v25 copy];
    notificationID = v31->_notificationID;
    v31->_notificationID = v34;

    v36 = [deviceIDCopy copy];
    deviceID = v31->_deviceID;
    v31->_deviceID = v36;

    v38 = [titleCopy copy];
    title = v31->_title;
    v31->_title = v38;

    v40 = [subtitleCopy copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v40;

    v31->_badge = badge;
    v42 = [threadIDCopy copy];
    threadID = v31->_threadID;
    v31->_threadID = v42;

    v44 = [categoryIDCopy copy];
    categoryID = v31->_categoryID;
    v31->_categoryID = v44;

    v46 = [sectionIDCopy copy];
    sectionID = v31->_sectionID;
    v31->_sectionID = v46;

    v48 = [dsCopy copy];
    contactIDs = v31->_contactIDs;
    v31->_contactIDs = v48;

    v31->_isGroupMessage = message;
  }

  return v31;
}

- (BMNotificationEvent)initWithDKEvent:(id)event
{
  eventCopy = event;
  source = [eventCopy source];
  itemID = [source itemID];
  startDate = [eventCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v6 = v5;
  value = [eventCopy value];
  stringValue = [value stringValue];
  v7 = BMNotificationEventUsageTypeFromDKIdentifierValue(stringValue);
  metadata = [eventCopy metadata];
  bundleID = [get_DKNotificationUsageMetadataKeyClass() bundleID];
  v10 = [metadata objectForKeyedSubscript:bundleID];
  metadata2 = [eventCopy metadata];
  identifier = [get_DKNotificationUsageMetadataKeyClass() identifier];
  v13 = [metadata2 objectForKeyedSubscript:identifier];
  source2 = [eventCopy source];

  deviceID = [source2 deviceID];
  LOBYTE(v18) = 0;
  v16 = [(BMNotificationEvent *)self initWithUniqueID:itemID absoluteTimestamp:v7 usageType:v10 bundleID:v13 notificationID:deviceID deviceID:0 title:v6 subtitle:0 badge:0 threadID:0 categoryID:0 sectionID:0 contactIDs:0 isGroupMessage:v18];

  return v16;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Notification event with unique ID: %@", self->_uniqueID];

  return v2;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMNotificationEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMNotificationEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BMNotificationEvent *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  uniqueID = [v5 uniqueID];
  [v5 absoluteTimestamp];
  v7 = v6;
  usageType = [v5 usageType];
  bundleID = [v5 bundleID];
  notificationID = [v5 notificationID];
  deviceID = [v5 deviceID];
  title = [v5 title];
  subtitle = [v5 subtitle];
  badge = [v5 badge];
  threadID = [v5 threadID];
  categoryID = [v5 categoryID];
  sectionID = [v5 sectionID];
  contactIDs = [v5 contactIDs];
  isGroupMessage = [v5 isGroupMessage];

  LOBYTE(v16) = isGroupMessage;
  self = [(BMNotificationEvent *)self initWithUniqueID:uniqueID absoluteTimestamp:usageType usageType:bundleID bundleID:notificationID notificationID:deviceID deviceID:title title:v7 subtitle:subtitle badge:badge threadID:threadID categoryID:categoryID sectionID:sectionID contactIDs:contactIDs isGroupMessage:v16];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMNotificationEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBNotificationEvent alloc] initWithData:dataCopy];

    self = [(BMNotificationEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setUniqueID:self->_uniqueID];
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  usageType = self->_usageType;
  if (usageType >= 0x16)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BMNotificationEvent *)usageType proto];
    }

    v6 = 0;
  }

  else
  {
    [v3 setUsageType:dword_184D27908[usageType]];
    [v3 setBundleID:self->_bundleID];
    [v3 setNotificationID:self->_notificationID];
    [v3 setDeviceID:self->_deviceID];
    [v3 setTitle:self->_title];
    [v3 setSubtitle:self->_subtitle];
    [v3 setBadge:self->_badge];
    [v3 setThreadID:self->_threadID];
    [v3 setCategoryID:self->_categoryID];
    [v3 setSectionID:self->_sectionID];
    v5 = [(NSArray *)self->_contactIDs mutableCopy];
    [v3 setContactIDs:v5];

    [v3 setIsGroupMessage:self->_isGroupMessage];
    v6 = v3;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_54;
  }

  v7 = equalCopy;
  v8 = v7;
  uniqueID = self->_uniqueID;
  v10 = uniqueID;
  if (!uniqueID)
  {
    uniqueID = [v7 uniqueID];
    if (!uniqueID)
    {
      v80 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v80 = uniqueID;
    v10 = self->_uniqueID;
  }

  uniqueID2 = [v8 uniqueID];
  if (([(NSString *)v10 isEqual:uniqueID2]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_51;
  }

  v12 = 1;
LABEL_10:
  bundleID = self->_bundleID;
  v15 = bundleID;
  if (!bundleID)
  {
    bundleID = [v8 bundleID];
    if (!bundleID)
    {
      v17 = v12;
      v77 = 0;
      v79 = 0;
      goto LABEL_17;
    }

    v77 = bundleID;
    v15 = self->_bundleID;
  }

  bundleID2 = [v8 bundleID];
  if (([(NSString *)v15 isEqual:bundleID2]& 1) == 0)
  {

    v13 = 0;
    goto LABEL_48;
  }

  v17 = v12;
  v79 = 1;
LABEL_17:
  notificationID = self->_notificationID;
  v78 = notificationID;
  if (!notificationID)
  {
    notificationID = [v8 notificationID];
    if (!notificationID)
    {
      v73 = 0;
      v75 = 0;
      goto LABEL_24;
    }

    v73 = notificationID;
    notificationID = self->_notificationID;
  }

  notificationID2 = [v8 notificationID];
  if (![(NSString *)notificationID isEqual:notificationID2])
  {
    v13 = 0;
    v12 = v17;
    goto LABEL_44;
  }

  v76 = notificationID2;
  v75 = 1;
LABEL_24:
  deviceID = self->_deviceID;
  v74 = deviceID;
  if (!deviceID)
  {
    deviceID = [v8 deviceID];
    if (!deviceID)
    {
      v71 = 0;
      v72 = 0;
      goto LABEL_31;
    }

    v71 = deviceID;
    deviceID = self->_deviceID;
  }

  deviceID2 = [v8 deviceID];
  if (([(NSString *)deviceID isEqual:deviceID2]& 1) == 0)
  {

    v13 = 0;
    v12 = v17;
    notificationID2 = v76;
    goto LABEL_42;
  }

  v70 = deviceID2;
  v72 = 1;
LABEL_31:
  v12 = v17;
  notificationID2 = v76;
  absoluteTimestamp = self->_absoluteTimestamp;
  [v8 absoluteTimestamp];
  if (absoluteTimestamp != v25 || (usageType = self->_usageType, v27 = usageType == [v8 usageType], notificationID2 = v76, !v27))
  {
    v13 = 0;
    goto LABEL_40;
  }

  v69 = v17;
  title = self->_title;
  v29 = title;
  if (!title)
  {
    title = [v8 title];
    if (!title)
    {
      v64 = 0;
      v67 = 0;
      goto LABEL_63;
    }

    v64 = title;
    v29 = self->_title;
  }

  title2 = [v8 title];
  if (![(NSString *)v29 isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    notificationID2 = v76;
    goto LABEL_115;
  }

  v67 = 1;
LABEL_63:
  subtitle = self->_subtitle;
  v66 = subtitle;
  if (!subtitle)
  {
    subtitle = [v8 subtitle];
    if (!subtitle)
    {
      v60 = 0;
      v63 = 0;
      goto LABEL_70;
    }

    v60 = subtitle;
    subtitle = self->_subtitle;
  }

  subtitle2 = [v8 subtitle];
  if (![(NSString *)subtitle isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    notificationID2 = v76;
    goto LABEL_112;
  }

  v63 = 1;
LABEL_70:
  threadID = self->_threadID;
  v62 = threadID;
  if (!threadID)
  {
    threadID = [v8 threadID];
    if (!threadID)
    {
      v56 = 0;
      v58 = 0;
      goto LABEL_77;
    }

    v56 = threadID;
    threadID = self->_threadID;
  }

  threadID2 = [v8 threadID];
  if (![(NSString *)threadID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    notificationID2 = v76;
    goto LABEL_109;
  }

  v58 = 1;
LABEL_77:
  categoryID = self->_categoryID;
  v59 = categoryID;
  if (!categoryID)
  {
    categoryID = [v8 categoryID];
    if (!categoryID)
    {
      v52 = 0;
      v55 = 0;
      goto LABEL_84;
    }

    v52 = categoryID;
    categoryID = self->_categoryID;
  }

  categoryID2 = [v8 categoryID];
  if (![(NSString *)categoryID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    notificationID2 = v76;
    goto LABEL_106;
  }

  v55 = 1;
LABEL_84:
  sectionID = self->_sectionID;
  v54 = sectionID;
  if (!sectionID)
  {
    sectionID = [v8 sectionID];
    if (!sectionID)
    {
      v49 = 0;
      v51 = 0;
      goto LABEL_91;
    }

    v49 = sectionID;
    sectionID = self->_sectionID;
  }

  sectionID2 = [v8 sectionID];
  if (![(NSString *)sectionID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    notificationID2 = v76;
    goto LABEL_103;
  }

  v51 = 1;
LABEL_91:
  contactIDs = self->_contactIDs;
  v50 = contactIDs;
  if (!contactIDs)
  {
    contactIDs = [v8 contactIDs];
    if (!contactIDs)
    {
      v48 = 0;
      v45 = 0;
      goto LABEL_98;
    }

    v48 = contactIDs;
    contactIDs = self->_contactIDs;
  }

  contactIDs2 = [v8 contactIDs];
  v43 = contactIDs;
  v44 = contactIDs2;
  if (([(NSArray *)v43 isEqual:contactIDs2]& 1) == 0)
  {
    v13 = 0;
    v12 = v69;
    goto LABEL_100;
  }

  v47 = v44;
  v45 = 1;
LABEL_98:
  v12 = v69;
  isGroupMessage = self->_isGroupMessage;
  v13 = isGroupMessage == [v8 isGroupMessage];
  if (!v45)
  {
    goto LABEL_101;
  }

  v44 = v47;
LABEL_100:

LABEL_101:
  notificationID2 = v76;
  if (v50)
  {
    if (!v51)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  if (v51)
  {
LABEL_103:
  }

LABEL_104:
  if (v54)
  {
    if (!v55)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (v55)
  {
LABEL_106:
  }

LABEL_107:
  if (v59)
  {
    if (!v58)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  if (v58)
  {
LABEL_109:
  }

LABEL_110:
  if (v62)
  {
    if (!v63)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (v63)
  {
LABEL_112:
  }

LABEL_113:
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  if (v67)
  {
LABEL_115:
  }

LABEL_116:
  if (!title)
  {

LABEL_40:
    if ((v72 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v72)
  {
LABEL_41:
  }

LABEL_42:
  if (!v74)
  {

    if ((v75 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v75)
  {
LABEL_44:
  }

LABEL_45:
  if (!v78)
  {

    if ((v79 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v79)
  {
LABEL_47:
  }

LABEL_48:
  if (!bundleID)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v12)
  {
LABEL_50:
  }

LABEL_51:
  if (!uniqueID)
  {
  }

LABEL_54:
  return v13;
}

@end
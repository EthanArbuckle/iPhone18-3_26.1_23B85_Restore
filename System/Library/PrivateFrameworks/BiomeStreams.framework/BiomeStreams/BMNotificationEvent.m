@interface BMNotificationEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMNotificationEvent)initWithDKEvent:(id)a3;
- (BMNotificationEvent)initWithProto:(id)a3;
- (BMNotificationEvent)initWithProtoData:(id)a3;
- (BMNotificationEvent)initWithUniqueID:(id)a3 absoluteTimestamp:(double)a4 usageType:(unint64_t)a5 bundleID:(id)a6 notificationID:(id)a7 deviceID:(id)a8 title:(id)a9 subtitle:(id)a10 badge:(unint64_t)a11 threadID:(id)a12 categoryID:(id)a13 sectionID:(id)a14 contactIDs:(id)a15 isGroupMessage:(BOOL)a16;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMNotificationEvent

- (BMNotificationEvent)initWithUniqueID:(id)a3 absoluteTimestamp:(double)a4 usageType:(unint64_t)a5 bundleID:(id)a6 notificationID:(id)a7 deviceID:(id)a8 title:(id)a9 subtitle:(id)a10 badge:(unint64_t)a11 threadID:(id)a12 categoryID:(id)a13 sectionID:(id)a14 contactIDs:(id)a15 isGroupMessage:(BOOL)a16
{
  v54 = a3;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v55 = a9;
  v24 = a10;
  v25 = v22;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v29 = a15;
  v56.receiver = self;
  v56.super_class = BMNotificationEvent;
  v30 = [(BMEventBase *)&v56 init];
  v31 = v30;
  if (v30)
  {
    objc_storeStrong(&v30->_uniqueID, a3);
    v31->_absoluteTimestamp = a4;
    v31->_usageType = a5;
    v32 = [v21 copy];
    bundleID = v31->_bundleID;
    v31->_bundleID = v32;

    v34 = [v25 copy];
    notificationID = v31->_notificationID;
    v31->_notificationID = v34;

    v36 = [v23 copy];
    deviceID = v31->_deviceID;
    v31->_deviceID = v36;

    v38 = [v55 copy];
    title = v31->_title;
    v31->_title = v38;

    v40 = [v24 copy];
    subtitle = v31->_subtitle;
    v31->_subtitle = v40;

    v31->_badge = a11;
    v42 = [v26 copy];
    threadID = v31->_threadID;
    v31->_threadID = v42;

    v44 = [v27 copy];
    categoryID = v31->_categoryID;
    v31->_categoryID = v44;

    v46 = [v28 copy];
    sectionID = v31->_sectionID;
    v31->_sectionID = v46;

    v48 = [v29 copy];
    contactIDs = v31->_contactIDs;
    v31->_contactIDs = v48;

    v31->_isGroupMessage = a16;
  }

  return v31;
}

- (BMNotificationEvent)initWithDKEvent:(id)a3
{
  v4 = a3;
  v23 = [v4 source];
  v19 = [v23 itemID];
  v22 = [v4 startDate];
  [v22 timeIntervalSinceReferenceDate];
  v6 = v5;
  v21 = [v4 value];
  v20 = [v21 stringValue];
  v7 = BMNotificationEventUsageTypeFromDKIdentifierValue(v20);
  v8 = [v4 metadata];
  v9 = [get_DKNotificationUsageMetadataKeyClass() bundleID];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v4 metadata];
  v12 = [get_DKNotificationUsageMetadataKeyClass() identifier];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v4 source];

  v15 = [v14 deviceID];
  LOBYTE(v18) = 0;
  v16 = [(BMNotificationEvent *)self initWithUniqueID:v19 absoluteTimestamp:v7 usageType:v10 bundleID:v13 notificationID:v15 deviceID:0 title:v6 subtitle:0 badge:0 threadID:0 categoryID:0 sectionID:0 contactIDs:0 isGroupMessage:v18];

  return v16;
}

- (NSString)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Notification event with unique ID: %@", self->_uniqueID];

  return v2;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMNotificationEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMNotificationEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v13 = 0;
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

  v5 = v4;
  v22 = [v5 uniqueID];
  [v5 absoluteTimestamp];
  v7 = v6;
  v24 = [v5 usageType];
  v23 = [v5 bundleID];
  v21 = [v5 notificationID];
  v20 = [v5 deviceID];
  v19 = [v5 title];
  v18 = [v5 subtitle];
  v8 = [v5 badge];
  v17 = [v5 threadID];
  v9 = [v5 categoryID];
  v10 = [v5 sectionID];
  v11 = [v5 contactIDs];
  v12 = [v5 isGroupMessage];

  LOBYTE(v16) = v12;
  self = [(BMNotificationEvent *)self initWithUniqueID:v22 absoluteTimestamp:v24 usageType:v23 bundleID:v21 notificationID:v20 deviceID:v19 title:v7 subtitle:v18 badge:v8 threadID:v17 categoryID:v9 sectionID:v10 contactIDs:v11 isGroupMessage:v16];

  v13 = self;
LABEL_8:

  return v13;
}

- (BMNotificationEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBNotificationEvent alloc] initWithData:v4];

    self = [(BMNotificationEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_54;
  }

  v7 = v6;
  v8 = v7;
  uniqueID = self->_uniqueID;
  v10 = uniqueID;
  if (!uniqueID)
  {
    v11 = [v7 uniqueID];
    if (!v11)
    {
      v80 = 0;
      v12 = 0;
      goto LABEL_10;
    }

    v80 = v11;
    v10 = self->_uniqueID;
  }

  v3 = [v8 uniqueID];
  if (([(NSString *)v10 isEqual:v3]& 1) == 0)
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
    v16 = [v8 bundleID];
    if (!v16)
    {
      v17 = v12;
      v77 = 0;
      v79 = 0;
      goto LABEL_17;
    }

    v77 = v16;
    v15 = self->_bundleID;
  }

  v4 = [v8 bundleID];
  if (([(NSString *)v15 isEqual:v4]& 1) == 0)
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
    v19 = [v8 notificationID];
    if (!v19)
    {
      v73 = 0;
      v75 = 0;
      goto LABEL_24;
    }

    v73 = v19;
    notificationID = self->_notificationID;
  }

  v20 = [v8 notificationID];
  if (![(NSString *)notificationID isEqual:v20])
  {
    v13 = 0;
    v12 = v17;
    goto LABEL_44;
  }

  v76 = v20;
  v75 = 1;
LABEL_24:
  deviceID = self->_deviceID;
  v74 = deviceID;
  if (!deviceID)
  {
    v22 = [v8 deviceID];
    if (!v22)
    {
      v71 = 0;
      v72 = 0;
      goto LABEL_31;
    }

    v71 = v22;
    deviceID = self->_deviceID;
  }

  v23 = [v8 deviceID];
  if (([(NSString *)deviceID isEqual:v23]& 1) == 0)
  {

    v13 = 0;
    v12 = v17;
    v20 = v76;
    goto LABEL_42;
  }

  v70 = v23;
  v72 = 1;
LABEL_31:
  v12 = v17;
  v20 = v76;
  absoluteTimestamp = self->_absoluteTimestamp;
  [v8 absoluteTimestamp];
  if (absoluteTimestamp != v25 || (usageType = self->_usageType, v27 = usageType == [v8 usageType], v20 = v76, !v27))
  {
    v13 = 0;
    goto LABEL_40;
  }

  v69 = v17;
  title = self->_title;
  v29 = title;
  if (!title)
  {
    v30 = [v8 title];
    if (!v30)
    {
      v64 = 0;
      v67 = 0;
      goto LABEL_63;
    }

    v64 = v30;
    v29 = self->_title;
  }

  v68 = [v8 title];
  if (![(NSString *)v29 isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    v20 = v76;
    goto LABEL_115;
  }

  v67 = 1;
LABEL_63:
  subtitle = self->_subtitle;
  v66 = subtitle;
  if (!subtitle)
  {
    v33 = [v8 subtitle];
    if (!v33)
    {
      v60 = 0;
      v63 = 0;
      goto LABEL_70;
    }

    v60 = v33;
    subtitle = self->_subtitle;
  }

  v65 = [v8 subtitle];
  if (![(NSString *)subtitle isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    v20 = v76;
    goto LABEL_112;
  }

  v63 = 1;
LABEL_70:
  threadID = self->_threadID;
  v62 = threadID;
  if (!threadID)
  {
    v35 = [v8 threadID];
    if (!v35)
    {
      v56 = 0;
      v58 = 0;
      goto LABEL_77;
    }

    v56 = v35;
    threadID = self->_threadID;
  }

  v61 = [v8 threadID];
  if (![(NSString *)threadID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    v20 = v76;
    goto LABEL_109;
  }

  v58 = 1;
LABEL_77:
  categoryID = self->_categoryID;
  v59 = categoryID;
  if (!categoryID)
  {
    v37 = [v8 categoryID];
    if (!v37)
    {
      v52 = 0;
      v55 = 0;
      goto LABEL_84;
    }

    v52 = v37;
    categoryID = self->_categoryID;
  }

  v57 = [v8 categoryID];
  if (![(NSString *)categoryID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    v20 = v76;
    goto LABEL_106;
  }

  v55 = 1;
LABEL_84:
  sectionID = self->_sectionID;
  v54 = sectionID;
  if (!sectionID)
  {
    v39 = [v8 sectionID];
    if (!v39)
    {
      v49 = 0;
      v51 = 0;
      goto LABEL_91;
    }

    v49 = v39;
    sectionID = self->_sectionID;
  }

  v53 = [v8 sectionID];
  if (![(NSString *)sectionID isEqual:?])
  {
    v13 = 0;
    v12 = v69;
    v20 = v76;
    goto LABEL_103;
  }

  v51 = 1;
LABEL_91:
  contactIDs = self->_contactIDs;
  v50 = contactIDs;
  if (!contactIDs)
  {
    v41 = [v8 contactIDs];
    if (!v41)
    {
      v48 = 0;
      v45 = 0;
      goto LABEL_98;
    }

    v48 = v41;
    contactIDs = self->_contactIDs;
  }

  v42 = [v8 contactIDs];
  v43 = contactIDs;
  v44 = v42;
  if (([(NSArray *)v43 isEqual:v42]& 1) == 0)
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
  v20 = v76;
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
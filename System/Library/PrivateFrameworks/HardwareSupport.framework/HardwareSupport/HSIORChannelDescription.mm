@interface HSIORChannelDescription
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChannelDescription:(id)description;
- (HSIORChannelDescription)initWithIOReportChannelRef:(__CFDictionary *)ref;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation HSIORChannelDescription

- (HSIORChannelDescription)initWithIOReportChannelRef:(__CFDictionary *)ref
{
  v27.receiver = self;
  v27.super_class = HSIORChannelDescription;
  v3 = [(HSIORChannelDescription *)&v27 init];
  if (v3)
  {
    v4 = IOReportChannelGetChannelName();
    name = v3->_name;
    v3->_name = v4;

    v6 = IOReportChannelGetGroup();
    groupName = v3->_groupName;
    v3->_groupName = v6;

    v8 = IOReportChannelGetSubGroup();
    subGroupName = v3->_subGroupName;
    v3->_subGroupName = v8;

    v10 = IOReportChannelGetDriverName();
    driverName = v3->_driverName;
    v3->_driverName = v10;

    ChannelID = IOReportChannelGetChannelID();
    if (ChannelID == 0x8000000000000000)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:ChannelID];
    }

    identifier = v3->_identifier;
    v3->_identifier = v13;

    v15 = IOReportChannelGetChannelID();
    if (v15 == 0x8000000000000000)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
    }

    driverIdentifier = v3->_driverIdentifier;
    v3->_driverIdentifier = v16;

    v18 = IOReportChannelCopyDescription();
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    summary = v3->_summary;
    v3->_summary = v20;

    Format = IOReportChannelGetFormat();
    if (Format == 1)
    {
      v24 = &unk_286331AC8;
    }

    else
    {
      if (!Format)
      {
        reportingProtocol = v3->_reportingProtocol;
        v3->_reportingProtocol = 0;
LABEL_14:

        return v3;
      }

      v24 = &unk_286331A58;
    }

    v25 = v24;
    reportingProtocol = v3->_reportingProtocol;
    v3->_reportingProtocol = v25;
    goto LABEL_14;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(HSIORChannelDescription *)self name];
  [v4 setName:name];

  groupName = [(HSIORChannelDescription *)self groupName];
  [v4 setGroupName:groupName];

  subGroupName = [(HSIORChannelDescription *)self subGroupName];
  [v4 setSubGroupName:subGroupName];

  driverName = [(HSIORChannelDescription *)self driverName];
  [v4 setDriverName:driverName];

  identifier = [(HSIORChannelDescription *)self identifier];
  [v4 setIdentifier:identifier];

  driverIdentifier = [(HSIORChannelDescription *)self driverIdentifier];
  [v4 setDriverIdentifier:driverIdentifier];

  summary = [(HSIORChannelDescription *)self summary];
  [v4 setSummary:summary];

  reportingProtocol = [(HSIORChannelDescription *)self reportingProtocol];
  [v4 setReportingProtocol:reportingProtocol];

  return v4;
}

- (unint64_t)hash
{
  name = [(HSIORChannelDescription *)self name];
  v3 = [name hash];
  groupName = [(HSIORChannelDescription *)self groupName];
  v5 = [groupName hash] ^ v3;
  subGroupName = [(HSIORChannelDescription *)self subGroupName];
  v7 = [subGroupName hash];
  driverName = [(HSIORChannelDescription *)self driverName];
  v9 = v5 ^ v7 ^ [driverName hash];
  identifier = [(HSIORChannelDescription *)self identifier];
  v11 = [identifier hash];
  driverIdentifier = [(HSIORChannelDescription *)self driverIdentifier];
  v13 = v11 ^ [driverIdentifier hash];
  summary = [(HSIORChannelDescription *)self summary];
  v15 = v9 ^ v13 ^ [summary hash];
  reportingProtocol = [(HSIORChannelDescription *)self reportingProtocol];
  v17 = NSStringFromProtocol(reportingProtocol);
  v18 = [v17 hash];

  return v15 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIORChannelDescription *)self isEqualToChannelDescription:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToChannelDescription:(id)description
{
  descriptionCopy = description;
  name = [descriptionCopy name];
  if (!name)
  {
    name2 = [(HSIORChannelDescription *)self name];
    if (!name2)
    {
      v43 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  name3 = [descriptionCopy name];
  name4 = [(HSIORChannelDescription *)self name];
  v43 = [name3 isEqual:name4];

  if (!name)
  {
    goto LABEL_6;
  }

LABEL_7:

  groupName = [descriptionCopy groupName];
  if (!groupName)
  {
    name3 = [(HSIORChannelDescription *)self groupName];
    if (!name3)
    {
      v42 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  name4 = [descriptionCopy groupName];
  groupName2 = [(HSIORChannelDescription *)self groupName];
  v42 = [name4 isEqual:groupName2];

  if (!groupName)
  {
    goto LABEL_12;
  }

LABEL_13:

  subGroupName = [descriptionCopy subGroupName];
  if (!subGroupName)
  {
    name4 = [(HSIORChannelDescription *)self subGroupName];
    if (!name4)
    {
      v41 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  groupName2 = [descriptionCopy subGroupName];
  subGroupName2 = [(HSIORChannelDescription *)self subGroupName];
  v41 = [groupName2 isEqual:subGroupName2];

  if (!subGroupName)
  {
    goto LABEL_18;
  }

LABEL_19:

  driverName = [descriptionCopy driverName];
  if (!driverName)
  {
    groupName2 = [(HSIORChannelDescription *)self driverName];
    if (!groupName2)
    {
      v16 = 1;
LABEL_24:

      goto LABEL_25;
    }
  }

  subGroupName2 = [descriptionCopy driverName];
  driverName2 = [(HSIORChannelDescription *)self driverName];
  v16 = [subGroupName2 isEqual:driverName2];

  if (!driverName)
  {
    goto LABEL_24;
  }

LABEL_25:

  identifier = [descriptionCopy identifier];
  if (!identifier)
  {
    subGroupName2 = [(HSIORChannelDescription *)self identifier];
    if (!subGroupName2)
    {
      v18 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  driverName2 = [descriptionCopy identifier];
  identifier2 = [(HSIORChannelDescription *)self identifier];
  v18 = [driverName2 isEqual:identifier2];

  if (!identifier)
  {
    goto LABEL_30;
  }

LABEL_31:

  driverIdentifier = [descriptionCopy driverIdentifier];
  if (!driverIdentifier)
  {
    driverName2 = [(HSIORChannelDescription *)self driverIdentifier];
    if (!driverName2)
    {
      v21 = 1;
LABEL_36:

      goto LABEL_37;
    }
  }

  identifier2 = [descriptionCopy driverIdentifier];
  driverIdentifier2 = [(HSIORChannelDescription *)self driverIdentifier];
  v21 = [identifier2 isEqual:driverIdentifier2];

  if (!driverIdentifier)
  {
    goto LABEL_36;
  }

LABEL_37:

  summary = [descriptionCopy summary];
  if (!summary)
  {
    identifier2 = [(HSIORChannelDescription *)self summary];
    if (!identifier2)
    {
      v25 = 1;
LABEL_42:

      goto LABEL_43;
    }
  }

  summary2 = [descriptionCopy summary];
  summary3 = [(HSIORChannelDescription *)self summary];
  v25 = [summary2 isEqual:summary3];

  if (!summary)
  {
    goto LABEL_42;
  }

LABEL_43:

  reportingProtocol = [descriptionCopy reportingProtocol];
  if (!reportingProtocol)
  {
    reportingProtocol2 = [(HSIORChannelDescription *)self reportingProtocol];
    if (!reportingProtocol2)
    {
      v39 = 0;
      v36 = 1;
LABEL_48:

      goto LABEL_49;
    }
  }

  reportingProtocol3 = [descriptionCopy reportingProtocol];
  v28 = NSStringFromProtocol(reportingProtocol3);
  [(HSIORChannelDescription *)self reportingProtocol];
  v40 = reportingProtocol;
  v29 = v21;
  v31 = v30 = v16;
  NSStringFromProtocol(v31);
  v32 = descriptionCopy;
  v33 = v25;
  v35 = v34 = v18;
  v36 = [v28 isEqualToString:v35];

  v18 = v34;
  v25 = v33;
  descriptionCopy = v32;

  v16 = v30;
  v21 = v29;
  reportingProtocol = v40;

  if (!v40)
  {
    goto LABEL_48;
  }

LABEL_49:

  return v43 & v42 & v41 & v16 & v18 & v21 & v25 & v36 & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HSIORChannelDescription;
  v4 = [(HSIORChannelDescription *)&v8 description];
  summary = [(HSIORChannelDescription *)self summary];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, summary];

  return v6;
}

@end
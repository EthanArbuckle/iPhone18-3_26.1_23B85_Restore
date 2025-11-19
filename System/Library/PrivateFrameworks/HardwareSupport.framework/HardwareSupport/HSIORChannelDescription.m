@interface HSIORChannelDescription
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToChannelDescription:(id)a3;
- (HSIORChannelDescription)initWithIOReportChannelRef:(__CFDictionary *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HSIORChannelDescription

- (HSIORChannelDescription)initWithIOReportChannelRef:(__CFDictionary *)a3
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
    v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v20 = [v18 stringByTrimmingCharactersInSet:v19];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HSIORChannelDescription *)self name];
  [v4 setName:v5];

  v6 = [(HSIORChannelDescription *)self groupName];
  [v4 setGroupName:v6];

  v7 = [(HSIORChannelDescription *)self subGroupName];
  [v4 setSubGroupName:v7];

  v8 = [(HSIORChannelDescription *)self driverName];
  [v4 setDriverName:v8];

  v9 = [(HSIORChannelDescription *)self identifier];
  [v4 setIdentifier:v9];

  v10 = [(HSIORChannelDescription *)self driverIdentifier];
  [v4 setDriverIdentifier:v10];

  v11 = [(HSIORChannelDescription *)self summary];
  [v4 setSummary:v11];

  v12 = [(HSIORChannelDescription *)self reportingProtocol];
  [v4 setReportingProtocol:v12];

  return v4;
}

- (unint64_t)hash
{
  v20 = [(HSIORChannelDescription *)self name];
  v3 = [v20 hash];
  v4 = [(HSIORChannelDescription *)self groupName];
  v5 = [v4 hash] ^ v3;
  v6 = [(HSIORChannelDescription *)self subGroupName];
  v7 = [v6 hash];
  v8 = [(HSIORChannelDescription *)self driverName];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(HSIORChannelDescription *)self identifier];
  v11 = [v10 hash];
  v12 = [(HSIORChannelDescription *)self driverIdentifier];
  v13 = v11 ^ [v12 hash];
  v14 = [(HSIORChannelDescription *)self summary];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(HSIORChannelDescription *)self reportingProtocol];
  v17 = NSStringFromProtocol(v16);
  v18 = [v17 hash];

  return v15 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSIORChannelDescription *)self isEqualToChannelDescription:v4];
  }

  return v5;
}

- (BOOL)isEqualToChannelDescription:(id)a3
{
  v11 = a3;
  v12 = [v11 name];
  if (!v12)
  {
    v3 = [(HSIORChannelDescription *)self name];
    if (!v3)
    {
      v43 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [v11 name];
  v5 = [(HSIORChannelDescription *)self name];
  v43 = [v4 isEqual:v5];

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  v13 = [v11 groupName];
  if (!v13)
  {
    v4 = [(HSIORChannelDescription *)self groupName];
    if (!v4)
    {
      v42 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v5 = [v11 groupName];
  v6 = [(HSIORChannelDescription *)self groupName];
  v42 = [v5 isEqual:v6];

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_13:

  v14 = [v11 subGroupName];
  if (!v14)
  {
    v5 = [(HSIORChannelDescription *)self subGroupName];
    if (!v5)
    {
      v41 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v6 = [v11 subGroupName];
  v7 = [(HSIORChannelDescription *)self subGroupName];
  v41 = [v6 isEqual:v7];

  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_19:

  v15 = [v11 driverName];
  if (!v15)
  {
    v6 = [(HSIORChannelDescription *)self driverName];
    if (!v6)
    {
      v16 = 1;
LABEL_24:

      goto LABEL_25;
    }
  }

  v7 = [v11 driverName];
  v8 = [(HSIORChannelDescription *)self driverName];
  v16 = [v7 isEqual:v8];

  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_25:

  v17 = [v11 identifier];
  if (!v17)
  {
    v7 = [(HSIORChannelDescription *)self identifier];
    if (!v7)
    {
      v18 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  v8 = [v11 identifier];
  v9 = [(HSIORChannelDescription *)self identifier];
  v18 = [v8 isEqual:v9];

  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_31:

  v19 = [v11 driverIdentifier];
  if (!v19)
  {
    v8 = [(HSIORChannelDescription *)self driverIdentifier];
    if (!v8)
    {
      v21 = 1;
LABEL_36:

      goto LABEL_37;
    }
  }

  v9 = [v11 driverIdentifier];
  v20 = [(HSIORChannelDescription *)self driverIdentifier];
  v21 = [v9 isEqual:v20];

  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_37:

  v22 = [v11 summary];
  if (!v22)
  {
    v9 = [(HSIORChannelDescription *)self summary];
    if (!v9)
    {
      v25 = 1;
LABEL_42:

      goto LABEL_43;
    }
  }

  v23 = [v11 summary];
  v24 = [(HSIORChannelDescription *)self summary];
  v25 = [v23 isEqual:v24];

  if (!v22)
  {
    goto LABEL_42;
  }

LABEL_43:

  v26 = [v11 reportingProtocol];
  if (!v26)
  {
    v38 = [(HSIORChannelDescription *)self reportingProtocol];
    if (!v38)
    {
      v39 = 0;
      v36 = 1;
LABEL_48:

      goto LABEL_49;
    }
  }

  v27 = [v11 reportingProtocol];
  v28 = NSStringFromProtocol(v27);
  [(HSIORChannelDescription *)self reportingProtocol];
  v40 = v26;
  v29 = v21;
  v31 = v30 = v16;
  NSStringFromProtocol(v31);
  v32 = v11;
  v33 = v25;
  v35 = v34 = v18;
  v36 = [v28 isEqualToString:v35];

  v18 = v34;
  v25 = v33;
  v11 = v32;

  v16 = v30;
  v21 = v29;
  v26 = v40;

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
  v5 = [(HSIORChannelDescription *)self summary];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end
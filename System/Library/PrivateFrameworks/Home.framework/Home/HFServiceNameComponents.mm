@interface HFServiceNameComponents
- (BOOL)isEqual:(id)equal;
- (HFServiceNameComponents)initWithRawServiceName:(id)name rawRoomName:(id)roomName allowRepeat:(BOOL)repeat;
- (NSString)composedString;
- (unint64_t)hash;
@end

@implementation HFServiceNameComponents

- (HFServiceNameComponents)initWithRawServiceName:(id)name rawRoomName:(id)roomName allowRepeat:(BOOL)repeat
{
  nameCopy = name;
  roomNameCopy = roomName;
  v44.receiver = self;
  v44.super_class = HFServiceNameComponents;
  v10 = [(HFServiceNameComponents *)&v44 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    [(HFServiceNameComponents *)v10 setRawServiceName:v11];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [nameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    [(HFServiceNameComponents *)v10 setServiceName:v13];

    v14 = [roomNameCopy copy];
    [(HFServiceNameComponents *)v10 setRawRoomName:v14];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [roomNameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
    [(HFServiceNameComponents *)v10 setRoomName:v16];

    v10->_allowRepeat = repeat;
    serviceName = [(HFServiceNameComponents *)v10 serviceName];
    if (![serviceName length])
    {
LABEL_18:

      goto LABEL_19;
    }

    roomName = [(HFServiceNameComponents *)v10 roomName];
    if (![roomName length])
    {
LABEL_17:

      goto LABEL_18;
    }

    serviceName2 = [(HFServiceNameComponents *)v10 serviceName];
    roomName2 = [(HFServiceNameComponents *)v10 roomName];
    v21 = [serviceName2 isEqualToString:roomName2];

    if ((v21 & 1) == 0)
    {
      serviceName3 = [(HFServiceNameComponents *)v10 serviceName];
      roomName3 = [(HFServiceNameComponents *)v10 roomName];
      v24 = [serviceName3 rangeOfString:roomName3 options:129];
      v26 = v25;

      if (v26)
      {
        v27 = v24 + v26;
        serviceName4 = [(HFServiceNameComponents *)v10 serviceName];
        v29 = [serviceName4 length];

        if (!v24)
        {
          serviceName5 = [(HFServiceNameComponents *)v10 serviceName];
          v31 = [serviceName5 substringFromIndex:v26];
          whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v42 = [v31 rangeOfCharacterFromSet:whitespaceCharacterSet3 options:0];

          if (v27 != v29)
          {
            [(HFServiceNameComponents *)v10 setRoomNameAtEndSeparatedByWhitespace:0];
            if (!v42)
            {
LABEL_16:
              serviceName6 = [(HFServiceNameComponents *)v10 serviceName];
              v39 = [serviceName6 stringByReplacingCharactersInRange:v24 withString:{v26, &stru_2824B1A78}];
              [(HFServiceNameComponents *)v10 setServiceName:v39];

              serviceName = [(HFServiceNameComponents *)v10 serviceName];
              roomName = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v40 = [serviceName stringByTrimmingCharactersInSet:roomName];
              [(HFServiceNameComponents *)v10 setServiceName:v40];

              goto LABEL_17;
            }

LABEL_15:
            if (![(HFServiceNameComponents *)v10 roomNameAtEndSeparatedByWhitespace])
            {
              [(HFServiceNameComponents *)v10 setRoomName:0];
              goto LABEL_19;
            }

            goto LABEL_16;
          }

          v30 = v42 == 0;
LABEL_11:
          serviceName7 = [(HFServiceNameComponents *)v10 serviceName];
          v34 = [serviceName7 substringToIndex:v24];
          whitespaceCharacterSet4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v36 = [v34 rangeOfCharacterFromSet:whitespaceCharacterSet4 options:4];
          [(HFServiceNameComponents *)v10 setRoomNameAtEndSeparatedByWhitespace:v36 + v37 == v24];

          if (v30)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v27 == v29)
        {
          v30 = 0;
          goto LABEL_11;
        }

        [(HFServiceNameComponents *)v10 setRoomNameAtEndSeparatedByWhitespace:0];
      }
    }
  }

LABEL_19:

  return v10;
}

- (NSString)composedString
{
  serviceName = [(HFServiceNameComponents *)self serviceName];
  serviceName2 = [(HFServiceNameComponents *)self serviceName];
  if (![serviceName2 length])
  {

    goto LABEL_7;
  }

  roomName = [(HFServiceNameComponents *)self roomName];
  v6 = [roomName length];

  if (!v6)
  {
LABEL_7:
    roomName2 = [(HFServiceNameComponents *)self roomName];
    v12 = [roomName2 length];

    if (!v12)
    {
      goto LABEL_16;
    }

    roomName3 = [(HFServiceNameComponents *)self roomName];
    goto LABEL_9;
  }

  serviceName3 = [(HFServiceNameComponents *)self serviceName];
  roomName4 = [(HFServiceNameComponents *)self roomName];
  if (![serviceName3 isEqualToString:roomName4])
  {

    goto LABEL_11;
  }

  allowRepeat = [(HFServiceNameComponents *)self allowRepeat];

  if (allowRepeat)
  {
LABEL_11:
    if ([(HFServiceNameComponents *)self roomNameAtEndSeparatedByWhitespace])
    {
      serviceName4 = [(HFServiceNameComponents *)self serviceName];
      [(HFServiceNameComponents *)self roomName];
    }

    else
    {
      serviceName4 = [(HFServiceNameComponents *)self roomName];
      [(HFServiceNameComponents *)self serviceName];
    }
    v22 = ;
    v13 = HFLocalizedStringWithFormat(@"HFServiceNameFormat", @"%1$@ %2$@", v15, v16, v17, v18, v19, v20, serviceName4);

    serviceName = serviceName4;
    goto LABEL_15;
  }

  roomName3 = [(HFServiceNameComponents *)self serviceName];
LABEL_9:
  v13 = roomName3;
LABEL_15:

  serviceName = v13;
LABEL_16:

  return serviceName;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = equalCopy;
      serviceName = [(HFServiceNameComponents *)self serviceName];
      serviceName2 = [(HFServiceNameComponents *)v8 serviceName];
      if (serviceName != serviceName2)
      {
        serviceName3 = [(HFServiceNameComponents *)self serviceName];
        serviceName4 = [(HFServiceNameComponents *)v8 serviceName];
        if (![serviceName3 isEqual:serviceName4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_15;
        }

        v16 = serviceName3;
      }

      roomName = [(HFServiceNameComponents *)self roomName];
      roomName2 = [(HFServiceNameComponents *)v8 roomName];
      if (roomName == roomName2 || (-[HFServiceNameComponents roomName](self, "roomName"), v5 = objc_claimAutoreleasedReturnValue(), -[HFServiceNameComponents roomName](v8, "roomName"), serviceName3 = objc_claimAutoreleasedReturnValue(), [v5 isEqual:serviceName3]))
      {
        allowRepeat = [(HFServiceNameComponents *)self allowRepeat];
        v11 = allowRepeat ^ [(HFServiceNameComponents *)v8 allowRepeat]^ 1;
        if (roomName == roomName2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

LABEL_14:
      serviceName3 = v16;
      if (serviceName == serviceName2)
      {
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:

      goto LABEL_16;
    }

    LOBYTE(v11) = 0;
  }

LABEL_17:

  return v11;
}

- (unint64_t)hash
{
  serviceName = [(HFServiceNameComponents *)self serviceName];
  v3 = [serviceName hash];

  return v3;
}

@end
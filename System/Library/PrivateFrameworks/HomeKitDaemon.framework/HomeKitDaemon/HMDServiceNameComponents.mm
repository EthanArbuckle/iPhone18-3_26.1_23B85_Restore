@interface HMDServiceNameComponents
+ (id)componentsWithRawServiceName:(id)name rawRoomName:(id)roomName localizedFormat:(id)format;
- (HMDServiceNameComponents)initWithRawServiceName:(id)name rawRoomName:(id)roomName localizedFormat:(id)format;
- (id)composedName;
@end

@implementation HMDServiceNameComponents

- (id)composedName
{
  serviceName = [(HMDServiceNameComponents *)self serviceName];
  serviceName2 = [(HMDServiceNameComponents *)self serviceName];
  if ([serviceName2 length])
  {
    roomName = [(HMDServiceNameComponents *)self roomName];
    v6 = [roomName length];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      format = [(HMDServiceNameComponents *)self format];
      roomName2 = [(HMDServiceNameComponents *)self roomName];
      serviceName3 = [(HMDServiceNameComponents *)self serviceName];
      roomName4 = [v7 stringWithValidatedFormat:format validFormatSpecifiers:@"%@ %@" error:0, roomName2, serviceName3];

      serviceName = format;
      goto LABEL_7;
    }
  }

  else
  {
  }

  roomName3 = [(HMDServiceNameComponents *)self roomName];
  v13 = [roomName3 length];

  if (!v13)
  {
    goto LABEL_8;
  }

  roomName4 = [(HMDServiceNameComponents *)self roomName];
LABEL_7:

  serviceName = roomName4;
LABEL_8:

  return serviceName;
}

- (HMDServiceNameComponents)initWithRawServiceName:(id)name rawRoomName:(id)roomName localizedFormat:(id)format
{
  nameCopy = name;
  roomNameCopy = roomName;
  formatCopy = format;
  v38.receiver = self;
  v38.super_class = HMDServiceNameComponents;
  v11 = [(HMDServiceNameComponents *)&v38 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    [(HMDServiceNameComponents *)v11 setRawServiceName:v12];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [nameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    [(HMDServiceNameComponents *)v11 setServiceName:v14];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [roomNameCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
    [(HMDServiceNameComponents *)v11 setRoomName:v16];

    if (formatCopy)
    {
      v17 = [formatCopy copy];
      [(HMDServiceNameComponents *)v11 setFormat:v17];
    }

    else
    {
      [(HMDServiceNameComponents *)v11 setFormat:@"%@ %@"];
    }

    serviceName = [(HMDServiceNameComponents *)v11 serviceName];
    if (![serviceName length])
    {
      goto LABEL_15;
    }

    roomName = [(HMDServiceNameComponents *)v11 roomName];
    v20 = [roomName length];

    if (v20)
    {
      serviceName2 = [(HMDServiceNameComponents *)v11 serviceName];
      roomName2 = [(HMDServiceNameComponents *)v11 roomName];
      v23 = [serviceName2 rangeOfString:roomName2 options:129];
      v25 = v24;

      if (v25)
      {
        if (v23)
        {
          v26 = v23 + v25;
          serviceName3 = [(HMDServiceNameComponents *)v11 serviceName];
          v28 = [serviceName3 length];

          if (v23 + v25 != v28)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v26 = v25;
        }

        serviceName4 = [(HMDServiceNameComponents *)v11 serviceName];
        v30 = [serviceName4 substringFromIndex:v26];
        whitespaceCharacterSet3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v32 = [v30 rangeOfCharacterFromSet:whitespaceCharacterSet3 options:0];

        if (v32)
        {
          [(HMDServiceNameComponents *)v11 setRoomName:0];
          goto LABEL_16;
        }

        serviceName5 = [(HMDServiceNameComponents *)v11 serviceName];
        v34 = [serviceName5 stringByReplacingCharactersInRange:v23 withString:{v25, &stru_283CF9D50}];
        [(HMDServiceNameComponents *)v11 setServiceName:v34];

        serviceName = [(HMDServiceNameComponents *)v11 serviceName];
        whitespaceCharacterSet4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v36 = [serviceName stringByTrimmingCharactersInSet:whitespaceCharacterSet4];
        [(HMDServiceNameComponents *)v11 setServiceName:v36];

LABEL_15:
      }
    }
  }

LABEL_16:

  return v11;
}

+ (id)componentsWithRawServiceName:(id)name rawRoomName:(id)roomName localizedFormat:(id)format
{
  formatCopy = format;
  roomNameCopy = roomName;
  nameCopy = name;
  v10 = [[HMDServiceNameComponents alloc] initWithRawServiceName:nameCopy rawRoomName:roomNameCopy localizedFormat:formatCopy];

  return v10;
}

@end
@interface HMDServiceNameComponents
+ (id)componentsWithRawServiceName:(id)a3 rawRoomName:(id)a4 localizedFormat:(id)a5;
- (HMDServiceNameComponents)initWithRawServiceName:(id)a3 rawRoomName:(id)a4 localizedFormat:(id)a5;
- (id)composedName;
@end

@implementation HMDServiceNameComponents

- (id)composedName
{
  v3 = [(HMDServiceNameComponents *)self serviceName];
  v4 = [(HMDServiceNameComponents *)self serviceName];
  if ([v4 length])
  {
    v5 = [(HMDServiceNameComponents *)self roomName];
    v6 = [v5 length];

    if (v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(HMDServiceNameComponents *)self format];
      v9 = [(HMDServiceNameComponents *)self roomName];
      v10 = [(HMDServiceNameComponents *)self serviceName];
      v11 = [v7 stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@ %@" error:0, v9, v10];

      v3 = v8;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [(HMDServiceNameComponents *)self roomName];
  v13 = [v12 length];

  if (!v13)
  {
    goto LABEL_8;
  }

  v11 = [(HMDServiceNameComponents *)self roomName];
LABEL_7:

  v3 = v11;
LABEL_8:

  return v3;
}

- (HMDServiceNameComponents)initWithRawServiceName:(id)a3 rawRoomName:(id)a4 localizedFormat:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = HMDServiceNameComponents;
  v11 = [(HMDServiceNameComponents *)&v38 init];
  if (v11)
  {
    v12 = [v8 copy];
    [(HMDServiceNameComponents *)v11 setRawServiceName:v12];

    v13 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v14 = [v8 stringByTrimmingCharactersInSet:v13];
    [(HMDServiceNameComponents *)v11 setServiceName:v14];

    v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [v9 stringByTrimmingCharactersInSet:v15];
    [(HMDServiceNameComponents *)v11 setRoomName:v16];

    if (v10)
    {
      v17 = [v10 copy];
      [(HMDServiceNameComponents *)v11 setFormat:v17];
    }

    else
    {
      [(HMDServiceNameComponents *)v11 setFormat:@"%@ %@"];
    }

    v18 = [(HMDServiceNameComponents *)v11 serviceName];
    if (![v18 length])
    {
      goto LABEL_15;
    }

    v19 = [(HMDServiceNameComponents *)v11 roomName];
    v20 = [v19 length];

    if (v20)
    {
      v21 = [(HMDServiceNameComponents *)v11 serviceName];
      v22 = [(HMDServiceNameComponents *)v11 roomName];
      v23 = [v21 rangeOfString:v22 options:129];
      v25 = v24;

      if (v25)
      {
        if (v23)
        {
          v26 = v23 + v25;
          v27 = [(HMDServiceNameComponents *)v11 serviceName];
          v28 = [v27 length];

          if (v23 + v25 != v28)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v26 = v25;
        }

        v29 = [(HMDServiceNameComponents *)v11 serviceName];
        v30 = [v29 substringFromIndex:v26];
        v31 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v32 = [v30 rangeOfCharacterFromSet:v31 options:0];

        if (v32)
        {
          [(HMDServiceNameComponents *)v11 setRoomName:0];
          goto LABEL_16;
        }

        v33 = [(HMDServiceNameComponents *)v11 serviceName];
        v34 = [v33 stringByReplacingCharactersInRange:v23 withString:{v25, &stru_286509E58}];
        [(HMDServiceNameComponents *)v11 setServiceName:v34];

        v18 = [(HMDServiceNameComponents *)v11 serviceName];
        v35 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v36 = [v18 stringByTrimmingCharactersInSet:v35];
        [(HMDServiceNameComponents *)v11 setServiceName:v36];

LABEL_15:
      }
    }
  }

LABEL_16:

  return v11;
}

+ (id)componentsWithRawServiceName:(id)a3 rawRoomName:(id)a4 localizedFormat:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HMDServiceNameComponents alloc] initWithRawServiceName:v9 rawRoomName:v8 localizedFormat:v7];

  return v10;
}

@end
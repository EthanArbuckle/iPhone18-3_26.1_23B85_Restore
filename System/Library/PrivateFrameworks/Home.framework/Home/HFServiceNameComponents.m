@interface HFServiceNameComponents
- (BOOL)isEqual:(id)a3;
- (HFServiceNameComponents)initWithRawServiceName:(id)a3 rawRoomName:(id)a4 allowRepeat:(BOOL)a5;
- (NSString)composedString;
- (unint64_t)hash;
@end

@implementation HFServiceNameComponents

- (HFServiceNameComponents)initWithRawServiceName:(id)a3 rawRoomName:(id)a4 allowRepeat:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v44.receiver = self;
  v44.super_class = HFServiceNameComponents;
  v10 = [(HFServiceNameComponents *)&v44 init];
  if (v10)
  {
    v11 = [v8 copy];
    [(HFServiceNameComponents *)v10 setRawServiceName:v11];

    v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v13 = [v8 stringByTrimmingCharactersInSet:v12];
    [(HFServiceNameComponents *)v10 setServiceName:v13];

    v14 = [v9 copy];
    [(HFServiceNameComponents *)v10 setRawRoomName:v14];

    v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [v9 stringByTrimmingCharactersInSet:v15];
    [(HFServiceNameComponents *)v10 setRoomName:v16];

    v10->_allowRepeat = a5;
    v17 = [(HFServiceNameComponents *)v10 serviceName];
    if (![v17 length])
    {
LABEL_18:

      goto LABEL_19;
    }

    v18 = [(HFServiceNameComponents *)v10 roomName];
    if (![v18 length])
    {
LABEL_17:

      goto LABEL_18;
    }

    v19 = [(HFServiceNameComponents *)v10 serviceName];
    v20 = [(HFServiceNameComponents *)v10 roomName];
    v21 = [v19 isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      v22 = [(HFServiceNameComponents *)v10 serviceName];
      v23 = [(HFServiceNameComponents *)v10 roomName];
      v24 = [v22 rangeOfString:v23 options:129];
      v26 = v25;

      if (v26)
      {
        v27 = v24 + v26;
        v28 = [(HFServiceNameComponents *)v10 serviceName];
        v29 = [v28 length];

        if (!v24)
        {
          v43 = [(HFServiceNameComponents *)v10 serviceName];
          v31 = [v43 substringFromIndex:v26];
          v32 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v42 = [v31 rangeOfCharacterFromSet:v32 options:0];

          if (v27 != v29)
          {
            [(HFServiceNameComponents *)v10 setRoomNameAtEndSeparatedByWhitespace:0];
            if (!v42)
            {
LABEL_16:
              v38 = [(HFServiceNameComponents *)v10 serviceName];
              v39 = [v38 stringByReplacingCharactersInRange:v24 withString:{v26, &stru_2824B1A78}];
              [(HFServiceNameComponents *)v10 setServiceName:v39];

              v17 = [(HFServiceNameComponents *)v10 serviceName];
              v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v40 = [v17 stringByTrimmingCharactersInSet:v18];
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
          v33 = [(HFServiceNameComponents *)v10 serviceName];
          v34 = [v33 substringToIndex:v24];
          v35 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v36 = [v34 rangeOfCharacterFromSet:v35 options:4];
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
  v3 = [(HFServiceNameComponents *)self serviceName];
  v4 = [(HFServiceNameComponents *)self serviceName];
  if (![v4 length])
  {

    goto LABEL_7;
  }

  v5 = [(HFServiceNameComponents *)self roomName];
  v6 = [v5 length];

  if (!v6)
  {
LABEL_7:
    v11 = [(HFServiceNameComponents *)self roomName];
    v12 = [v11 length];

    if (!v12)
    {
      goto LABEL_16;
    }

    v10 = [(HFServiceNameComponents *)self roomName];
    goto LABEL_9;
  }

  v7 = [(HFServiceNameComponents *)self serviceName];
  v8 = [(HFServiceNameComponents *)self roomName];
  if (![v7 isEqualToString:v8])
  {

    goto LABEL_11;
  }

  v9 = [(HFServiceNameComponents *)self allowRepeat];

  if (v9)
  {
LABEL_11:
    if ([(HFServiceNameComponents *)self roomNameAtEndSeparatedByWhitespace])
    {
      v14 = [(HFServiceNameComponents *)self serviceName];
      [(HFServiceNameComponents *)self roomName];
    }

    else
    {
      v14 = [(HFServiceNameComponents *)self roomName];
      [(HFServiceNameComponents *)self serviceName];
    }
    v22 = ;
    v13 = HFLocalizedStringWithFormat(@"HFServiceNameFormat", @"%1$@ %2$@", v15, v16, v17, v18, v19, v20, v14);

    v3 = v14;
    goto LABEL_15;
  }

  v10 = [(HFServiceNameComponents *)self serviceName];
LABEL_9:
  v13 = v10;
LABEL_15:

  v3 = v13;
LABEL_16:

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(HFServiceNameComponents *)self serviceName];
      v10 = [(HFServiceNameComponents *)v8 serviceName];
      if (v9 != v10)
      {
        v3 = [(HFServiceNameComponents *)self serviceName];
        v4 = [(HFServiceNameComponents *)v8 serviceName];
        if (![v3 isEqual:v4])
        {
          LOBYTE(v11) = 0;
          goto LABEL_15;
        }

        v16 = v3;
      }

      v12 = [(HFServiceNameComponents *)self roomName];
      v13 = [(HFServiceNameComponents *)v8 roomName];
      if (v12 == v13 || (-[HFServiceNameComponents roomName](self, "roomName"), v5 = objc_claimAutoreleasedReturnValue(), -[HFServiceNameComponents roomName](v8, "roomName"), v3 = objc_claimAutoreleasedReturnValue(), [v5 isEqual:v3]))
      {
        v14 = [(HFServiceNameComponents *)self allowRepeat];
        v11 = v14 ^ [(HFServiceNameComponents *)v8 allowRepeat]^ 1;
        if (v12 == v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

LABEL_14:
      v3 = v16;
      if (v9 == v10)
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
  v2 = [(HFServiceNameComponents *)self serviceName];
  v3 = [v2 hash];

  return v3;
}

@end
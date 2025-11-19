@interface IPPerson
- (IPPerson)init;
- (IPPerson)initWithHandle:(id)a3 handleType:(id)a4 fullName:(id)a5;
- (IPPerson)initWithSGIPPerson:(id)a3;
- (IPPerson)initWithString:(id)a3;
- (NSString)displayableName;
- (NSString)email;
@end

@implementation IPPerson

- (IPPerson)init
{
  [(IPPerson *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IPPerson)initWithHandle:(id)a3 handleType:(id)a4 fullName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = IPPerson;
  v12 = [(IPPerson *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, a3);
    objc_storeStrong(&v13->_handleType, a4);
    if ([v11 length])
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v13->_fullName, v14);
  }

  return v13;
}

- (IPPerson)initWithString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length];
    if ([v5 hasSuffix:@">"])
    {
      v7 = [v5 rangeOfString:@"<"];
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0;
        v9 = (v6 - 1);
        if (v6 == 1)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v9 = v7;
        v11 = [v5 length] - v7;
        if (v11 == 2)
        {
          v8 = 0;
          if (!v9)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v8 = [v5 substringWithRange:{v9 + 1, v11 - 2}];
          if (!v9)
          {
LABEL_12:
            self = [(IPPerson *)self initWithEmail:v8 fullName:v9];

            v10 = self;
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v12 = [v5 substringWithRange:{0, v9}];
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v9 = [v12 stringByTrimmingCharactersInSet:v13];

    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (IPPerson)initWithSGIPPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 handle];
  v6 = [v5 copy];
  v7 = [v4 handleType];
  v8 = [v7 copy];
  v9 = [v4 name];

  v10 = [v9 copy];
  v11 = [(IPPerson *)self initWithHandle:v6 handleType:v8 fullName:v10];

  return v11;
}

- (NSString)displayableName
{
  v3 = [(IPPerson *)self fullName];

  if (v3)
  {
    v4 = [(IPPerson *)self fullName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)email
{
  if ([(NSString *)self->_handleType isEqualToString:*MEMORY[0x277CBCFC0]])
  {
    v3 = self->_handle;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
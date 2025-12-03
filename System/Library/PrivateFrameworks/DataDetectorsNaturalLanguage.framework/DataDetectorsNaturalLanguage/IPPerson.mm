@interface IPPerson
- (IPPerson)init;
- (IPPerson)initWithHandle:(id)handle handleType:(id)type fullName:(id)name;
- (IPPerson)initWithSGIPPerson:(id)person;
- (IPPerson)initWithString:(id)string;
- (NSString)displayableName;
- (NSString)email;
@end

@implementation IPPerson

- (IPPerson)init
{
  [(IPPerson *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IPPerson)initWithHandle:(id)handle handleType:(id)type fullName:(id)name
{
  handleCopy = handle;
  typeCopy = type;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = IPPerson;
  v12 = [(IPPerson *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, handle);
    objc_storeStrong(&v13->_handleType, type);
    if ([nameCopy length])
    {
      v14 = nameCopy;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v13->_fullName, v14);
  }

  return v13;
}

- (IPPerson)initWithString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = [stringCopy length];
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

            selfCopy = self;
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
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v9 = [v12 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (IPPerson)initWithSGIPPerson:(id)person
{
  personCopy = person;
  handle = [personCopy handle];
  v6 = [handle copy];
  handleType = [personCopy handleType];
  v8 = [handleType copy];
  name = [personCopy name];

  v10 = [name copy];
  v11 = [(IPPerson *)self initWithHandle:v6 handleType:v8 fullName:v10];

  return v11;
}

- (NSString)displayableName
{
  fullName = [(IPPerson *)self fullName];

  if (fullName)
  {
    fullName2 = [(IPPerson *)self fullName];
  }

  else
  {
    fullName2 = 0;
  }

  return fullName2;
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
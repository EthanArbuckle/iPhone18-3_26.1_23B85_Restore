@interface WFContactFieldEntry
+ (id)processingValueClasses;
- (BOOL)isEqual:(id)equal;
- (NSString)wfName;
- (WFContactFieldEntry)initWithCoder:(id)coder;
- (WFContactFieldEntry)initWithContact:(id)contact;
- (WFContactFieldEntry)initWithCustomHandle:(id)handle;
- (WFContactFieldEntry)initWithEmailAddress:(id)address;
- (WFContactFieldEntry)initWithHandleString:(id)string allowsCustomHandles:(BOOL)handles;
- (WFContactFieldEntry)initWithMessageGroup:(id)group;
- (WFContactFieldEntry)initWithPhoneNumber:(id)number;
- (id)contentItem;
- (id)description;
- (id)underlyingObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContactFieldEntry

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFContactFieldEntry type](self forKey:{"type"), @"type"}];
  type = [(WFContactFieldEntry *)self type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      phoneNumber = [(WFContactFieldEntry *)self phoneNumber];
      v6 = @"phoneNumber";
    }

    else
    {
      phoneNumber = [(WFContactFieldEntry *)self contact];
      v6 = @"contact";
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        phoneNumber = [(WFContactFieldEntry *)self emailAddress];
        v6 = @"emailAddress";
        break;
      case 3:
        phoneNumber = [(WFContactFieldEntry *)self customHandle];
        v6 = @"customHandle";
        break;
      case 4:
        phoneNumber = [(WFContactFieldEntry *)self messageGroup];
        v6 = @"messageGroup";
        break;
      default:
        goto LABEL_13;
    }
  }

  [coderCopy encodeObject:phoneNumber forKey:v6];

LABEL_13:
}

- (WFContactFieldEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  selfCopy = 0;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
      v8 = [(WFContactFieldEntry *)self initWithContact:v7];
      goto LABEL_12;
    }

    if (v5 == 1)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
      v8 = [(WFContactFieldEntry *)self initWithPhoneNumber:v7];
      goto LABEL_12;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
        v8 = [(WFContactFieldEntry *)self initWithEmailAddress:v7];
        goto LABEL_12;
      case 3:
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customHandle"];
        v8 = [(WFContactFieldEntry *)self initWithCustomHandle:v7];
        goto LABEL_12;
      case 4:
        v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageGroup"];
        v8 = [(WFContactFieldEntry *)self initWithMessageGroup:v7];
LABEL_12:
        self = v8;

        selfCopy = self;
        break;
    }
  }

  return selfCopy;
}

- (NSString)wfName
{
  customHandle = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      phoneNumber = [(WFContactFieldEntry *)self phoneNumber];
      formattedPhoneNumber = [phoneNumber formattedPhoneNumber];
    }

    else
    {
      phoneNumber = [(WFContactFieldEntry *)self contact];
      formattedPhoneNumber = [phoneNumber wfName];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        phoneNumber = [(WFContactFieldEntry *)self emailAddress];
        formattedPhoneNumber = [phoneNumber address];
        break;
      case 3:
        customHandle = [(WFContactFieldEntry *)self customHandle];
        goto LABEL_13;
      case 4:
        phoneNumber = [(WFContactFieldEntry *)self messageGroup];
        formattedPhoneNumber = [phoneNumber name];
        break;
      default:
        goto LABEL_13;
    }
  }

  customHandle = formattedPhoneNumber;

LABEL_13:

  return customHandle;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(WFContactFieldEntry *)equalCopy type], v5 == [(WFContactFieldEntry *)self type]))
    {
      underlyingObject = [(WFContactFieldEntry *)equalCopy underlyingObject];
      underlyingObject2 = [(WFContactFieldEntry *)self underlyingObject];
      v8 = [underlyingObject isEqual:underlyingObject2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  type = [(WFContactFieldEntry *)self type];
  underlyingObject = [(WFContactFieldEntry *)self underlyingObject];
  v5 = [underlyingObject hash];

  return type ^ 0xA700 ^ v5;
}

- (id)underlyingObject
{
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      phoneNumber = [(WFContactFieldEntry *)self phoneNumber];
    }

    else
    {
      phoneNumber = [(WFContactFieldEntry *)self contact];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        phoneNumber = [(WFContactFieldEntry *)self emailAddress];
        break;
      case 3:
        phoneNumber = [(WFContactFieldEntry *)self customHandle];
        break;
      case 4:
        phoneNumber = [(WFContactFieldEntry *)self messageGroup];
        break;
      default:
        goto LABEL_13;
    }
  }

  a2 = phoneNumber;
LABEL_13:

  return a2;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFContactFieldEntry;
  v3 = [(WFContactFieldEntry *)&v7 description];
  underlyingObject = [(WFContactFieldEntry *)self underlyingObject];
  v5 = [v3 stringByAppendingFormat:@": %@", underlyingObject];

  return v5;
}

- (WFContactFieldEntry)initWithMessageGroup:(id)group
{
  groupCopy = group;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"messageGroup"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_messageGroup, group);
    v8->_type = 4;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithCustomHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"customHandle"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v6 = [(WFContactFieldEntry *)&v12 init];
  if (v6)
  {
    v7 = [handleCopy copy];
    customHandle = v6->_customHandle;
    v6->_customHandle = v7;

    v6->_type = 3;
    v9 = v6;
  }

  return v6;
}

- (WFContactFieldEntry)initWithEmailAddress:(id)address
{
  addressCopy = address;
  if (!addressCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_emailAddress, address);
    v8->_type = 2;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithPhoneNumber:(id)number
{
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_phoneNumber, number);
    v8->_type = 1;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contact, contact);
    v8->_type = 0;
    v9 = v8;
  }

  return v8;
}

+ (id)processingValueClasses
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

- (WFContactFieldEntry)initWithHandleString:(id)string allowsCustomHandles:(BOOL)handles
{
  handlesCopy = handles;
  stringCopy = string;
  v7 = [WFContact predictedTypeForHandleValue:stringCopy allowsCustomHandles:handlesCopy];
  switch(v7)
  {
    case 2:
      self = [(WFContactFieldEntry *)self initWithCustomHandle:stringCopy];
      break;
    case 1:
      v8 = [WFEmailAddress addressWithEmailAddress:stringCopy];
      v9 = [(WFContactFieldEntry *)self initWithEmailAddress:v8];
      goto LABEL_6;
    case 0:
      v8 = [WFPhoneNumber phoneNumberWithPhoneNumberString:stringCopy];
      v9 = [(WFContactFieldEntry *)self initWithPhoneNumber:v8];
LABEL_6:
      self = v9;

      break;
  }

  return self;
}

- (id)contentItem
{
  type = [(WFContactFieldEntry *)self type];
  if (type >= 4)
  {
    if (type != 4)
    {
      goto LABEL_6;
    }

    messageGroup = [(WFContactFieldEntry *)self messageGroup];
    name = [messageGroup name];
    v2 = [WFContentItem itemWithObject:name];
  }

  else
  {
    messageGroup = [(WFContactFieldEntry *)self underlyingObject];
    v2 = [WFContentItem itemWithObject:messageGroup];
  }

LABEL_6:

  return v2;
}

@end
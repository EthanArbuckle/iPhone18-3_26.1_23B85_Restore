@interface WFContactFieldEntry
+ (id)processingValueClasses;
- (BOOL)isEqual:(id)a3;
- (NSString)wfName;
- (WFContactFieldEntry)initWithCoder:(id)a3;
- (WFContactFieldEntry)initWithContact:(id)a3;
- (WFContactFieldEntry)initWithCustomHandle:(id)a3;
- (WFContactFieldEntry)initWithEmailAddress:(id)a3;
- (WFContactFieldEntry)initWithHandleString:(id)a3 allowsCustomHandles:(BOOL)a4;
- (WFContactFieldEntry)initWithMessageGroup:(id)a3;
- (WFContactFieldEntry)initWithPhoneNumber:(id)a3;
- (id)contentItem;
- (id)description;
- (id)underlyingObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContactFieldEntry

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[WFContactFieldEntry type](self forKey:{"type"), @"type"}];
  v4 = [(WFContactFieldEntry *)self type];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_13;
      }

      v5 = [(WFContactFieldEntry *)self phoneNumber];
      v6 = @"phoneNumber";
    }

    else
    {
      v5 = [(WFContactFieldEntry *)self contact];
      v6 = @"contact";
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v5 = [(WFContactFieldEntry *)self emailAddress];
        v6 = @"emailAddress";
        break;
      case 3:
        v5 = [(WFContactFieldEntry *)self customHandle];
        v6 = @"customHandle";
        break;
      case 4:
        v5 = [(WFContactFieldEntry *)self messageGroup];
        v6 = @"messageGroup";
        break;
      default:
        goto LABEL_13;
    }
  }

  [v7 encodeObject:v5 forKey:v6];

LABEL_13:
}

- (WFContactFieldEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = 0;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
      v8 = [(WFContactFieldEntry *)self initWithContact:v7];
      goto LABEL_12;
    }

    if (v5 == 1)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
      v8 = [(WFContactFieldEntry *)self initWithPhoneNumber:v7];
      goto LABEL_12;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
        v8 = [(WFContactFieldEntry *)self initWithEmailAddress:v7];
        goto LABEL_12;
      case 3:
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customHandle"];
        v8 = [(WFContactFieldEntry *)self initWithCustomHandle:v7];
        goto LABEL_12;
      case 4:
        v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageGroup"];
        v8 = [(WFContactFieldEntry *)self initWithMessageGroup:v7];
LABEL_12:
        self = v8;

        v6 = self;
        break;
    }
  }

  return v6;
}

- (NSString)wfName
{
  v2 = 0;
  type = self->_type;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_13;
      }

      v4 = [(WFContactFieldEntry *)self phoneNumber];
      v5 = [v4 formattedPhoneNumber];
    }

    else
    {
      v4 = [(WFContactFieldEntry *)self contact];
      v5 = [v4 wfName];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v4 = [(WFContactFieldEntry *)self emailAddress];
        v5 = [v4 address];
        break;
      case 3:
        v2 = [(WFContactFieldEntry *)self customHandle];
        goto LABEL_13;
      case 4:
        v4 = [(WFContactFieldEntry *)self messageGroup];
        v5 = [v4 name];
        break;
      default:
        goto LABEL_13;
    }
  }

  v2 = v5;

LABEL_13:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(WFContactFieldEntry *)v4 type], v5 == [(WFContactFieldEntry *)self type]))
    {
      v6 = [(WFContactFieldEntry *)v4 underlyingObject];
      v7 = [(WFContactFieldEntry *)self underlyingObject];
      v8 = [v6 isEqual:v7];
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
  v3 = [(WFContactFieldEntry *)self type];
  v4 = [(WFContactFieldEntry *)self underlyingObject];
  v5 = [v4 hash];

  return v3 ^ 0xA700 ^ v5;
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

      v3 = [(WFContactFieldEntry *)self phoneNumber];
    }

    else
    {
      v3 = [(WFContactFieldEntry *)self contact];
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        v3 = [(WFContactFieldEntry *)self emailAddress];
        break;
      case 3:
        v3 = [(WFContactFieldEntry *)self customHandle];
        break;
      case 4:
        v3 = [(WFContactFieldEntry *)self messageGroup];
        break;
      default:
        goto LABEL_13;
    }
  }

  a2 = v3;
LABEL_13:

  return a2;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = WFContactFieldEntry;
  v3 = [(WFContactFieldEntry *)&v7 description];
  v4 = [(WFContactFieldEntry *)self underlyingObject];
  v5 = [v3 stringByAppendingFormat:@": %@", v4];

  return v5;
}

- (WFContactFieldEntry)initWithMessageGroup:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"messageGroup"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_messageGroup, a3);
    v8->_type = 4;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithCustomHandle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"customHandle"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v6 = [(WFContactFieldEntry *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    customHandle = v6->_customHandle;
    v6->_customHandle = v7;

    v6->_type = 3;
    v9 = v6;
  }

  return v6;
}

- (WFContactFieldEntry)initWithEmailAddress:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"emailAddress"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_emailAddress, a3);
    v8->_type = 2;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithPhoneNumber:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"phoneNumber"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_phoneNumber, a3);
    v8->_type = 1;
    v9 = v8;
  }

  return v8;
}

- (WFContactFieldEntry)initWithContact:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFContactFieldEntry.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contact"}];
  }

  v12.receiver = self;
  v12.super_class = WFContactFieldEntry;
  v7 = [(WFContactFieldEntry *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contact, a3);
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

- (WFContactFieldEntry)initWithHandleString:(id)a3 allowsCustomHandles:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [WFContact predictedTypeForHandleValue:v6 allowsCustomHandles:v4];
  switch(v7)
  {
    case 2:
      self = [(WFContactFieldEntry *)self initWithCustomHandle:v6];
      break;
    case 1:
      v8 = [WFEmailAddress addressWithEmailAddress:v6];
      v9 = [(WFContactFieldEntry *)self initWithEmailAddress:v8];
      goto LABEL_6;
    case 0:
      v8 = [WFPhoneNumber phoneNumberWithPhoneNumberString:v6];
      v9 = [(WFContactFieldEntry *)self initWithPhoneNumber:v8];
LABEL_6:
      self = v9;

      break;
  }

  return self;
}

- (id)contentItem
{
  v4 = [(WFContactFieldEntry *)self type];
  if (v4 >= 4)
  {
    if (v4 != 4)
    {
      goto LABEL_6;
    }

    v5 = [(WFContactFieldEntry *)self messageGroup];
    v6 = [v5 name];
    v2 = [WFContentItem itemWithObject:v6];
  }

  else
  {
    v5 = [(WFContactFieldEntry *)self underlyingObject];
    v2 = [WFContentItem itemWithObject:v5];
  }

LABEL_6:

  return v2;
}

@end
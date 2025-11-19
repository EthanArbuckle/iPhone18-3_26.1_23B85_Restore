@interface CommunicationFilterItem
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesFilterItem:(id)a3;
- (CommunicationFilterItem)initWithDictionaryRepresentation:(id)a3;
- (CommunicationFilterItem)initWithEmailAddress:(id)a3;
- (CommunicationFilterItem)initWithPhoneNumber:(__CFPhoneNumber *)a3;
- (NSString)unformattedID;
- (id)_dictionaryRepresentationWithRedaction;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CommunicationFilterItem

- (id)dictionaryRepresentation
{
  if (!self->_emailAddress && !self->_phoneNumber)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(CommunicationFilterItem *)self isPhoneNumber])
  {
    phoneNumber = self->_phoneNumber;
    v5 = IMUnformattedPhoneNumberForCFPhoneNumberRef();
    if (v5)
    {
      v6 = v5;
      v7 = self->_phoneNumber;
      v8 = IMCountryCodeCFPhoneNumberRef();
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
      [v3 setObject:v6 forKey:@"__kCMFItemPhoneNumberUnformattedKey"];
      if (v8)
      {
        [v3 setObject:v8 forKey:@"__kCMFItemPhoneNumberCountryCodeKey"];
      }

      goto LABEL_9;
    }

    v11 = CMFDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(CommunicationFilterItem *)v11 dictionaryRepresentation];
    }

    return 0;
  }

  emailAddress = self->_emailAddress;
  if (!emailAddress)
  {
    v12 = CMFDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CommunicationFilterItem *)v12 dictionaryRepresentation];
    }

    return 0;
  }

  [v3 setObject:emailAddress forKey:@"__kCMFItemEmailUnformattedKey"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
LABEL_9:
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 1), @"__kCMFItemVersionKey"}];
  if (v9)
  {
    [v3 setObject:v9 forKey:@"__kCMFItemTypeKey"];
  }

  return v3;
}

- (void)dealloc
{
  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    CFRelease(phoneNumber);
    self->_phoneNumber = 0;
  }

  v4.receiver = self;
  v4.super_class = CommunicationFilterItem;
  [(CommunicationFilterItem *)&v4 dealloc];
}

- (CommunicationFilterItem)initWithPhoneNumber:(__CFPhoneNumber *)a3
{
  v7.receiver = self;
  v7.super_class = CommunicationFilterItem;
  v4 = [(CommunicationFilterItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_phoneNumber = a3;
    if (a3)
    {
      CFRetain(a3);
    }
  }

  return v5;
}

- (CommunicationFilterItem)initWithEmailAddress:(id)a3
{
  v6.receiver = self;
  v6.super_class = CommunicationFilterItem;
  v4 = [(CommunicationFilterItem *)&v6 init];
  if (v4)
  {
    v4->_emailAddress = [a3 copy];
  }

  return v4;
}

- (id)description
{
  v2 = [(CommunicationFilterItem *)self _dictionaryRepresentationWithRedaction];

  return [v2 description];
}

- (CommunicationFilterItem)initWithDictionaryRepresentation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKey:@"__kCMFItemTypeKey"];
  v6 = [a3 objectForKey:@"__kCMFItemVersionKey"];
  v7 = [a3 objectForKey:@"__kCMFItemPhoneNumberUnformattedKey"];
  [a3 objectForKey:@"__kCMFItemPhoneNumberCountryCodeKey"];
  v8 = [a3 objectForKey:@"__kCMFItemEmailUnformattedKey"];
  if (![(CommunicationFilterItem *)self _acceptItemType:v5]|| ![(CommunicationFilterItem *)self _acceptVersion:v6])
  {
    v11 = CMFDefaultLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:
      v10 = 0;
LABEL_9:
      v12 = *MEMORY[0x277D85DE8];
      return v10;
    }

LABEL_7:
    v15 = 138412290;
    v16 = [a3 allKeys];
    _os_log_impl(&dword_243BDE000, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Couldn't create CMFItem from dictionary %@", &v15, 0xCu);
    goto LABEL_8;
  }

  if (v7)
  {
    v9 = IMPhoneNumberRefCopyForPhoneNumber();
    v10 = [(CommunicationFilterItem *)self initWithPhoneNumber:v9];
    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_9;
  }

  if (!v8)
  {
    v11 = CMFDefaultLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = *MEMORY[0x277D85DE8];

  return [(CommunicationFilterItem *)self initWithEmailAddress:v8];
}

- (NSString)unformattedID
{
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v4 = emailAddress;

    return v4;
  }

  else
  {
    phoneNumber = self->_phoneNumber;

    return IMUnformattedPhoneNumberForCFPhoneNumberRef();
  }
}

- (BOOL)matchesFilterItem:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v7 = -[NSString caseInsensitiveCompare:](emailAddress, "caseInsensitiveCompare:", [a3 emailAddress]) == NSOrderedSame;
  }

  else
  {
    v7 = self->_phoneNumber && (v8 = [a3 phoneNumber]) != 0 && CFEqual(v8, self->_phoneNumber) != 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CommunicationFilterItem *)self matchesFilterItem:a3];
}

- (unint64_t)hash
{
  if (self->_emailAddress)
  {
    v2 = [(NSString *)self->_emailAddress lowercaseString];
  }

  else
  {
    if (!self->_phoneNumber)
    {
      v5.receiver = self;
      v5.super_class = CommunicationFilterItem;
      return [(CommunicationFilterItem *)&v5 hash];
    }

    phoneNumber = self->_phoneNumber;
    v2 = IMUnformattedPhoneNumberForCFPhoneNumberRef();
  }

  return [(NSString *)v2 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_emailAddress)
  {
    v4 = [CommunicationFilterItem allocWithZone:a3];
    emailAddress = self->_emailAddress;

    return [(CommunicationFilterItem *)v4 initWithEmailAddress:emailAddress];
  }

  else if (self->_phoneNumber)
  {
    v7 = [CommunicationFilterItem allocWithZone:a3];
    phoneNumber = self->_phoneNumber;

    return [(CommunicationFilterItem *)v7 initWithPhoneNumber:phoneNumber];
  }

  else
  {
    return 0;
  }
}

- (id)_dictionaryRepresentationWithRedaction
{
  v3 = [(CommunicationFilterItem *)self dictionaryRepresentation];
  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
  if ([(CommunicationFilterItem *)self isPhoneNumber])
  {
    v5 = @"__kCMFItemPhoneNumberUnformattedKey";
  }

  else
  {
    v5 = @"__kCMFItemEmailUnformattedKey";
  }

  [v4 setObject:@"redacted" forKey:v5];
  return v4;
}

@end
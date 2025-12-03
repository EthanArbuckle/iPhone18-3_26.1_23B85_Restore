@interface CommunicationFilterItem
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesFilterItem:(id)item;
- (CommunicationFilterItem)initWithDictionaryRepresentation:(id)representation;
- (CommunicationFilterItem)initWithEmailAddress:(id)address;
- (CommunicationFilterItem)initWithPhoneNumber:(__CFPhoneNumber *)number;
- (NSString)unformattedID;
- (id)_dictionaryRepresentationWithRedaction;
- (id)copyWithZone:(_NSZone *)zone;
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

  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
      [dictionary setObject:v6 forKey:@"__kCMFItemPhoneNumberUnformattedKey"];
      if (v8)
      {
        [dictionary setObject:v8 forKey:@"__kCMFItemPhoneNumberCountryCodeKey"];
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

  [dictionary setObject:emailAddress forKey:@"__kCMFItemEmailUnformattedKey"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
LABEL_9:
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", 1), @"__kCMFItemVersionKey"}];
  if (v9)
  {
    [dictionary setObject:v9 forKey:@"__kCMFItemTypeKey"];
  }

  return dictionary;
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

- (CommunicationFilterItem)initWithPhoneNumber:(__CFPhoneNumber *)number
{
  v7.receiver = self;
  v7.super_class = CommunicationFilterItem;
  v4 = [(CommunicationFilterItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_phoneNumber = number;
    if (number)
    {
      CFRetain(number);
    }
  }

  return v5;
}

- (CommunicationFilterItem)initWithEmailAddress:(id)address
{
  v6.receiver = self;
  v6.super_class = CommunicationFilterItem;
  v4 = [(CommunicationFilterItem *)&v6 init];
  if (v4)
  {
    v4->_emailAddress = [address copy];
  }

  return v4;
}

- (id)description
{
  _dictionaryRepresentationWithRedaction = [(CommunicationFilterItem *)self _dictionaryRepresentationWithRedaction];

  return [_dictionaryRepresentationWithRedaction description];
}

- (CommunicationFilterItem)initWithDictionaryRepresentation:(id)representation
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [representation objectForKey:@"__kCMFItemTypeKey"];
  v6 = [representation objectForKey:@"__kCMFItemVersionKey"];
  v7 = [representation objectForKey:@"__kCMFItemPhoneNumberUnformattedKey"];
  [representation objectForKey:@"__kCMFItemPhoneNumberCountryCodeKey"];
  v8 = [representation objectForKey:@"__kCMFItemEmailUnformattedKey"];
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
    allKeys = [representation allKeys];
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

- (BOOL)matchesFilterItem:(id)item
{
  v5 = objc_autoreleasePoolPush();
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    v7 = -[NSString caseInsensitiveCompare:](emailAddress, "caseInsensitiveCompare:", [item emailAddress]) == NSOrderedSame;
  }

  else
  {
    v7 = self->_phoneNumber && (v8 = [item phoneNumber]) != 0 && CFEqual(v8, self->_phoneNumber) != 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(CommunicationFilterItem *)self matchesFilterItem:equal];
}

- (unint64_t)hash
{
  if (self->_emailAddress)
  {
    lowercaseString = [(NSString *)self->_emailAddress lowercaseString];
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
    lowercaseString = IMUnformattedPhoneNumberForCFPhoneNumberRef();
  }

  return [(NSString *)lowercaseString hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_emailAddress)
  {
    v4 = [CommunicationFilterItem allocWithZone:zone];
    emailAddress = self->_emailAddress;

    return [(CommunicationFilterItem *)v4 initWithEmailAddress:emailAddress];
  }

  else if (self->_phoneNumber)
  {
    v7 = [CommunicationFilterItem allocWithZone:zone];
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
  dictionaryRepresentation = [(CommunicationFilterItem *)self dictionaryRepresentation];
  if (!dictionaryRepresentation)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:dictionaryRepresentation];
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
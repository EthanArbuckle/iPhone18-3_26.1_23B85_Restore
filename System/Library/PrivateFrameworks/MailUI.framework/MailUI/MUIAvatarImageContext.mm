@interface MUIAvatarImageContext
- (BOOL)isEqual:(id)equal;
- (MUIAvatarImageContext)initWithCategory:(id)category emailAddress:(id)address businessLogoID:(id)d isAuthenticated:(BOOL)authenticated reducePlaceholderImage:(BOOL)image brandIndicatorLocation:(id)location scale:(double)scale isRTL:(BOOL)self0;
- (MUIAvatarImageContext)initWithMessageListItem:(id)item showRecipient:(BOOL)recipient reducePlaceholderImage:(BOOL)image;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
@end

@implementation MUIAvatarImageContext

- (NSString)ef_publicDescription
{
  v20 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  emailAddress = [(MUIAvatarImageContext *)self emailAddress];
  emailAddressValue = [emailAddress emailAddressValue];
  v5 = emailAddressValue;
  if (emailAddressValue)
  {
    ef_publicDescription = [emailAddressValue ef_publicDescription];
  }

  else
  {
    v7 = MEMORY[0x277D07198];
    stringValue = [emailAddress stringValue];
    ef_publicDescription = [v7 fullyOrPartiallyRedactedStringForString:stringValue];
  }

  category = [(MUIAvatarImageContext *)self category];
  ef_publicDescription2 = [category ef_publicDescription];
  businessLogoID = [(MUIAvatarImageContext *)self businessLogoID];
  isAuthenticated = [(MUIAvatarImageContext *)self isAuthenticated];
  v13 = MEMORY[0x277D07198];
  brandIndicatorLocation = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  absoluteString = [brandIndicatorLocation absoluteString];
  v16 = [v13 fullyOrPartiallyRedactedStringForString:absoluteString];
  v17 = [v20 stringWithFormat:@"<%@: %p>\nemailAddress: %@\ncategory: %@\nbusinessLogoID: %@\nisAuthenticated: %d\nbrandIndicatorLocation: %@", v19, self, ef_publicDescription, ef_publicDescription2, businessLogoID, isAuthenticated, v16];

  return v17;
}

- (MUIAvatarImageContext)initWithMessageListItem:(id)item showRecipient:(BOOL)recipient reducePlaceholderImage:(BOOL)image
{
  imageCopy = image;
  recipientCopy = recipient;
  itemCopy = item;
  if (pthread_main_np() != 1)
  {
    [MUIAvatarImageContext initWithMessageListItem:a2 showRecipient:self reducePlaceholderImage:?];
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v12 = v11;

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if (recipientCopy)
  {
    toList = [itemCopy toList];
    firstObject = [toList firstObject];
    v16 = firstObject;
    if (firstObject)
    {
      firstObject3 = firstObject;
    }

    else
    {
      ccList = [itemCopy ccList];
      firstObject2 = [ccList firstObject];
      v20 = firstObject2;
      if (firstObject2)
      {
        firstObject3 = firstObject2;
      }

      else
      {
        senderList = [itemCopy senderList];
        firstObject3 = [senderList firstObject];
      }
    }
  }

  else
  {
    toList = [itemCopy senderList];
    firstObject3 = [toList firstObject];
  }

  v22 = userInterfaceLayoutDirection == 1;
  category = [itemCopy category];
  businessLogoID = [itemCopy businessLogoID];
  isAuthenticated = [itemCopy isAuthenticated];
  brandIndicatorLocation = [itemCopy brandIndicatorLocation];
  LOBYTE(v29) = v22;
  v27 = [(MUIAvatarImageContext *)self initWithCategory:category emailAddress:firstObject3 businessLogoID:businessLogoID isAuthenticated:isAuthenticated reducePlaceholderImage:imageCopy brandIndicatorLocation:brandIndicatorLocation scale:v12 isRTL:v29];

  return v27;
}

- (MUIAvatarImageContext)initWithCategory:(id)category emailAddress:(id)address businessLogoID:(id)d isAuthenticated:(BOOL)authenticated reducePlaceholderImage:(BOOL)image brandIndicatorLocation:(id)location scale:(double)scale isRTL:(BOOL)self0
{
  categoryCopy = category;
  addressCopy = address;
  dCopy = d;
  locationCopy = location;
  v25.receiver = self;
  v25.super_class = MUIAvatarImageContext;
  v21 = [(MUIAvatarImageContext *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_category, category);
    objc_storeStrong(&v22->_emailAddress, address);
    objc_storeStrong(&v22->_businessLogoID, d);
    v22->_isAuthenticated = authenticated;
    v22->_reducePlaceholderImage = image;
    objc_storeStrong(&v22->_brandIndicatorLocation, location);
    v22->_scale = scale;
    v22->_isRTL = l;
  }

  return v22;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  emailAddress = [(MUIAvatarImageContext *)self emailAddress];
  category = [(MUIAvatarImageContext *)self category];
  ef_publicDescription = [category ef_publicDescription];
  businessLogoID = [(MUIAvatarImageContext *)self businessLogoID];
  isAuthenticated = [(MUIAvatarImageContext *)self isAuthenticated];
  brandIndicatorLocation = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  absoluteString = [brandIndicatorLocation absoluteString];
  v12 = [v3 stringWithFormat:@"<%@: %p>\nemailAddress: %@\ncategory: %@\nbusinessLogoID: %@\nisAuthenticated: %d\nbrandIndicatorLocation: %@", v4, self, emailAddress, ef_publicDescription, businessLogoID, isAuthenticated, absoluteString];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if ([(MUIAvatarImageContext *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    category = [(MUIAvatarImageContext *)v5 category];
    category2 = [(MUIAvatarImageContext *)self category];
    if ([category isEqual:category2])
    {
      emailAddress = [(MUIAvatarImageContext *)v5 emailAddress];
      emailAddress2 = [(MUIAvatarImageContext *)self emailAddress];
      if ([emailAddress isEqual:emailAddress2] && (v10 = -[MUIAvatarImageContext isAuthenticated](v5, "isAuthenticated"), v10 == -[MUIAvatarImageContext isAuthenticated](self, "isAuthenticated")) && (v11 = -[MUIAvatarImageContext reducePlaceholderImage](v5, "reducePlaceholderImage"), v11 == -[MUIAvatarImageContext reducePlaceholderImage](self, "reducePlaceholderImage")))
      {
        brandIndicatorLocation = [(MUIAvatarImageContext *)self brandIndicatorLocation];
        brandIndicatorLocation2 = [(MUIAvatarImageContext *)v5 brandIndicatorLocation];
        if (EFObjectsAreEqual())
        {
          businessLogoID = [(MUIAvatarImageContext *)self businessLogoID];
          businessLogoID2 = [(MUIAvatarImageContext *)v5 businessLogoID];
          v12 = EFObjectsAreEqual();
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  category = [(MUIAvatarImageContext *)self category];
  v4 = [category hash];

  emailAddress = [(MUIAvatarImageContext *)self emailAddress];
  v6 = 33 * (33 * v4 + [emailAddress hash]);

  brandIndicatorLocation = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  v8 = 33 * (v6 + [brandIndicatorLocation hash]);

  v9 = 33 * (v8 + [(MUIAvatarImageContext *)self isAuthenticated]);
  v10 = v9 + [(MUIAvatarImageContext *)self reducePlaceholderImage]+ 0x3107FF0025;
  businessLogoID = [(MUIAvatarImageContext *)self businessLogoID];

  if (businessLogoID)
  {
    businessLogoID2 = [(MUIAvatarImageContext *)self businessLogoID];
    v10 = [businessLogoID2 hash] + 33 * v10;
  }

  return v10;
}

- (void)initWithMessageListItem:(uint64_t)a1 showRecipient:(uint64_t)a2 reducePlaceholderImage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIAvatarImageContext.m" lineNumber:28 description:@"Current thread must be main"];
}

@end
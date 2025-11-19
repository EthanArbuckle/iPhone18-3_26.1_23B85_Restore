@interface MUIAvatarImageContext
- (BOOL)isEqual:(id)a3;
- (MUIAvatarImageContext)initWithCategory:(id)a3 emailAddress:(id)a4 businessLogoID:(id)a5 isAuthenticated:(BOOL)a6 reducePlaceholderImage:(BOOL)a7 brandIndicatorLocation:(id)a8 scale:(double)a9 isRTL:(BOOL)a10;
- (MUIAvatarImageContext)initWithMessageListItem:(id)a3 showRecipient:(BOOL)a4 reducePlaceholderImage:(BOOL)a5;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (unint64_t)hash;
@end

@implementation MUIAvatarImageContext

- (NSString)ef_publicDescription
{
  v20 = MEMORY[0x277CCACA8];
  v19 = objc_opt_class();
  v3 = [(MUIAvatarImageContext *)self emailAddress];
  v4 = [v3 emailAddressValue];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ef_publicDescription];
  }

  else
  {
    v7 = MEMORY[0x277D07198];
    v8 = [v3 stringValue];
    v6 = [v7 fullyOrPartiallyRedactedStringForString:v8];
  }

  v9 = [(MUIAvatarImageContext *)self category];
  v10 = [v9 ef_publicDescription];
  v11 = [(MUIAvatarImageContext *)self businessLogoID];
  v12 = [(MUIAvatarImageContext *)self isAuthenticated];
  v13 = MEMORY[0x277D07198];
  v14 = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  v15 = [v14 absoluteString];
  v16 = [v13 fullyOrPartiallyRedactedStringForString:v15];
  v17 = [v20 stringWithFormat:@"<%@: %p>\nemailAddress: %@\ncategory: %@\nbusinessLogoID: %@\nisAuthenticated: %d\nbrandIndicatorLocation: %@", v19, self, v6, v10, v11, v12, v16];

  return v17;
}

- (MUIAvatarImageContext)initWithMessageListItem:(id)a3 showRecipient:(BOOL)a4 reducePlaceholderImage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (pthread_main_np() != 1)
  {
    [MUIAvatarImageContext initWithMessageListItem:a2 showRecipient:self reducePlaceholderImage:?];
  }

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if (v6)
  {
    v14 = [v9 toList];
    v15 = [v14 firstObject];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v18 = [v9 ccList];
      v19 = [v18 firstObject];
      v20 = v19;
      if (v19)
      {
        v17 = v19;
      }

      else
      {
        v21 = [v9 senderList];
        v17 = [v21 firstObject];
      }
    }
  }

  else
  {
    v14 = [v9 senderList];
    v17 = [v14 firstObject];
  }

  v22 = v13 == 1;
  v23 = [v9 category];
  v24 = [v9 businessLogoID];
  v25 = [v9 isAuthenticated];
  v26 = [v9 brandIndicatorLocation];
  LOBYTE(v29) = v22;
  v27 = [(MUIAvatarImageContext *)self initWithCategory:v23 emailAddress:v17 businessLogoID:v24 isAuthenticated:v25 reducePlaceholderImage:v5 brandIndicatorLocation:v26 scale:v12 isRTL:v29];

  return v27;
}

- (MUIAvatarImageContext)initWithCategory:(id)a3 emailAddress:(id)a4 businessLogoID:(id)a5 isAuthenticated:(BOOL)a6 reducePlaceholderImage:(BOOL)a7 brandIndicatorLocation:(id)a8 scale:(double)a9 isRTL:(BOOL)a10
{
  v18 = a3;
  v19 = a4;
  v24 = a5;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = MUIAvatarImageContext;
  v21 = [(MUIAvatarImageContext *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_category, a3);
    objc_storeStrong(&v22->_emailAddress, a4);
    objc_storeStrong(&v22->_businessLogoID, a5);
    v22->_isAuthenticated = a6;
    v22->_reducePlaceholderImage = a7;
    objc_storeStrong(&v22->_brandIndicatorLocation, a8);
    v22->_scale = a9;
    v22->_isRTL = a10;
  }

  return v22;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MUIAvatarImageContext *)self emailAddress];
  v6 = [(MUIAvatarImageContext *)self category];
  v7 = [v6 ef_publicDescription];
  v8 = [(MUIAvatarImageContext *)self businessLogoID];
  v9 = [(MUIAvatarImageContext *)self isAuthenticated];
  v10 = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  v11 = [v10 absoluteString];
  v12 = [v3 stringWithFormat:@"<%@: %p>\nemailAddress: %@\ncategory: %@\nbusinessLogoID: %@\nisAuthenticated: %d\nbrandIndicatorLocation: %@", v4, self, v5, v7, v8, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if ([(MUIAvatarImageContext *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(MUIAvatarImageContext *)v5 category];
    v7 = [(MUIAvatarImageContext *)self category];
    if ([v6 isEqual:v7])
    {
      v8 = [(MUIAvatarImageContext *)v5 emailAddress];
      v9 = [(MUIAvatarImageContext *)self emailAddress];
      if ([v8 isEqual:v9] && (v10 = -[MUIAvatarImageContext isAuthenticated](v5, "isAuthenticated"), v10 == -[MUIAvatarImageContext isAuthenticated](self, "isAuthenticated")) && (v11 = -[MUIAvatarImageContext reducePlaceholderImage](v5, "reducePlaceholderImage"), v11 == -[MUIAvatarImageContext reducePlaceholderImage](self, "reducePlaceholderImage")))
      {
        v14 = [(MUIAvatarImageContext *)self brandIndicatorLocation];
        v15 = [(MUIAvatarImageContext *)v5 brandIndicatorLocation];
        if (EFObjectsAreEqual())
        {
          v17 = [(MUIAvatarImageContext *)self businessLogoID];
          v16 = [(MUIAvatarImageContext *)v5 businessLogoID];
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
  v3 = [(MUIAvatarImageContext *)self category];
  v4 = [v3 hash];

  v5 = [(MUIAvatarImageContext *)self emailAddress];
  v6 = 33 * (33 * v4 + [v5 hash]);

  v7 = [(MUIAvatarImageContext *)self brandIndicatorLocation];
  v8 = 33 * (v6 + [v7 hash]);

  v9 = 33 * (v8 + [(MUIAvatarImageContext *)self isAuthenticated]);
  v10 = v9 + [(MUIAvatarImageContext *)self reducePlaceholderImage]+ 0x3107FF0025;
  v11 = [(MUIAvatarImageContext *)self businessLogoID];

  if (v11)
  {
    v12 = [(MUIAvatarImageContext *)self businessLogoID];
    v10 = [v12 hash] + 33 * v10;
  }

  return v10;
}

- (void)initWithMessageListItem:(uint64_t)a1 showRecipient:(uint64_t)a2 reducePlaceholderImage:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIAvatarImageContext.m" lineNumber:28 description:@"Current thread must be main"];
}

@end
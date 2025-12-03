@interface CALNNotificationAction
+ (CALNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title systemImageName:(id)name url:(id)url;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAction:(id)action;
- (CALNNotificationAction)initWithIdentifier:(id)identifier title:(id)title systemImageName:(id)name url:(id)url;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationAction

+ (CALNNotificationAction)actionWithIdentifier:(id)identifier title:(id)title systemImageName:(id)name url:(id)url
{
  urlCopy = url;
  nameCopy = name;
  titleCopy = title;
  identifierCopy = identifier;
  v14 = [[self alloc] initWithIdentifier:identifierCopy title:titleCopy systemImageName:nameCopy url:urlCopy];

  return v14;
}

- (CALNNotificationAction)initWithIdentifier:(id)identifier title:(id)title systemImageName:(id)name url:(id)url
{
  identifierCopy = identifier;
  titleCopy = title;
  nameCopy = name;
  urlCopy = url;
  v22.receiver = self;
  v22.super_class = CALNNotificationAction;
  v14 = [(CALNNotificationAction *)&v22 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v17;

    objc_storeStrong(&v14->_systemImageName, name);
    v19 = [urlCopy copy];
    url = v14->_url;
    v14->_url = v19;
  }

  return v14;
}

- (unint64_t)hash
{
  identifier = [(CALNNotificationAction *)self identifier];
  v4 = [identifier hash];

  title = [(CALNNotificationAction *)self title];
  v6 = [title hash] ^ v4;

  systemImageName = [(CALNNotificationAction *)self systemImageName];
  v8 = [systemImageName hash];

  v9 = [(CALNNotificationAction *)self url];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationAction *)self isEqualToAction:equalCopy];

  return v5;
}

- (BOOL)isEqualToAction:(id)action
{
  actionCopy = action;
  if (self == actionCopy)
  {
    v16 = 1;
  }

  else
  {
    identifier = [(CALNNotificationAction *)self identifier];
    identifier2 = [(CALNNotificationAction *)actionCopy identifier];
    v7 = CalEqualStrings();

    if (!v7)
    {
      goto LABEL_6;
    }

    title = [(CALNNotificationAction *)self title];
    title2 = [(CALNNotificationAction *)actionCopy title];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_6;
    }

    systemImageName = [(CALNNotificationAction *)self systemImageName];
    systemImageName2 = [(CALNNotificationAction *)actionCopy systemImageName];
    v13 = CalEqualStrings();

    if (v13)
    {
      v14 = [(CALNNotificationAction *)self url];
      v15 = [(CALNNotificationAction *)actionCopy url];
      v16 = CalEqualObjects();
    }

    else
    {
LABEL_6:
      v16 = 0;
    }
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CALNNotificationAction *)self identifier];
  title = [(CALNNotificationAction *)self title];
  systemImageName = [(CALNNotificationAction *)self systemImageName];
  v8 = [(CALNNotificationAction *)self url];
  v9 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, title = %@, systemImage = %@, url = %@)", v4, self, identifier, title, systemImageName, v8];

  return v9;
}

@end
@interface CALNNotificationAction
+ (CALNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 systemImageName:(id)a5 url:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAction:(id)a3;
- (CALNNotificationAction)initWithIdentifier:(id)a3 title:(id)a4 systemImageName:(id)a5 url:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationAction

+ (CALNNotificationAction)actionWithIdentifier:(id)a3 title:(id)a4 systemImageName:(id)a5 url:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithIdentifier:v13 title:v12 systemImageName:v11 url:v10];

  return v14;
}

- (CALNNotificationAction)initWithIdentifier:(id)a3 title:(id)a4 systemImageName:(id)a5 url:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = CALNNotificationAction;
  v14 = [(CALNNotificationAction *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [v11 copy];
    title = v14->_title;
    v14->_title = v17;

    objc_storeStrong(&v14->_systemImageName, a5);
    v19 = [v13 copy];
    url = v14->_url;
    v14->_url = v19;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(CALNNotificationAction *)self identifier];
  v4 = [v3 hash];

  v5 = [(CALNNotificationAction *)self title];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationAction *)self systemImageName];
  v8 = [v7 hash];

  v9 = [(CALNNotificationAction *)self url];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationAction *)self isEqualToAction:v4];

  return v5;
}

- (BOOL)isEqualToAction:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(CALNNotificationAction *)self identifier];
    v6 = [(CALNNotificationAction *)v4 identifier];
    v7 = CalEqualStrings();

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [(CALNNotificationAction *)self title];
    v9 = [(CALNNotificationAction *)v4 title];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [(CALNNotificationAction *)self systemImageName];
    v12 = [(CALNNotificationAction *)v4 systemImageName];
    v13 = CalEqualStrings();

    if (v13)
    {
      v14 = [(CALNNotificationAction *)self url];
      v15 = [(CALNNotificationAction *)v4 url];
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
  v5 = [(CALNNotificationAction *)self identifier];
  v6 = [(CALNNotificationAction *)self title];
  v7 = [(CALNNotificationAction *)self systemImageName];
  v8 = [(CALNNotificationAction *)self url];
  v9 = [v3 stringWithFormat:@"<%@: %p>(identifier = %@, title = %@, systemImage = %@, url = %@)", v4, self, v5, v6, v7, v8];

  return v9;
}

@end
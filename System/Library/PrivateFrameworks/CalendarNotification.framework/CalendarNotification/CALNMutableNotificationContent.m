@interface CALNMutableNotificationContent
- (CALNMutableNotificationContent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBody:(id)a3;
- (void)setCategoryIdentifier:(id)a3;
- (void)setDate:(id)a3;
- (void)setDefaultActionURL:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setFilterCriteria:(id)a3;
- (void)setIconIdentifier:(id)a3;
- (void)setPeopleIdentifiers:(id)a3;
- (void)setSectionIdentifier:(id)a3;
- (void)setSound:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setThreadIdentifier:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUserInfo:(id)a3;
- (void)setUserInfoValue:(id)a3 forKey:(id)a4;
@end

@implementation CALNMutableNotificationContent

- (CALNMutableNotificationContent)init
{
  v3.receiver = self;
  v3.super_class = CALNMutableNotificationContent;
  result = [(CALNMutableNotificationContent *)&v3 init];
  if (result)
  {
    result->super._interruptionLevel = 1;
  }

  return result;
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->super._title;
  self->super._title = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->super._subtitle;
  self->super._subtitle = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setBody:(id)a3
{
  v4 = [a3 copy];
  body = self->super._body;
  self->super._body = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setCategoryIdentifier:(id)a3
{
  v4 = [a3 copy];
  categoryIdentifier = self->super._categoryIdentifier;
  self->super._categoryIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSectionIdentifier:(id)a3
{
  v4 = [a3 copy];
  sectionIdentifier = self->super._sectionIdentifier;
  self->super._sectionIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)a3
{
  v4 = [a3 copy];
  date = self->super._date;
  self->super._date = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExpirationDate:(id)a3
{
  v4 = [a3 copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDefaultActionURL:(id)a3
{
  v4 = [a3 copy];
  defaultActionURL = self->super._defaultActionURL;
  self->super._defaultActionURL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIconIdentifier:(id)a3
{
  v4 = [a3 copy];
  iconIdentifier = self->super._iconIdentifier;
  self->super._iconIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPeopleIdentifiers:(id)a3
{
  v4 = [a3 copy];
  peopleIdentifiers = self->super._peopleIdentifiers;
  self->super._peopleIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSound:(id)a3
{
  v4 = [a3 copy];
  sound = self->super._sound;
  self->super._sound = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUserInfo:(id)a3
{
  v4 = [a3 copy];
  userInfo = self->super._userInfo;
  self->super._userInfo = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setThreadIdentifier:(id)a3
{
  v4 = [a3 copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setFilterCriteria:(id)a3
{
  v4 = [a3 copy];
  filterCriteria = self->super._filterCriteria;
  self->super._filterCriteria = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [CALNNotificationContent allocWithZone:a3];
  v24 = [(CALNNotificationContent *)self title];
  v23 = [(CALNNotificationContent *)self subtitle];
  v22 = [(CALNNotificationContent *)self body];
  v19 = [(CALNNotificationContent *)self categoryIdentifier];
  v18 = [(CALNNotificationContent *)self sectionIdentifier];
  v17 = [(CALNNotificationContent *)self date];
  v15 = [(CALNNotificationContent *)self expirationDate];
  v13 = [(CALNNotificationContent *)self defaultActionURL];
  v12 = [(CALNNotificationContent *)self iconIdentifier];
  v16 = [(CALNNotificationContent *)self shouldHideTime];
  v14 = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v4 = [(CALNNotificationContent *)self peopleIdentifiers];
  v5 = [(CALNNotificationContent *)self sound];
  v6 = [(CALNNotificationContent *)self userInfo];
  v7 = [(CALNNotificationContent *)self threadIdentifier];
  v8 = [(CALNNotificationContent *)self interruptionLevel];
  v9 = [(CALNNotificationContent *)self filterCriteria];
  BYTE1(v11) = v14;
  LOBYTE(v11) = v16;
  v21 = [(CALNNotificationContent *)v20 _initWithTitle:v24 subtitle:v23 body:v22 categoryIdentifier:v19 sectionIdentifier:v18 date:v17 expirationDate:v15 defaultActionURL:v13 iconIdentifier:v12 shouldHideTime:v11 shouldSuppressSyncDismissalWhenRemoved:v4 peopleIdentifiers:v5 sound:v6 userInfo:v7 threadIdentifier:v8 interruptionLevel:v9 filterCriteria:?];

  return v21;
}

- (void)setUserInfoValue:(id)a3 forKey:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(CALNNotificationContent *)self userInfo];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mutableCopy];
    [v10 setObject:v7 forKeyedSubscript:v6];

    v11 = [v10 copy];
  }

  else
  {
    v13 = v6;
    v14[0] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  [(CALNMutableNotificationContent *)self setUserInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

@end
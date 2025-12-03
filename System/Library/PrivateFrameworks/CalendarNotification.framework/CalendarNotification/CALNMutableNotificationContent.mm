@interface CALNMutableNotificationContent
- (CALNMutableNotificationContent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBody:(id)body;
- (void)setCategoryIdentifier:(id)identifier;
- (void)setDate:(id)date;
- (void)setDefaultActionURL:(id)l;
- (void)setExpirationDate:(id)date;
- (void)setFilterCriteria:(id)criteria;
- (void)setIconIdentifier:(id)identifier;
- (void)setPeopleIdentifiers:(id)identifiers;
- (void)setSectionIdentifier:(id)identifier;
- (void)setSound:(id)sound;
- (void)setSubtitle:(id)subtitle;
- (void)setThreadIdentifier:(id)identifier;
- (void)setTitle:(id)title;
- (void)setUserInfo:(id)info;
- (void)setUserInfoValue:(id)value forKey:(id)key;
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

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->super._title;
  self->super._title = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->super._subtitle;
  self->super._subtitle = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setBody:(id)body
{
  v4 = [body copy];
  body = self->super._body;
  self->super._body = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setCategoryIdentifier:(id)identifier
{
  v4 = [identifier copy];
  categoryIdentifier = self->super._categoryIdentifier;
  self->super._categoryIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSectionIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sectionIdentifier = self->super._sectionIdentifier;
  self->super._sectionIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)date
{
  v4 = [date copy];
  date = self->super._date;
  self->super._date = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setExpirationDate:(id)date
{
  v4 = [date copy];
  expirationDate = self->super._expirationDate;
  self->super._expirationDate = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDefaultActionURL:(id)l
{
  v4 = [l copy];
  defaultActionURL = self->super._defaultActionURL;
  self->super._defaultActionURL = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setIconIdentifier:(id)identifier
{
  v4 = [identifier copy];
  iconIdentifier = self->super._iconIdentifier;
  self->super._iconIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setPeopleIdentifiers:(id)identifiers
{
  v4 = [identifiers copy];
  peopleIdentifiers = self->super._peopleIdentifiers;
  self->super._peopleIdentifiers = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSound:(id)sound
{
  v4 = [sound copy];
  sound = self->super._sound;
  self->super._sound = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUserInfo:(id)info
{
  v4 = [info copy];
  userInfo = self->super._userInfo;
  self->super._userInfo = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setThreadIdentifier:(id)identifier
{
  v4 = [identifier copy];
  threadIdentifier = self->super._threadIdentifier;
  self->super._threadIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setFilterCriteria:(id)criteria
{
  v4 = [criteria copy];
  filterCriteria = self->super._filterCriteria;
  self->super._filterCriteria = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [CALNNotificationContent allocWithZone:zone];
  title = [(CALNNotificationContent *)self title];
  subtitle = [(CALNNotificationContent *)self subtitle];
  body = [(CALNNotificationContent *)self body];
  categoryIdentifier = [(CALNNotificationContent *)self categoryIdentifier];
  sectionIdentifier = [(CALNNotificationContent *)self sectionIdentifier];
  date = [(CALNNotificationContent *)self date];
  expirationDate = [(CALNNotificationContent *)self expirationDate];
  defaultActionURL = [(CALNNotificationContent *)self defaultActionURL];
  iconIdentifier = [(CALNNotificationContent *)self iconIdentifier];
  shouldHideTime = [(CALNNotificationContent *)self shouldHideTime];
  shouldSuppressSyncDismissalWhenRemoved = [(CALNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  peopleIdentifiers = [(CALNNotificationContent *)self peopleIdentifiers];
  sound = [(CALNNotificationContent *)self sound];
  userInfo = [(CALNNotificationContent *)self userInfo];
  threadIdentifier = [(CALNNotificationContent *)self threadIdentifier];
  interruptionLevel = [(CALNNotificationContent *)self interruptionLevel];
  filterCriteria = [(CALNNotificationContent *)self filterCriteria];
  BYTE1(v11) = shouldSuppressSyncDismissalWhenRemoved;
  LOBYTE(v11) = shouldHideTime;
  v21 = [(CALNNotificationContent *)v20 _initWithTitle:title subtitle:subtitle body:body categoryIdentifier:categoryIdentifier sectionIdentifier:sectionIdentifier date:date expirationDate:expirationDate defaultActionURL:defaultActionURL iconIdentifier:iconIdentifier shouldHideTime:v11 shouldSuppressSyncDismissalWhenRemoved:peopleIdentifiers peopleIdentifiers:sound sound:userInfo userInfo:threadIdentifier threadIdentifier:interruptionLevel interruptionLevel:filterCriteria filterCriteria:?];

  return v21;
}

- (void)setUserInfoValue:(id)value forKey:(id)key
{
  v14[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  userInfo = [(CALNNotificationContent *)self userInfo];
  if (userInfo)
  {
    v9 = userInfo;
    v10 = [userInfo mutableCopy];
    [v10 setObject:valueCopy forKeyedSubscript:keyCopy];

    v11 = [v10 copy];
  }

  else
  {
    v13 = keyCopy;
    v14[0] = valueCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  [(CALNMutableNotificationContent *)self setUserInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

@end
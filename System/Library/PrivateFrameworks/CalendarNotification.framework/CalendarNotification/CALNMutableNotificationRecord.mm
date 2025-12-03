@interface CALNMutableNotificationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContent:(id)content;
- (void)setDate:(id)date;
- (void)setSourceClientIdentifier:(id)identifier;
- (void)setSourceIdentifier:(id)identifier;
@end

@implementation CALNMutableNotificationRecord

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CALNNotificationRecord allocWithZone:zone];
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  content = [(CALNNotificationRecord *)self content];
  date = [(CALNNotificationRecord *)self date];
  v9 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier content:content date:date shouldPresentAlert:[(CALNNotificationRecord *)self shouldPresentAlert] shouldPlaySound:[(CALNNotificationRecord *)self shouldPlaySound]];

  return v9;
}

- (void)setSourceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sourceIdentifier = self->super._sourceIdentifier;
  self->super._sourceIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSourceClientIdentifier:(id)identifier
{
  v4 = [identifier copy];
  sourceClientIdentifier = self->super._sourceClientIdentifier;
  self->super._sourceClientIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContent:(id)content
{
  v4 = [content copy];
  content = self->super._content;
  self->super._content = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)date
{
  v4 = [date copy];
  date = self->super._date;
  self->super._date = v4;

  MEMORY[0x2821F96F8]();
}

@end
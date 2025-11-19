@interface CALNMutableNotificationRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContent:(id)a3;
- (void)setDate:(id)a3;
- (void)setSourceClientIdentifier:(id)a3;
- (void)setSourceIdentifier:(id)a3;
@end

@implementation CALNMutableNotificationRecord

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CALNNotificationRecord allocWithZone:a3];
  v5 = [(CALNNotificationRecord *)self sourceIdentifier];
  v6 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v7 = [(CALNNotificationRecord *)self content];
  v8 = [(CALNNotificationRecord *)self date];
  v9 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:v5 sourceClientIdentifier:v6 content:v7 date:v8 shouldPresentAlert:[(CALNNotificationRecord *)self shouldPresentAlert] shouldPlaySound:[(CALNNotificationRecord *)self shouldPlaySound]];

  return v9;
}

- (void)setSourceIdentifier:(id)a3
{
  v4 = [a3 copy];
  sourceIdentifier = self->super._sourceIdentifier;
  self->super._sourceIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setSourceClientIdentifier:(id)a3
{
  v4 = [a3 copy];
  sourceClientIdentifier = self->super._sourceClientIdentifier;
  self->super._sourceClientIdentifier = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setContent:(id)a3
{
  v4 = [a3 copy];
  content = self->super._content;
  self->super._content = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setDate:(id)a3
{
  v4 = [a3 copy];
  date = self->super._date;
  self->super._date = v4;

  MEMORY[0x2821F96F8]();
}

@end
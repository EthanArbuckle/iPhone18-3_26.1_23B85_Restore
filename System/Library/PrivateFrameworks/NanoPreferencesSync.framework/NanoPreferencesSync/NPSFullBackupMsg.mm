@interface NPSFullBackupMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NPSFullBackupMsg

- (id)description
{
  v7.receiver = self;
  v7.super_class = NPSFullBackupMsg;
  v3 = [(NPSFullBackupMsg *)&v7 description];
  dictionaryRepresentation = [(NPSFullBackupMsg *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
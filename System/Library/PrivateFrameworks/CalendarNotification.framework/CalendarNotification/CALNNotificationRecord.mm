@interface CALNNotificationRecord
- (BOOL)hasAlertContent;
- (BOOL)hasSound;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (CALNNotificationRecord)initWithCoder:(id)coder;
- (CALNNotificationRecord)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier content:(id)content date:(id)date shouldPresentAlert:(BOOL)alert shouldPlaySound:(BOOL)sound;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNNotificationRecord

- (CALNNotificationRecord)initWithSourceIdentifier:(id)identifier sourceClientIdentifier:(id)clientIdentifier content:(id)content date:(id)date shouldPresentAlert:(BOOL)alert shouldPlaySound:(BOOL)sound
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  contentCopy = content;
  dateCopy = date;
  v28.receiver = self;
  v28.super_class = CALNNotificationRecord;
  v18 = [(CALNNotificationRecord *)&v28 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    sourceIdentifier = v18->_sourceIdentifier;
    v18->_sourceIdentifier = v19;

    v21 = [clientIdentifierCopy copy];
    sourceClientIdentifier = v18->_sourceClientIdentifier;
    v18->_sourceClientIdentifier = v21;

    v23 = [contentCopy copy];
    content = v18->_content;
    v18->_content = v23;

    v25 = [dateCopy copy];
    date = v18->_date;
    v18->_date = v25;

    v18->_shouldPresentAlert = alert;
    v18->_shouldPlaySound = sound;
  }

  return v18;
}

- (CALNNotificationRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceClientIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [coderCopy decodeBoolForKey:@"shouldPresentAlert"];
  v10 = [coderCopy decodeBoolForKey:@"shouldPlaySound"];

  v11 = [(CALNNotificationRecord *)self initWithSourceIdentifier:v5 sourceClientIdentifier:v6 content:v7 date:v8 shouldPresentAlert:v9 shouldPlaySound:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];

  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  [coderCopy encodeObject:sourceClientIdentifier forKey:@"sourceClientIdentifier"];

  content = [(CALNNotificationRecord *)self content];
  [coderCopy encodeObject:content forKey:@"content"];

  date = [(CALNNotificationRecord *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  [coderCopy encodeBool:-[CALNNotificationRecord shouldPresentAlert](self forKey:{"shouldPresentAlert"), @"shouldPresentAlert"}];
  [coderCopy encodeBool:-[CALNNotificationRecord shouldPlaySound](self forKey:{"shouldPlaySound"), @"shouldPlaySound"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationRecord *)self isEqualToRecord:equalCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  sourceIdentifier2 = [recordCopy sourceIdentifier];
  v7 = CalEqualStrings();

  if (!v7)
  {
    goto LABEL_6;
  }

  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];
  v10 = CalEqualStrings();

  if (!v10)
  {
    goto LABEL_6;
  }

  content = [(CALNNotificationRecord *)self content];
  content2 = [recordCopy content];
  v13 = CalEqualObjects();

  if (!v13)
  {
    goto LABEL_6;
  }

  date = [(CALNNotificationRecord *)self date];
  date2 = [recordCopy date];
  v16 = CalEqualObjects();

  if (!v16)
  {
    goto LABEL_6;
  }

  shouldPresentAlert = [(CALNNotificationRecord *)self shouldPresentAlert];
  if (shouldPresentAlert == [recordCopy shouldPresentAlert])
  {
    shouldPlaySound = [(CALNNotificationRecord *)self shouldPlaySound];
    v18 = shouldPlaySound ^ [recordCopy shouldPlaySound] ^ 1;
  }

  else
  {
LABEL_6:
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  v4 = [sourceIdentifier hash];

  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v6 = [sourceClientIdentifier hash] ^ v4;

  content = [(CALNNotificationRecord *)self content];
  v8 = [content hash];

  date = [(CALNNotificationRecord *)self date];
  v10 = v6 ^ v8 ^ [date hash];

  shouldPresentAlert = [(CALNNotificationRecord *)self shouldPresentAlert];
  shouldPlaySound = [(CALNNotificationRecord *)self shouldPlaySound];
  v13 = 2;
  if (!shouldPlaySound)
  {
    v13 = 0;
  }

  return v10 ^ shouldPresentAlert ^ v13;
}

- (BOOL)hasAlertContent
{
  content = [(CALNNotificationRecord *)self content];
  if (content)
  {
    content2 = [(CALNNotificationRecord *)self content];
    body = [content2 body];
    if ([body length])
    {
      v6 = 1;
    }

    else
    {
      content3 = [(CALNNotificationRecord *)self content];
      subtitle = [content3 subtitle];
      if ([subtitle length])
      {
        v6 = 1;
      }

      else
      {
        content4 = [(CALNNotificationRecord *)self content];
        title = [content4 title];
        v6 = [title length] != 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSound
{
  content = [(CALNNotificationRecord *)self content];
  sound = [content sound];
  v4 = [sound alertType] != 0;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  content = [(CALNNotificationRecord *)self content];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord hasAlertContent](self, "hasAlertContent")}];
  v11 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@, content = %@, shouldPresentAlert = %@, shouldPlaySound = %@, hasAlertContent = %@)", v4, self, sourceIdentifier, sourceClientIdentifier, content, v8, v9, v10];

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CALNMutableNotificationRecord allocWithZone:zone];
  sourceIdentifier = [(CALNNotificationRecord *)self sourceIdentifier];
  sourceClientIdentifier = [(CALNNotificationRecord *)self sourceClientIdentifier];
  content = [(CALNNotificationRecord *)self content];
  date = [(CALNNotificationRecord *)self date];
  v9 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier content:content date:date shouldPresentAlert:[(CALNNotificationRecord *)self shouldPresentAlert] shouldPlaySound:[(CALNNotificationRecord *)self shouldPlaySound]];

  return v9;
}

@end
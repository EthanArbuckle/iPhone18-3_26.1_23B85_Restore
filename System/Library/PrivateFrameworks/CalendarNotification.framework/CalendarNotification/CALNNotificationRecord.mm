@interface CALNNotificationRecord
- (BOOL)hasAlertContent;
- (BOOL)hasSound;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (CALNNotificationRecord)initWithCoder:(id)a3;
- (CALNNotificationRecord)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4 content:(id)a5 date:(id)a6 shouldPresentAlert:(BOOL)a7 shouldPlaySound:(BOOL)a8;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNNotificationRecord

- (CALNNotificationRecord)initWithSourceIdentifier:(id)a3 sourceClientIdentifier:(id)a4 content:(id)a5 date:(id)a6 shouldPresentAlert:(BOOL)a7 shouldPlaySound:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v28.receiver = self;
  v28.super_class = CALNNotificationRecord;
  v18 = [(CALNNotificationRecord *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    sourceIdentifier = v18->_sourceIdentifier;
    v18->_sourceIdentifier = v19;

    v21 = [v15 copy];
    sourceClientIdentifier = v18->_sourceClientIdentifier;
    v18->_sourceClientIdentifier = v21;

    v23 = [v16 copy];
    content = v18->_content;
    v18->_content = v23;

    v25 = [v17 copy];
    date = v18->_date;
    v18->_date = v25;

    v18->_shouldPresentAlert = a7;
    v18->_shouldPlaySound = a8;
  }

  return v18;
}

- (CALNNotificationRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceClientIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v9 = [v4 decodeBoolForKey:@"shouldPresentAlert"];
  v10 = [v4 decodeBoolForKey:@"shouldPlaySound"];

  v11 = [(CALNNotificationRecord *)self initWithSourceIdentifier:v5 sourceClientIdentifier:v6 content:v7 date:v8 shouldPresentAlert:v9 shouldPlaySound:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CALNNotificationRecord *)self sourceIdentifier];
  [v8 encodeObject:v4 forKey:@"sourceIdentifier"];

  v5 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  [v8 encodeObject:v5 forKey:@"sourceClientIdentifier"];

  v6 = [(CALNNotificationRecord *)self content];
  [v8 encodeObject:v6 forKey:@"content"];

  v7 = [(CALNNotificationRecord *)self date];
  [v8 encodeObject:v7 forKey:@"date"];

  [v8 encodeBool:-[CALNNotificationRecord shouldPresentAlert](self forKey:{"shouldPresentAlert"), @"shouldPresentAlert"}];
  [v8 encodeBool:-[CALNNotificationRecord shouldPlaySound](self forKey:{"shouldPlaySound"), @"shouldPlaySound"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationRecord *)self isEqualToRecord:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = [(CALNNotificationRecord *)self sourceIdentifier];
  v6 = [v4 sourceIdentifier];
  v7 = CalEqualStrings();

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v9 = [v4 sourceClientIdentifier];
  v10 = CalEqualStrings();

  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [(CALNNotificationRecord *)self content];
  v12 = [v4 content];
  v13 = CalEqualObjects();

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = [(CALNNotificationRecord *)self date];
  v15 = [v4 date];
  v16 = CalEqualObjects();

  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = [(CALNNotificationRecord *)self shouldPresentAlert];
  if (v17 == [v4 shouldPresentAlert])
  {
    v20 = [(CALNNotificationRecord *)self shouldPlaySound];
    v18 = v20 ^ [v4 shouldPlaySound] ^ 1;
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
  v3 = [(CALNNotificationRecord *)self sourceIdentifier];
  v4 = [v3 hash];

  v5 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationRecord *)self content];
  v8 = [v7 hash];

  v9 = [(CALNNotificationRecord *)self date];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(CALNNotificationRecord *)self shouldPresentAlert];
  v12 = [(CALNNotificationRecord *)self shouldPlaySound];
  v13 = 2;
  if (!v12)
  {
    v13 = 0;
  }

  return v10 ^ v11 ^ v13;
}

- (BOOL)hasAlertContent
{
  v3 = [(CALNNotificationRecord *)self content];
  if (v3)
  {
    v4 = [(CALNNotificationRecord *)self content];
    v5 = [v4 body];
    if ([v5 length])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(CALNNotificationRecord *)self content];
      v8 = [v7 subtitle];
      if ([v8 length])
      {
        v6 = 1;
      }

      else
      {
        v9 = [(CALNNotificationRecord *)self content];
        v10 = [v9 title];
        v6 = [v10 length] != 0;
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
  v2 = [(CALNNotificationRecord *)self content];
  v3 = [v2 sound];
  v4 = [v3 alertType] != 0;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNNotificationRecord *)self sourceIdentifier];
  v6 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v7 = [(CALNNotificationRecord *)self content];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord shouldPresentAlert](self, "shouldPresentAlert")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord shouldPlaySound](self, "shouldPlaySound")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNNotificationRecord hasAlertContent](self, "hasAlertContent")}];
  v11 = [v3 stringWithFormat:@"<%@: %p>(sourceIdentifier = %@, sourceClientIdentifier = %@, content = %@, shouldPresentAlert = %@, shouldPlaySound = %@, hasAlertContent = %@)", v4, self, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CALNMutableNotificationRecord allocWithZone:a3];
  v5 = [(CALNNotificationRecord *)self sourceIdentifier];
  v6 = [(CALNNotificationRecord *)self sourceClientIdentifier];
  v7 = [(CALNNotificationRecord *)self content];
  v8 = [(CALNNotificationRecord *)self date];
  v9 = [(CALNNotificationRecord *)v4 initWithSourceIdentifier:v5 sourceClientIdentifier:v6 content:v7 date:v8 shouldPresentAlert:[(CALNNotificationRecord *)self shouldPresentAlert] shouldPlaySound:[(CALNNotificationRecord *)self shouldPlaySound]];

  return v9;
}

@end
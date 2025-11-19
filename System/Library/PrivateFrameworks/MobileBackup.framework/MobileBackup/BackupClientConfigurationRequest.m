@interface BackupClientConfigurationRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BackupClientConfigurationRequest

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = BackupClientConfigurationRequest;
  v3 = [(BackupClientConfigurationRequest *)&v7 description];
  v4 = [(BackupClientConfigurationRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (BOOL)readFrom:(id)a3
{
  while (1)
  {
    v4 = [a3 position];
    if (v4 >= [a3 length] || (objc_msgSend(a3, "hasError") & 1) != 0)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v14 = 0;
      v8 = [a3 position] + 1;
      if (v8 >= [a3 position] && (v9 = objc_msgSend(a3, "position") + 1, v9 <= objc_msgSend(a3, "length")))
      {
        v10 = [a3 data];
        [v10 getBytes:&v14 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
      }

      v7 |= (v14 & 0x7F) << v5;
      if ((v14 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      if (v6++ >= 9)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a3 hasError] ? 0 : v7;
LABEL_15:
    if (([a3 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a3 hasError] ^ 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
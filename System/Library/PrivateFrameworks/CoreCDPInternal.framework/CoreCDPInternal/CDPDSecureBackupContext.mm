@interface CDPDSecureBackupContext
- (id)description;
@end

@implementation CDPDSecureBackupContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  localSecret = [(CDPDSecureBackupContext *)self localSecret];
  v5 = @"YES";
  if (localSecret)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  recoverySecret = [(CDPDSecureBackupContext *)self recoverySecret];
  if (!recoverySecret)
  {
    v5 = @"NO";
  }

  preRecordUUID = [(CDPDSecureBackupContext *)self preRecordUUID];
  v9 = [v3 stringWithFormat:@"<CDPDSecureBackupContext: local: %@ remote: %@ preRecord: %@>", v6, v5, preRecordUUID];

  return v9;
}

@end
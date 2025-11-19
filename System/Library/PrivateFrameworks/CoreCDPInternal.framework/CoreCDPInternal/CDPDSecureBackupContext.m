@interface CDPDSecureBackupContext
- (id)description;
@end

@implementation CDPDSecureBackupContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CDPDSecureBackupContext *)self localSecret];
  v5 = @"YES";
  if (v4)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(CDPDSecureBackupContext *)self recoverySecret];
  if (!v7)
  {
    v5 = @"NO";
  }

  v8 = [(CDPDSecureBackupContext *)self preRecordUUID];
  v9 = [v3 stringWithFormat:@"<CDPDSecureBackupContext: local: %@ remote: %@ preRecord: %@>", v6, v5, v8];

  return v9;
}

@end
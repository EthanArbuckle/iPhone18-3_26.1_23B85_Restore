@interface NSObject(MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails)
- (id)_musicKit_self_transactionDetails;
- (id)musicKit_transactionDetails_changes;
- (id)musicKit_transactionDetails_identifier;
- (id)musicKit_transactionDetails_referenceIdentifier;
@end

@implementation NSObject(MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails)

- (id)_musicKit_self_transactionDetails
{
  getMPModelLibraryPlaylistEditTransactionDetailsClass();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)musicKit_transactionDetails_identifier
{
  _musicKit_self_transactionDetails = [self _musicKit_self_transactionDetails];
  identifier = [_musicKit_self_transactionDetails identifier];

  return identifier;
}

- (id)musicKit_transactionDetails_referenceIdentifier
{
  _musicKit_self_transactionDetails = [self _musicKit_self_transactionDetails];
  referenceIdentifier = [_musicKit_self_transactionDetails referenceIdentifier];

  return referenceIdentifier;
}

- (id)musicKit_transactionDetails_changes
{
  _musicKit_self_transactionDetails = [self _musicKit_self_transactionDetails];
  changes = [_musicKit_self_transactionDetails changes];

  return changes;
}

@end
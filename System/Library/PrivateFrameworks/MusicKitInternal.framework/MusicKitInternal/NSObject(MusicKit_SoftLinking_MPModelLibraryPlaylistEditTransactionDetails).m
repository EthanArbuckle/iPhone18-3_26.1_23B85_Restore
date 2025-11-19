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
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)musicKit_transactionDetails_identifier
{
  v1 = [a1 _musicKit_self_transactionDetails];
  v2 = [v1 identifier];

  return v2;
}

- (id)musicKit_transactionDetails_referenceIdentifier
{
  v1 = [a1 _musicKit_self_transactionDetails];
  v2 = [v1 referenceIdentifier];

  return v2;
}

- (id)musicKit_transactionDetails_changes
{
  v1 = [a1 _musicKit_self_transactionDetails];
  v2 = [v1 changes];

  return v2;
}

@end
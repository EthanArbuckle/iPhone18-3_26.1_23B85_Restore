@interface MusicKit_SoftLinking(MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails)
+ (id)emptyTransactionDetailsWithIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails;
+ (id)transactionDetailsWithIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails changes:;
@end

@implementation MusicKit_SoftLinking(MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails)

+ (id)transactionDetailsWithIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails changes:
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(getMPModelLibraryPlaylistEditTransactionDetailsClass()) initWithIdentifier:v6 changes:v5];

  return v7;
}

+ (id)emptyTransactionDetailsWithIdentifier:()MusicKit_SoftLinking_MPModelLibraryPlaylistEditTransactionDetails
{
  v3 = a3;
  v4 = [objc_alloc(getMPModelLibraryPlaylistEditTransactionDetailsClass()) initWithIdentifier:v3 changes:MEMORY[0x1E695E0F0]];

  return v4;
}

@end
@interface MPModelArtist
@end

@implementation MPModelArtist

void __67__MPModelArtist_ICRadioContentReference__mpc_radioContentReference__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  if ([v2 length])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) setArtistName:v2];
  }
}

@end
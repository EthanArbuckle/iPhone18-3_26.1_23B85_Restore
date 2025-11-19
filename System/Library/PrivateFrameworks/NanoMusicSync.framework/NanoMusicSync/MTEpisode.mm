@interface MTEpisode
@end

@implementation MTEpisode

uint64_t __46__MTEpisode_NMSDownloadableItem__downloadInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) podcast];
  v6 = [v5 feedURL];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(a1 + 32) duration];
  *(*(*(a1 + 56) + 8) + 24) = v9;
  result = [*(a1 + 32) byteSize];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

uint64_t __49__MTEpisode_NMSDownloadableItem___sizeEstimation__block_invoke()
{
  v0 = objc_alloc_init(NMSPodcastSizeEstimation);
  v1 = _sizeEstimation_sizeEstimation;
  _sizeEstimation_sizeEstimation = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end
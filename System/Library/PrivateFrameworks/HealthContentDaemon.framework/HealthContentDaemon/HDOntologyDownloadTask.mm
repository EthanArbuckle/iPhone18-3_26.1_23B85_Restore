@interface HDOntologyDownloadTask
@end

@implementation HDOntologyDownloadTask

id __63___HDOntologyDownloadTask_downloadShardsForEntries_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_HDOntologyShardDownloadTask alloc] initForEntry:v3 downloader:*(*(a1 + 32) + 8) session:*(*(a1 + 32) + 16) group:*(a1 + 40)];

  [v4 resume];

  return v4;
}

void __63___HDOntologyDownloadTask_downloadShardsForEntries_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _taskError];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v2 == 0);
}

BOOL __37___HDOntologyDownloadTask__taskError__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

@end
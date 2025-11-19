@interface NMSMutableMediaDownloadInfo
- (NMSMutableMediaDownloadInfo)init;
- (void)addItem:(id)a3;
@end

@implementation NMSMutableMediaDownloadInfo

- (NMSMutableMediaDownloadInfo)init
{
  v3 = [MEMORY[0x277CBEB70] orderedSet];
  v4 = [(NMSMediaDownloadInfo *)self initWithItems:v3];

  return v4;
}

- (void)addItem:(id)a3
{
  v7 = a3;
  v4 = [(NMSMediaDownloadInfo *)self items];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    -[NMSMediaDownloadInfo setTotalItemSize:](self, "setTotalItemSize:", [v7 size] + -[NMSMediaDownloadInfo totalItemSize](self, "totalItemSize"));
  }

  v6 = [(NMSMediaDownloadInfo *)self items];
  [v6 addObject:v7];
}

@end
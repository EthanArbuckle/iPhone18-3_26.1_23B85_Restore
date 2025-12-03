@interface NMSMutableMediaDownloadInfo
- (NMSMutableMediaDownloadInfo)init;
- (void)addItem:(id)item;
@end

@implementation NMSMutableMediaDownloadInfo

- (NMSMutableMediaDownloadInfo)init
{
  orderedSet = [MEMORY[0x277CBEB70] orderedSet];
  v4 = [(NMSMediaDownloadInfo *)self initWithItems:orderedSet];

  return v4;
}

- (void)addItem:(id)item
{
  itemCopy = item;
  items = [(NMSMediaDownloadInfo *)self items];
  v5 = [items containsObject:itemCopy];

  if ((v5 & 1) == 0)
  {
    -[NMSMediaDownloadInfo setTotalItemSize:](self, "setTotalItemSize:", [itemCopy size] + -[NMSMediaDownloadInfo totalItemSize](self, "totalItemSize"));
  }

  items2 = [(NMSMediaDownloadInfo *)self items];
  [items2 addObject:itemCopy];
}

@end
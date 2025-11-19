@interface NMSMediaContainerQuotaData
- (BOOL)hasItemsAboveQuota;
- (id)quotaRefObj;
@end

@implementation NMSMediaContainerQuotaData

- (BOOL)hasItemsAboveQuota
{
  if ([(NMSMediaContainerQuotaData *)self hasSkippedItems])
  {
    return 1;
  }

  return [(NMSMediaContainerQuotaData *)self hasRemovedItems];
}

- (id)quotaRefObj
{
  WeakRetained = objc_loadWeakRetained(&self->_quotaRefObj);

  return WeakRetained;
}

@end
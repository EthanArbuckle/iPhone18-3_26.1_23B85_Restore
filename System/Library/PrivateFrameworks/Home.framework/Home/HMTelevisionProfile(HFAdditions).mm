@interface HMTelevisionProfile(HFAdditions)
- (id)hf_mediaSourceComparator;
@end

@implementation HMTelevisionProfile(HFAdditions)

- (id)hf_mediaSourceComparator
{
  v12 = *MEMORY[0x277D85DE8];
  mediaSourceDisplayOrder = [self mediaSourceDisplayOrder];
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEBUG, "No media source display order for television profile: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMTelevisionProfile_HFAdditions__hf_mediaSourceComparator__block_invoke;
  aBlock[3] = &unk_277DFA010;
  v9 = mediaSourceDisplayOrder;
  v4 = mediaSourceDisplayOrder;
  v5 = _Block_copy(aBlock);

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end
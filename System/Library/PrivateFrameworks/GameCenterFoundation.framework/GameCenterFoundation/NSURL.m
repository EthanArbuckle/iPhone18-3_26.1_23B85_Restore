@interface NSURL
@end

@implementation NSURL

uint64_t __41__NSURL_GKAdditions___gkIsValidServerURL__block_invoke()
{
  _gkIsValidServerURL_sValidSchemes = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"http", @"https", 0}];

  return MEMORY[0x2821F96F8]();
}

@end
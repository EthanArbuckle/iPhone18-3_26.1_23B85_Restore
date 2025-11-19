@interface NSString
@end

@implementation NSString

uint64_t __63__NSString_ECEmailAddressQuoting__ecemailaddress_uniquedDomain__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.emailcore.domain_uniqueStrings", v0);
  v2 = ecemailaddress_uniquedDomain_uniqueStringsQueue;
  ecemailaddress_uniquedDomain_uniqueStringsQueue = v1;

  ecemailaddress_uniquedDomain_uniqueStrings = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:100];

  return MEMORY[0x2821F96F8]();
}

uint64_t __75__NSString_ECEmailAddressQuoting__ecemailaddress_trimmedAndQuotedLocalPart__block_invoke()
{
  ecemailaddress_trimmedAndQuotedLocalPart_specials = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@" ()<>[]:@\\, "}];;

  return MEMORY[0x2821F96F8]();
}

uint64_t __63__NSString_ECEmailAddressQuoting__ecemailaddress_uniquedDomain__block_invoke_261(uint64_t a1)
{
  if ([ecemailaddress_uniquedDomain_uniqueStrings count] >= 0x64)
  {
    [ecemailaddress_uniquedDomain_uniqueStrings removeAllObjects];
  }

  v2 = [ecemailaddress_uniquedDomain_uniqueStrings ef_uniquedObject:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __77__NSString_ECEmailAddressQuoting__ecemailaddress_trimmedAndQuotedDisplayName__block_invoke()
{
  ecemailaddress_trimmedAndQuotedDisplayName_specials = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"()<>[]:@\\, ."}];;

  return MEMORY[0x2821F96F8]();
}

uint64_t __53__NSString_ECPersonNameComponents__ec_nameExtensions__block_invoke()
{
  ec_nameExtensions_nameExtensions = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"jr.", @"sr.", @"iii", @"m.d.", @"md", @"d.d.s.", @"dds", @"ph.d.", @"phd", @"m.b.a.", @"mba", @"esq.", @"esq", @"jr", @"sr", @"ii", @"iv", @"v", @"vi", @"vii", @"viii", @"ix", 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__NSString_ECPersonNameComponents__ec_partialSurnames__block_invoke()
{
  ec_partialSurnames_partialSurnames = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"de", @"den", @"der", @"di", @"do", @"du", @"la", @"le", @"les", @"van", @"von", 0}];

  return MEMORY[0x2821F96F8]();
}

@end
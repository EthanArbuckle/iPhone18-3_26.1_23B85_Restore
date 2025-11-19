@interface NSDate
@end

@implementation NSDate

void __38__NSDate_Additions__hf_sharedCalendar__block_invoke()
{
  v0 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v1 = qword_280E03498;
  qword_280E03498 = v0;
}

void __38__NSDate_Additions__hf_sharedTimeZone__block_invoke()
{
  v0 = [MEMORY[0x277CBEBB0] localTimeZone];
  v1 = qword_280E034A8;
  qword_280E034A8 = v0;
}

@end
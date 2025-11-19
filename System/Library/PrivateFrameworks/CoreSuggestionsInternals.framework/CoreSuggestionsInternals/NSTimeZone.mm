@interface NSTimeZone
@end

@implementation NSTimeZone

id __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 rangeOfString:a2];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 substringToIndex:v4];

    v3 = v5;
  }

  return v3;
}

id __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke_2(uint64_t a1)
{
  v1 = [&unk_28474B3A0 objectForKeyedSubscript:a1];
  if (v1)
  {
    v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
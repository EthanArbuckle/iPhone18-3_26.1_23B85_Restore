@interface NPTMetadataEventTypeConverter
+ (id)getTypeAsString:(int)string;
@end

@implementation NPTMetadataEventTypeConverter

+ (id)getTypeAsString:(int)string
{
  if (string > 0x1B)
  {
    return 0;
  }

  else
  {
    return off_2789D4238[string];
  }
}

@end
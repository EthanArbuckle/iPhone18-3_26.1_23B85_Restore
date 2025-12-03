@interface NSString(SFExtras_Private)
- (uint64_t)sf_cardSectionType;
@end

@implementation NSString(SFExtras_Private)

- (uint64_t)sf_cardSectionType
{
  if ([self isEqualToString:@"title"])
  {
    return 1;
  }

  if ([self isEqualToString:@"rich_title"] & 1) != 0 || (objc_msgSend(self, "isEqualToString:", @"website"))
  {
    return 2;
  }

  if ([self isEqualToString:@"app_link_list"])
  {
    return 15;
  }

  if ([self isEqualToString:@"track_list"])
  {
    return 16;
  }

  if ([self isEqualToString:@"row"])
  {
    return 3;
  }

  if ([self isEqualToString:@"description"])
  {
    return 4;
  }

  if ([self isEqualToString:@"movie_info"])
  {
    return 5;
  }

  if ([self isEqualToString:@"trailers"])
  {
    return 6;
  }

  if ([self isEqualToString:@"twitter"] & 1) != 0 || (objc_msgSend(self, "isEqualToString:", @"hashtags"))
  {
    return 7;
  }

  if ([self isEqualToString:@"meta_info"])
  {
    return 8;
  }

  if ([self isEqualToString:@"sports_summary_card"])
  {
    return 9;
  }

  if ([self isEqualToString:@"movie_list"])
  {
    return 10;
  }

  if ([self isEqualToString:@"data_card_with_image"])
  {
    return 11;
  }

  if ([self isEqualToString:@"card_row_table"])
  {
    return 12;
  }

  if ([self isEqualToString:@"detailed_row"])
  {
    return 13;
  }

  if ([self isEqualToString:@"text_columns"])
  {
    return 14;
  }

  if ([self isEqualToString:@"stock_chart"])
  {
    return 17;
  }

  if ([self isEqualToString:@"web"])
  {
    return 18;
  }

  if ([self isEqualToString:@"flight"])
  {
    return 19;
  }

  if ([self isEqualToString:@"suggestion"])
  {
    return 20;
  }

  if ([self isEqualToString:@"watch_list"])
  {
    return 21;
  }

  return 0;
}

@end
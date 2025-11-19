@interface NSString(SFExtras_Private)
- (uint64_t)sf_cardSectionType;
@end

@implementation NSString(SFExtras_Private)

- (uint64_t)sf_cardSectionType
{
  if ([a1 isEqualToString:@"title"])
  {
    return 1;
  }

  if ([a1 isEqualToString:@"rich_title"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"website"))
  {
    return 2;
  }

  if ([a1 isEqualToString:@"app_link_list"])
  {
    return 15;
  }

  if ([a1 isEqualToString:@"track_list"])
  {
    return 16;
  }

  if ([a1 isEqualToString:@"row"])
  {
    return 3;
  }

  if ([a1 isEqualToString:@"description"])
  {
    return 4;
  }

  if ([a1 isEqualToString:@"movie_info"])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"trailers"])
  {
    return 6;
  }

  if ([a1 isEqualToString:@"twitter"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"hashtags"))
  {
    return 7;
  }

  if ([a1 isEqualToString:@"meta_info"])
  {
    return 8;
  }

  if ([a1 isEqualToString:@"sports_summary_card"])
  {
    return 9;
  }

  if ([a1 isEqualToString:@"movie_list"])
  {
    return 10;
  }

  if ([a1 isEqualToString:@"data_card_with_image"])
  {
    return 11;
  }

  if ([a1 isEqualToString:@"card_row_table"])
  {
    return 12;
  }

  if ([a1 isEqualToString:@"detailed_row"])
  {
    return 13;
  }

  if ([a1 isEqualToString:@"text_columns"])
  {
    return 14;
  }

  if ([a1 isEqualToString:@"stock_chart"])
  {
    return 17;
  }

  if ([a1 isEqualToString:@"web"])
  {
    return 18;
  }

  if ([a1 isEqualToString:@"flight"])
  {
    return 19;
  }

  if ([a1 isEqualToString:@"suggestion"])
  {
    return 20;
  }

  if ([a1 isEqualToString:@"watch_list"])
  {
    return 21;
  }

  return 0;
}

@end
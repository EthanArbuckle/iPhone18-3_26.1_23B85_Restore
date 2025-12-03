@interface HKVerifiableClinicalRecordDisplayItem
+ (id)subtitleItemWithTitleText:(id)text detailText:(id)detailText style:(int64_t)style;
+ (id)valueItemWithTitleText:(id)text attributedDetailText:(id)detailText;
+ (id)valueItemWithTitleText:(id)text detailText:(id)detailText;
@end

@implementation HKVerifiableClinicalRecordDisplayItem

+ (id)subtitleItemWithTitleText:(id)text detailText:(id)detailText style:(int64_t)style
{
  textCopy = text;
  detailTextCopy = detailText;
  if ([textCopy length] && objc_msgSend(detailTextCopy, "length"))
  {
    v9 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setType:0];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setSubtitleStyle:style];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setTitleText:textCopy];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setDetailText:detailTextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)valueItemWithTitleText:(id)text detailText:(id)detailText
{
  textCopy = text;
  detailTextCopy = detailText;
  if ([textCopy length] && objc_msgSend(detailTextCopy, "length"))
  {
    v7 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setType:1];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setTitleText:textCopy];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setDetailText:detailTextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)valueItemWithTitleText:(id)text attributedDetailText:(id)detailText
{
  textCopy = text;
  detailTextCopy = detailText;
  if ([textCopy length] && objc_msgSend(detailTextCopy, "length"))
  {
    v7 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setType:1];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setTitleText:textCopy];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setAttributedDetailText:detailTextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
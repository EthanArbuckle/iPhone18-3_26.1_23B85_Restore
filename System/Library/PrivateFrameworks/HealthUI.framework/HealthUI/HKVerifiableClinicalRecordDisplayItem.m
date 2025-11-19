@interface HKVerifiableClinicalRecordDisplayItem
+ (id)subtitleItemWithTitleText:(id)a3 detailText:(id)a4 style:(int64_t)a5;
+ (id)valueItemWithTitleText:(id)a3 attributedDetailText:(id)a4;
+ (id)valueItemWithTitleText:(id)a3 detailText:(id)a4;
@end

@implementation HKVerifiableClinicalRecordDisplayItem

+ (id)subtitleItemWithTitleText:(id)a3 detailText:(id)a4 style:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v9 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setType:0];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setSubtitleStyle:a5];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setTitleText:v7];
    [(HKVerifiableClinicalRecordDisplayItem *)v9 setDetailText:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)valueItemWithTitleText:(id)a3 detailText:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setType:1];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setTitleText:v5];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setDetailText:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)valueItemWithTitleText:(id)a3 attributedDetailText:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = objc_alloc_init(HKVerifiableClinicalRecordDisplayItem);
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setType:1];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setTitleText:v5];
    [(HKVerifiableClinicalRecordDisplayItem *)v7 setAttributedDetailText:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
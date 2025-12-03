@interface NTKFaceComplicationConfiguration
+ (id)defaultLocalizedNameForComplicationSlot:(id)slot;
- (id)localizedNameForComplicationSlot:(id)slot;
@end

@implementation NTKFaceComplicationConfiguration

- (id)localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v4 = [objc_opt_class() defaultLocalizedNameForComplicationSlot:slotCopy];

  return v4;
}

+ (id)defaultLocalizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top-left"])
  {
    v4 = @"TOP_LEFT";
LABEL_14:
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"SLOT_LABEL_%@", v4];
    v6 = NTKClockFaceLocalizedString(v5, @"slot label");

    goto LABEL_15;
  }

  if ([slotCopy isEqualToString:@"top-right"])
  {
    v4 = @"TOP_RIGHT";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"top"])
  {
    v4 = @"TOP";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v4 = @"BOTTOM_LEFT";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"bottom-right"])
  {
    v4 = @"BOTTOM_RIGHT";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"bottom-center"] & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", @"bottom"))
  {
    v4 = @"BOTTOM";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"center"])
  {
    v4 = @"CENTER";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"date"])
  {
    v4 = @"DATE";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"monogram"])
  {
    v4 = @"MONOGRAM";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"subdial-left"])
  {
    v4 = @"SUBDIAL_LEFT";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"subdial-right"])
  {
    v4 = @"SUBDIAL_RIGHT";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"subdial-bottom"])
  {
    v4 = @"SUBDIAL_BOTTOM";
    goto LABEL_14;
  }

  if ([slotCopy isEqualToString:@"subdial-top"])
  {
    v4 = @"SUBDIAL_TOP";
    goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

@end
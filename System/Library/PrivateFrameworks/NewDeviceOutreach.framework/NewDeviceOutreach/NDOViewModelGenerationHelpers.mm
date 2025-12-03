@interface NDOViewModelGenerationHelpers
+ (id)ctaTextWithDevice:(id)device;
+ (id)ctaTextWithWarranty:(id)warranty forDate:(id)date;
@end

@implementation NDOViewModelGenerationHelpers

+ (id)ctaTextWithWarranty:(id)warranty forDate:(id)date
{
  warrantyCopy = warranty;
  dateCopy = date;
  v7 = dateCopy;
  acLocalizedOfferStatusLabel = 0;
  if (!warrantyCopy || !dateCopy)
  {
    goto LABEL_15;
  }

  acOfferDisplayDate = [warrantyCopy acOfferDisplayDate];

  acOfferEligible = [warrantyCopy acOfferEligible];
  if (acOfferDisplayDate)
  {
    if (!acOfferEligible)
    {
      goto LABEL_12;
    }

    acOfferDisplayDate2 = [warrantyCopy acOfferDisplayDate];
    [acOfferDisplayDate2 timeIntervalSinceDate:v7];
    if (v12 > 0.0)
    {

      goto LABEL_12;
    }

    acOfferEligibleUntil = [warrantyCopy acOfferEligibleUntil];
    [acOfferEligibleUntil timeIntervalSinceDate:v7];
    v14 = v16;
  }

  else
  {
    if (!acOfferEligible)
    {
      goto LABEL_12;
    }

    acOfferDisplayDate2 = [warrantyCopy acOfferEligibleUntil];
    [acOfferDisplayDate2 timeIntervalSinceDate:v7];
    v14 = v13;
  }

  if (v14 > 0.0)
  {
    acLocalizedOfferStatusLabel = [warrantyCopy acLocalizedOfferStatusLabel];
    goto LABEL_13;
  }

LABEL_12:
  acLocalizedOfferStatusLabel = 0;
LABEL_13:
  acLocalizedUnlinkedPlanStatusLabel = [warrantyCopy acLocalizedUnlinkedPlanStatusLabel];

  if (acLocalizedUnlinkedPlanStatusLabel)
  {
    acLocalizedUnlinkedPlanStatusLabel2 = [warrantyCopy acLocalizedUnlinkedPlanStatusLabel];

    acLocalizedOfferStatusLabel = acLocalizedUnlinkedPlanStatusLabel2;
  }

LABEL_15:

  return acLocalizedOfferStatusLabel;
}

+ (id)ctaTextWithDevice:(id)device
{
  deviceCopy = device;
  acLocalizedUnlinkedPlanStatusLabel = [deviceCopy acLocalizedUnlinkedPlanStatusLabel];
  v5 = [acLocalizedUnlinkedPlanStatusLabel length];

  if (v5)
  {
    acLocalizedUnlinkedPlanStatusLabel2 = [deviceCopy acLocalizedUnlinkedPlanStatusLabel];
LABEL_3:
    v7 = acLocalizedUnlinkedPlanStatusLabel2;
    goto LABEL_9;
  }

  acLocalizedOfferStatusLabel = [deviceCopy acLocalizedOfferStatusLabel];
  if ([acLocalizedOfferStatusLabel length])
  {
    acOfferEligible = [deviceCopy acOfferEligible];

    if (acOfferEligible)
    {
      acLocalizedUnlinkedPlanStatusLabel2 = [deviceCopy acLocalizedOfferStatusLabel];
      goto LABEL_3;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end
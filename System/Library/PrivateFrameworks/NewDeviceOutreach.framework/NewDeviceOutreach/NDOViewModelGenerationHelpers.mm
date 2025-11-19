@interface NDOViewModelGenerationHelpers
+ (id)ctaTextWithDevice:(id)a3;
+ (id)ctaTextWithWarranty:(id)a3 forDate:(id)a4;
@end

@implementation NDOViewModelGenerationHelpers

+ (id)ctaTextWithWarranty:(id)a3 forDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_15;
  }

  v9 = [v5 acOfferDisplayDate];

  v10 = [v5 acOfferEligible];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = [v5 acOfferDisplayDate];
    [v11 timeIntervalSinceDate:v7];
    if (v12 > 0.0)
    {

      goto LABEL_12;
    }

    v15 = [v5 acOfferEligibleUntil];
    [v15 timeIntervalSinceDate:v7];
    v14 = v16;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = [v5 acOfferEligibleUntil];
    [v11 timeIntervalSinceDate:v7];
    v14 = v13;
  }

  if (v14 > 0.0)
  {
    v8 = [v5 acLocalizedOfferStatusLabel];
    goto LABEL_13;
  }

LABEL_12:
  v8 = 0;
LABEL_13:
  v17 = [v5 acLocalizedUnlinkedPlanStatusLabel];

  if (v17)
  {
    v18 = [v5 acLocalizedUnlinkedPlanStatusLabel];

    v8 = v18;
  }

LABEL_15:

  return v8;
}

+ (id)ctaTextWithDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 acLocalizedUnlinkedPlanStatusLabel];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 acLocalizedUnlinkedPlanStatusLabel];
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  v8 = [v3 acLocalizedOfferStatusLabel];
  if ([v8 length])
  {
    v9 = [v3 acOfferEligible];

    if (v9)
    {
      v6 = [v3 acLocalizedOfferStatusLabel];
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
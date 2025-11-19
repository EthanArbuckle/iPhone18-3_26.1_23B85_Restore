@interface PKSpotlightDocumentDonationHandler
+ (id)extractAttributes:(id)a3;
+ (id)processorForPass:(id)a3;
@end

@implementation PKSpotlightDocumentDonationHandler

+ (id)extractAttributes:(id)a3
{
  v4 = a3;
  v5 = [a1 processorForPass:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 processDocument:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)processorForPass:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = [v3 style];
  if (v5 == 4)
  {
    v6 = off_1E79C1A80;
    goto LABEL_7;
  }

  if (v5 != 6)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = off_1E79C1A98;
LABEL_7:
  v7 = objc_alloc_init(*v6);
LABEL_8:

  return v7;
}

@end
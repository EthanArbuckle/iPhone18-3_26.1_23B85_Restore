@interface PKSpotlightDocumentDonationHandler
+ (id)extractAttributes:(id)attributes;
+ (id)processorForPass:(id)pass;
@end

@implementation PKSpotlightDocumentDonationHandler

+ (id)extractAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = [self processorForPass:attributesCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 processDocument:attributesCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)processorForPass:(id)pass
{
  passCopy = pass;
  v4 = passCopy;
  if (!passCopy)
  {
    goto LABEL_5;
  }

  style = [passCopy style];
  if (style == 4)
  {
    v6 = off_1E79C1A80;
    goto LABEL_7;
  }

  if (style != 6)
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
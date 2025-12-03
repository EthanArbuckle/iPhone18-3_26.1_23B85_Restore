@interface WDMath
- (WDMath)initWithParagraph:(id)paragraph xmlBlob:(id)blob;
- (id)description;
- (void)clearProperties;
@end

@implementation WDMath

- (WDMath)initWithParagraph:(id)paragraph xmlBlob:(id)blob
{
  paragraphCopy = paragraph;
  blobCopy = blob;
  v13.receiver = self;
  v13.super_class = WDMath;
  v8 = [(WDRun *)&v13 initWithParagraph:paragraphCopy];
  v9 = v8;
  if (v8)
  {
    v8->_justification = 0;
    v10 = [blobCopy copy];
    xmlBlob = v9->_xmlBlob;
    v9->_xmlBlob = v10;
  }

  return v9;
}

- (void)clearProperties
{
  properties = self->_properties;
  self->_properties = 0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDMath;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

@end
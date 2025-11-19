@interface IDSCloudMessagingLinkReEstablishedMetric
- (IDSCloudMessagingLinkReEstablishedMetric)initWithInactiveTime:(double)a3 linkType:(unint64_t)a4 priorLinkType:(unint64_t)a5;
- (NSCopying)awdRepresentation;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSCloudMessagingLinkReEstablishedMetric

- (IDSCloudMessagingLinkReEstablishedMetric)initWithInactiveTime:(double)a3 linkType:(unint64_t)a4 priorLinkType:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = IDSCloudMessagingLinkReEstablishedMetric;
  result = [(IDSCloudMessagingLinkReEstablishedMetric *)&v9 init];
  if (result)
  {
    result->_inactiveTime = a3;
    result->_linkType = a4;
    result->_priorLinkType = a5;
  }

  return result;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  [(IDSCloudMessagingLinkReEstablishedMetric *)self inactiveTime];
  v5 = [v4 numberWithDouble:?];
  if (v5)
  {
    CFDictionarySetValue(v3, @"inactiveTime", v5);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSCloudMessagingLinkReEstablishedMetric linkType](self, "linkType")}];
  if (v6)
  {
    CFDictionarySetValue(v3, @"linkType", v6);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IDSCloudMessagingLinkReEstablishedMetric priorLinkType](self, "priorLinkType")}];
  if (v7)
  {
    CFDictionarySetValue(v3, @"priorLinkType", v7);
  }

  return v3;
}

- (NSCopying)awdRepresentation
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [(IDSCloudMessagingLinkReEstablishedMetric *)self inactiveTime];
  [v3 setLinkTimeDelta:v4];
  [v3 setLinkType:{-[IDSCloudMessagingLinkReEstablishedMetric linkType](self, "linkType")}];
  [v3 setPriorLinkType:{-[IDSCloudMessagingLinkReEstablishedMetric priorLinkType](self, "priorLinkType")}];

  return v3;
}

@end
@interface CTCarrierSpaceUsagePlanItemVoice
- (BOOL)isEqual:(id)equal;
- (CTCarrierSpaceUsagePlanItemVoice)init;
- (CTCarrierSpaceUsagePlanItemVoice)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSpaceUsagePlanItemVoice

- (CTCarrierSpaceUsagePlanItemVoice)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceUsagePlanItemVoice;
  v2 = [(CTCarrierSpaceUsagePlanItemVoice *)&v7 init];
  v3 = v2;
  if (v2)
  {
    minutesCapacity = v2->_minutesCapacity;
    v2->_minutesCapacity = 0;

    minutesUsed = v3->_minutesUsed;
    v3->_minutesUsed = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  minutesCapacity = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesCapacity];
  [v3 appendFormat:@", minutesCapacity=%@", minutesCapacity];

  minutesUsed = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
  [v3 appendFormat:@", minutesUsed=%@", minutesUsed];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      minutesCapacity = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesCapacity];
      minutesCapacity2 = [(CTCarrierSpaceUsagePlanItemVoice *)equalCopy minutesCapacity];
      if (minutesCapacity == minutesCapacity2 || (-[CTCarrierSpaceUsagePlanItemVoice minutesCapacity](self, "minutesCapacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUsagePlanItemVoice minutesCapacity](equalCopy, "minutesCapacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        minutesUsed = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
        minutesUsed2 = [(CTCarrierSpaceUsagePlanItemVoice *)equalCopy minutesUsed];
        if (minutesUsed == minutesUsed2)
        {
          v9 = 1;
        }

        else
        {
          minutesUsed3 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
          minutesUsed4 = [(CTCarrierSpaceUsagePlanItemVoice *)equalCopy minutesUsed];
          v9 = [minutesUsed3 isEqualToString:minutesUsed4];
        }

        if (minutesCapacity == minutesCapacity2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  minutesCapacity = self->_minutesCapacity;
  coderCopy = coder;
  [coderCopy encodeObject:minutesCapacity forKey:@"minutesCapacity"];
  [coderCopy encodeObject:self->_minutesUsed forKey:@"minutesUsed"];
}

- (CTCarrierSpaceUsagePlanItemVoice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceUsagePlanItemVoice;
  v5 = [(CTCarrierSpaceUsagePlanItemVoice *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minutesCapacity"];
    minutesCapacity = v5->_minutesCapacity;
    v5->_minutesCapacity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minutesUsed"];
    minutesUsed = v5->_minutesUsed;
    v5->_minutesUsed = v8;
  }

  return v5;
}

@end
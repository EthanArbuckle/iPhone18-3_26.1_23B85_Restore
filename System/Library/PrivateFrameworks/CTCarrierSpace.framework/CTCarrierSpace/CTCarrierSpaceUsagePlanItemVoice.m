@interface CTCarrierSpaceUsagePlanItemVoice
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceUsagePlanItemVoice)init;
- (CTCarrierSpaceUsagePlanItemVoice)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesCapacity];
  [v3 appendFormat:@", minutesCapacity=%@", v4];

  v5 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
  [v3 appendFormat:@", minutesUsed=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (v6 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesCapacity];
      v8 = [(CTCarrierSpaceUsagePlanItemVoice *)v6 minutesCapacity];
      if (v7 == v8 || (-[CTCarrierSpaceUsagePlanItemVoice minutesCapacity](self, "minutesCapacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUsagePlanItemVoice minutesCapacity](v6, "minutesCapacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        v10 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
        v11 = [(CTCarrierSpaceUsagePlanItemVoice *)v6 minutesUsed];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTCarrierSpaceUsagePlanItemVoice *)self minutesUsed];
          v13 = [(CTCarrierSpaceUsagePlanItemVoice *)v6 minutesUsed];
          v9 = [v12 isEqualToString:v13];
        }

        if (v7 == v8)
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

- (void)encodeWithCoder:(id)a3
{
  minutesCapacity = self->_minutesCapacity;
  v5 = a3;
  [v5 encodeObject:minutesCapacity forKey:@"minutesCapacity"];
  [v5 encodeObject:self->_minutesUsed forKey:@"minutesUsed"];
}

- (CTCarrierSpaceUsagePlanItemVoice)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceUsagePlanItemVoice;
  v5 = [(CTCarrierSpaceUsagePlanItemVoice *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minutesCapacity"];
    minutesCapacity = v5->_minutesCapacity;
    v5->_minutesCapacity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minutesUsed"];
    minutesUsed = v5->_minutesUsed;
    v5->_minutesUsed = v8;
  }

  return v5;
}

@end
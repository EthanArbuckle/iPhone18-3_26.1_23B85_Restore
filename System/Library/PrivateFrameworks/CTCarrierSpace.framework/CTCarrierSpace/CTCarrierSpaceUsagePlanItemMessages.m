@interface CTCarrierSpaceUsagePlanItemMessages
- (BOOL)isEqual:(id)a3;
- (CTCarrierSpaceUsagePlanItemMessages)init;
- (CTCarrierSpaceUsagePlanItemMessages)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSpaceUsagePlanItemMessages

- (CTCarrierSpaceUsagePlanItemMessages)init
{
  v7.receiver = self;
  v7.super_class = CTCarrierSpaceUsagePlanItemMessages;
  v2 = [(CTCarrierSpaceUsagePlanItemMessages *)&v7 init];
  v3 = v2;
  if (v2)
  {
    capacity = v2->_capacity;
    v2->_capacity = 0;

    used = v3->_used;
    v3->_used = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTCarrierSpaceUsagePlanItemMessages *)self capacity];
  [v3 appendFormat:@", capacity=%@", v4];

  v5 = [(CTCarrierSpaceUsagePlanItemMessages *)self used];
  [v3 appendFormat:@", used=%@", v5];

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
      v7 = [(CTCarrierSpaceUsagePlanItemMessages *)self capacity];
      v8 = [(CTCarrierSpaceUsagePlanItemMessages *)v6 capacity];
      if (v7 == v8 || (-[CTCarrierSpaceUsagePlanItemMessages capacity](self, "capacity"), v3 = objc_claimAutoreleasedReturnValue(), -[CTCarrierSpaceUsagePlanItemMessages capacity](v6, "capacity"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        v10 = [(CTCarrierSpaceUsagePlanItemMessages *)self used];
        v11 = [(CTCarrierSpaceUsagePlanItemMessages *)v6 used];
        if (v10 == v11)
        {
          v9 = 1;
        }

        else
        {
          v12 = [(CTCarrierSpaceUsagePlanItemMessages *)self used];
          v13 = [(CTCarrierSpaceUsagePlanItemMessages *)v6 used];
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
  capacity = self->_capacity;
  v5 = a3;
  [v5 encodeObject:capacity forKey:@"capacity"];
  [v5 encodeObject:self->_used forKey:@"used"];
}

- (CTCarrierSpaceUsagePlanItemMessages)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTCarrierSpaceUsagePlanItemMessages;
  v5 = [(CTCarrierSpaceUsagePlanItemMessages *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"used"];
    used = v5->_used;
    v5->_used = v8;
  }

  return v5;
}

@end
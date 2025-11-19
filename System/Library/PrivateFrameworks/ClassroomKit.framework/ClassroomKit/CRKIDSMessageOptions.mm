@interface CRKIDSMessageOptions
- (CRKIDSMessageOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIDSMessageOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CRKIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  [v5 encodeObject:v6 forKey:@"fireAndForget"];

  v7 = [(CRKIDSMessageOptions *)self deliveryTimeout];
  [v5 encodeObject:v7 forKey:@"deliveryTimeout"];
}

- (CRKIDSMessageOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKIDSMessageOptions;
  v5 = [(CRKIDSMessageOptions *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fireAndForget"];
    v5->_fireAndForget = [v6 BOOLValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"deliveryTimeout"];
    deliveryTimeout = v5->_deliveryTimeout;
    v5->_deliveryTimeout = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setFireAndForget:{-[CRKIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  v5 = [(CRKIDSMessageOptions *)self deliveryTimeout];
  [v4 setDeliveryTimeout:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRKIDSMessageOptions *)self shouldFireAndForget];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = v6;
  v8 = [(CRKIDSMessageOptions *)self deliveryTimeout];
  v9 = [v3 stringWithFormat:@"<%@: %p { fireAndForget = %@, deliveryTimeout = %@ }>", v4, self, v7, v8];

  return v9;
}

@end
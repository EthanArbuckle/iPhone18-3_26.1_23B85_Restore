@interface CRKIDSMessageOptions
- (CRKIDSMessageOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIDSMessageOptions

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CRKIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  [coderCopy encodeObject:v6 forKey:@"fireAndForget"];

  deliveryTimeout = [(CRKIDSMessageOptions *)self deliveryTimeout];
  [coderCopy encodeObject:deliveryTimeout forKey:@"deliveryTimeout"];
}

- (CRKIDSMessageOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKIDSMessageOptions;
  v5 = [(CRKIDSMessageOptions *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fireAndForget"];
    v5->_fireAndForget = [v6 BOOLValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"deliveryTimeout"];
    deliveryTimeout = v5->_deliveryTimeout;
    v5->_deliveryTimeout = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setFireAndForget:{-[CRKIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  deliveryTimeout = [(CRKIDSMessageOptions *)self deliveryTimeout];
  [v4 setDeliveryTimeout:deliveryTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  shouldFireAndForget = [(CRKIDSMessageOptions *)self shouldFireAndForget];
  v6 = @"NO";
  if (shouldFireAndForget)
  {
    v6 = @"YES";
  }

  v7 = v6;
  deliveryTimeout = [(CRKIDSMessageOptions *)self deliveryTimeout];
  v9 = [v3 stringWithFormat:@"<%@: %p { fireAndForget = %@, deliveryTimeout = %@ }>", v4, self, v7, deliveryTimeout];

  return v9;
}

@end
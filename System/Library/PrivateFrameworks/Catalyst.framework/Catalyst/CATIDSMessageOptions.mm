@interface CATIDSMessageOptions
- (CATIDSMessageOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATIDSMessageOptions

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[CATIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  [coderCopy encodeObject:v6 forKey:@"fireAndForget"];

  deliveryTimeout = [(CATIDSMessageOptions *)self deliveryTimeout];
  [coderCopy encodeObject:deliveryTimeout forKey:@"deliveryTimeout"];
}

- (CATIDSMessageOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CATIDSMessageOptions;
  v5 = [(CATIDSMessageOptions *)&v11 init];
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
  [v4 setFireAndForget:{-[CATIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  deliveryTimeout = [(CATIDSMessageOptions *)self deliveryTimeout];
  [v4 setDeliveryTimeout:deliveryTimeout];

  return v4;
}

@end
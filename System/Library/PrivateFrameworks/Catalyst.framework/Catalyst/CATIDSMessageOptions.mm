@interface CATIDSMessageOptions
- (CATIDSMessageOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATIDSMessageOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[CATIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  [v5 encodeObject:v6 forKey:@"fireAndForget"];

  v7 = [(CATIDSMessageOptions *)self deliveryTimeout];
  [v5 encodeObject:v7 forKey:@"deliveryTimeout"];
}

- (CATIDSMessageOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CATIDSMessageOptions;
  v5 = [(CATIDSMessageOptions *)&v11 init];
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
  [v4 setFireAndForget:{-[CATIDSMessageOptions shouldFireAndForget](self, "shouldFireAndForget")}];
  v5 = [(CATIDSMessageOptions *)self deliveryTimeout];
  [v4 setDeliveryTimeout:v5];

  return v4;
}

@end
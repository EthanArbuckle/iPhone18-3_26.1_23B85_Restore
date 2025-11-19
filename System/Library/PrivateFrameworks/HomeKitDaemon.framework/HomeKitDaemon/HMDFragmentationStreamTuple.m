@interface HMDFragmentationStreamTuple
+ (id)tupleWithFragmentationStreamForObject:(id)a3 delegate:(id)a4;
- (BOOL)isExpired;
- (HMDFragmentationStreamTuple)initWithFragmentationStreamForObject:(id)a3 delegate:(id)a4;
- (void)close;
- (void)setLastMessage:(id)a3;
@end

@implementation HMDFragmentationStreamTuple

- (void)close
{
  v2 = [(HMDFragmentationStreamTuple *)self fragmentationStream];
  [v2 close];
}

- (BOOL)isExpired
{
  v2 = [(HMDFragmentationStreamTuple *)self expirationDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (void)setLastMessage:(id)a3
{
  objc_storeStrong(&self->_lastMessage, a3);
  v7 = a3;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v5;
}

- (HMDFragmentationStreamTuple)initWithFragmentationStreamForObject:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDFragmentationStreamTuple;
  v9 = [(HMDFragmentationStreamTuple *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectUUID, a3);
    v11 = objc_alloc_init(MEMORY[0x277CFEB68]);
    fragmentationStream = v10->_fragmentationStream;
    v10->_fragmentationStream = v11;

    [(HAPFragmentationStream *)v10->_fragmentationStream setDelegate:v8];
    [(HAPFragmentationStream *)v10->_fragmentationStream open];
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    expirationDate = v10->_expirationDate;
    v10->_expirationDate = v13;
  }

  return v10;
}

+ (id)tupleWithFragmentationStreamForObject:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMDFragmentationStreamTuple alloc] initWithFragmentationStreamForObject:v6 delegate:v5];

  return v7;
}

@end
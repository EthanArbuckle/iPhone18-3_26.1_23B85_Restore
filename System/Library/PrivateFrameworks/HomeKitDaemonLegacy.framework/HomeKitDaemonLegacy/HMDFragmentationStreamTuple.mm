@interface HMDFragmentationStreamTuple
+ (id)tupleWithFragmentationStreamForObject:(id)object delegate:(id)delegate;
- (BOOL)isExpired;
- (HMDFragmentationStreamTuple)initWithFragmentationStreamForObject:(id)object delegate:(id)delegate;
- (void)close;
- (void)setLastMessage:(id)message;
@end

@implementation HMDFragmentationStreamTuple

- (void)close
{
  fragmentationStream = [(HMDFragmentationStreamTuple *)self fragmentationStream];
  [fragmentationStream close];
}

- (BOOL)isExpired
{
  expirationDate = [(HMDFragmentationStreamTuple *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (void)setLastMessage:(id)message
{
  objc_storeStrong(&self->_lastMessage, message);
  messageCopy = message;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v5;
}

- (HMDFragmentationStreamTuple)initWithFragmentationStreamForObject:(id)object delegate:(id)delegate
{
  objectCopy = object;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = HMDFragmentationStreamTuple;
  v9 = [(HMDFragmentationStreamTuple *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectUUID, object);
    v11 = objc_alloc_init(MEMORY[0x277CFEB68]);
    fragmentationStream = v10->_fragmentationStream;
    v10->_fragmentationStream = v11;

    [(HAPFragmentationStream *)v10->_fragmentationStream setDelegate:delegateCopy];
    [(HAPFragmentationStream *)v10->_fragmentationStream open];
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:300.0];
    expirationDate = v10->_expirationDate;
    v10->_expirationDate = v13;
  }

  return v10;
}

+ (id)tupleWithFragmentationStreamForObject:(id)object delegate:(id)delegate
{
  delegateCopy = delegate;
  objectCopy = object;
  v7 = [[HMDFragmentationStreamTuple alloc] initWithFragmentationStreamForObject:objectCopy delegate:delegateCopy];

  return v7;
}

@end
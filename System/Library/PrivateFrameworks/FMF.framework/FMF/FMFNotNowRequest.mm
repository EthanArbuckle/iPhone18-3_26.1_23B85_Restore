@interface FMFNotNowRequest
+ (id)notNowRequestToHandles:(id)handles fromHandle:(id)handle;
- (FMFNotNowRequest)initWithCoder:(id)coder;
- (FMFNotNowRequest)initWithFromHandle:(id)handle toHandle:(id)toHandle requestId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFNotNowRequest

- (FMFNotNowRequest)initWithFromHandle:(id)handle toHandle:(id)toHandle requestId:(id)id
{
  toHandleCopy = toHandle;
  idCopy = id;
  handleCopy = handle;
  v11 = objc_alloc_init(objc_opt_class());

  [(FMFNotNowRequest *)v11 setFromHandle:handleCopy];
  if (toHandleCopy)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:toHandleCopy];
    [(FMFNotNowRequest *)v11 setToHandles:v12];
  }

  [(FMFNotNowRequest *)v11 setRequestId:idCopy];

  return v11;
}

+ (id)notNowRequestToHandles:(id)handles fromHandle:(id)handle
{
  handleCopy = handle;
  handlesCopy = handles;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setToHandles:handlesCopy];

  [v7 setFromHandle:handleCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  requestId = [(FMFNotNowRequest *)self requestId];
  [v4 setRequestId:requestId];

  fromHandle = [(FMFNotNowRequest *)self fromHandle];
  [v4 setFromHandle:fromHandle];

  toHandles = [(FMFNotNowRequest *)self toHandles];
  [v4 setToHandles:toHandles];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestId = [(FMFNotNowRequest *)self requestId];
  [coderCopy encodeObject:requestId forKey:@"requestId"];

  fromHandle = [(FMFNotNowRequest *)self fromHandle];
  [coderCopy encodeObject:fromHandle forKey:@"fromHandle"];

  toHandles = [(FMFNotNowRequest *)self toHandles];
  [coderCopy encodeObject:toHandles forKey:@"toHandles"];
}

- (FMFNotNowRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  [(FMFNotNowRequest *)v5 setRequestId:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromHandle"];
  [(FMFNotNowRequest *)v5 setFromHandle:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"toHandles"];

  [(FMFNotNowRequest *)v5 setToHandles:v11];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  fromHandle = [(FMFNotNowRequest *)self fromHandle];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, fromHandle];

  return v6;
}

@end
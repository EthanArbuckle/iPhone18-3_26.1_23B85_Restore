@interface FMFNotNowRequest
+ (id)notNowRequestToHandles:(id)a3 fromHandle:(id)a4;
- (FMFNotNowRequest)initWithCoder:(id)a3;
- (FMFNotNowRequest)initWithFromHandle:(id)a3 toHandle:(id)a4 requestId:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFNotNowRequest

- (FMFNotNowRequest)initWithFromHandle:(id)a3 toHandle:(id)a4 requestId:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(objc_opt_class());

  [(FMFNotNowRequest *)v11 setFromHandle:v10];
  if (v8)
  {
    v12 = [MEMORY[0x277CBEB98] setWithObject:v8];
    [(FMFNotNowRequest *)v11 setToHandles:v12];
  }

  [(FMFNotNowRequest *)v11 setRequestId:v9];

  return v11;
}

+ (id)notNowRequestToHandles:(id)a3 fromHandle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setToHandles:v6];

  [v7 setFromHandle:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(FMFNotNowRequest *)self requestId];
  [v4 setRequestId:v5];

  v6 = [(FMFNotNowRequest *)self fromHandle];
  [v4 setFromHandle:v6];

  v7 = [(FMFNotNowRequest *)self toHandles];
  [v4 setToHandles:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMFNotNowRequest *)self requestId];
  [v4 encodeObject:v5 forKey:@"requestId"];

  v6 = [(FMFNotNowRequest *)self fromHandle];
  [v4 encodeObject:v6 forKey:@"fromHandle"];

  v7 = [(FMFNotNowRequest *)self toHandles];
  [v4 encodeObject:v7 forKey:@"toHandles"];
}

- (FMFNotNowRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  [(FMFNotNowRequest *)v5 setRequestId:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromHandle"];
  [(FMFNotNowRequest *)v5 setFromHandle:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"toHandles"];

  [(FMFNotNowRequest *)v5 setToHandles:v11];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMFNotNowRequest *)self fromHandle];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

@end
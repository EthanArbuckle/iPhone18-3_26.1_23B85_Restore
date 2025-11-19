@interface FMFFriendshipRequest
+ (id)friendshipRequestToHandles:(id)a3 fromHandle:(id)a4 withType:(int64_t)a5 groupId:(id)a6 withEndDate:(id)a7;
- (FMFFriendshipRequest)initWithCoder:(id)a3;
- (FMFFriendshipRequest)initWithFromHandle:(id)a3 toHandle:(id)a4 ofType:(int64_t)a5 groupId:(id)a6 endDate:(id)a7 requestId:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFFriendshipRequest

- (FMFFriendshipRequest)initWithFromHandle:(id)a3 toHandle:(id)a4 ofType:(int64_t)a5 groupId:(id)a6 endDate:(id)a7 requestId:(id)a8
{
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a6;
  v18 = a3;
  v19 = objc_alloc_init(objc_opt_class());

  [(FMFFriendshipRequest *)v19 setRequestType:a5];
  [(FMFFriendshipRequest *)v19 setFromHandle:v18];

  if (v14)
  {
    v20 = [MEMORY[0x277CBEB98] setWithObject:v14];
    [(FMFFriendshipRequest *)v19 setToHandles:v20];
  }

  [(FMFFriendshipRequest *)v19 setEndDate:v15];
  [(FMFFriendshipRequest *)v19 setRequestId:v16];

  [(FMFFriendshipRequest *)v19 setGroupId:v17];
  return v19;
}

+ (id)friendshipRequestToHandles:(id)a3 fromHandle:(id)a4 withType:(int64_t)a5 groupId:(id)a6 withEndDate:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(objc_opt_class());
  [v15 setToHandles:v14];

  [v15 setRequestType:a5];
  [v15 setEndDate:v11];

  [v15 setGroupId:v12];
  [v15 setFromHandle:v13];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRequestType:{-[FMFFriendshipRequest requestType](self, "requestType")}];
  v5 = [(FMFFriendshipRequest *)self requestId];
  [v4 setRequestId:v5];

  v6 = [(FMFFriendshipRequest *)self fromHandle];
  [v4 setFromHandle:v6];

  v7 = [(FMFFriendshipRequest *)self toHandles];
  [v4 setToHandles:v7];

  v8 = [(FMFFriendshipRequest *)self endDate];
  [v4 setEndDate:v8];

  v9 = [(FMFFriendshipRequest *)self groupId];
  [v4 setGroupId:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[FMFFriendshipRequest requestType](self forKey:{"requestType"), @"requestType"}];
  v5 = [(FMFFriendshipRequest *)self requestId];
  [v4 encodeObject:v5 forKey:@"requestId"];

  v6 = [(FMFFriendshipRequest *)self fromHandle];
  [v4 encodeObject:v6 forKey:@"fromHandle"];

  v7 = [(FMFFriendshipRequest *)self toHandles];
  [v4 encodeObject:v7 forKey:@"toHandles"];

  v8 = [(FMFFriendshipRequest *)self endDate];
  [v4 encodeObject:v8 forKey:@"endDate"];

  v9 = [(FMFFriendshipRequest *)self groupId];
  [v4 encodeObject:v9 forKey:@"groupId"];
}

- (FMFFriendshipRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  -[FMFFriendshipRequest setRequestType:](v5, "setRequestType:", [v4 decodeIntegerForKey:@"requestType"]);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  [(FMFFriendshipRequest *)v5 setRequestId:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromHandle"];
  [(FMFFriendshipRequest *)v5 setFromHandle:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"toHandles"];
  [(FMFFriendshipRequest *)v5 setToHandles:v11];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [(FMFFriendshipRequest *)v5 setEndDate:v12];

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];

  [(FMFFriendshipRequest *)v5 setGroupId:v13];
  return v5;
}

- (id)description
{
  v3 = [(FMFFriendshipRequest *)self requestType];
  if (!v3)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v6 = [(FMFFriendshipRequest *)self toHandles];
    v7 = [(FMFFriendshipRequest *)self endDate];
    [v8 stringWithFormat:@"<%@ %p [%@ :Type => FMFFriendshipRequestTypeOffer, Expires: %@]>", v9, self, v6, v7];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = [(FMFFriendshipRequest *)self fromHandle];
    v7 = [(FMFFriendshipRequest *)self endDate];
    [v4 stringWithFormat:@"<%@ %p [%@ :Type => FMFFriendshipRequestTypeAsk, Expires: %@]>", v5, self, v6, v7];
    v10 = LABEL_5:;

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end
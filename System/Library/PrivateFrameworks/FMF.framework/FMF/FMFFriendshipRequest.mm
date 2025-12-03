@interface FMFFriendshipRequest
+ (id)friendshipRequestToHandles:(id)handles fromHandle:(id)handle withType:(int64_t)type groupId:(id)id withEndDate:(id)date;
- (FMFFriendshipRequest)initWithCoder:(id)coder;
- (FMFFriendshipRequest)initWithFromHandle:(id)handle toHandle:(id)toHandle ofType:(int64_t)type groupId:(id)id endDate:(id)date requestId:(id)requestId;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFFriendshipRequest

- (FMFFriendshipRequest)initWithFromHandle:(id)handle toHandle:(id)toHandle ofType:(int64_t)type groupId:(id)id endDate:(id)date requestId:(id)requestId
{
  toHandleCopy = toHandle;
  dateCopy = date;
  requestIdCopy = requestId;
  idCopy = id;
  handleCopy = handle;
  v19 = objc_alloc_init(objc_opt_class());

  [(FMFFriendshipRequest *)v19 setRequestType:type];
  [(FMFFriendshipRequest *)v19 setFromHandle:handleCopy];

  if (toHandleCopy)
  {
    v20 = [MEMORY[0x277CBEB98] setWithObject:toHandleCopy];
    [(FMFFriendshipRequest *)v19 setToHandles:v20];
  }

  [(FMFFriendshipRequest *)v19 setEndDate:dateCopy];
  [(FMFFriendshipRequest *)v19 setRequestId:requestIdCopy];

  [(FMFFriendshipRequest *)v19 setGroupId:idCopy];
  return v19;
}

+ (id)friendshipRequestToHandles:(id)handles fromHandle:(id)handle withType:(int64_t)type groupId:(id)id withEndDate:(id)date
{
  dateCopy = date;
  idCopy = id;
  handleCopy = handle;
  handlesCopy = handles;
  v15 = objc_alloc_init(objc_opt_class());
  [v15 setToHandles:handlesCopy];

  [v15 setRequestType:type];
  [v15 setEndDate:dateCopy];

  [v15 setGroupId:idCopy];
  [v15 setFromHandle:handleCopy];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRequestType:{-[FMFFriendshipRequest requestType](self, "requestType")}];
  requestId = [(FMFFriendshipRequest *)self requestId];
  [v4 setRequestId:requestId];

  fromHandle = [(FMFFriendshipRequest *)self fromHandle];
  [v4 setFromHandle:fromHandle];

  toHandles = [(FMFFriendshipRequest *)self toHandles];
  [v4 setToHandles:toHandles];

  endDate = [(FMFFriendshipRequest *)self endDate];
  [v4 setEndDate:endDate];

  groupId = [(FMFFriendshipRequest *)self groupId];
  [v4 setGroupId:groupId];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[FMFFriendshipRequest requestType](self forKey:{"requestType"), @"requestType"}];
  requestId = [(FMFFriendshipRequest *)self requestId];
  [coderCopy encodeObject:requestId forKey:@"requestId"];

  fromHandle = [(FMFFriendshipRequest *)self fromHandle];
  [coderCopy encodeObject:fromHandle forKey:@"fromHandle"];

  toHandles = [(FMFFriendshipRequest *)self toHandles];
  [coderCopy encodeObject:toHandles forKey:@"toHandles"];

  endDate = [(FMFFriendshipRequest *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  groupId = [(FMFFriendshipRequest *)self groupId];
  [coderCopy encodeObject:groupId forKey:@"groupId"];
}

- (FMFFriendshipRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  -[FMFFriendshipRequest setRequestType:](v5, "setRequestType:", [coderCopy decodeIntegerForKey:@"requestType"]);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  [(FMFFriendshipRequest *)v5 setRequestId:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromHandle"];
  [(FMFFriendshipRequest *)v5 setFromHandle:v7];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"toHandles"];
  [(FMFFriendshipRequest *)v5 setToHandles:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
  [(FMFFriendshipRequest *)v5 setEndDate:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupId"];

  [(FMFFriendshipRequest *)v5 setGroupId:v13];
  return v5;
}

- (id)description
{
  requestType = [(FMFFriendshipRequest *)self requestType];
  if (!requestType)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    toHandles = [(FMFFriendshipRequest *)self toHandles];
    endDate = [(FMFFriendshipRequest *)self endDate];
    [v8 stringWithFormat:@"<%@ %p [%@ :Type => FMFFriendshipRequestTypeOffer, Expires: %@]>", v9, self, toHandles, endDate];
    goto LABEL_5;
  }

  if (requestType == 1)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    toHandles = [(FMFFriendshipRequest *)self fromHandle];
    endDate = [(FMFFriendshipRequest *)self endDate];
    [v4 stringWithFormat:@"<%@ %p [%@ :Type => FMFFriendshipRequestTypeAsk, Expires: %@]>", v5, self, toHandles, endDate];
    v10 = LABEL_5:;

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end
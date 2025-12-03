@interface MGRemoteQueryReply
+ (id)replyWithError:(id)error;
+ (id)replyWithGroups:(id)groups;
+ (id)rq_instanceFromCoded:(id)coded;
- (NSString)description;
- (id)_initWithGroups:(id)groups error:(id)error;
- (id)rq_coded;
@end

@implementation MGRemoteQueryReply

- (id)_initWithGroups:(id)groups error:(id)error
{
  groupsCopy = groups;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = MGRemoteQueryReply;
  v8 = [(MGRemoteQueryReply *)&v14 init];
  if (v8)
  {
    v9 = [groupsCopy copy];
    groups = v8->_groups;
    v8->_groups = v9;

    v11 = [errorCopy copy];
    error = v8->_error;
    v8->_error = v11;
  }

  return v8;
}

+ (id)replyWithGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [[self alloc] _initWithGroups:groupsCopy error:0];

  return v5;
}

+ (id)replyWithError:(id)error
{
  errorCopy = error;
  v5 = [[self alloc] _initWithGroups:0 error:errorCopy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  groups = [(MGRemoteQueryReply *)self groups];
  v7 = [groups count];
  error = [(MGRemoteQueryReply *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p, _groups=%lu, _error=%@>", v5, self, v7, error];

  return v9;
}

- (id)rq_coded
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  groups = [(MGRemoteQueryReply *)self groups];
  rq_coded = [groups rq_coded];

  error = [(MGRemoteQueryReply *)self error];
  rq_coded2 = [error rq_coded];

  if (rq_coded)
  {
    [dictionary setObject:rq_coded forKey:0x2869A5B88];
  }

  if (rq_coded2)
  {
    [dictionary setObject:rq_coded2 forKey:0x2869A5BA8];
  }

  return dictionary;
}

+ (id)rq_instanceFromCoded:(id)coded
{
  codedCopy = coded;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = codedCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 rq_arrayOfDecodedClass:objc_opt_class() forKey:0x2869A5B88];
  v6 = [v4 rq_decodedObjectOfClass:objc_opt_class() forKey:0x2869A5BA8];
  v7 = v6;
  if (v5)
  {
    v8 = [MGRemoteQueryReply replyWithGroups:v5];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = [MGRemoteQueryReply replyWithError:v6];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

@end
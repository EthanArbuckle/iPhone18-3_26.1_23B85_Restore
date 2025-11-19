@interface MGRemoteQueryReply
+ (id)replyWithError:(id)a3;
+ (id)replyWithGroups:(id)a3;
+ (id)rq_instanceFromCoded:(id)a3;
- (NSString)description;
- (id)_initWithGroups:(id)a3 error:(id)a4;
- (id)rq_coded;
@end

@implementation MGRemoteQueryReply

- (id)_initWithGroups:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MGRemoteQueryReply;
  v8 = [(MGRemoteQueryReply *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    groups = v8->_groups;
    v8->_groups = v9;

    v11 = [v7 copy];
    error = v8->_error;
    v8->_error = v11;
  }

  return v8;
}

+ (id)replyWithGroups:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithGroups:v4 error:0];

  return v5;
}

+ (id)replyWithError:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithGroups:0 error:v4];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGRemoteQueryReply *)self groups];
  v7 = [v6 count];
  v8 = [(MGRemoteQueryReply *)self error];
  v9 = [v3 stringWithFormat:@"<%@: %p, _groups=%lu, _error=%@>", v5, self, v7, v8];

  return v9;
}

- (id)rq_coded
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(MGRemoteQueryReply *)self groups];
  v5 = [v4 rq_coded];

  v6 = [(MGRemoteQueryReply *)self error];
  v7 = [v6 rq_coded];

  if (v5)
  {
    [v3 setObject:v5 forKey:0x2869A5B88];
  }

  if (v7)
  {
    [v3 setObject:v7 forKey:0x2869A5BA8];
  }

  return v3;
}

+ (id)rq_instanceFromCoded:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
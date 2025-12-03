@interface TSUWarning
+ (id)fontWarningWithMessage:(id)message fontNames:(id)names;
+ (id)warningWithKind:(int64_t)kind message:(id)message;
+ (id)warningWithMessage:(id)message;
+ (id)warningWithMessage:(id)message affectedObject:(id)object;
+ (id)warningWithMessage:(id)message affectedObjects:(id)objects;
- (BOOL)isEqual:(id)equal;
- (TSUWarning)initWithKind:(int64_t)kind message:(id)message;
- (id)affectedObjects;
- (void)addAffectedObjects:(id)objects;
- (void)setAffectedObjects:(id)objects;
@end

@implementation TSUWarning

+ (id)warningWithMessage:(id)message
{
  messageCopy = message;
  v5 = [[self alloc] initWithKind:0 message:messageCopy];

  return v5;
}

+ (id)warningWithMessage:(id)message affectedObject:(id)object
{
  messageCopy = message;
  if (object)
  {
    object = [MEMORY[0x277CBEB98] setWithObject:object];
  }

  v7 = [self warningWithMessage:messageCopy affectedObjects:object];

  return v7;
}

+ (id)warningWithMessage:(id)message affectedObjects:(id)objects
{
  objectsCopy = objects;
  v7 = [self warningWithMessage:message];
  if ([objectsCopy count])
  {
    [v7 setAffectedObjects:objectsCopy];
  }

  return v7;
}

+ (id)warningWithKind:(int64_t)kind message:(id)message
{
  messageCopy = message;
  v7 = [[self alloc] initWithKind:kind message:messageCopy];

  return v7;
}

- (TSUWarning)initWithKind:(int64_t)kind message:(id)message
{
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = TSUWarning;
  v7 = [(TSUWarning *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = kind;
    v9 = [messageCopy copy];
    message = v8->_message;
    v8->_message = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = objc_opt_class();
  v8 = TSUDynamicCast(v7, equalCopy);

  if (v8)
  {
    kind = self->_kind;
    if (kind == [v8 kind])
    {
      message = self->_message;
      message = [v8 message];
      if (message != message)
      {
        v12 = self->_message;
        message2 = [v8 message];
        if (![(NSString *)v12 isEqualToString:message2])
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      detailMessage = self->_detailMessage;
      detailMessage = [v8 detailMessage];
      if (detailMessage == detailMessage || (v16 = self->_detailMessage, [v8 detailMessage], v4 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v16, "isEqualToString:", v4)))
      {
        userInfo = self->_userInfo;
        userInfo = [v8 userInfo];
        v19 = userInfo;
        if (userInfo == userInfo)
        {

          v13 = 1;
        }

        else
        {
          v20 = self->_userInfo;
          userInfo2 = [v8 userInfo];
          v13 = [(NSDictionary *)v20 isEqualToDictionary:userInfo2];
        }

        if (detailMessage == detailMessage)
        {
LABEL_15:

          if (message == message)
          {
LABEL_17:

            goto LABEL_18;
          }

LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_15;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (id)affectedObjects
{
  v2 = [(NSDictionary *)self->_userInfo objectForKeyedSubscript:@"TSUWarningUserInfoAffectedObjectsKey"];
  v3 = [v2 copy];

  return v3;
}

- (void)setAffectedObjects:(id)objects
{
  userInfo = self->_userInfo;
  if (userInfo)
  {
    objectsCopy = objects;
    dictionary = [(NSDictionary *)userInfo mutableCopy];
  }

  else
  {
    v8 = MEMORY[0x277CBEB38];
    objectsCopy2 = objects;
    dictionary = [v8 dictionary];
  }

  v10 = dictionary;
  [dictionary setObject:objects forKeyedSubscript:@"TSUWarningUserInfoAffectedObjectsKey"];

  [(TSUWarning *)self setUserInfo:v10];
}

- (void)addAffectedObjects:(id)objects
{
  objectsCopy = objects;
  affectedObjects = [(TSUWarning *)self affectedObjects];
  v7 = affectedObjects;
  if (affectedObjects)
  {
    v6 = [affectedObjects setByAddingObjectsFromSet:objectsCopy];

    objectsCopy = v6;
  }

  [(TSUWarning *)self setAffectedObjects:objectsCopy];
}

+ (id)fontWarningWithMessage:(id)message fontNames:(id)names
{
  namesCopy = names;
  messageCopy = message;
  v8 = [[self alloc] initWithKind:1 message:messageCopy];

  if ([namesCopy count])
  {
    [v8 setAffectedObjects:namesCopy];
  }

  return v8;
}

@end
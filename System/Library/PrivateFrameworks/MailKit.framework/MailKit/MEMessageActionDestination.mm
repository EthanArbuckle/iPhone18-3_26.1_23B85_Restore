@interface MEMessageActionDestination
+ (MEMessageActionDestination)archive;
+ (MEMessageActionDestination)inbox;
+ (MEMessageActionDestination)junk;
+ (MEMessageActionDestination)trash;
- (BOOL)isEqual:(id)equal;
- (MEMessageActionDestination)initWithCoder:(id)coder;
- (MEMessageActionDestination)initWithDefaultMailboxType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageActionDestination

+ (MEMessageActionDestination)inbox
{
  v2 = [[MEMessageActionDestination alloc] initWithDefaultMailboxType:7];

  return v2;
}

+ (MEMessageActionDestination)trash
{
  v2 = [[MEMessageActionDestination alloc] initWithDefaultMailboxType:3];

  return v2;
}

+ (MEMessageActionDestination)archive
{
  v2 = [[MEMessageActionDestination alloc] initWithDefaultMailboxType:2];

  return v2;
}

+ (MEMessageActionDestination)junk
{
  v2 = [[MEMessageActionDestination alloc] initWithDefaultMailboxType:1];

  return v2;
}

- (MEMessageActionDestination)initWithDefaultMailboxType:(int64_t)type
{
  v5 = +[MEMessageActionDestination allowedMailboxTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v11.receiver = self;
    v11.super_class = MEMessageActionDestination;
    v8 = [(MEMessageActionDestination *)&v11 init];
    if (v8)
    {
      v8->_mailboxType = type;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MEMessageActionDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[MEMessageActionDestination initWithDefaultMailboxType:](self, "initWithDefaultMailboxType:", [coderCopy decodeIntegerForKey:@"EFPropertyKey_mailboxType"]);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MEMessageActionDestination mailboxType](self forKey:{"mailboxType"), @"EFPropertyKey_mailboxType"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    mailboxType = [(MEMessageActionDestination *)self mailboxType];
    v8 = mailboxType == [v6 mailboxType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
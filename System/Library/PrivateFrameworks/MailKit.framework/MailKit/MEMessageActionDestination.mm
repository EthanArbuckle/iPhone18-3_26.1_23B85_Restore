@interface MEMessageActionDestination
+ (MEMessageActionDestination)archive;
+ (MEMessageActionDestination)inbox;
+ (MEMessageActionDestination)junk;
+ (MEMessageActionDestination)trash;
- (BOOL)isEqual:(id)a3;
- (MEMessageActionDestination)initWithCoder:(id)a3;
- (MEMessageActionDestination)initWithDefaultMailboxType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
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

- (MEMessageActionDestination)initWithDefaultMailboxType:(int64_t)a3
{
  v5 = +[MEMessageActionDestination allowedMailboxTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v11.receiver = self;
    v11.super_class = MEMessageActionDestination;
    v8 = [(MEMessageActionDestination *)&v11 init];
    if (v8)
    {
      v8->_mailboxType = a3;
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MEMessageActionDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[MEMessageActionDestination initWithDefaultMailboxType:](self, "initWithDefaultMailboxType:", [v4 decodeIntegerForKey:@"EFPropertyKey_mailboxType"]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[MEMessageActionDestination mailboxType](self forKey:{"mailboxType"), @"EFPropertyKey_mailboxType"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageActionDestination *)self mailboxType];
    v8 = v7 == [v6 mailboxType];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
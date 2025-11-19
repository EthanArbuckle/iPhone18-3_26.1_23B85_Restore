@interface MEMessageAction
+ (MEMessageAction)flagActionWithFlag:(MEMessageActionFlag)flag;
+ (MEMessageAction)markAsReadAction;
+ (MEMessageAction)markAsUnreadAction;
+ (MEMessageAction)moveToArchiveAction;
+ (MEMessageAction)moveToJunkAction;
+ (MEMessageAction)moveToTrashAction;
+ (MEMessageAction)setBackgroundColorActionWithColor:(MEMessageActionMessageColor)color;
- (BOOL)isEqual:(id)a3;
- (MEMessageAction)initWithCoder:(id)a3;
- (MEMessageAction)initWithDestination:(id)a3 readStatus:(int64_t)a4 flagChange:(id)a5 messageColor:(int64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageAction

+ (MEMessageAction)moveToTrashAction
{
  v2 = [MEMessageAction alloc];
  v3 = +[MEMessageActionDestination trash];
  v4 = [(MEMessageAction *)v2 initWithDestination:v3 readStatus:1 flagChange:0 messageColor:0];

  return v4;
}

+ (MEMessageAction)moveToArchiveAction
{
  v2 = [MEMessageAction alloc];
  v3 = +[MEMessageActionDestination archive];
  v4 = [(MEMessageAction *)v2 initWithDestination:v3 readStatus:0 flagChange:0 messageColor:0];

  return v4;
}

+ (MEMessageAction)moveToJunkAction
{
  v2 = [MEMessageAction alloc];
  v3 = +[MEMessageActionDestination junk];
  v4 = [(MEMessageAction *)v2 initWithDestination:v3 readStatus:0 flagChange:0 messageColor:0];

  return v4;
}

+ (MEMessageAction)markAsReadAction
{
  v2 = [[MEMessageAction alloc] initWithDestination:0 readStatus:1 flagChange:0 messageColor:0];

  return v2;
}

+ (MEMessageAction)markAsUnreadAction
{
  v2 = [[MEMessageAction alloc] initWithDestination:0 readStatus:2 flagChange:0 messageColor:0];

  return v2;
}

+ (MEMessageAction)flagActionWithFlag:(MEMessageActionFlag)flag
{
  v3 = [[MEMessageActionFlagChange alloc] initWithFlag:flag];
  v4 = [[MEMessageAction alloc] initWithDestination:0 readStatus:0 flagChange:v3 messageColor:0];

  return v4;
}

+ (MEMessageAction)setBackgroundColorActionWithColor:(MEMessageActionMessageColor)color
{
  v3 = [[MEMessageAction alloc] initWithDestination:0 readStatus:0 flagChange:0 messageColor:color];

  return v3;
}

- (MEMessageAction)initWithDestination:(id)a3 readStatus:(int64_t)a4 flagChange:(id)a5 messageColor:(int64_t)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = MEMessageAction;
  v13 = [(MEMessageAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_destination, a3);
    v14->_readStatus = a4;
    objc_storeStrong(&v14->_flagChange, a5);
    v14->_messageColor = a6;
  }

  return v14;
}

- (MEMessageAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"EFPropertyKey_readStatus"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destination"];
  v8 = -[MEMessageAction initWithDestination:readStatus:flagChange:messageColor:](self, "initWithDestination:readStatus:flagChange:messageColor:", v7, v5, v6, [v4 decodeIntegerForKey:@"EFPropertyKey_messageColor"]);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(MEMessageAction *)self destination];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_destination"];

  [v6 encodeInteger:-[MEMessageAction readStatus](self forKey:{"readStatus"), @"EFPropertyKey_readStatus"}];
  v5 = [(MEMessageAction *)self flagChange];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_flagChange"];

  [v6 encodeInteger:-[MEMessageAction messageColor](self forKey:{"messageColor"), @"EFPropertyKey_messageColor"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageAction *)self destination];
    v8 = [v6 destination];
    if (EFObjectsAreEqual())
    {
      v9 = [(MEMessageAction *)self flagChange];
      v10 = [v6 flagChange];
      if (EFObjectsAreEqual() && (v11 = -[MEMessageAction readStatus](self, "readStatus"), v11 == [v6 readStatus]))
      {
        v12 = [(MEMessageAction *)self messageColor];
        v13 = v12 == [v6 messageColor];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MEMessageAction *)self destination];
  v5 = [(MEMessageAction *)self readStatus];
  v6 = [(MEMessageAction *)self flagChange];
  v7 = [v3 stringWithFormat:@"Message Action: Destination: %@, Read Status: %ld, Flag Change: %@, Message Color: %ld", v4, v5, v6, -[MEMessageAction messageColor](self, "messageColor")];

  return v7;
}

@end
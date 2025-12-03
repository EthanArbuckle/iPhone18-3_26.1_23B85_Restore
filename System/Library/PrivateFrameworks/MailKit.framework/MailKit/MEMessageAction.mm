@interface MEMessageAction
+ (MEMessageAction)flagActionWithFlag:(MEMessageActionFlag)flag;
+ (MEMessageAction)markAsReadAction;
+ (MEMessageAction)markAsUnreadAction;
+ (MEMessageAction)moveToArchiveAction;
+ (MEMessageAction)moveToJunkAction;
+ (MEMessageAction)moveToTrashAction;
+ (MEMessageAction)setBackgroundColorActionWithColor:(MEMessageActionMessageColor)color;
- (BOOL)isEqual:(id)equal;
- (MEMessageAction)initWithCoder:(id)coder;
- (MEMessageAction)initWithDestination:(id)destination readStatus:(int64_t)status flagChange:(id)change messageColor:(int64_t)color;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MEMessageAction)initWithDestination:(id)destination readStatus:(int64_t)status flagChange:(id)change messageColor:(int64_t)color
{
  destinationCopy = destination;
  changeCopy = change;
  v16.receiver = self;
  v16.super_class = MEMessageAction;
  v13 = [(MEMessageAction *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_destination, destination);
    v14->_readStatus = status;
    objc_storeStrong(&v14->_flagChange, change);
    v14->_messageColor = color;
  }

  return v14;
}

- (MEMessageAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"EFPropertyKey_readStatus"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_flagChange"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_destination"];
  v8 = -[MEMessageAction initWithDestination:readStatus:flagChange:messageColor:](self, "initWithDestination:readStatus:flagChange:messageColor:", v7, v5, v6, [coderCopy decodeIntegerForKey:@"EFPropertyKey_messageColor"]);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destination = [(MEMessageAction *)self destination];
  [coderCopy encodeObject:destination forKey:@"EFPropertyKey_destination"];

  [coderCopy encodeInteger:-[MEMessageAction readStatus](self forKey:{"readStatus"), @"EFPropertyKey_readStatus"}];
  flagChange = [(MEMessageAction *)self flagChange];
  [coderCopy encodeObject:flagChange forKey:@"EFPropertyKey_flagChange"];

  [coderCopy encodeInteger:-[MEMessageAction messageColor](self forKey:{"messageColor"), @"EFPropertyKey_messageColor"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    destination = [(MEMessageAction *)self destination];
    destination2 = [v6 destination];
    if (EFObjectsAreEqual())
    {
      flagChange = [(MEMessageAction *)self flagChange];
      flagChange2 = [v6 flagChange];
      if (EFObjectsAreEqual() && (v11 = -[MEMessageAction readStatus](self, "readStatus"), v11 == [v6 readStatus]))
      {
        messageColor = [(MEMessageAction *)self messageColor];
        v13 = messageColor == [v6 messageColor];
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
  destination = [(MEMessageAction *)self destination];
  readStatus = [(MEMessageAction *)self readStatus];
  flagChange = [(MEMessageAction *)self flagChange];
  v7 = [v3 stringWithFormat:@"Message Action: Destination: %@, Read Status: %ld, Flag Change: %@, Message Color: %ld", destination, readStatus, flagChange, -[MEMessageAction messageColor](self, "messageColor")];

  return v7;
}

@end
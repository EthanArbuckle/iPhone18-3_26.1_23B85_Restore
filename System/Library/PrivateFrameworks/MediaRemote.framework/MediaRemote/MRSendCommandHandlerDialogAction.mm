@interface MRSendCommandHandlerDialogAction
+ (id)actionWithTitle:(id)title type:(int64_t)type commandEvent:(id)event;
- (MRSendCommandHandlerDialogAction)initWithProtobuf:(id)protobuf;
- (MRSendCommandHandlerDialogAction)initWithTitle:(id)title type:(int64_t)type commandEvent:(id)event;
- (_MRSendCommandResultHandlerDialogActionProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MRSendCommandHandlerDialogAction

+ (id)actionWithTitle:(id)title type:(int64_t)type commandEvent:(id)event
{
  eventCopy = event;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy type:type commandEvent:eventCopy];

  return v10;
}

- (MRSendCommandHandlerDialogAction)initWithTitle:(id)title type:(int64_t)type commandEvent:(id)event
{
  titleCopy = title;
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = MRSendCommandHandlerDialogAction;
  v11 = [(MRSendCommandHandlerDialogAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_type = type;
    objc_storeStrong(&v12->_event, event);
  }

  return v12;
}

- (MRSendCommandHandlerDialogAction)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    title = [protobufCopy title];
    type = [protobufCopy type];
    v7 = [MRSendCommandHandlerEvent alloc];
    event = [protobufCopy event];

    v9 = [(MRSendCommandHandlerEvent *)v7 initWithProtobuf:event];
    self = [(MRSendCommandHandlerDialogAction *)self initWithTitle:title type:type commandEvent:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRSendCommandResultHandlerDialogActionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultHandlerDialogActionProtobuf);
  title = [(MRSendCommandHandlerDialogAction *)self title];
  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setTitle:title];

  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setType:[(MRSendCommandHandlerDialogAction *)self type]];
  event = [(MRSendCommandHandlerDialogAction *)self event];
  protobuf = [event protobuf];
  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setEvent:protobuf];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  title = [(MRSendCommandHandlerDialogAction *)self title];
  v7 = [title copyWithZone:zone];
  type = [(MRSendCommandHandlerDialogAction *)self type];
  event = [(MRSendCommandHandlerDialogAction *)self event];
  v10 = [event copyWithZone:zone];
  v11 = [v5 initWithTitle:v7 type:type commandEvent:v10];

  return v11;
}

- (id)description
{
  type = [(MRSendCommandHandlerDialogAction *)self type];
  if (type > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E769E180[type];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  title = [(MRSendCommandHandlerDialogAction *)self title];
  event = [(MRSendCommandHandlerDialogAction *)self event];
  v9 = MRCreateIndentedDebugDescriptionFromObject(event);
  v10 = [v5 stringWithFormat:@"<%@ : %p {\n   title= %@\n   type= %@\n   event= %@\n}>\n", v6, self, title, v4, v9];

  return v10;
}

@end
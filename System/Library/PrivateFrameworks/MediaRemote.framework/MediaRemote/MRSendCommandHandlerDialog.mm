@interface MRSendCommandHandlerDialog
+ (id)dialogWithTitle:(id)title message:(id)message;
- (MRSendCommandHandlerDialog)initWithProtobuf:(id)protobuf;
- (MRSendCommandHandlerDialog)initWithTitle:(id)title message:(id)message;
- (NSArray)actions;
- (_MRSendCommandResultHandlerDialogProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MRSendCommandHandlerDialog

+ (id)dialogWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v8 = [[self alloc] initWithTitle:titleCopy message:messageCopy];

  return v8;
}

- (MRSendCommandHandlerDialog)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MRSendCommandHandlerDialog;
  v9 = [(MRSendCommandHandlerDialog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, title);
    objc_storeStrong(&v10->_localizedMessage, message);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableActions = v10->_mutableActions;
    v10->_mutableActions = v11;
  }

  return v10;
}

- (MRSendCommandHandlerDialog)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v16.receiver = self;
    v16.super_class = MRSendCommandHandlerDialog;
    v5 = [(MRSendCommandHandlerDialog *)&v16 init];
    if (v5)
    {
      localizedTitle = [protobufCopy localizedTitle];
      localizedTitle = v5->_localizedTitle;
      v5->_localizedTitle = localizedTitle;

      localizedMessage = [protobufCopy localizedMessage];
      localizedMessage = v5->_localizedMessage;
      v5->_localizedMessage = localizedMessage;

      actions = [protobufCopy actions];
      v11 = [actions msv_map:&__block_literal_global_38];
      v12 = [v11 mutableCopy];
      mutableActions = v5->_mutableActions;
      v5->_mutableActions = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRSendCommandHandlerDialogAction *__47__MRSendCommandHandlerDialog_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRSendCommandHandlerDialogAction alloc] initWithProtobuf:v2];

  return v3;
}

- (_MRSendCommandResultHandlerDialogProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultHandlerDialogProtobuf);
  localizedTitle = [(MRSendCommandHandlerDialog *)self localizedTitle];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setLocalizedTitle:localizedTitle];

  localizedMessage = [(MRSendCommandHandlerDialog *)self localizedMessage];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setLocalizedMessage:localizedMessage];

  actions = [(MRSendCommandHandlerDialog *)self actions];
  v7 = [actions msv_map:&__block_literal_global_78];
  v8 = [v7 mutableCopy];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setActions:v8];

  return v3;
}

- (NSArray)actions
{
  v2 = [(NSMutableArray *)self->_mutableActions copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  localizedTitle = [(MRSendCommandHandlerDialog *)self localizedTitle];
  v7 = [localizedTitle copyWithZone:zone];
  localizedMessage = [(MRSendCommandHandlerDialog *)self localizedMessage];
  v9 = [localizedMessage copyWithZone:zone];
  v10 = [v5 initWithTitle:v7 message:v9];

  v11 = [(NSMutableArray *)self->_mutableActions copyWithZone:zone];
  v12 = v10[1];
  v10[1] = v11;

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedTitle = [(MRSendCommandHandlerDialog *)self localizedTitle];
  localizedMessage = [(MRSendCommandHandlerDialog *)self localizedMessage];
  actions = [(MRSendCommandHandlerDialog *)self actions];
  v8 = MRCreateIndentedDebugDescriptionFromArray(actions);
  v9 = [v3 stringWithFormat:@"<%@ : %p {\n   title= %@\n   message= %@\n   actions= %@\n}>\n", v4, self, localizedTitle, localizedMessage, v8];

  return v9;
}

@end
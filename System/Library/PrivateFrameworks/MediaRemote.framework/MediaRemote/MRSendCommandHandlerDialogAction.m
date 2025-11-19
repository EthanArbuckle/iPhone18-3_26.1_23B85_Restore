@interface MRSendCommandHandlerDialogAction
+ (id)actionWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5;
- (MRSendCommandHandlerDialogAction)initWithProtobuf:(id)a3;
- (MRSendCommandHandlerDialogAction)initWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5;
- (_MRSendCommandResultHandlerDialogActionProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRSendCommandHandlerDialogAction

+ (id)actionWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 type:a4 commandEvent:v8];

  return v10;
}

- (MRSendCommandHandlerDialogAction)initWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MRSendCommandHandlerDialogAction;
  v11 = [(MRSendCommandHandlerDialogAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v12->_type = a4;
    objc_storeStrong(&v12->_event, a5);
  }

  return v12;
}

- (MRSendCommandHandlerDialogAction)initWithProtobuf:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 title];
    v6 = [v4 type];
    v7 = [MRSendCommandHandlerEvent alloc];
    v8 = [v4 event];

    v9 = [(MRSendCommandHandlerEvent *)v7 initWithProtobuf:v8];
    self = [(MRSendCommandHandlerDialogAction *)self initWithTitle:v5 type:v6 commandEvent:v9];

    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_MRSendCommandResultHandlerDialogActionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandResultHandlerDialogActionProtobuf);
  v4 = [(MRSendCommandHandlerDialogAction *)self title];
  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setTitle:v4];

  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setType:[(MRSendCommandHandlerDialogAction *)self type]];
  v5 = [(MRSendCommandHandlerDialogAction *)self event];
  v6 = [v5 protobuf];
  [(_MRSendCommandResultHandlerDialogActionProtobuf *)v3 setEvent:v6];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(MRSendCommandHandlerDialogAction *)self title];
  v7 = [v6 copyWithZone:a3];
  v8 = [(MRSendCommandHandlerDialogAction *)self type];
  v9 = [(MRSendCommandHandlerDialogAction *)self event];
  v10 = [v9 copyWithZone:a3];
  v11 = [v5 initWithTitle:v7 type:v8 commandEvent:v10];

  return v11;
}

- (id)description
{
  v3 = [(MRSendCommandHandlerDialogAction *)self type];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E769E180[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(MRSendCommandHandlerDialogAction *)self title];
  v8 = [(MRSendCommandHandlerDialogAction *)self event];
  v9 = MRCreateIndentedDebugDescriptionFromObject(v8);
  v10 = [v5 stringWithFormat:@"<%@ : %p {\n   title= %@\n   type= %@\n   event= %@\n}>\n", v6, self, v7, v4, v9];

  return v10;
}

@end
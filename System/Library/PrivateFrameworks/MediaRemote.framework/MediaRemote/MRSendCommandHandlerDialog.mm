@interface MRSendCommandHandlerDialog
+ (id)dialogWithTitle:(id)a3 message:(id)a4;
- (MRSendCommandHandlerDialog)initWithProtobuf:(id)a3;
- (MRSendCommandHandlerDialog)initWithTitle:(id)a3 message:(id)a4;
- (NSArray)actions;
- (_MRSendCommandResultHandlerDialogProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRSendCommandHandlerDialog

+ (id)dialogWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithTitle:v7 message:v6];

  return v8;
}

- (MRSendCommandHandlerDialog)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MRSendCommandHandlerDialog;
  v9 = [(MRSendCommandHandlerDialog *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localizedTitle, a3);
    objc_storeStrong(&v10->_localizedMessage, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableActions = v10->_mutableActions;
    v10->_mutableActions = v11;
  }

  return v10;
}

- (MRSendCommandHandlerDialog)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = MRSendCommandHandlerDialog;
    v5 = [(MRSendCommandHandlerDialog *)&v16 init];
    if (v5)
    {
      v6 = [v4 localizedTitle];
      localizedTitle = v5->_localizedTitle;
      v5->_localizedTitle = v6;

      v8 = [v4 localizedMessage];
      localizedMessage = v5->_localizedMessage;
      v5->_localizedMessage = v8;

      v10 = [v4 actions];
      v11 = [v10 msv_map:&__block_literal_global_38];
      v12 = [v11 mutableCopy];
      mutableActions = v5->_mutableActions;
      v5->_mutableActions = v12;
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
  v4 = [(MRSendCommandHandlerDialog *)self localizedTitle];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setLocalizedTitle:v4];

  v5 = [(MRSendCommandHandlerDialog *)self localizedMessage];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setLocalizedMessage:v5];

  v6 = [(MRSendCommandHandlerDialog *)self actions];
  v7 = [v6 msv_map:&__block_literal_global_78];
  v8 = [v7 mutableCopy];
  [(_MRSendCommandResultHandlerDialogProtobuf *)v3 setActions:v8];

  return v3;
}

- (NSArray)actions
{
  v2 = [(NSMutableArray *)self->_mutableActions copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(MRSendCommandHandlerDialog *)self localizedTitle];
  v7 = [v6 copyWithZone:a3];
  v8 = [(MRSendCommandHandlerDialog *)self localizedMessage];
  v9 = [v8 copyWithZone:a3];
  v10 = [v5 initWithTitle:v7 message:v9];

  v11 = [(NSMutableArray *)self->_mutableActions copyWithZone:a3];
  v12 = v10[1];
  v10[1] = v11;

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRSendCommandHandlerDialog *)self localizedTitle];
  v6 = [(MRSendCommandHandlerDialog *)self localizedMessage];
  v7 = [(MRSendCommandHandlerDialog *)self actions];
  v8 = MRCreateIndentedDebugDescriptionFromArray(v7);
  v9 = [v3 stringWithFormat:@"<%@ : %p {\n   title= %@\n   message= %@\n   actions= %@\n}>\n", v4, self, v5, v6, v8];

  return v9;
}

@end
@interface HFRoomBuilderItem
- (HFRoomBuilderItem)initWithRoomBuilder:(id)builder;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFRoomBuilderItem

- (HFRoomBuilderItem)initWithRoomBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFRoomBuilderItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"roomBuilder"}];
  }

  v11.receiver = self;
  v11.super_class = HFRoomBuilderItem;
  v7 = [(HFRoomBuilderItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_roomBuilder, builder);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  roomBuilder = [(HFRoomBuilderItem *)self roomBuilder];
  room = [roomBuilder room];

  roomBuilder2 = [(HFRoomBuilderItem *)self roomBuilder];
  name = [roomBuilder2 name];
  v15 = name;
  if (room)
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:name forKeyedSubscript:@"title"];
  }

  else
  {
    v16 = HFLocalizedStringWithFormat(@"HFRoomSuggestionNameFormat", @"%@", v9, v10, v11, v12, v13, v14, name);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v16 forKeyedSubscript:@"title"];
  }

  roomBuilder3 = [(HFRoomBuilderItem *)self roomBuilder];
  [(HFMutableItemUpdateOutcome *)v4 setObject:roomBuilder3 forKeyedSubscript:@"roomBuilder"];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v18;
}

@end
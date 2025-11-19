@interface HFRoomBuilderItem
- (HFRoomBuilderItem)initWithRoomBuilder:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFRoomBuilderItem

- (HFRoomBuilderItem)initWithRoomBuilder:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFRoomBuilderItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"roomBuilder"}];
  }

  v11.receiver = self;
  v11.super_class = HFRoomBuilderItem;
  v7 = [(HFRoomBuilderItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_roomBuilder, a3);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [(HFRoomBuilderItem *)self roomBuilder];
  v6 = [v5 room];

  v7 = [(HFRoomBuilderItem *)self roomBuilder];
  v8 = [v7 name];
  v15 = v8;
  if (v6)
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:v8 forKeyedSubscript:@"title"];
  }

  else
  {
    v16 = HFLocalizedStringWithFormat(@"HFRoomSuggestionNameFormat", @"%@", v9, v10, v11, v12, v13, v14, v8);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v16 forKeyedSubscript:@"title"];
  }

  v17 = [(HFRoomBuilderItem *)self roomBuilder];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v17 forKeyedSubscript:@"roomBuilder"];

  v18 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v18;
}

@end
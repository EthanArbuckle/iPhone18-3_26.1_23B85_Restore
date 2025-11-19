@interface MTPAFEventHandlers
- (void)registerDefaultEventHandlers;
@end

@implementation MTPAFEventHandlers

- (void)registerDefaultEventHandlers
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v25[0] = @"eventType";
  v25[1] = @"actionType";
  v26[0] = @"playActivity";
  v26[1] = @"start";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v27[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"playStart" eventHandlerClass:v3 eventData:v5];

  v6 = objc_opt_class();
  v22[0] = @"eventType";
  v22[1] = @"actionType";
  v23[0] = @"playActivity";
  v23[1] = @"stop";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v24 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"playStop" eventHandlerClass:v6 eventData:v8];

  v9 = objc_opt_class();
  v19[0] = @"eventType";
  v19[1] = @"actionType";
  v20[0] = @"seekActivity";
  v20[1] = @"start";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"seekStart" eventHandlerClass:v9 eventData:v11];

  v12 = objc_opt_class();
  v16[0] = @"eventType";
  v16[1] = @"actionType";
  v17[0] = @"seekActivity";
  v17[1] = @"stop";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v18 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [(MTEventHandlers *)self registerEventHandlerName:@"seekStop" eventHandlerClass:v12 eventData:v14];

  v15 = *MEMORY[0x277D85DE8];
}

@end
@interface HFDefaultRoomSuggestionVendor
+ (HFDefaultRoomSuggestionVendor)TVAccessorySuggestionVendor;
+ (HFDefaultRoomSuggestionVendor)homeAppSuggestionVendor;
- (HFDefaultRoomSuggestionVendor)init;
- (HFDefaultRoomSuggestionVendor)initWithRoomSuggestionsPlistURL:(id)l;
- (NSSet)roomSuggestions;
- (id)prioritizedRoomSuggestions;
@end

@implementation HFDefaultRoomSuggestionVendor

+ (HFDefaultRoomSuggestionVendor)TVAccessorySuggestionVendor
{
  v2 = [HFDefaultRoomSuggestionVendor alloc];
  v3 = HFHomeBundle();
  v4 = [v3 URLForResource:@"HFRoomSuggestions-TVAccessory" withExtension:@"plist"];
  v5 = [(HFDefaultRoomSuggestionVendor *)v2 initWithRoomSuggestionsPlistURL:v4];

  return v5;
}

+ (HFDefaultRoomSuggestionVendor)homeAppSuggestionVendor
{
  v2 = objc_alloc_init(HFDefaultRoomSuggestionVendor);

  return v2;
}

- (HFDefaultRoomSuggestionVendor)initWithRoomSuggestionsPlistURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = HFDefaultRoomSuggestionVendor;
  v5 = [(HFDefaultRoomSuggestionVendor *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    roomSuggestionsPlistURL = v5->_roomSuggestionsPlistURL;
    v5->_roomSuggestionsPlistURL = v6;
  }

  return v5;
}

- (HFDefaultRoomSuggestionVendor)init
{
  v3 = HFHomeBundle();
  v4 = [v3 URLForResource:@"HFRoomSuggestions" withExtension:@"plist"];
  v5 = [(HFDefaultRoomSuggestionVendor *)self initWithRoomSuggestionsPlistURL:v4];

  return v5;
}

- (id)prioritizedRoomSuggestions
{
  roomSuggestions = [(HFDefaultRoomSuggestionVendor *)self roomSuggestions];
  allObjects = [roomSuggestions allObjects];
  v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_39_2];

  return v4;
}

uint64_t __59__HFDefaultRoomSuggestionVendor_prioritizedRoomSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "priority")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 priority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (NSSet)roomSuggestions
{
  roomSuggestions = self->_roomSuggestions;
  if (roomSuggestions)
  {
    v3 = roomSuggestions;
  }

  else
  {
    v6 = MEMORY[0x277CBEA90];
    roomSuggestionsPlistURL = [(HFDefaultRoomSuggestionVendor *)self roomSuggestionsPlistURL];
    v8 = [v6 dataWithContentsOfURL:roomSuggestionsPlistURL];

    v9 = [MEMORY[0x277CCAC58] propertyListWithData:v8 options:0 format:0 error:0];
    objc_opt_class();
    v10 = 0;
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKey:@"_LOCALIZABLE_"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2020000000;
      v20[3] = [v10 count];
      v18[0] = 0;
      v18[1] = v18;
      v18[2] = 0x2020000000;
      v19 = 0;
      v11 = MEMORY[0x277CBEB98];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __48__HFDefaultRoomSuggestionVendor_roomSuggestions__block_invoke;
      v17[3] = &unk_277DFDD08;
      v17[4] = self;
      v17[5] = v20;
      v17[6] = v18;
      v17[7] = a2;
      v12 = [v10 na_map:v17];
      v13 = [v11 setWithArray:v12];
      v14 = self->_roomSuggestions;
      self->_roomSuggestions = v13;

      v3 = self->_roomSuggestions;
      _Block_object_dispose(v18, 8);
      _Block_object_dispose(v20, 8);
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HFRoomSuggestionVendor.m" lineNumber:86 description:{@"Missing or malformatted suggestions plist %@", v9}];

      v3 = [MEMORY[0x277CBEB98] set];
    }
  }

  return v3;
}

id __48__HFDefaultRoomSuggestionVendor_roomSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"name"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"priority"];
    if (v5)
    {
      v6 = v5;
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        v7 = [*(a1 + 32) roomSuggestionsPlistURL];
        NSLog(&cfstr_RoomSuggestion.isa, v7);
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
      --*(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = [v3 objectForKeyedSubscript:@"aliases"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x277CBEBF8];
    }

    v13 = [v9 setWithArray:v12];

    v8 = +[HFRoomSuggestion suggestionWithName:priority:aliases:](HFRoomSuggestion, "suggestionWithName:priority:aliases:", v4, [v6 integerValue], v13);
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"HFRoomSuggestionVendor.m" lineNumber:99 description:{@"Missing name in entry %@", v3}];
    v8 = 0;
  }

  return v8;
}

@end
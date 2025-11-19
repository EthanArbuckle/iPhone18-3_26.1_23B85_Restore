@interface GKAchievementDescription
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)_achievementDescriptionFromGame:(id)a3 propertyListDictionary:(id)a4;
+ (id)_loadLocalAchievementDescriptionsForGame:(id)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (void)loadAchievementDescriptionsForGame:(id)a3 withCompletionHandler:(id)a4;
+ (void)loadAchievementDescriptionsWithCompletionHandler:(void *)completionHandler;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKAchievementDescription)initWithCoder:(id)a3;
- (GKAchievementDescription)initWithInternalRepresentation:(id)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKAchievementDescription

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKAchievementDescription *)self internal];
    v7 = [v5 internal];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKAchievementDescription *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (GKAchievementDescription)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[(GKInternalRepresentation *)GKAchievementInternal];
  }

  v8.receiver = self;
  v8.super_class = GKAchievementDescription;
  v5 = [(GKAchievementDescription *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, v4);
  }

  return v6;
}

- (GKAchievementDescription)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"internal"];

  v9 = [(GKAchievementDescription *)self initWithInternalRepresentation:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GKAchievementDescription *)self internal];
  [v4 encodeObject:v5 forKey:@"internal"];
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = GKAchievementDescription;
  v3 = [(GKAchievementDescription *)&v10 description];
  v4 = [(GKAchievementDescription *)self identifier];
  v5 = [(GKAchievementDescription *)self title];
  if ([(GKAchievementDescription *)self isHidden])
  {
    v6 = @"hidden";
  }

  else
  {
    v6 = @"visible";
  }

  v7 = [(GKAchievementDescription *)self achievedDescription];
  v8 = [v3 stringByAppendingFormat:@"id: %@\t%@\t%@\t%@", v4, v5, v6, v7];

  return v8;
}

+ (void)loadAchievementDescriptionsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKGame currentGame];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__GKAchievementDescription_loadAchievementDescriptionsWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DDCB0;
  v8 = v4;
  v6 = v4;
  [a1 loadAchievementDescriptionsForGame:v5 withCompletionHandler:v7];
}

void __77__GKAchievementDescription_loadAchievementDescriptionsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (v5)
    {
      (*(v7 + 16))(v7, 0, v5);
    }

    else if (v9)
    {
      (*(v7 + 16))(v7, v9, 0);
    }

    else
    {
      v8 = [MEMORY[0x277CBEA60] array];
      (*(v7 + 16))(v7, v8, 0);
    }
  }
}

+ (id)_achievementDescriptionFromGame:(id)a3 propertyListDictionary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(GKLocalizedAchievementDescription);
  [(GKLocalizedAchievementDescription *)v7 setGame:v6];

  v8 = +[(GKInternalRepresentation *)GKAchievementInternal];
  v9 = [v5 objectForKeyedSubscript:@"identifier"];
  [v8 setIdentifier:v9];

  v10 = [v5 objectForKeyedSubscript:@"nameKey"];
  [v8 setTitle:v10];

  v11 = [v5 objectForKeyedSubscript:@"earnedDescriptionKey"];
  [v8 setAchievedDescription:v11];

  v12 = [v5 objectForKeyedSubscript:@"unearnedDescriptionKey"];
  [v8 setUnachievedDescription:v12];

  v13 = [v5 objectForKeyedSubscript:@"maximumPoints"];
  [v8 setMaximumPoints:{objc_msgSend(v13, "intValue")}];

  v14 = [v5 objectForKeyedSubscript:@"hiddenUntilSubmitted"];
  [v8 setHidden:{objc_msgSend(v14, "BOOLValue")}];

  v15 = [v5 objectForKeyedSubscript:@"canReplay"];
  [v8 setReplayable:{objc_msgSend(v15, "BOOLValue")}];

  v16 = [v5 objectForKeyedSubscript:@"iconImageName"];

  [(GKLocalizedAchievementDescription *)v7 setIconImageName:v16];
  [(GKAchievementDescription *)v7 setInternal:v8];

  return v7;
}

+ (id)_loadLocalAchievementDescriptionsForGame:(id)a3
{
  v4 = a3;
  v5 = [v4 gameDescriptorDictionary];
  v6 = [GKContentPropertyList localPropertyListForGameDescriptor:v5];

  v7 = [v6 achievementDescriptions];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__GKAchievementDescription__loadLocalAchievementDescriptionsForGame___block_invoke;
    v10[3] = &unk_2785DE398;
    v12 = a1;
    v11 = v4;
    v8 = [v7 _gkMapWithBlock:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)loadAchievementDescriptionsForGame:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _loadLocalAchievementDescriptionsForGame:v6];
  v9 = v8;
  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__GKAchievementDescription_loadAchievementDescriptionsForGame_withCompletionHandler___block_invoke;
    block[3] = &unk_2785DDC10;
    v32 = v7;
    v31 = v8;
    v10 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v11 = v32;
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__3;
    v28[4] = __Block_byref_object_dispose__3;
    v29 = 0;
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = +[GKDaemonProxy proxyForLocalPlayer];
    v15 = [v14 gameStatService];
    v16 = [v6 gameDescriptor];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__GKAchievementDescription_loadAchievementDescriptionsForGame_withCompletionHandler___block_invoke_49;
    v24[3] = &unk_2785DE3C0;
    v17 = v12;
    v25 = v17;
    v27 = v28;
    v18 = v13;
    v26 = v18;
    [v15 getAchievementDescriptionsForGameDescriptor:v16 handler:v24];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__GKAchievementDescription_loadAchievementDescriptionsForGame_withCompletionHandler___block_invoke_2;
    v20[3] = &unk_2785DE3E8;
    v21 = v17;
    v22 = v7;
    v23 = v28;
    v10 = v7;
    v19 = v17;
    dispatch_group_notify(v18, MEMORY[0x277D85CD0], v20);

    _Block_object_dispose(v28, 8);
    v11 = v29;
  }
}

void __85__GKAchievementDescription_loadAchievementDescriptionsForGame_withCompletionHandler___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count] >= 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [GKAchievementDescription alloc];
          v14 = [(GKAchievementDescription *)v13 initWithInternalRepresentation:v12, v19];
          [*(a1 + 32) addObject:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v6;
  v17 = v6;

  dispatch_group_leave(*(a1 + 40));
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __85__GKAchievementDescription_loadAchievementDescriptionsForGame_withCompletionHandler___block_invoke_2(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    if ([*(result + 32) count])
    {
      v3 = *(v2 + 32);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(*(*(v2 + 48) + 8) + 40);
    v5 = *(v1 + 16);

    return v5(v1, v3, v4);
  }

  return result;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKAchievementDescription;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = GKAchievementDescription;
  v5 = [(GKAchievementDescription *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKAchievementDescription *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKAchievementDescription;
  if ([(GKAchievementDescription *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKAchievementDescription *)self forwardingTargetForSelector:a3];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKAchievementInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKAchievementDescription *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKAchievementDescription *)self internal];
  [v8 setValue:v7 forKey:v6];
}

@end
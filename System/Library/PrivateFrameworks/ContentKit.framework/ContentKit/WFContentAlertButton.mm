@interface WFContentAlertButton
+ (id)buttonWithContentItem:(id)a3 selected:(BOOL)a4 stickySelection:(BOOL)a5 contextAwareHandler:(id)a6;
+ (id)buttonWithContentItem:(id)a3 selected:(BOOL)a4 stickySelection:(BOOL)a5 handler:(id)a6;
+ (void)processContentAlertButtonSubtitles:(id)a3;
- (BOOL)addSubtitleCompletionHandler:(id)a3;
- (BOOL)hasContentSubtitle;
- (void)getSubtitle:(id)a3;
- (void)start;
@end

@implementation WFContentAlertButton

- (BOOL)addSubtitleCompletionHandler:(id)a3
{
  v4 = a3;
  group = self->_group;
  if (!group)
  {
    [(WFContentAlertButton *)self start];
    group = self->_group;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__WFContentAlertButton_addSubtitleCompletionHandler___block_invoke;
  v8[3] = &unk_278347B38;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], v8);

  return 0;
}

- (void)start
{
  v3 = dispatch_group_create();
  group = self->_group;
  self->_group = v3;

  dispatch_group_enter(self->_group);
  v5 = [(WFContentAlertButton *)self contentItem];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__WFContentAlertButton_start__block_invoke;
  v6[3] = &unk_2783481E8;
  v6[4] = self;
  self->_hasContentSubtitle = [v5 getListSubtitle:v6];

  if (!self->_hasContentSubtitle)
  {
    dispatch_group_leave(self->_group);
  }
}

void __29__WFContentAlertButton_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  *(v4 + 88) = v3;

  v6 = *(*(a1 + 32) + 104);

  dispatch_group_leave(v6);
}

- (void)getSubtitle:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__WFContentAlertButton_getSubtitle___block_invoke;
  v6[3] = &unk_2783477C8;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(WFContentAlertButton *)self addSubtitleCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __36__WFContentAlertButton_getSubtitle___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v9)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [WeakRetained hideSubtitle];
    v6 = *(a1 + 32);
    if (v5)
    {
      (*(v6 + 16))(v6, 0);
    }

    else
    {
      v7 = [v4 contentItem];
      v8 = [objc_opt_class() localizedTypeDescription];
      (*(v6 + 16))(v6, v8);
    }
  }
}

- (BOOL)hasContentSubtitle
{
  if (!self->_group)
  {
    [(WFContentAlertButton *)self start];
  }

  return self->_hasContentSubtitle;
}

+ (void)processContentAlertButtonSubtitles:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectsMatchingClass:objc_opt_class()];
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 contentItem];
        [v5 addObject:objc_opt_class()];

        v9 |= [v12 hasContentSubtitle];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);

    if (v9)
    {
      v14 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = [v5 count] == 1;
LABEL_12:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * j) setHideSubtitle:{v14, v20}];
      }

      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

+ (id)buttonWithContentItem:(id)a3 selected:(BOOL)a4 stickySelection:(BOOL)a5 handler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v10 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__WFContentAlertButton_buttonWithContentItem_selected_stickySelection_handler___block_invoke;
  v14[3] = &unk_2783494B8;
  v15 = v10;
  v11 = v10;
  v12 = [a1 buttonWithContentItem:a3 selected:v7 stickySelection:v6 contextAwareHandler:v14];

  return v12;
}

+ (id)buttonWithContentItem:(id)a3 selected:(BOOL)a4 stickySelection:(BOOL)a5 contextAwareHandler:(id)a6
{
  v7 = a5;
  v8 = a4;
  v11 = a3;
  v12 = a6;
  v13 = [v11 name];
  v14 = [MEMORY[0x277D7A168] parseAnnotatedString:v13];
  v15 = [v14 displayString];

  v16 = [a1 buttonWithTitle:v15 subtitle:0 selected:v8 stickySelection:v7 style:0 contextAwareHandler:v12 image:0];

  if (v16)
  {
    objc_storeStrong(v16 + 12, a3);
    v17 = v16;
  }

  return v16;
}

@end
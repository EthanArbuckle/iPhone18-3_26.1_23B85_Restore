@interface MGGroupsMediator
- (MGGroupsMediator)initWithGroupsQueryAgent:(id)a3;
- (MGGroupsQueryAgent)queryAgent;
- (id)currentGroups;
- (id)description;
- (id)group:(id)a3 addMember:(id)a4;
- (id)group:(id)a3 removeMember:(id)a4;
- (id)group:(id)a3 renameTo:(id)a4;
- (id)groupsForUpdate_unsafe;
- (id)groups_unsafe;
- (id)startActivityWithName:(id)a3;
- (void)_withLock:(id)a3;
- (void)addGroup:(id)a3;
- (void)dealloc;
- (void)endActivity:(id)a3;
- (void)removeGroup:(id)a3;
- (void)removeGroup:(id)a3 ifExists_unsafe:(BOOL *)a4;
- (void)removeGroupWithIdentifier:(id)a3;
- (void)upsertGroup_unsafe:(id)a3;
@end

@implementation MGGroupsMediator

- (MGGroupsMediator)initWithGroupsQueryAgent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MGGroupsMediator;
  v5 = [(MGGroupsMediator *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
    identifier = v6->_identifier;
    v6->_identifier = v7;

    objc_storeWeak(&v6->_queryAgent, v4);
    v9 = objc_alloc_init(MEMORY[0x277CBEA60]);
    activities = v6->_activities;
    v6->_activities = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    groups = v6->_groups;
    v6->_groups = v11;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(MGGroupsMediator *)self queryAgent];
  [v3 groupsMediatorRemoved:self];

  v4.receiver = self;
  v4.super_class = MGGroupsMediator;
  [(MGGroupsMediator *)&v4 dealloc];
}

- (id)groups_unsafe
{
  os_unfair_lock_assert_owner(&self->_lock);
  groups = self->_groups;

  return groups;
}

- (void)upsertGroup_unsafe:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MGGroupsMediator *)self groups_unsafe];
  v6 = [v5 mutableCopy];

  v7 = [v4 identifier];
  [(NSDictionary *)v6 setObject:v4 forKey:v7];

  groups = self->_groups;
  self->_groups = v6;

  [(MGGroupsMediator *)self setPendingChanges:1];
}

- (void)removeGroup:(id)a3 ifExists_unsafe:(BOOL *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = [(MGGroupsMediator *)self groups_unsafe];
  v7 = [v6 identifier];

  v8 = [v11 objectForKey:v7];
  *a4 = v8 != 0;

  if (v8)
  {
    v9 = [v11 mutableCopy];
    [(NSDictionary *)v9 removeObjectForKey:v7];
    groups = self->_groups;
    self->_groups = v9;

    [(MGGroupsMediator *)self setPendingChanges:1];
  }
}

- (id)groupsForUpdate_unsafe
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(MGGroupsMediator *)self activities];
  if ([v3 count])
  {
  }

  else
  {
    v4 = [(MGGroupsMediator *)self hasPendingChanges];

    if (v4)
    {
      v5 = [(MGGroupsMediator *)self groups_unsafe];
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__MGGroupsMediator_description__block_invoke;
  v12[3] = &unk_27989EE30;
  v12[4] = self;
  v12[5] = &v21;
  v12[6] = &v17;
  v12[7] = &v13;
  [(MGGroupsMediator *)self _withLock:v12];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGGroupsMediator *)self identifier];
  v7 = v14[3];
  if (*(v18 + 24))
  {
    v8 = @"pending";
  }

  else
  {
    v8 = @"no";
  }

  if ([v22[5] count])
  {
    v9 = v22[5];
  }

  else
  {
    v9 = @"no activities";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, id=%@, groups=%p, %@ changes, %@>", v5, self, v6, v7, v8, v9];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

uint64_t __31__MGGroupsMediator_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activities];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) hasPendingChanges];
  result = [*(a1 + 32) groups_unsafe];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)currentGroups
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__MGGroupsMediator_currentGroups__block_invoke;
  v4[3] = &unk_27989EE58;
  v4[4] = self;
  v4[5] = &v5;
  [(MGGroupsMediator *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__MGGroupsMediator_currentGroups__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activities];
  v3 = [v2 count];

  if (!v3)
  {
    v7 = [*(a1 + 32) groups_unsafe];
    v4 = [v7 copy];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)startActivityWithName:(id)a3
{
  v4 = a3;
  v5 = [[MGGroupsActivity alloc] initWithName:v4];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__MGGroupsMediator_startActivityWithName___block_invoke;
  v10[3] = &unk_27989EE80;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [(MGGroupsMediator *)self _withLock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __42__MGGroupsMediator_startActivityWithName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 activities];
  v3 = [v4 arrayByAddingObject:*(a1 + 40)];
  [v2 setActivities:v3];
}

- (void)endActivity:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MGGroupsMediator_endActivity___block_invoke;
  v7[3] = &unk_27989EEA8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(MGGroupsMediator *)self _withLock:v7];
  if (v11[5])
  {
    v6 = [(MGGroupsMediator *)self queryAgent];
    [v6 groupsMediator:self didUpdateGroups:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __32__MGGroupsMediator_endActivity___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) activities];
  if ([v7 containsObject:*(a1 + 40)])
  {
    v2 = [v7 mutableCopy];
    [v2 removeObject:*(a1 + 40)];
    [*(a1 + 32) setActivities:v2];
    v3 = [*(a1 + 32) groupsForUpdate_unsafe];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(a1 + 32) setPendingChanges:0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__MGGroupsMediator_addGroup___block_invoke;
  v7[3] = &unk_27989EEA8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(MGGroupsMediator *)self _withLock:v7];
  if (v11[5])
  {
    v6 = [(MGGroupsMediator *)self queryAgent];
    [v6 groupsMediator:self didUpdateGroups:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

void __29__MGGroupsMediator_addGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) upsertGroup_unsafe:*(a1 + 40)];
  v2 = [*(a1 + 32) groupsForUpdate_unsafe];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = *(a1 + 32);

    [v5 setPendingChanges:0];
  }
}

- (void)removeGroup:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__MGGroupsMediator_removeGroup___block_invoke;
  v7[3] = &unk_27989EEA8;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(MGGroupsMediator *)self _withLock:v7];
  if (v11[5])
  {
    v6 = [(MGGroupsMediator *)self queryAgent];
    [v6 groupsMediator:self didUpdateGroups:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

void __32__MGGroupsMediator_removeGroup___block_invoke(uint64_t a1)
{
  v5 = 0;
  [*(a1 + 32) removeGroup:*(a1 + 40) ifExists_unsafe:&v5];
  if (v5 == 1)
  {
    v2 = [*(a1 + 32) groupsForUpdate_unsafe];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(a1 + 32) setPendingChanges:0];
    }
  }
}

- (id)group:(id)a3 renameTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__MGGroupsMediator_group_renameTo___block_invoke;
  v13[3] = &unk_27989EED0;
  v13[4] = self;
  v8 = v29;
  v14 = v8;
  v16 = &v24;
  v9 = v7;
  v15 = v9;
  v17 = &v18;
  [(MGGroupsMediator *)self _withLock:v13];
  if (v19[5])
  {
    v10 = [(MGGroupsMediator *)self queryAgent];
    [v10 groupsMediator:self didUpdateGroups:v19[5]];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __35__MGGroupsMediator_group_renameTo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groups_unsafe];
  v3 = [*(a1 + 40) identifier];
  v18 = [v2 objectForKey:v3];

  v4 = v18;
  if (v18)
  {
    v5 = objc_alloc(objc_opt_class());
    v6 = [v18 service];
    v7 = [v18 type];
    v8 = [v18 identifier];
    v9 = *(a1 + 48);
    v10 = [v18 properties];
    v11 = [v18 memberIdentifiers];
    v12 = [v5 initWithClientService:v6 type:v7 identifier:v8 name:v9 properties:v10 memberIdentifiers:v11];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [*(a1 + 32) upsertGroup_unsafe:*(*(*(a1 + 56) + 8) + 40)];
    v15 = [*(a1 + 32) groupsForUpdate_unsafe];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v4 = v18;
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(a1 + 32) setPendingChanges:0];
      v4 = v18;
    }
  }
}

- (id)group:(id)a3 addMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __36__MGGroupsMediator_group_addMember___block_invoke;
  v13[3] = &unk_27989EED0;
  v13[4] = self;
  v8 = v29;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v16 = &v24;
  v17 = &v18;
  [(MGGroupsMediator *)self _withLock:v13];
  if (v19[5])
  {
    v10 = [(MGGroupsMediator *)self queryAgent];
    [v10 groupsMediator:self didUpdateGroups:v19[5]];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __36__MGGroupsMediator_group_addMember___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groups_unsafe];
  v3 = [*(a1 + 40) identifier];
  v20 = [v2 objectForKey:v3];

  v4 = v20;
  if (v20)
  {
    v5 = [*(a1 + 48) identifier];
    v6 = [v20 memberIdentifiers];
    if (([v6 containsObject:v5] & 1) == 0)
    {
      v7 = objc_alloc(objc_opt_class());
      v8 = [v20 service];
      v9 = [v20 type];
      v10 = [v20 identifier];
      v11 = [v20 name];
      v12 = [v20 properties];
      v13 = [v6 arrayByAddingObject:v5];
      v14 = [v7 initWithClientService:v8 type:v9 identifier:v10 name:v11 properties:v12 memberIdentifiers:v13];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      [*(a1 + 32) upsertGroup_unsafe:*(*(*(a1 + 56) + 8) + 40)];
      v17 = [*(a1 + 32) groupsForUpdate_unsafe];
      v18 = *(*(a1 + 64) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        [*(a1 + 32) setPendingChanges:0];
      }
    }

    v4 = v20;
  }
}

- (id)group:(id)a3 removeMember:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__MGGroupsMediator_group_removeMember___block_invoke;
  v13[3] = &unk_27989EED0;
  v13[4] = self;
  v8 = v29;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v16 = &v24;
  v17 = &v18;
  [(MGGroupsMediator *)self _withLock:v13];
  if (v19[5])
  {
    v10 = [(MGGroupsMediator *)self queryAgent];
    [v10 groupsMediator:self didUpdateGroups:v19[5]];
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __39__MGGroupsMediator_group_removeMember___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groups_unsafe];
  v3 = [*(a1 + 40) identifier];
  v20 = [v2 objectForKey:v3];

  v4 = v20;
  if (v20)
  {
    v5 = [*(a1 + 48) identifier];
    v6 = [v20 memberIdentifiers];
    if ([v6 containsObject:v5])
    {
      v7 = [v6 mutableCopy];
      [v7 removeObject:v5];
      v8 = objc_alloc(objc_opt_class());
      v9 = [v20 service];
      v10 = [v20 type];
      v11 = [v20 identifier];
      v12 = [v20 name];
      v13 = [v20 properties];
      v14 = [v8 initWithClientService:v9 type:v10 identifier:v11 name:v12 properties:v13 memberIdentifiers:v7];
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      [*(a1 + 32) upsertGroup_unsafe:*(*(*(a1 + 56) + 8) + 40)];
      v17 = [*(a1 + 32) groupsForUpdate_unsafe];
      v18 = *(*(a1 + 64) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        [*(a1 + 32) setPendingChanges:0];
      }
    }

    v4 = v20;
  }
}

- (void)removeGroupWithIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__MGGroupsMediator_removeGroupWithIdentifier___block_invoke;
  v6[3] = &unk_27989EEF8;
  v8 = &v9;
  v6[4] = self;
  v5 = v4;
  v7 = v5;
  [(MGGroupsMediator *)self _withLock:v6];
  [(MGGroupsMediator *)self removeGroup:v10[5]];

  _Block_object_dispose(&v9, 8);
}

void __46__MGGroupsMediator_removeGroupWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) groups_unsafe];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MGGroupsQueryAgent)queryAgent
{
  WeakRetained = objc_loadWeakRetained(&self->_queryAgent);

  return WeakRetained;
}

@end
@interface FKFriendGroup
- (BOOL)containsFriend:(id)a3;
- (FKFriendGroup)initWithDelegate:(id)a3 groupSize:(unint64_t)a4;
- (FKFriendGroup)initWithGroupSize:(unint64_t)a3;
- (FKFriendGroupDelegate)delegate;
- (id)displayNameForGroupWithSeparator:(id)a3;
- (id)friendAtPosition:(unint64_t)a3;
- (int64_t)_firstEmptyPosition;
- (unint64_t)count;
- (void)addFriend:(id)a3 error:(unsigned int *)a4;
- (void)removeFriendAtPosition:(unint64_t)a3;
- (void)setFriend:(id)a3 atPosition:(unint64_t)a4 error:(unsigned int *)a5;
- (void)setFriends:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation FKFriendGroup

- (FKFriendGroup)initWithGroupSize:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = FKFriendGroup;
  v4 = [(FKFriendGroup *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    friendsManager = v4->_friendsManager;
    v4->_friendsManager = v5;

    v4->_groupSize = a3;
    if (a3)
    {
      v7 = 0;
      do
      {
        v8 = v4->_friendsManager;
        v9 = [MEMORY[0x277CBEB68] null];
        [(NSMutableArray *)v8 addObject:v9];

        ++v7;
      }

      while (v7 < v4->_groupSize);
    }

    v10 = v4;
  }

  return v4;
}

- (FKFriendGroup)initWithDelegate:(id)a3 groupSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FKFriendGroup *)self initWithGroupSize:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = v8;
  }

  return v8;
}

- (id)friendAtPosition:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || self->_groupSize <= a3)
  {
    v5 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_friendsManager objectAtIndex:?];
    v4 = [MEMORY[0x277CBEB68] null];

    if (v3 == v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }
  }

  return v5;
}

- (BOOL)containsFriend:(id)a3
{
  if (a3)
  {
    return [(NSMutableArray *)self->_friendsManager containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)count
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [MEMORY[0x277CBEB68] null];
  friendsManager = self->_friendsManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__FKFriendGroup_count__block_invoke;
  v8[3] = &unk_27916A2F8;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [(NSMutableArray *)friendsManager enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __22__FKFriendGroup_count__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    ++*(*(*(result + 40) + 8) + 24);
  }

  return result;
}

- (void)addFriend:(id)a3 error:(unsigned int *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(FKFriendGroup *)self _firstEmptyPosition];
  if ((v7 & 0x8000000000000000) != 0 || v7 >= self->_groupSize)
  {
    v8 = _FKGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[FKFriendGroup addFriend:error:]";
      v12 = 1024;
      v13 = 110;
      _os_log_impl(&dword_24BC19000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) unable to add friend: capacity reached", &v10, 0x12u);
    }

    *a4 = 1;
  }

  else
  {
    [(FKFriendGroup *)self setFriend:v6 atPosition:v7 error:a4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  title = self->_title;
  if (v5 | title && ![(NSString *)title isEqualToString:v5])
  {
    objc_storeStrong(&self->_title, a3);
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __26__FKFriendGroup_setTitle___block_invoke;
    v7[3] = &unk_27916A258;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __26__FKFriendGroup_setTitle___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"FKFriendGroupTitleChangedNotification" object:WeakRetained];
}

- (void)setFriend:(id)a3 atPosition:(unint64_t)a4 error:(unsigned int *)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (self->_groupSize <= a4)
  {
    v12 = _FKGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[FKFriendGroup setFriend:atPosition:error:]";
      v19 = 1024;
      v20 = 132;
      v21 = 2048;
      v22 = a4;
      _os_log_impl(&dword_24BC19000, v12, OS_LOG_TYPE_DEFAULT, "%s (%d) unable to add friend at position %tu: out of range", &v17, 0x1Cu);
    }

    v13 = 2;
  }

  else
  {
    v9 = _FKGetLogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v8 displayName];
        v17 = 136315906;
        v18 = "[FKFriendGroup setFriend:atPosition:error:]";
        v19 = 1024;
        v20 = 142;
        v21 = 2112;
        v22 = v11;
        v23 = 2048;
        v24 = a4;
        _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) setting [%@] in friend list at position %tu", &v17, 0x26u);
      }

      [(NSMutableArray *)self->_friendsManager setObject:v8 atIndexedSubscript:a4];
      v12 = [(FKFriendGroup *)self delegate];
      [v12 friendGroup:self didSetFriend:v8 atPosition:a4];
    }

    else
    {
      if (v10)
      {
        v17 = 136315650;
        v18 = "[FKFriendGroup setFriend:atPosition:error:]";
        v19 = 1024;
        v20 = 138;
        v21 = 2048;
        v22 = a4;
        _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) setting empty slot in friend list at position %tu", &v17, 0x1Cu);
      }

      friendsManager = self->_friendsManager;
      v15 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)friendsManager setObject:v15 atIndexedSubscript:a4];

      v12 = [(FKFriendGroup *)self delegate];
      [v12 friendGroup:self didRemoveFriend:0 atPosition:a4];
    }

    v13 = 0;
  }

  *a5 = v13;
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeFriendAtPosition:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(FKFriendGroup *)self friendAtPosition:?];
  if (v5)
  {
    friendsManager = self->_friendsManager;
    v7 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)friendsManager setObject:v7 atIndexedSubscript:a3];

    v8 = _FKGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 displayName];
      v12 = 136315906;
      v13 = "[FKFriendGroup removeFriendAtPosition:]";
      v14 = 1024;
      v15 = 160;
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_24BC19000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing friend [%@] from position %lu in friend group", &v12, 0x26u);
    }

    v10 = [(FKFriendGroup *)self delegate];
    [v10 friendGroup:self didRemoveFriend:v5 atPosition:a3];
  }

  else
  {
    v10 = _FKGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[FKFriendGroup removeFriendAtPosition:]";
      v14 = 1024;
      v15 = 155;
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_24BC19000, v10, OS_LOG_TYPE_DEFAULT, "%s (%d) Position %lu is already empty", &v12, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFriends:(id)a3
{
  friendsManager = self->_friendsManager;
  v5 = a3;
  [(NSMutableArray *)friendsManager removeAllObjects];
  [(NSMutableArray *)self->_friendsManager addObjectsFromArray:v5];
}

- (int64_t)_firstEmptyPosition
{
  if (!self->_groupSize)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_friendsManager objectAtIndex:v3];
    v5 = [MEMORY[0x277CBEB68] null];

    if (v4 == v5)
    {
      break;
    }

    if (++v3 >= self->_groupSize)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (id)displayNameForGroupWithSeparator:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FKFriendGroup *)self title];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(FKFriendGroup *)self title];
  }

  else if ([(NSMutableArray *)self->_friendsManager count])
  {
    v31 = v4;
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = self->_friendsManager;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [MEMORY[0x277CBEB68] null];

          if (v15 != v16)
          {
            v17 = v15;
            v18 = [v17 hasName];
            v19 = [v17 displayName];

            if (v18)
            {
              v20 = v8;
            }

            else
            {
              v20 = v9;
            }

            [v20 addObject:v19];
          }
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v9;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * j);
          if ([v26 fkMessageDestinationType] == 2)
          {
            v27 = [v26 componentsSeparatedByString:@"@"];
            v28 = [v27 objectAtIndexedSubscript:0];
            [v8 addObject:v28];
          }

          else
          {
            [v8 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    if ([v8 count])
    {
      v4 = v31;
      v7 = [v8 componentsJoinedByString:v31];
    }

    else
    {
      v7 = 0;
      v4 = v31;
    }
  }

  else
  {
    v7 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

- (FKFriendGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
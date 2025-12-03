@interface FKFriendGroup
- (BOOL)containsFriend:(id)friend;
- (FKFriendGroup)initWithDelegate:(id)delegate groupSize:(unint64_t)size;
- (FKFriendGroup)initWithGroupSize:(unint64_t)size;
- (FKFriendGroupDelegate)delegate;
- (id)displayNameForGroupWithSeparator:(id)separator;
- (id)friendAtPosition:(unint64_t)position;
- (int64_t)_firstEmptyPosition;
- (unint64_t)count;
- (void)addFriend:(id)friend error:(unsigned int *)error;
- (void)removeFriendAtPosition:(unint64_t)position;
- (void)setFriend:(id)friend atPosition:(unint64_t)position error:(unsigned int *)error;
- (void)setFriends:(id)friends;
- (void)setTitle:(id)title;
@end

@implementation FKFriendGroup

- (FKFriendGroup)initWithGroupSize:(unint64_t)size
{
  v12.receiver = self;
  v12.super_class = FKFriendGroup;
  v4 = [(FKFriendGroup *)&v12 init];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    friendsManager = v4->_friendsManager;
    v4->_friendsManager = array;

    v4->_groupSize = size;
    if (size)
    {
      v7 = 0;
      do
      {
        v8 = v4->_friendsManager;
        null = [MEMORY[0x277CBEB68] null];
        [(NSMutableArray *)v8 addObject:null];

        ++v7;
      }

      while (v7 < v4->_groupSize);
    }

    v10 = v4;
  }

  return v4;
}

- (FKFriendGroup)initWithDelegate:(id)delegate groupSize:(unint64_t)size
{
  delegateCopy = delegate;
  v7 = [(FKFriendGroup *)self initWithGroupSize:size];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, delegateCopy);
    v9 = v8;
  }

  return v8;
}

- (id)friendAtPosition:(unint64_t)position
{
  if (position == 0x7FFFFFFFFFFFFFFFLL || self->_groupSize <= position)
  {
    v5 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_friendsManager objectAtIndex:?];
    null = [MEMORY[0x277CBEB68] null];

    if (v3 == null)
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

- (BOOL)containsFriend:(id)friend
{
  if (friend)
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
  null = [MEMORY[0x277CBEB68] null];
  friendsManager = self->_friendsManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__FKFriendGroup_count__block_invoke;
  v8[3] = &unk_27916A2F8;
  v5 = null;
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

- (void)addFriend:(id)friend error:(unsigned int *)error
{
  v14 = *MEMORY[0x277D85DE8];
  friendCopy = friend;
  _firstEmptyPosition = [(FKFriendGroup *)self _firstEmptyPosition];
  if ((_firstEmptyPosition & 0x8000000000000000) != 0 || _firstEmptyPosition >= self->_groupSize)
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

    *error = 1;
  }

  else
  {
    [(FKFriendGroup *)self setFriend:friendCopy atPosition:_firstEmptyPosition error:error];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  if (titleCopy | title && ![(NSString *)title isEqualToString:titleCopy])
  {
    objc_storeStrong(&self->_title, title);
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

- (void)setFriend:(id)friend atPosition:(unint64_t)position error:(unsigned int *)error
{
  v25 = *MEMORY[0x277D85DE8];
  friendCopy = friend;
  if (self->_groupSize <= position)
  {
    delegate = _FKGetLogSystem();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "[FKFriendGroup setFriend:atPosition:error:]";
      v19 = 1024;
      v20 = 132;
      v21 = 2048;
      positionCopy3 = position;
      _os_log_impl(&dword_24BC19000, delegate, OS_LOG_TYPE_DEFAULT, "%s (%d) unable to add friend at position %tu: out of range", &v17, 0x1Cu);
    }

    v13 = 2;
  }

  else
  {
    v9 = _FKGetLogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (friendCopy)
    {
      if (v10)
      {
        displayName = [friendCopy displayName];
        v17 = 136315906;
        v18 = "[FKFriendGroup setFriend:atPosition:error:]";
        v19 = 1024;
        v20 = 142;
        v21 = 2112;
        positionCopy3 = displayName;
        v23 = 2048;
        positionCopy2 = position;
        _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) setting [%@] in friend list at position %tu", &v17, 0x26u);
      }

      [(NSMutableArray *)self->_friendsManager setObject:friendCopy atIndexedSubscript:position];
      delegate = [(FKFriendGroup *)self delegate];
      [delegate friendGroup:self didSetFriend:friendCopy atPosition:position];
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
        positionCopy3 = position;
        _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) setting empty slot in friend list at position %tu", &v17, 0x1Cu);
      }

      friendsManager = self->_friendsManager;
      null = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)friendsManager setObject:null atIndexedSubscript:position];

      delegate = [(FKFriendGroup *)self delegate];
      [delegate friendGroup:self didRemoveFriend:0 atPosition:position];
    }

    v13 = 0;
  }

  *error = v13;
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeFriendAtPosition:(unint64_t)position
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(FKFriendGroup *)self friendAtPosition:?];
  if (v5)
  {
    friendsManager = self->_friendsManager;
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)friendsManager setObject:null atIndexedSubscript:position];

    v8 = _FKGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [v5 displayName];
      v12 = 136315906;
      v13 = "[FKFriendGroup removeFriendAtPosition:]";
      v14 = 1024;
      v15 = 160;
      v16 = 2112;
      positionCopy2 = displayName;
      v18 = 2048;
      positionCopy = position;
      _os_log_impl(&dword_24BC19000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) Removing friend [%@] from position %lu in friend group", &v12, 0x26u);
    }

    delegate = [(FKFriendGroup *)self delegate];
    [delegate friendGroup:self didRemoveFriend:v5 atPosition:position];
  }

  else
  {
    delegate = _FKGetLogSystem();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[FKFriendGroup removeFriendAtPosition:]";
      v14 = 1024;
      v15 = 155;
      v16 = 2048;
      positionCopy2 = position;
      _os_log_impl(&dword_24BC19000, delegate, OS_LOG_TYPE_DEFAULT, "%s (%d) Position %lu is already empty", &v12, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFriends:(id)friends
{
  friendsManager = self->_friendsManager;
  friendsCopy = friends;
  [(NSMutableArray *)friendsManager removeAllObjects];
  [(NSMutableArray *)self->_friendsManager addObjectsFromArray:friendsCopy];
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
    null = [MEMORY[0x277CBEB68] null];

    if (v4 == null)
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

- (id)displayNameForGroupWithSeparator:(id)separator
{
  v42 = *MEMORY[0x277D85DE8];
  separatorCopy = separator;
  title = [(FKFriendGroup *)self title];
  v6 = [title length];

  if (v6)
  {
    title2 = [(FKFriendGroup *)self title];
  }

  else if ([(NSMutableArray *)self->_friendsManager count])
  {
    v31 = separatorCopy;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
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
          null = [MEMORY[0x277CBEB68] null];

          if (v15 != null)
          {
            v17 = v15;
            hasName = [v17 hasName];
            displayName = [v17 displayName];

            if (hasName)
            {
              v20 = array;
            }

            else
            {
              v20 = array2;
            }

            [v20 addObject:displayName];
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
    v21 = array2;
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
            [array addObject:v28];
          }

          else
          {
            [array addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

    if ([array count])
    {
      separatorCopy = v31;
      title2 = [array componentsJoinedByString:v31];
    }

    else
    {
      title2 = 0;
      separatorCopy = v31;
    }
  }

  else
  {
    title2 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return title2;
}

- (FKFriendGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
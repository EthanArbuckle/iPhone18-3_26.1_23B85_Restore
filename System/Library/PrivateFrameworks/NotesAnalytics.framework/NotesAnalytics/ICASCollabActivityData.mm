@interface ICASCollabActivityData
- (ICASCollabActivityData)initWithCollabActivityContextPath:(id)path clickContext:(id)context mode:(id)mode isUserMentioned:(id)mentioned hasRecentUpdates:(id)updates;
- (id)toDict;
@end

@implementation ICASCollabActivityData

- (ICASCollabActivityData)initWithCollabActivityContextPath:(id)path clickContext:(id)context mode:(id)mode isUserMentioned:(id)mentioned hasRecentUpdates:(id)updates
{
  pathCopy = path;
  contextCopy = context;
  modeCopy = mode;
  mentionedCopy = mentioned;
  updatesCopy = updates;
  v21.receiver = self;
  v21.super_class = ICASCollabActivityData;
  v17 = [(ICASCollabActivityData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_collabActivityContextPath, path);
    objc_storeStrong(&v18->_clickContext, context);
    objc_storeStrong(&v18->_mode, mode);
    objc_storeStrong(&v18->_isUserMentioned, mentioned);
    objc_storeStrong(&v18->_hasRecentUpdates, updates);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"collabActivityContextPath";
  collabActivityContextPath = [(ICASCollabActivityData *)self collabActivityContextPath];
  if (collabActivityContextPath)
  {
    collabActivityContextPath2 = [(ICASCollabActivityData *)self collabActivityContextPath];
  }

  else
  {
    collabActivityContextPath2 = objc_opt_new();
  }

  v4 = collabActivityContextPath2;
  v23[0] = collabActivityContextPath2;
  v22[1] = @"clickContext";
  clickContext = [(ICASCollabActivityData *)self clickContext];
  if (clickContext)
  {
    clickContext2 = [(ICASCollabActivityData *)self clickContext];
  }

  else
  {
    clickContext2 = objc_opt_new();
  }

  v7 = clickContext2;
  v23[1] = clickContext2;
  v22[2] = @"mode";
  mode = [(ICASCollabActivityData *)self mode];
  if (mode)
  {
    mode2 = [(ICASCollabActivityData *)self mode];
  }

  else
  {
    mode2 = objc_opt_new();
  }

  v10 = mode2;
  v23[2] = mode2;
  v22[3] = @"isUserMentioned";
  isUserMentioned = [(ICASCollabActivityData *)self isUserMentioned];
  if (isUserMentioned)
  {
    isUserMentioned2 = [(ICASCollabActivityData *)self isUserMentioned];
  }

  else
  {
    isUserMentioned2 = objc_opt_new();
  }

  v13 = isUserMentioned2;
  v23[3] = isUserMentioned2;
  v22[4] = @"hasRecentUpdates";
  hasRecentUpdates = [(ICASCollabActivityData *)self hasRecentUpdates];
  if (hasRecentUpdates)
  {
    hasRecentUpdates2 = [(ICASCollabActivityData *)self hasRecentUpdates];
  }

  else
  {
    hasRecentUpdates2 = objc_opt_new();
  }

  v16 = hasRecentUpdates2;
  v23[4] = hasRecentUpdates2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
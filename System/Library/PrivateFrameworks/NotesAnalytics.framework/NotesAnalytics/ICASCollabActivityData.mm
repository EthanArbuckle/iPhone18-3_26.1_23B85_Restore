@interface ICASCollabActivityData
- (ICASCollabActivityData)initWithCollabActivityContextPath:(id)a3 clickContext:(id)a4 mode:(id)a5 isUserMentioned:(id)a6 hasRecentUpdates:(id)a7;
- (id)toDict;
@end

@implementation ICASCollabActivityData

- (ICASCollabActivityData)initWithCollabActivityContextPath:(id)a3 clickContext:(id)a4 mode:(id)a5 isUserMentioned:(id)a6 hasRecentUpdates:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICASCollabActivityData;
  v17 = [(ICASCollabActivityData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_collabActivityContextPath, a3);
    objc_storeStrong(&v18->_clickContext, a4);
    objc_storeStrong(&v18->_mode, a5);
    objc_storeStrong(&v18->_isUserMentioned, a6);
    objc_storeStrong(&v18->_hasRecentUpdates, a7);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"collabActivityContextPath";
  v20 = [(ICASCollabActivityData *)self collabActivityContextPath];
  if (v20)
  {
    v3 = [(ICASCollabActivityData *)self collabActivityContextPath];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v23[0] = v3;
  v22[1] = @"clickContext";
  v5 = [(ICASCollabActivityData *)self clickContext];
  if (v5)
  {
    v6 = [(ICASCollabActivityData *)self clickContext];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v23[1] = v6;
  v22[2] = @"mode";
  v8 = [(ICASCollabActivityData *)self mode];
  if (v8)
  {
    v9 = [(ICASCollabActivityData *)self mode];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v23[2] = v9;
  v22[3] = @"isUserMentioned";
  v11 = [(ICASCollabActivityData *)self isUserMentioned];
  if (v11)
  {
    v12 = [(ICASCollabActivityData *)self isUserMentioned];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v23[3] = v12;
  v22[4] = @"hasRecentUpdates";
  v14 = [(ICASCollabActivityData *)self hasRecentUpdates];
  if (v14)
  {
    v15 = [(ICASCollabActivityData *)self hasRecentUpdates];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v23[4] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
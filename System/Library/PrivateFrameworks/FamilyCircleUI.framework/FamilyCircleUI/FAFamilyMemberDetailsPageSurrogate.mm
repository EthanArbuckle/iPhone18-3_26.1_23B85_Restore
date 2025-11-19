@interface FAFamilyMemberDetailsPageSurrogate
- (BOOL)respondsToSelector:(SEL)a3;
- (FAFamilyMemberDetailsPageSurrogate)initWithPage:(id)a3 forPerson:(id)a4 account:(id)a5 store:(id)a6;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
@end

@implementation FAFamilyMemberDetailsPageSurrogate

- (FAFamilyMemberDetailsPageSurrogate)initWithPage:(id)a3 forPerson:(id)a4 account:(id)a5 store:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = FAFamilyMemberDetailsPageSurrogate;
  v14 = [(FAFamilyMemberDetailsPageSurrogate *)&v23 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CECA90]) initWithAppleAccount:v12 store:v13];
    pictureStore = v14->_pictureStore;
    v14->_pictureStore = v15;

    objc_storeStrong(&v14->_familyMember, a4);
    v17 = [v10 tableViewOM];
    v18 = [v17 tableView];
    remoteTableView = v14->_remoteTableView;
    v14->_remoteTableView = v18;

    v20 = [v10 tableViewOM];
    remoteTableViewController = v14->_remoteTableViewController;
    v14->_remoteTableViewController = v20;

    [(UITableView *)v14->_remoteTableView setDelegate:v14];
  }

  return v14;
}

- (void)dealloc
{
  remoteTableView = self->_remoteTableView;
  if (remoteTableView)
  {
    [(UITableView *)remoteTableView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = FAFamilyMemberDetailsPageSurrogate;
  [(FAFamilyMemberDetailsPageSurrogate *)&v4 dealloc];
}

- (void)forwardInvocation:(id)a3
{
  remoteTableViewController = self->_remoteTableViewController;
  v5 = a3;
  [v5 selector];
  if (objc_opt_respondsToSelector())
  {
    [v5 invokeWithTarget:self->_remoteTableViewController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = FAFamilyMemberDetailsPageSurrogate;
    [(FAFamilyMemberDetailsPageSurrogate *)&v6 forwardInvocation:v5];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = FAFamilyMemberDetailsPageSurrogate;
  v5 = [(FAFamilyMemberDetailsPageSurrogate *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(UITableViewDelegate *)self->_remoteTableViewController methodSignatureForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  remoteTableViewController = self->_remoteTableViewController;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = FAFamilyMemberDetailsPageSurrogate;
  return [(FAFamilyMemberDetailsPageSurrogate *)&v7 respondsToSelector:a3];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      v7 = [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 viewForHeaderInSection:a4];
    }

    else
    {
      v8 = [(FAFamilyMember *)self->_familyMember isMe];
      pictureStore = self->_pictureStore;
      if (v8)
      {
        [(AAUIProfilePictureStore *)pictureStore profilePictureForAccountOwner];
      }

      else
      {
        [(AAUIProfilePictureStore *)pictureStore fa_profilePictureForFamilyMember:self->_familyMember];
      }
      v10 = ;
      v11 = [(FAFamilyMember *)self->_familyMember fullName];
      v12 = [(FAFamilyMember *)self->_familyMember appleID];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [(FAFamilyMember *)self->_familyMember inviteEmail];
      }

      v15 = v14;

      v7 = [objc_alloc(MEMORY[0x277CECA98]) initWithName:v11 email:v15 image:v10];
      [v7 setTopPadding:8.0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 heightForHeaderInSection:a4];
      v7 = v8;
    }

    else
    {
      [MEMORY[0x277CECA98] desiredHeight];
      v7 = v9 + 8.0;
    }
  }

  return v7;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = 0.0;
  if (self->_remoteTableView == v6)
  {
    if (a4)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:v6 heightForFooterInSection:a4];
    }

    else
    {
      v9 = [(FAFamilyMemberDetailsPageSurrogate *)self tableView:v6 titleForFooterInSection:0];

      if (v9)
      {
        v7 = *MEMORY[0x277D76F30];
        goto LABEL_7;
      }

      UIRoundToViewScale();
    }

    v7 = v8;
  }

LABEL_7:

  return v7;
}

@end
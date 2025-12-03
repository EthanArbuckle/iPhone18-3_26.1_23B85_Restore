@interface FAFamilyMemberDetailsPageSurrogate
- (BOOL)respondsToSelector:(SEL)selector;
- (FAFamilyMemberDetailsPageSurrogate)initWithPage:(id)page forPerson:(id)person account:(id)account store:(id)store;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
@end

@implementation FAFamilyMemberDetailsPageSurrogate

- (FAFamilyMemberDetailsPageSurrogate)initWithPage:(id)page forPerson:(id)person account:(id)account store:(id)store
{
  pageCopy = page;
  personCopy = person;
  accountCopy = account;
  storeCopy = store;
  v23.receiver = self;
  v23.super_class = FAFamilyMemberDetailsPageSurrogate;
  v14 = [(FAFamilyMemberDetailsPageSurrogate *)&v23 init];
  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x277CECA90]) initWithAppleAccount:accountCopy store:storeCopy];
    pictureStore = v14->_pictureStore;
    v14->_pictureStore = v15;

    objc_storeStrong(&v14->_familyMember, person);
    tableViewOM = [pageCopy tableViewOM];
    tableView = [tableViewOM tableView];
    remoteTableView = v14->_remoteTableView;
    v14->_remoteTableView = tableView;

    tableViewOM2 = [pageCopy tableViewOM];
    remoteTableViewController = v14->_remoteTableViewController;
    v14->_remoteTableViewController = tableViewOM2;

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

- (void)forwardInvocation:(id)invocation
{
  remoteTableViewController = self->_remoteTableViewController;
  invocationCopy = invocation;
  [invocationCopy selector];
  if (objc_opt_respondsToSelector())
  {
    [invocationCopy invokeWithTarget:self->_remoteTableViewController];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = FAFamilyMemberDetailsPageSurrogate;
    [(FAFamilyMemberDetailsPageSurrogate *)&v6 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = FAFamilyMemberDetailsPageSurrogate;
  v5 = [(FAFamilyMemberDetailsPageSurrogate *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(UITableViewDelegate *)self->_remoteTableViewController methodSignatureForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  remoteTableViewController = self->_remoteTableViewController;
  if (objc_opt_respondsToSelector())
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = FAFamilyMemberDetailsPageSurrogate;
  return [(FAFamilyMemberDetailsPageSurrogate *)&v7 respondsToSelector:selector];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      v7 = [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy viewForHeaderInSection:section];
    }

    else
    {
      isMe = [(FAFamilyMember *)self->_familyMember isMe];
      pictureStore = self->_pictureStore;
      if (isMe)
      {
        [(AAUIProfilePictureStore *)pictureStore profilePictureForAccountOwner];
      }

      else
      {
        [(AAUIProfilePictureStore *)pictureStore fa_profilePictureForFamilyMember:self->_familyMember];
      }
      v10 = ;
      fullName = [(FAFamilyMember *)self->_familyMember fullName];
      appleID = [(FAFamilyMember *)self->_familyMember appleID];
      v13 = appleID;
      if (appleID)
      {
        inviteEmail = appleID;
      }

      else
      {
        inviteEmail = [(FAFamilyMember *)self->_familyMember inviteEmail];
      }

      v15 = inviteEmail;

      v7 = [objc_alloc(MEMORY[0x277CECA98]) initWithName:fullName email:v15 image:v10];
      [v7 setTopPadding:8.0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy heightForHeaderInSection:section];
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  v7 = 0.0;
  if (self->_remoteTableView == viewCopy)
  {
    if (section)
    {
      [(UITableViewDelegate *)self->_remoteTableViewController tableView:viewCopy heightForFooterInSection:section];
    }

    else
    {
      v9 = [(FAFamilyMemberDetailsPageSurrogate *)self tableView:viewCopy titleForFooterInSection:0];

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
@interface MessageListViewControllerState
- (NSArray)sortDescriptors;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_dateBasedSortDescriptor;
- (void)updateWithMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item;
@end

@implementation MessageListViewControllerState

- (NSString)ef_publicDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  [(MessageListViewControllerState *)self isCompact];
  v5 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self useSplitViewStyling];
  v6 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isEditing];
  v7 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isSearch];
  v8 = NSStringFromBOOL();
  v9 = [v3 initWithFormat:@"<%@: %p> isCompact=%@, useSplitViewStyling=%@, isEditing=%@, isSearch=%@", v4, self, v5, v6, v7, v8];

  [(MessageListViewControllerState *)self isSenderSpecificMailbox];
  v10 = NSStringFromBOOL();
  [v9 appendFormat:@", isSenderSpecificMailbox=%@", v10];

  v11 = [v9 copy];

  return v11;
}

- (NSArray)sortDescriptors
{
  v9[1] = *MEMORY[0x277D85DE8];
  sortKeyPath = [(MessageListViewControllerState *)self sortKeyPath];
  if ([sortKeyPath length])
  {
    v4 = [MEMORY[0x277D06E08] sortDescriptorForKeyPath:sortKeyPath ascending:{-[MessageListViewControllerState isSortedAscending](self, "isSortedAscending")}];
    v5 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
    if (![(MessageListViewControllerState *)self hasDateBasedSortOrder])
    {
      _dateBasedSortDescriptor = [(MessageListViewControllerState *)self _dateBasedSortDescriptor];
      [v5 addObject:_dateBasedSortDescriptor];
    }
  }

  else
  {
    _dateBasedSortDescriptor2 = [(MessageListViewControllerState *)self _dateBasedSortDescriptor];
    v9[0] = _dateBasedSortDescriptor2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  return v5;
}

- (id)_dateBasedSortDescriptor
{
  selfCopy = self;
  if (self)
  {
    v2 = *MEMORY[0x277D06BF0];
    containsReadLaterMailbox = [selfCopy containsReadLaterMailbox];
    containsSendLaterMailbox = [selfCopy containsSendLaterMailbox];
    containsSent = [selfCopy containsSent];
    if ((containsSent & 1) != 0 || (containsSendLaterMailbox & 1) != 0 || containsReadLaterMailbox)
    {
      v7 = MEMORY[0x277D06BE8];
      v8 = MEMORY[0x277D06C00];
      v6 = containsSent ^ 1u;
      if (!containsSendLaterMailbox)
      {
        v8 = MEMORY[0x277D06BF8];
      }

      if (!containsSent)
      {
        v7 = v8;
      }

      v9 = *v7;

      v2 = v9;
    }

    else
    {
      v6 = 0;
    }

    selfCopy = [MEMORY[0x277D06E08] sortDescriptorForKeyPath:v2 ascending:v6];
  }

  return selfCopy;
}

- (void)updateWithMailboxes:(id)mailboxes senderSpecificMessageListItem:(id)item
{
  mailboxesCopy = mailboxes;
  -[MessageListViewControllerState setContainsInbox:](self, "setContainsInbox:", [mailboxesCopy ef_any:&__block_literal_global_9]);
  -[MessageListViewControllerState setContainsSent:](self, "setContainsSent:", [mailboxesCopy ef_any:&__block_literal_global_4_0]);
  if ([(MessageListViewControllerState *)self containsInbox])
  {
    v6 = 1;
  }

  else
  {
    v6 = [mailboxesCopy ef_any:&__block_literal_global_6];
  }

  [(MessageListViewControllerState *)self setContainsOnlyInboxScope:v6];
  -[MessageListViewControllerState setContainsArchiveMailbox:](self, "setContainsArchiveMailbox:", [mailboxesCopy ef_any:&__block_literal_global_8]);
  -[MessageListViewControllerState setContainsDraftsMailbox:](self, "setContainsDraftsMailbox:", [mailboxesCopy ef_any:&__block_literal_global_10]);
  -[MessageListViewControllerState setContainsOutbox:](self, "setContainsOutbox:", [mailboxesCopy ef_any:&__block_literal_global_12]);
  containsOutbox = [(MessageListViewControllerState *)self containsDraftsMailbox]|| [(MessageListViewControllerState *)self containsOutbox];
  [(MessageListViewControllerState *)self setContainsDraftsOrOutbox:containsOutbox];
  -[MessageListViewControllerState setIsOutgoingMailbox:](self, "setIsOutgoingMailbox:", [mailboxesCopy ef_all:&__block_literal_global_14]);
  -[MessageListViewControllerState setContainsTrashMailbox:](self, "setContainsTrashMailbox:", [mailboxesCopy ef_any:&__block_literal_global_16]);
  -[MessageListViewControllerState setIsUnifiedMailbox:](self, "setIsUnifiedMailbox:", [mailboxesCopy ef_all:&__block_literal_global_18]);
  -[MessageListViewControllerState setContainsSmartMailbox:](self, "setContainsSmartMailbox:", [mailboxesCopy ef_any:&__block_literal_global_20_0]);
  -[MessageListViewControllerState setContainsReadLaterMailbox:](self, "setContainsReadLaterMailbox:", [mailboxesCopy em_containsSmartMailboxType:9]);
  -[MessageListViewControllerState setContainsSendLaterMailbox:](self, "setContainsSendLaterMailbox:", [mailboxesCopy em_containsSmartMailboxType:11]);
  -[MessageListViewControllerState setContainsFollowUpMailbox:](self, "setContainsFollowUpMailbox:", [mailboxesCopy em_containsSmartMailboxType:10]);
  if (item)
  {
    [(MessageListViewControllerState *)self setIsSenderSpecificMailbox:1];
  }
}

uint64_t __84__MessageListViewControllerState_updateWithMailboxes_senderSpecificMessageListItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isSmartMailbox])
  {
    v3 = [v2 mailboxScope];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 containsOnlyInboxType];

  return v4;
}

BOOL __84__MessageListViewControllerState_updateWithMailboxes_senderSpecificMessageListItem___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isSmartMailbox] && objc_msgSend(v2, "smartMailboxType") == 8;

  return v3;
}

- (NSString)debugDescription
{
  v22 = objc_alloc(MEMORY[0x277CCAB68]);
  v21 = objc_opt_class();
  [(MessageListViewControllerState *)self isCompact];
  v34 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self useSplitViewStyling];
  v33 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self shouldDisplayUnreadAndVIP];
  v32 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self canShowReadLaterDate];
  v30 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsInbox];
  v31 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsSent];
  v20 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsOnlyInboxScope];
  v29 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsArchiveMailbox];
  v28 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsDraftsMailbox];
  v27 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsOutbox];
  v26 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsDraftsOrOutbox];
  v19 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isOutgoingMailbox];
  v25 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsTrashMailbox];
  v24 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isUnifiedMailbox];
  v18 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsSmartMailbox];
  v17 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsReadLaterMailbox];
  v16 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsSendLaterMailbox];
  v15 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self containsFollowUpMailbox];
  v3 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isEditing];
  v4 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self didAlertOnBlankCell];
  v5 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self didRecordTailspin];
  v6 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self isSearch];
  v7 = NSStringFromBOOL();
  sortDescriptors = [(MessageListViewControllerState *)self sortDescriptors];
  v23 = [v22 initWithFormat:@"<%@: %p> isCompact=%@, useSplitViewStyling=%@, shouldDisplayUnreadAndVIP=%@, canShowReadLaterDate=%@, containsInbox=%@, containsSent=%@, containsOnlyInboxScope=%@, containsArchiveMailbox=%@, containsDraftsMailbox=%@, containsOutbox=%@, containsDraftsOrOutbox=%@, isOutgoingMailbox=%@, containsTrashMailbox=%@, isUnifiedMailbox=%@, containsSmartMailbox=%@, containsReadLaterMailbox=%@, containsSendLaterMailbox=%@, containsFollowUpMailbox=%@, isEditing=%@, didAlertOnBlankCell=%@, didRecordTailspin=%@, isSearch=%@, sortDescriptors=%@", v21, self, v34, v33, v32, v30, v31, v20, v29, v28, v27, v26, v19, v25, v24, v18, v17, v16, v15, v3, v4, v5, v6, v7, sortDescriptors];

  [(MessageListViewControllerState *)self isSenderSpecificMailbox];
  v9 = NSStringFromBOOL();
  [v23 appendFormat:@", isSenderSpecificMailbox=%@", v9];

  sortKeyPath = [(MessageListViewControllerState *)self sortKeyPath];
  [(MessageListViewControllerState *)self isSortedAscending];
  v11 = NSStringFromBOOL();
  [(MessageListViewControllerState *)self hasDateBasedSortOrder];
  v12 = NSStringFromBOOL();
  [v23 appendFormat:@", sortKeyPath=%@, isSortedAscending=%@, hasDateBasedSortOrder=%@", sortKeyPath, v11, v12];

  v13 = [v23 copy];

  return v13;
}

@end
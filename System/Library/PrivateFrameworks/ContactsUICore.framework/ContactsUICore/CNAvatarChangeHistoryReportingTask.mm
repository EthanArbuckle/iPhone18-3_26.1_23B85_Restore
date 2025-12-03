@interface CNAvatarChangeHistoryReportingTask
- (CNAvatarChangeHistoryReportingTask)initWithIdentifiers:(id)identifiers delegate:(id)delegate;
- (id)run:(id *)run;
@end

@implementation CNAvatarChangeHistoryReportingTask

- (CNAvatarChangeHistoryReportingTask)initWithIdentifiers:(id)identifiers delegate:(id)delegate
{
  identifiersCopy = identifiers;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = CNAvatarChangeHistoryReportingTask;
  v8 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.ui.avatar-cache.change-history-reporting"];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    objc_storeStrong(&v8->_delegate, delegate);
    v11 = v8;
  }

  return v8;
}

- (id)run:(id *)run
{
  v4 = *MEMORY[0x1E6996530];
  identifiers = [(CNAvatarChangeHistoryReportingTask *)self identifiers];
  LOBYTE(v4) = (*(v4 + 16))(v4, identifiers);

  if ((v4 & 1) == 0)
  {
    delegate = [(CNAvatarChangeHistoryReportingTask *)self delegate];
    identifiers2 = [(CNAvatarChangeHistoryReportingTask *)self identifiers];
    [delegate updateContactsWithIdentifiers:identifiers2];
  }

  null = [MEMORY[0x1E695DFB0] null];

  return null;
}

@end
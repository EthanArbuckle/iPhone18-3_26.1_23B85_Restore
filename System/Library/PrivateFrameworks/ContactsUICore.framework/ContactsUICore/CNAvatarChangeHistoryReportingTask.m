@interface CNAvatarChangeHistoryReportingTask
- (CNAvatarChangeHistoryReportingTask)initWithIdentifiers:(id)a3 delegate:(id)a4;
- (id)run:(id *)a3;
@end

@implementation CNAvatarChangeHistoryReportingTask

- (CNAvatarChangeHistoryReportingTask)initWithIdentifiers:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CNAvatarChangeHistoryReportingTask;
  v8 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.ui.avatar-cache.change-history-reporting"];
  if (v8)
  {
    v9 = [v6 copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    objc_storeStrong(&v8->_delegate, a4);
    v11 = v8;
  }

  return v8;
}

- (id)run:(id *)a3
{
  v4 = *MEMORY[0x1E6996530];
  v5 = [(CNAvatarChangeHistoryReportingTask *)self identifiers];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5);

  if ((v4 & 1) == 0)
  {
    v6 = [(CNAvatarChangeHistoryReportingTask *)self delegate];
    v7 = [(CNAvatarChangeHistoryReportingTask *)self identifiers];
    [v6 updateContactsWithIdentifiers:v7];
  }

  v8 = [MEMORY[0x1E695DFB0] null];

  return v8;
}

@end
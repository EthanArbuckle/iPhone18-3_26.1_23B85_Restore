@interface IDSOffGridSummaryMessage
- (IDSOffGridSummaryMessage)initWithCoder:(id)a3;
- (IDSOffGridSummaryMessage)initWithSummary:(id)a3 totalPendingMessagesCount:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridSummaryMessage

- (IDSOffGridSummaryMessage)initWithSummary:(id)a3 totalPendingMessagesCount:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = IDSOffGridSummaryMessage;
    v9 = [(IDSOffGridSummaryMessage *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_pendingCounts, a3);
      objc_storeStrong(p_isa + 1, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (IDSOffGridSummaryMessage)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"pc"];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"tc"];

  v11 = [[IDSOffGridSummaryMessage alloc] initWithSummary:v9 totalPendingMessagesCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  pendingCounts = self->_pendingCounts;
  v5 = a3;
  [v5 encodeObject:pendingCounts forKey:@"pc"];
  [v5 encodeObject:self->_totalPendingMessagesCount forKey:@"tc"];
}

@end
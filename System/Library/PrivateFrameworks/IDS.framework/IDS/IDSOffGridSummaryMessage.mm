@interface IDSOffGridSummaryMessage
- (IDSOffGridSummaryMessage)initWithCoder:(id)coder;
- (IDSOffGridSummaryMessage)initWithSummary:(id)summary totalPendingMessagesCount:(id)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSOffGridSummaryMessage

- (IDSOffGridSummaryMessage)initWithSummary:(id)summary totalPendingMessagesCount:(id)count
{
  summaryCopy = summary;
  countCopy = count;
  if (summaryCopy)
  {
    v13.receiver = self;
    v13.super_class = IDSOffGridSummaryMessage;
    v9 = [(IDSOffGridSummaryMessage *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_pendingCounts, summary);
      objc_storeStrong(p_isa + 1, count);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSOffGridSummaryMessage)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"pc"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tc"];

  v11 = [[IDSOffGridSummaryMessage alloc] initWithSummary:v9 totalPendingMessagesCount:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  pendingCounts = self->_pendingCounts;
  coderCopy = coder;
  [coderCopy encodeObject:pendingCounts forKey:@"pc"];
  [coderCopy encodeObject:self->_totalPendingMessagesCount forKey:@"tc"];
}

@end
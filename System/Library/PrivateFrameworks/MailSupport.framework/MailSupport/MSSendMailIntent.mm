@interface MSSendMailIntent
- (NSString)ef_publicDescription;
- (id)_privacySafeDescription;
@end

@implementation MSSendMailIntent

- (id)_privacySafeDescription
{
  v3 = objc_alloc(MEMORY[0x277D07080]);
  sender = [(MSSendMailIntent *)self sender];
  v25 = [v3 initWithString:sender];

  v5 = objc_alloc(MEMORY[0x277D070D0]);
  subject = [(MSSendMailIntent *)self subject];
  v24 = [v5 initWithString:subject];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  identifier = [(MSSendMailIntent *)self identifier];
  ef_publicDescription = [v25 ef_publicDescription];
  v21 = [(MSSendMailIntent *)self to];
  v19 = [v21 count];
  v20 = [(MSSendMailIntent *)self cc];
  v9 = [v20 count];
  v10 = [(MSSendMailIntent *)self bcc];
  v11 = [v10 count];
  ef_publicDescription2 = [v24 ef_publicDescription];
  attachments = [(MSSendMailIntent *)self attachments];
  v14 = [attachments count];
  isDraft = [(MSSendMailIntent *)self isDraft];
  v16 = @"draft";
  if (!isDraft)
  {
    v16 = &stru_28692F9D8;
  }

  v17 = [v7 stringWithFormat:@"<%@ %p> ID:%@ Sender:%@ toCount:%lu ccCount:%lu bccCount:%lu subject:%@ attachment:%lu %@", v8, self, identifier, ef_publicDescription, v19, v9, v11, ef_publicDescription2, v14, v16];

  return v17;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  _privacySafeDescription = [(MSSendMailIntent *)self _privacySafeDescription];
  v5 = MEMORY[0x277D07198];
  body = [(MSSendMailIntent *)self body];
  v7 = [v5 fullyOrPartiallyRedactedStringForString:body];
  v8 = MEMORY[0x277D07198];
  userTypedContent = [(MSSendMailIntent *)self userTypedContent];
  v10 = [v8 fullyOrPartiallyRedactedStringForString:userTypedContent];
  v11 = [v3 stringWithFormat:@"%@ body:%@ typedContent:%@", _privacySafeDescription, v7, v10];

  return v11;
}

@end
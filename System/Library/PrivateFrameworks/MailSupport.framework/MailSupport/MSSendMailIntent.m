@interface MSSendMailIntent
- (NSString)ef_publicDescription;
- (id)_privacySafeDescription;
@end

@implementation MSSendMailIntent

- (id)_privacySafeDescription
{
  v3 = objc_alloc(MEMORY[0x277D07080]);
  v4 = [(MSSendMailIntent *)self sender];
  v25 = [v3 initWithString:v4];

  v5 = objc_alloc(MEMORY[0x277D070D0]);
  v6 = [(MSSendMailIntent *)self subject];
  v24 = [v5 initWithString:v6];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v23 = [(MSSendMailIntent *)self identifier];
  v22 = [v25 ef_publicDescription];
  v21 = [(MSSendMailIntent *)self to];
  v19 = [v21 count];
  v20 = [(MSSendMailIntent *)self cc];
  v9 = [v20 count];
  v10 = [(MSSendMailIntent *)self bcc];
  v11 = [v10 count];
  v12 = [v24 ef_publicDescription];
  v13 = [(MSSendMailIntent *)self attachments];
  v14 = [v13 count];
  v15 = [(MSSendMailIntent *)self isDraft];
  v16 = @"draft";
  if (!v15)
  {
    v16 = &stru_28692F9D8;
  }

  v17 = [v7 stringWithFormat:@"<%@ %p> ID:%@ Sender:%@ toCount:%lu ccCount:%lu bccCount:%lu subject:%@ attachment:%lu %@", v8, self, v23, v22, v19, v9, v11, v12, v14, v16];

  return v17;
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MSSendMailIntent *)self _privacySafeDescription];
  v5 = MEMORY[0x277D07198];
  v6 = [(MSSendMailIntent *)self body];
  v7 = [v5 fullyOrPartiallyRedactedStringForString:v6];
  v8 = MEMORY[0x277D07198];
  v9 = [(MSSendMailIntent *)self userTypedContent];
  v10 = [v8 fullyOrPartiallyRedactedStringForString:v9];
  v11 = [v3 stringWithFormat:@"%@ body:%@ typedContent:%@", v4, v7, v10];

  return v11;
}

@end
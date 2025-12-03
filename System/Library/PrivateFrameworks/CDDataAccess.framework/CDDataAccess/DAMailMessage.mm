@interface DAMailMessage
- (DAMailMessage)initWithCoder:(id)coder;
- (id)rfc822Data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAMailMessage

- (id)rfc822Data
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  from = [(DAMailMessage *)self from];
  [v4 setAddressListForSender:from];

  date = [(DAMailMessage *)self date];
  if (date)
  {
    systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
    v8 = [date dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", systemTimeZone];

    date = [v8 description];
  }

  else
  {
    v8 = 0;
  }

  [v4 setHeader:date forKey:*MEMORY[0x277D24E60]];
  v9 = [(DAMailMessage *)self to];
  [v4 setAddressListForTo:v9];

  v10 = [(DAMailMessage *)self cc];
  [v4 setAddressListForCc:v10];

  v11 = [(DAMailMessage *)self bcc];
  [v4 setAddressListForBcc:v11];

  replyTo = [(DAMailMessage *)self replyTo];
  [v4 setAddressList:replyTo forKey:*MEMORY[0x277D24EC8]];

  subject = [(DAMailMessage *)self subject];
  [v4 setHeader:subject forKey:*MEMORY[0x277D24E70]];

  encodedHeaders = [v4 encodedHeaders];
  if (encodedHeaders)
  {
    [v3 appendData:encodedHeaders];
  }

  body = [(DAMailMessage *)self body];
  v16 = [body length];

  if (v16)
  {
    body2 = [(DAMailMessage *)self body];
    v18 = [body2 dataUsingEncoding:4];

    [v3 appendData:v18];
  }

  return v3;
}

- (DAMailMessage)initWithCoder:(id)coder
{
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_24244C000, v4, v5, "DAMailMessage initWithCoder: should be called on a subclass only", v7, 2u);
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_24244C000, v3, v4, "DAMailMessage encodeWithCoder: should be called on a subclass only", v5, 2u);
  }
}

@end
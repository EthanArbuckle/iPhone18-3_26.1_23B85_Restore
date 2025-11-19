@interface DAMailMessage
- (DAMailMessage)initWithCoder:(id)a3;
- (id)rfc822Data;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAMailMessage

- (id)rfc822Data
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(DAMailMessage *)self from];
  [v4 setAddressListForSender:v5];

  v6 = [(DAMailMessage *)self date];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v8 = [v6 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v7];

    v6 = [v8 description];
  }

  else
  {
    v8 = 0;
  }

  [v4 setHeader:v6 forKey:*MEMORY[0x277D24E60]];
  v9 = [(DAMailMessage *)self to];
  [v4 setAddressListForTo:v9];

  v10 = [(DAMailMessage *)self cc];
  [v4 setAddressListForCc:v10];

  v11 = [(DAMailMessage *)self bcc];
  [v4 setAddressListForBcc:v11];

  v12 = [(DAMailMessage *)self replyTo];
  [v4 setAddressList:v12 forKey:*MEMORY[0x277D24EC8]];

  v13 = [(DAMailMessage *)self subject];
  [v4 setHeader:v13 forKey:*MEMORY[0x277D24E70]];

  v14 = [v4 encodedHeaders];
  if (v14)
  {
    [v3 appendData:v14];
  }

  v15 = [(DAMailMessage *)self body];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [(DAMailMessage *)self body];
    v18 = [v17 dataUsingEncoding:4];

    [v3 appendData:v18];
  }

  return v3;
}

- (DAMailMessage)initWithCoder:(id)a3
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

- (void)encodeWithCoder:(id)a3
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
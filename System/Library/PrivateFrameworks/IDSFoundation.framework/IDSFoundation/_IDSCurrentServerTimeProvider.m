@interface _IDSCurrentServerTimeProvider
- (_IDSCurrentServerTimeProvider)init;
- (unint64_t)serverTimeInNanoSeconds;
@end

@implementation _IDSCurrentServerTimeProvider

- (_IDSCurrentServerTimeProvider)init
{
  v11.receiver = self;
  v11.super_class = _IDSCurrentServerTimeProvider;
  v2 = [(_IDSCurrentServerTimeProvider *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(sub_1A7CBA720());
    if (qword_1EB2BBBF8 != -1)
    {
      sub_1A7E20B00();
    }

    v4 = qword_1EB2BBBE8;
    v5 = qword_1EB2BBC00;
    if (v4 != -1)
    {
      sub_1A7E20B28();
    }

    v6 = qword_1EB2BBBF0;
    v7 = im_primary_queue();
    v8 = [v3 initWithEnvironmentName:v5 namedDelegatePort:v6 queue:v7];
    apsConnection = v2->_apsConnection;
    v2->_apsConnection = v8;
  }

  return v2;
}

- (unint64_t)serverTimeInNanoSeconds
{
  if (sub_1A7CBA720())
  {
    v2 = sub_1A7CBA720();

    return [v2 serverTimeInNanoSeconds];
  }

  else
  {
    v4 = +[IDSFoundationLog utilities];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1A7E20B64(v4);
    }

    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSince1970];
    v7 = v6;

    return v7;
  }
}

@end
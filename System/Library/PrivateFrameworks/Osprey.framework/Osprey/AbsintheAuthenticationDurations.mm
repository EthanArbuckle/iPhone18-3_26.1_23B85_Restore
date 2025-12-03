@interface AbsintheAuthenticationDurations
- (AbsintheAuthenticationDurations)init;
- (id)calculateDuration:(id)duration and:(id)and;
- (void)reportAbsintheAuthenticationDurations;
- (void)setAbsintheAuthenticationTimestampForKey:(id)key;
- (void)setAbsintheConnectionMethodWith:(id)with;
@end

@implementation AbsintheAuthenticationDurations

- (AbsintheAuthenticationDurations)init
{
  v8.receiver = self;
  v8.super_class = AbsintheAuthenticationDurations;
  v2 = [(AbsintheAuthenticationDurations *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    absintheTimestamps = v2->_absintheTimestamps;
    v2->_absintheTimestamps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    connectionMethod = v2->_connectionMethod;
    v2->_connectionMethod = v5;
  }

  return v2;
}

- (void)reportAbsintheAuthenticationDurations
{
  absintheTimestamps = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v4 = [absintheTimestamps objectForKey:@"GetCertificateStart"];
  absintheTimestamps2 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v6 = [absintheTimestamps2 objectForKey:@"GetCertificateEnd"];
  v7 = [(AbsintheAuthenticationDurations *)self calculateDuration:v4 and:v6];
  [(AbsintheAuthenticationDurations *)self setGetCertificateElapsed:v7];

  absintheTimestamps3 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v9 = [absintheTimestamps3 objectForKey:@"CreateSessionStart"];
  absintheTimestamps4 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v11 = [absintheTimestamps4 objectForKey:@"CreateSessionEnd"];
  v12 = [(AbsintheAuthenticationDurations *)self calculateDuration:v9 and:v11];
  [(AbsintheAuthenticationDurations *)self setCreateSessionElapsed:v12];

  absintheTimestamps5 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v14 = [absintheTimestamps5 objectForKey:@"SessionEstablishedStart"];
  absintheTimestamps6 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v16 = [absintheTimestamps6 objectForKey:@"SessionEstablishedEnd"];
  v17 = [(AbsintheAuthenticationDurations *)self calculateDuration:v14 and:v16];
  [(AbsintheAuthenticationDurations *)self setSessionEstablishedElapsed:v17];

  absintheTimestamps7 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v19 = [absintheTimestamps7 objectForKey:@"GetCertificateStart"];
  absintheTimestamps8 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v21 = [absintheTimestamps8 objectForKey:@"FinalSignedData"];
  v22 = [(AbsintheAuthenticationDurations *)self calculateDuration:v19 and:v21];
  [(AbsintheAuthenticationDurations *)self setAbsintheElapsed:v22];

  v23 = +[OspreyAnalytics reporter];
  [v23 reportAbsintheMetrics:self];
}

- (void)setAbsintheAuthenticationTimestampForKey:(id)key
{
  keyCopy = key;
  absintheTimestamps = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v6 = MEMORY[0x277CCABB0];
  v7 = mach_absolute_time();
  v8 = [v6 numberWithUnsignedLongLong:OspreyMachAbsoluteTimeGetNanoseconds(v7)];
  [absintheTimestamps setObject:v8 forKey:keyCopy];

  LODWORD(absintheTimestamps) = [keyCopy isEqualToString:@"FinalSignedData"];
  if (absintheTimestamps)
  {
    connectionMethod = [(AbsintheAuthenticationDurations *)self connectionMethod];

    if (connectionMethod)
    {

      [(AbsintheAuthenticationDurations *)self reportAbsintheAuthenticationDurations];
    }
  }
}

- (void)setAbsintheConnectionMethodWith:(id)with
{
  v4 = [with mutableCopy];
  [(AbsintheAuthenticationDurations *)self setConnectionMethod:v4];
}

- (id)calculateDuration:(id)duration and:(id)and
{
  durationCopy = duration;
  longLongValue = [and longLongValue];
  longLongValue2 = [durationCopy longLongValue];

  if ((longLongValue - longLongValue2) > 0xE8D4A50FFFLL)
  {
    v8 = &unk_286FA6D48;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLong:?];
  }

  return v8;
}

@end
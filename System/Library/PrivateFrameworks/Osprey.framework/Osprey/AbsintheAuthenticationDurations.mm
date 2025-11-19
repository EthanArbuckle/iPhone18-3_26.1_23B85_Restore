@interface AbsintheAuthenticationDurations
- (AbsintheAuthenticationDurations)init;
- (id)calculateDuration:(id)a3 and:(id)a4;
- (void)reportAbsintheAuthenticationDurations;
- (void)setAbsintheAuthenticationTimestampForKey:(id)a3;
- (void)setAbsintheConnectionMethodWith:(id)a3;
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
  v3 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v4 = [v3 objectForKey:@"GetCertificateStart"];
  v5 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v6 = [v5 objectForKey:@"GetCertificateEnd"];
  v7 = [(AbsintheAuthenticationDurations *)self calculateDuration:v4 and:v6];
  [(AbsintheAuthenticationDurations *)self setGetCertificateElapsed:v7];

  v8 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v9 = [v8 objectForKey:@"CreateSessionStart"];
  v10 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v11 = [v10 objectForKey:@"CreateSessionEnd"];
  v12 = [(AbsintheAuthenticationDurations *)self calculateDuration:v9 and:v11];
  [(AbsintheAuthenticationDurations *)self setCreateSessionElapsed:v12];

  v13 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v14 = [v13 objectForKey:@"SessionEstablishedStart"];
  v15 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v16 = [v15 objectForKey:@"SessionEstablishedEnd"];
  v17 = [(AbsintheAuthenticationDurations *)self calculateDuration:v14 and:v16];
  [(AbsintheAuthenticationDurations *)self setSessionEstablishedElapsed:v17];

  v18 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v19 = [v18 objectForKey:@"GetCertificateStart"];
  v20 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v21 = [v20 objectForKey:@"FinalSignedData"];
  v22 = [(AbsintheAuthenticationDurations *)self calculateDuration:v19 and:v21];
  [(AbsintheAuthenticationDurations *)self setAbsintheElapsed:v22];

  v23 = +[OspreyAnalytics reporter];
  [v23 reportAbsintheMetrics:self];
}

- (void)setAbsintheAuthenticationTimestampForKey:(id)a3
{
  v4 = a3;
  v5 = [(AbsintheAuthenticationDurations *)self absintheTimestamps];
  v6 = MEMORY[0x277CCABB0];
  v7 = mach_absolute_time();
  v8 = [v6 numberWithUnsignedLongLong:OspreyMachAbsoluteTimeGetNanoseconds(v7)];
  [v5 setObject:v8 forKey:v4];

  LODWORD(v5) = [v4 isEqualToString:@"FinalSignedData"];
  if (v5)
  {
    v9 = [(AbsintheAuthenticationDurations *)self connectionMethod];

    if (v9)
    {

      [(AbsintheAuthenticationDurations *)self reportAbsintheAuthenticationDurations];
    }
  }
}

- (void)setAbsintheConnectionMethodWith:(id)a3
{
  v4 = [a3 mutableCopy];
  [(AbsintheAuthenticationDurations *)self setConnectionMethod:v4];
}

- (id)calculateDuration:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = [a4 longLongValue];
  v7 = [v5 longLongValue];

  if ((v6 - v7) > 0xE8D4A50FFFLL)
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
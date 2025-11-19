@interface IDSFirewallDatabase
- (IDSFirewallDatabase)initWithFilename:(id)a3;
- (void)deleteDatabase;
@end

@implementation IDSFirewallDatabase

- (IDSFirewallDatabase)initWithFilename:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IDSFirewallDatabase;
  v5 = [(IDSFirewallDatabase *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IDSFirewallDatabase *)v5 setFilename:v4];
  }

  return v6;
}

- (void)deleteDatabase
{
  v3 = [(IDSFirewallDatabase *)self filename];

  if (v3)
  {
    v4 = [(IDSFirewallDatabase *)self filename];
    CSDBSqliteDeleteDatabase();
  }
}

@end
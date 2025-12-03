@interface IDSFirewallDatabase
- (IDSFirewallDatabase)initWithFilename:(id)filename;
- (void)deleteDatabase;
@end

@implementation IDSFirewallDatabase

- (IDSFirewallDatabase)initWithFilename:(id)filename
{
  filenameCopy = filename;
  v8.receiver = self;
  v8.super_class = IDSFirewallDatabase;
  v5 = [(IDSFirewallDatabase *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IDSFirewallDatabase *)v5 setFilename:filenameCopy];
  }

  return v6;
}

- (void)deleteDatabase
{
  filename = [(IDSFirewallDatabase *)self filename];

  if (filename)
  {
    filename2 = [(IDSFirewallDatabase *)self filename];
    CSDBSqliteDeleteDatabase();
  }
}

@end
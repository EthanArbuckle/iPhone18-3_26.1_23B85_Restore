@interface ELSessionConfigurator
- (ELSessionConfigurator)init;
- (id)configureSessionWithParameters:(id)parameters ticket:(id)ticket error:(id *)error;
@end

@implementation ELSessionConfigurator

- (id)configureSessionWithParameters:(id)parameters ticket:(id)ticket error:(id *)error
{
  v6 = sub_24A076198();
  if (ticket)
  {
    v7 = sub_24A0761C8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  type metadata accessor for SessionManager();
  swift_allocObject();
  SessionManager.init()();
  SessionManager.createSession(parameters:ticket:)(v6, v7, v9);
  v11 = v10;

  return v11;
}

- (ELSessionConfigurator)init
{
  v3.receiver = self;
  v3.super_class = ELSessionConfigurator;
  return [(ELSessionConfigurator *)&v3 init];
}

@end
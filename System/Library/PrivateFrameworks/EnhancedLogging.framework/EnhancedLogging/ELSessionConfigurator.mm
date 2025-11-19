@interface ELSessionConfigurator
- (ELSessionConfigurator)init;
- (id)configureSessionWithParameters:(id)a3 ticket:(id)a4 error:(id *)a5;
@end

@implementation ELSessionConfigurator

- (id)configureSessionWithParameters:(id)a3 ticket:(id)a4 error:(id *)a5
{
  v6 = sub_24A076198();
  if (a4)
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
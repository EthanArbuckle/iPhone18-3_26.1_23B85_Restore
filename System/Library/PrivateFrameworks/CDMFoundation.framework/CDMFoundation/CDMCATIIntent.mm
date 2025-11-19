@interface CDMCATIIntent
- (CDMCATIIntent)init;
- (CDMCATIIntent)initWithGuid:(id)a3 intentName:(id)a4 ensemble:(id)a5;
@end

@implementation CDMCATIIntent

- (CDMCATIIntent)init
{
  v3.receiver = self;
  v3.super_class = CDMCATIIntent;
  return [(CDMCATIIntent *)&v3 init];
}

- (CDMCATIIntent)initWithGuid:(id)a3 intentName:(id)a4 ensemble:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CDMCATIIntent *)self init];
  guid = v11->_guid;
  v11->_guid = v8;
  v13 = v8;

  intentName = v11->_intentName;
  v11->_intentName = v9;
  v15 = v9;

  ensemble = v11->_ensemble;
  v11->_ensemble = v10;

  return v11;
}

@end
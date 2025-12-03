@interface CDMCATIIntent
- (CDMCATIIntent)init;
- (CDMCATIIntent)initWithGuid:(id)guid intentName:(id)name ensemble:(id)ensemble;
@end

@implementation CDMCATIIntent

- (CDMCATIIntent)init
{
  v3.receiver = self;
  v3.super_class = CDMCATIIntent;
  return [(CDMCATIIntent *)&v3 init];
}

- (CDMCATIIntent)initWithGuid:(id)guid intentName:(id)name ensemble:(id)ensemble
{
  guidCopy = guid;
  nameCopy = name;
  ensembleCopy = ensemble;
  v11 = [(CDMCATIIntent *)self init];
  guid = v11->_guid;
  v11->_guid = guidCopy;
  v13 = guidCopy;

  intentName = v11->_intentName;
  v11->_intentName = nameCopy;
  v15 = nameCopy;

  ensemble = v11->_ensemble;
  v11->_ensemble = ensembleCopy;

  return v11;
}

@end
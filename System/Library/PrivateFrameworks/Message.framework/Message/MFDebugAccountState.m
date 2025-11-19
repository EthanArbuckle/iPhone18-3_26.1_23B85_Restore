@interface MFDebugAccountState
- (MFDebugAccountState)initWithStateEventDictionary:(id)a3 identifier:(id)a4 lastKnownCapabilities:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation MFDebugAccountState

- (MFDebugAccountState)initWithStateEventDictionary:(id)a3 identifier:(id)a4 lastKnownCapabilities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFDebugAccountState;
  v12 = [(MFDebugAccountState *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a4);
    objc_storeStrong(&v13->_mailAccount, a3);
    objc_storeStrong(&v13->_lastKnownCapabilities, a5);
  }

  return v13;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MFDebugAccountState *)self identifier];

  if (v4)
  {
    v5 = [(MFDebugAccountState *)self identifier];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  v6 = [(MFDebugAccountState *)self mailAccount];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [(MFDebugAccountState *)self mailAccount];
    v9 = [v7 initWithFormat:@"%@", v8];
    [v3 setObject:v9 forKeyedSubscript:@"account"];
  }

  v10 = [(MFDebugAccountState *)self lastKnownCapabilities];

  if (v10)
  {
    v11 = [(MFDebugAccountState *)self lastKnownCapabilities];
    [v3 setObject:v11 forKeyedSubscript:@"last capabilities"];
  }

  return v3;
}

@end
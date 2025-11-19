@interface TransitAlightMessage
- (TransitAlightMessage)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryValue;
@end

@implementation TransitAlightMessage

- (TransitAlightMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TransitAlightMessage;
  v5 = [(IPCMessageObject *)&v23 initWithDictionary:v4];
  if (v5)
  {
    v6 = NSStringFromSelector("identifier");
    v7 = [v4 objectForKeyedSubscript:v6];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = NSStringFromSelector("stopIndex");
    v10 = [v4 objectForKeyedSubscript:v9];
    v5->_stopIndex = [v10 unsignedIntegerValue];

    v11 = NSStringFromSelector("stepIndex");
    v12 = [v4 objectForKeyedSubscript:v11];
    v5->_stepIndex = [v12 unsignedIntegerValue];

    v13 = NSStringFromSelector("artwork");
    v14 = [v4 objectForKeyedSubscript:v13];
    artwork = v5->_artwork;
    v5->_artwork = v14;

    v16 = NSStringFromSelector("title");
    v17 = [v4 objectForKeyedSubscript:v16];
    title = v5->_title;
    v5->_title = v17;

    v19 = NSStringFromSelector("detail");
    v20 = [v4 objectForKeyedSubscript:v19];
    detail = v5->_detail;
    v5->_detail = v20;
  }

  return v5;
}

- (id)dictionaryValue
{
  v18.receiver = self;
  v18.super_class = TransitAlightMessage;
  v3 = [(IPCMessageObject *)&v18 dictionaryValue];
  v4 = [v3 mutableCopy];

  v5 = [(TransitAlightMessage *)self identifier];
  v6 = NSStringFromSelector("identifier");
  [v4 setObject:v5 forKeyedSubscript:v6];

  v7 = [NSNumber numberWithUnsignedInteger:[(TransitAlightMessage *)self stopIndex]];
  v8 = NSStringFromSelector("stopIndex");
  [v4 setObject:v7 forKeyedSubscript:v8];

  v9 = [NSNumber numberWithUnsignedInteger:[(TransitAlightMessage *)self stepIndex]];
  v10 = NSStringFromSelector("stepIndex");
  [v4 setObject:v9 forKeyedSubscript:v10];

  v11 = [(TransitAlightMessage *)self artwork];
  v12 = NSStringFromSelector("artwork");
  [v4 setObject:v11 forKeyedSubscript:v12];

  v13 = [(TransitAlightMessage *)self title];
  v14 = NSStringFromSelector("title");
  [v4 setObject:v13 forKeyedSubscript:v14];

  v15 = [(TransitAlightMessage *)self detail];
  v16 = NSStringFromSelector("detail");
  [v4 setObject:v15 forKeyedSubscript:v16];

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(TransitAlightMessage *)self dictionaryValue];
  v5 = [NSString stringWithFormat:@"<%@:%p> %@", v3, self, v4];

  return v5;
}

@end
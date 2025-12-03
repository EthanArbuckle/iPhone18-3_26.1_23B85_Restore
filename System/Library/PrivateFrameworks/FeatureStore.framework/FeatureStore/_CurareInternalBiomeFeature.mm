@interface _CurareInternalBiomeFeature
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (_CurareInternalBiomeFeature)initWithCurareInteraction:(id)interaction;
- (_CurareInternalBiomeFeature)initWithData:(id)data;
- (id)json;
- (id)serialize;
@end

@implementation _CurareInternalBiomeFeature

- (id)serialize
{
  content = self->_content;
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:content options:2 error:&v7];
  v4 = v7;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v4);
  }

  return v3;
}

- (_CurareInternalBiomeFeature)initWithCurareInteraction:(id)interaction
{
  interactionCopy = interaction;
  v13.receiver = self;
  v13.super_class = _CurareInternalBiomeFeature;
  v5 = [(_CurareInternalBiomeFeature *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    content = v5->_content;
    v5->_content = v6;

    v8 = v5->_content;
    interactionId = [interactionCopy interactionId];
    [(NSMutableDictionary *)v8 setObject:interactionId forKey:@"interactionId"];

    serialize = [interactionCopy serialize];
    v11 = [FSFUtils getBase64EncodedStrFromData:serialize];
    [(NSMutableDictionary *)v5->_content setObject:v11 forKey:@"feature"];
  }

  return v5;
}

- (_CurareInternalBiomeFeature)initWithData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = _CurareInternalBiomeFeature;
  v5 = [(_CurareInternalBiomeFeature *)&v11 init];
  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v10];
    v7 = v10;
    content = v5->_content;
    v5->_content = v6;

    if (v7)
    {
      NSLog(&cfstr_ErrorWhileCrea_0.isa, v7);
    }
  }

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v5 = [[_CurareInternalBiomeFeature alloc] initWithData:dataCopy];

  return v5;
}

- (id)json
{
  content = self->_content;
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:content options:3 error:&v7];
  v4 = v7;
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_ErrorWhileSeri.isa, v4);
  }

  return v3;
}

@end
@interface _CurareInternalBiomeFeature
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (_CurareInternalBiomeFeature)initWithCurareInteraction:(id)a3;
- (_CurareInternalBiomeFeature)initWithData:(id)a3;
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

- (_CurareInternalBiomeFeature)initWithCurareInteraction:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _CurareInternalBiomeFeature;
  v5 = [(_CurareInternalBiomeFeature *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    content = v5->_content;
    v5->_content = v6;

    v8 = v5->_content;
    v9 = [v4 interactionId];
    [(NSMutableDictionary *)v8 setObject:v9 forKey:@"interactionId"];

    v10 = [v4 serialize];
    v11 = [FSFUtils getBase64EncodedStrFromData:v10];
    [(NSMutableDictionary *)v5->_content setObject:v11 forKey:@"feature"];
  }

  return v5;
}

- (_CurareInternalBiomeFeature)initWithData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _CurareInternalBiomeFeature;
  v5 = [(_CurareInternalBiomeFeature *)&v11 init];
  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v10];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = a3;
  v5 = [[_CurareInternalBiomeFeature alloc] initWithData:v4];

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
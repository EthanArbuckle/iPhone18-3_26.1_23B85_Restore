@interface FCEditorialTopicEventMappingProperty
- (FCEditorialTopicEventMappingProperty)initWithDictionary:(id)a3;
@end

@implementation FCEditorialTopicEventMappingProperty

- (FCEditorialTopicEventMappingProperty)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FCEditorialTopicEventMappingProperty;
  v5 = [(FCEditorialTopicEventMappingProperty *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mappingType"];
    if (!v6)
    {
      v8 = 0;
      goto LABEL_6;
    }

    mappingType = v5->_mappingType;
    v5->_mappingType = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

@end
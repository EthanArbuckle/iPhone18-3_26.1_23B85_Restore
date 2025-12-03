@interface TCDumpBinaryToXmlState
- (TCDumpBinaryToXmlState)init;
- (id)valueForField:(id)field;
@end

@implementation TCDumpBinaryToXmlState

- (TCDumpBinaryToXmlState)init
{
  v6.receiver = self;
  v6.super_class = TCDumpBinaryToXmlState;
  v2 = [(TCDumpBinaryToXmlState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mFieldNameToValueMap = v2->mFieldNameToValueMap;
    v2->mFieldNameToValueMap = v3;
  }

  return v2;
}

- (id)valueForField:(id)field
{
  v3 = [(NSMutableDictionary *)self->mFieldNameToValueMap objectForKey:field];

  return v3;
}

@end
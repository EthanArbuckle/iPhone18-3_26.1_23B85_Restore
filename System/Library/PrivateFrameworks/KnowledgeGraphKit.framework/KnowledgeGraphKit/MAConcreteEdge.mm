@interface MAConcreteEdge
- (BOOL)hasProperties;
- (MAConcreteEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)propertyDictionary;
- (id)propertyForKey:(id)key;
- (id)propertyKeys;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)block;
@end

@implementation MAConcreteEdge

- (void)enumeratePropertiesUsingBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties)
  {
    v18 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    keyEnumerator = [(NSMutableDictionary *)properties keyEnumerator];
    v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = *v15;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)selfCopy->_properties objectForKeyedSubscript:v11];
        blockCopy[2](blockCopy, v11, v12, &v18);

        if (v18)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (id)propertyDictionary
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:selfCopy->_properties];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)propertyKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties && [(NSMutableDictionary *)properties count])
  {
    v4 = MEMORY[0x277CBEB98];
    allKeys = [(NSMutableDictionary *)selfCopy->_properties allKeys];
    v6 = [v4 setWithArray:allKeys];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (unint64_t)propertiesCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_properties count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)hasProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_properties count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (properties)
  {
    v7 = [(NSMutableDictionary *)properties objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (MAConcreteEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  labelCopy = label;
  propertiesCopy = properties;
  v22.receiver = self;
  v22.super_class = MAConcreteEdge;
  v16 = [(MAEdge *)&v22 initWithSourceNode:node targetNode:targetNode];
  if (v16)
  {
    v17 = [labelCopy copy];
    label = v16->_label;
    v16->_label = v17;

    v16->_domain = domain;
    v16->_weight = weight;
    v19 = [propertiesCopy mutableCopy];
    properties = v16->_properties;
    v16->_properties = v19;
  }

  return v16;
}

@end